Shader "Custom/LitTransparentDepthFader"
{
	Properties
	{
		_Color ("Color", Color) = (1,1,1,1)
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_Glossiness ("Smoothness", Range(0,1)) = 0.5
		_Metallic ("Metallic", Range(0,1)) = 0.0
		_DepthNear ("Depth Near", Range(0, 1000)) = 5
        _DepthFar ("Depth Far", Range(0, 1000)) = 10
        _DepthPower ("Depth Power", Range(1, 10)) = 2
	}
	SubShader
	{
		Tags { "Queue" = "Transparent" "RenderType"="Transparent" }
		LOD 200
		ZWrite Off
		//Cull Off // make double sided
		Blend SrcAlpha OneMinusSrcAlpha

		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
        #pragma surface surf Standard vertex:vert fullforwardshadows alpha:fade
        #pragma target 4.0

		sampler2D _MainTex;
		
		struct Input {
            float2 uv_MainTex;
            float eyeDepth;
            float4 screenPos;
        };

		half _Glossiness;
		half _Metallic;
		fixed4 _Color;

        half _DepthNear;
        half _DepthFar;
        half _DepthPower;
        
		// Add instancing support for this shader. We need to 'Enable Instancing' on materials that use this shader.
		// More about instancing: https://docs.unity3d.com/Manual/GPUInstancing.html
		
		UNITY_INSTANCING_BUFFER_START(Props)
		// more per-instance properties here
		UNITY_INSTANCING_BUFFER_END(Props)


        void vert (inout appdata_full v, out Input o)
        {
            UNITY_INITIALIZE_OUTPUT(Input, o);
            COMPUTE_EYEDEPTH(o.eyeDepth);
        }

		void surf (Input IN, inout SurfaceOutputStandard o)
		{
			// Albedo comes from the texture tinted by color
			fixed4 c = tex2D (_MainTex, IN.uv_MainTex) * _Color;
			o.Albedo = c.rgb;
			// Metallic and smoothness come from slider variables
			o.Metallic = _Metallic;
			o.Smoothness = _Glossiness;
			
			// Then we change alpha by depth
            float2 screenUV = IN.screenPos.xy/IN.screenPos.w;
            float dist = (clamp(IN.eyeDepth, _DepthNear, _DepthFar) - _DepthNear) / (_DepthFar - _DepthNear);
            dist = 1 - pow(1 - dist * 0.99999, _DepthPower);
           
           // Finally, apply the alpha from depth AND texture 
            o.Alpha = clamp(1 - dist, 0, 1) * c.a;
		}
		ENDCG
	}
	FallBack "Diffuse"
}
# Lit Transparent Depth Fader | Shader for Unity
**LitTransparentDepthFader** shader provides support for Transparency and (Camera) Depth Fade, similar to the standard Unity Particles shaders, however, goes a step further by supporting shadows and all light types (such as pixel lighting) found in the physically based standard lighting model. Metallic and Smoothness/Glossiness adjusted by sliders.

How to Use
--------
Place the `LitTransparentDepthFader.shader` file within your project's Assets folder. Then, in the desired Material Shader select `Custom/LitTransparentDepthFader`.

Additional Info
--------
### Inspector
![Inspector][UnityIDE] 

1. Color tint texture and add alpha
2. Smoothness/Glossiness slider to control the spread of highlights on the surface
3. Metallic slider controls the reflection of the environment, when increased the material's albedo colour becomes less visible
4. Depth Near controls the near camera length at which the material starts to fade
5. Depth Far controls how far the surface can get away from the camera before starting to fade
6. Depth Power controls the depth strength 

Examples
--------
### DepthFader-ON | Transparency-ON
![DepthFaderON_TransparencyON][DepthFaderON_TransparencyON] 

### DepthFader-ON | Transparency-OFF
![DepthFaderON_TransparencyOFF][DepthFaderON_TransparencyOFF] 

### DepthFader-OFF | Transparency-OFF
![DepthFaderOFF_TransparencyOFF][DepthFaderOFF_TransparencyOFF] 

### DepthFader-OFF | Transparency-OFF | No Light
![DepthFaderOFF_TransparencyOFF_NOLIGHT][DepthFaderOFF_TransparencyOFF_NOLIGHT] 

### DepthFader-ON | Transparency-ON | Multiple Lights
https://github.com/subrodrigues/LitTransparentDepthFader-shader/assets/2995364/aafdfd9a-518e-4693-9d24-97b0dbf2dba8

License
-------
Copyright (c) 2023 Filipe Rodrigues, filiperodrigues.net, subtales.studio

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


[UnityIDE]: https://github.com/subrodrigues/LitTransparentDepthFader-shader/assets/2995364/e0072484-e564-491e-9524-edbad9013126
[DepthFaderON_TransparencyON]: https://github.com/subrodrigues/LitTransparentDepthFader-shader/assets/2995364/33351313-d023-4775-b881-a56234b06f33
[DepthFaderON_TransparencyOFF]: https://github.com/subrodrigues/LitTransparentDepthFader-shader/assets/2995364/98a60b9d-ca8f-476f-a809-2202dc0714f6
[DepthFaderOFF_TransparencyOFF]: https://github.com/subrodrigues/LitTransparentDepthFader-shader/assets/2995364/0dbb6396-fc0b-4bb2-bdd0-94eb9566ad96
[DepthFaderOFF_TransparencyOFF_NOLIGHT]: https://github.com/subrodrigues/LitTransparentDepthFader-shader/assets/2995364/b8b7fbbb-c519-4398-b674-898a43fc61ae

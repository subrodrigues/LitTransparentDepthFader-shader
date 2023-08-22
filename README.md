# Lit Transparent Depth Fader | Shader for Unity
**LitTransparentDepthFader** shader provides support for Transparency and (Camera) Depth Fade, similar to the standard Unity Particles shaders, however, goes a step further by supporting shadows and all light types (such as pixel lighting) found in the physically based standard lighting model, with Metallic and Smoothness/Glossiness of the material controlled by sliders.

How to Use
--------
Add the `LitTransparentDepthFader.shader` to your project Assets. In the chosen Material Shader select: `Custom/LitTransparentDepthFader`

Additional Info
--------
### Inspector
![ScreenshotA1][ImageA1] 

A: Color tint texture and add alpha
B: Smoothness/Glossiness slider to control the spread of highlights on the surface
C: Metallic slider controls the reflection of the environment, when increased the material's albedo colour becomes less visible
D: Depth Near controls the near camera length at which the material starts to fade
E: Depth Far controls how far the surface can get away from the camera before starting to fade
F: Depth Power controls the depth strength 

Examples
--------

License
-------
Copyright (c) 2023 Filipe Rodrigues, filiperodrigues.net, subtales.studio

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


[ImageA1]: https://github.com/subrodrigues/LitTransparentDepthFader-shader/assets/2995364/87f69dfe-874c-4eb5-9992-cbb552acb288

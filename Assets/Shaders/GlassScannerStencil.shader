Shader "Custom/GlassScannerStencil"
{
    Properties
    {
        _Color("Glass Color", Color) = (0, 1, 0, 0.3)
        _ScanColor("Scan Line Color", Color) = (1, 1, 1, 0.5)
        _ScanWidth("Scan Line Width", Float) = 0.1
        _ScanSpeed("Scan Speed", Float) = 1.0
        [IntRange] _StencilID("Stencil ID", Range(0, 255)) = 1
    }

    SubShader
    {
        Tags { 
            "Queue"="Transparent"
            "RenderType"="Transparent"
            "RenderPipeline"="UniversalRenderPipeline"
        }

        Blend SrcAlpha OneMinusSrcAlpha
        ZWrite Off
        Cull Back

        Stencil
        {
            Ref [_StencilID]
            Comp Always
            Pass Replace
        }

        Pass
        {
            Cull Off
            Name "GlassPass"
            HLSLPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"

            struct Attributes
            {
                float4 positionOS : POSITION;
                float3 normalOS : NORMAL;
                float2 uv : TEXCOORD0;
            };

            struct Varyings
            {
                float4 positionHCS : SV_POSITION;
                float3 worldPos : TEXCOORD1;
            };

            float4 _Color;
            float4 _ScanColor;
            float _ScanWidth;
            float _ScanSpeed;

            Varyings vert (Attributes input)
            {
                Varyings output;
                output.positionHCS = TransformObjectToHClip(input.positionOS);
                output.worldPos = TransformObjectToWorld(input.positionOS.xyz);
                return output;
            }

            half4 frag (Varyings i) : SV_Target
            {
                // Línea escáner animada en eje Y
                float scanY = frac(_Time.y * _ScanSpeed) * 10.0;
                float dist = abs(i.worldPos.y - scanY);
                float scanIntensity = saturate(1.0 - dist / _ScanWidth);

                // Color combinado del vidrio y la línea escáner
                float3 baseColor = _Color.rgb;
                float3 scanColor = _ScanColor.rgb * scanIntensity;
                float alpha = _Color.a + (_ScanColor.a * scanIntensity);

                return float4(baseColor + scanColor, alpha);
            }
            ENDHLSL
        }
    }
}
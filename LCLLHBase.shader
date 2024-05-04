// Made with Amplify Shader Editor v1.9.2
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "LCLLHshader/Base"
{
	Properties
	{
		[Header(Diffuse)]_MainTex("Diffuse Map (_col0)", 2D) = "white" {}
		[HDR]_ToonBrightColor("ToonBrightColor", Color) = (0,0,0,1)
		[Header(Shadow)]_ShadTex("Shaded Diffuse (_col1)", 2D) = "gray" {}
		[HDR]_ToonDarkColor("ToonDarkColor", Color) = (0,0,0,1)
		_BumpMap("Normal Map", 2D) = "bump" {}
		_ctrl1Tex("_controlmap1", 2D) = "white" {}
		_ctrl2Tex("_controlmap2", 2D) = "black" {}
		[Toggle]_OnlyPaintedShadow("Only Painted Shadow", Float) = 0
		_ShadowStep("ShadowStep", Range( 0 , 1)) = 0.3
		_ShadowFeather("ShadowFeather", Range( 0 , 1)) = 0.01
		[HDR]_GlobalShadowColor("GlobalShadowColor", Color) = (1,1,1,1)
		[Toggle]_ReceiveShadowLerp("ReceiveShadowLerp", Float) = 1
		[Toggle]_ShadowinLightColor("Shadow in LightColor", Float) = 1
		[Toggle]_NoShadowinDirectionalLightColor("NoShadow in DirectionalLightColor", Float) = 1
		_spcTex("_spcmask", 2D) = "black" {}
		[HDR][Header(Specular)]_SpecularColor("SpecularColor", Color) = (1,1,1,1)
		_SpecularPower("SpecularPower", Range( 0 , 5)) = 1
		_SpecularBias("Specular Bias", Range( 0 , 10)) = 0.2
		[Header(Rim)][Toggle]_Use_DisRimMask("Use_DisRimMask", Float) = 0
		[HDR]_RimColor("RimColor", Color) = (1,1,1,0.4)
		_RimStep("RimStep", Range( 0 , 1)) = 0.5
		_RimFeather("RimFeather", Range( 0 , 1)) = 0.3
		_RimSpecRate("RimSpecRate", Range( 0 , 1)) = 0.5
		_RimShadowRate("RimShadowRate", Range( 0 , 2)) = 0
		_RimAttenuation("RimAttenuation", Range( 0 , 1)) = 0
		_RimHorizonOffset("RimHorizonOffset", Range( -1 , 1)) = 0
		_RimVerticalOffset("RimVerticalOffset", Range( -1 , 1)) = 0
		[HDR]_RimColor2("RimColor2", Color) = (0,0,0,0)
		_RimStep2("RimStep2", Range( 0 , 1)) = 0.5
		_RimFeather2("RimFeather2", Range( 0 , 1)) = 0.3
		_RimSpecRate2("RimSpecRate2", Range( 0 , 1)) = 0.5
		_RimShadowRate2("RimShadowRate2", Range( 0 , 2)) = 0
		_RimAttenuation2("RimAttenuation2", Range( 0 , 1)) = 0
		_RimHorizonOffset2("RimHorizonOffset2", Range( -1 , 1)) = 0
		_RimVerticalOffset2("RimVerticalOffset2", Range( -1 , 1)) = 0
		[HDR]_GlobalRimColor("GlobalRimColor", Color) = (1,1,1,1)
		_CustomRimLightColor("CustomRimLightColor", Range( 0 , 1)) = 1
		_MinRimLightColor("MinRimLightColor", Range( 0 , 1)) = 0.2
		[Header(Metal)][Toggle]_Use_MetalMask("Use_MetalMask", Float) = 0
		_EnvTex("EnvironmentMap", 2D) = "white" {}
		[Toggle]_EnvMatCap("EnvMatCap", Float) = 0
		[Toggle]_UseReflectionProbeAsEnvMap("UseReflectionProbeAsEnvMap", Float) = 0
		_RefProbeSmoothness("RefProbeSmoothness", Range( 0 , 1)) = 0.7
		_EnvRate("EnvRate", Range( 0 , 10)) = 1
		_EnvBias("EnvBias", Range( 0 , 10)) = 1
		[Header(Emissive and Other)]_EmiTex("Emissive (_emi) [optional]", 2D) = "white" {}
		[HDR]_EmissiveColor("EmissiveColor", Color) = (1,1,1,1)
		_EmmisiveStrength("EmmisiveStrength", Range( 0 , 10)) = 0
		[HDR]_CharaColor("CharaColor", Color) = (1,1,1,1)
		_Saturation("Saturation", Range( 0 , 1)) = 1
		[HDR]_UnsaturationColor("UnsaturationColor", Color) = (0.2117647,0.7137255,0.07058824,0)
		[Header(Light)]_MinDirectLight("MinDirectLight", Range( 0 , 1)) = 0
		_MaxDirectLight("MaxDirectLight", Range( 0 , 2)) = 1
		[Toggle]_UnifyIndirectDiffuseLight("Unify IndirectDiffuseLight", Float) = 1
		_MinIndirectLight("MinIndirectLight", Range( 0 , 1)) = 0.1
		_MaxIndirectLight("MaxIndirectLight", Range( 0 , 2)) = 1
		_LightColorGrayScale("LightColor GrayScale", Range( 0 , 1)) = 0
		_DiffuseLightFactor("DiffuseLightFactor", Range( 0 , 1)) = 0
		_GlobalLightFactor("GlobalLightFactor", Range( 0 , 1)) = 1
		[Header(Outline)][Toggle]_Outline("Outline", Float) = 0
		_OutlineClip("OutlineClip", Range( 0 , 1)) = 0.5
		[Toggle]_UseOutlineMask("Use OutlineMask", Float) = 0
		[HDR]_OutlineColor("OutlineColor", Color) = (0,0,0,0)
		[Toggle]_MixDiffuseinOutlineColor("Mix Diffuse in OutlineColor", Float) = 0
		_OutlineLightColor("OutlineLightColor", Range( 0 , 1)) = 1
		_OutlineWidth("OutlineWidth", Float) = 0
		[Toggle]_UseOutlineWidthMask("Use OutlineWidthMask", Float) = 0
		[Toggle]_OutlineDistanceAdjust("Outline Distance Adjust", Float) = 0
		_MinDistance("MinDistance", Float) = 1
		_MaxDistance("MaxDistance", Float) = 2
		_MinDistanceRemap("MinDistanceRemap", Float) = 1
		_MaxDistanceRemap("MaxDistanceRemap", Float) = 10
		[Toggle]_OutlineZPushAdjust("Outline ZPush Adjust", Float) = 0
		_OutlineZPush("Outline ZPush", Float) = -0.001
		[Header(Stencil Buffer)]_StencilReference("Stencil Reference", Range( 0 , 255)) = 0
		_StencilReadMask("Stencil ReadMask", Range( 0 , 255)) = 255
		_StencilWriteMask("Stencil WriteMask", Range( 0 , 255)) = 255
		[Enum(UnityEngine.Rendering.CompareFunction)]_StencilComparison("Stencil Comparison", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)]_StencilPassFront("Stencil PassFront", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)]_StencilFailFront("Stencil FailFront", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)]_StencilZFailFront("Stencil ZFailFront", Float) = 0
		[Enum(UnityEngine.Rendering.CullMode)]_CullMode("Cull Mode", Float) = 2
		[HideInInspector] _texcoord( "", 2D ) = "white" {}

	}
	
	SubShader
	{
		Tags { "RenderType"="Opaque" "Queue"="Geometry" }
	LOD 100

		Cull Off
		CGINCLUDE
		#pragma target 3.0 
		ENDCG

        
		Pass
		{
			Name "ExtraPrePass"
			Tags { "LightMode"="ForwardBase" }

			Blend One Zero
			Cull Front
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA
			CGINCLUDE
			#pragma target 3.0
			ENDCG
			Blend Off
			AlphaToMask Off
			Stencil
			{
				Ref [_StencilReference]
				ReadMask [_StencilReadMask]
				WriteMask [_StencilWriteMask]
				Comp [_StencilComparison]
				Pass [_StencilPassFront]
				Fail [_StencilFailFront]
				ZFail [_StencilZFailFront]
			}

			CGPROGRAM
			
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_fwdbase
			#ifndef UNITY_PASS_FORWARDBASE
				#define UNITY_PASS_FORWARDBASE
			#endif
			#include "HLSLSupport.cginc"
			#ifndef UNITY_INSTANCED_LOD_FADE
				#define UNITY_INSTANCED_LOD_FADE
			#endif
			#ifndef UNITY_INSTANCED_SH
				#define UNITY_INSTANCED_SH
			#endif
			#ifndef UNITY_INSTANCED_LIGHTMAPSTS
				#define UNITY_INSTANCED_LIGHTMAPSTS
			#endif
			#include "UnityShaderVariables.cginc"
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			#include "AutoLight.cginc"

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_WORLD_POSITION

			struct appdata {
				float4 vertex : POSITION;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct v2f {
				#if UNITY_VERSION >= 201810
					UNITY_POSITION(pos);
				#else
					float4 pos : SV_POSITION;
				#endif
				#if defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS) && UNITY_VERSION >= 201810 && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					UNITY_LIGHTING_COORDS(2,3)
				#elif defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if UNITY_VERSION >= 201710
						UNITY_SHADOW_COORDS(2)
					#else
						SHADOW_COORDS(2)
					#endif
				#endif
				#ifdef ASE_FOG
					UNITY_FOG_COORDS(4)
				#endif
				float4 tSpace0 : TEXCOORD5;
				float4 tSpace1 : TEXCOORD6;
				float4 tSpace2 : TEXCOORD7;
				float4 ase_texcoord8 : TEXCOORD8;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			uniform float _StencilZFailFront;
			uniform float _StencilComparison;
			uniform float _StencilPassFront;
			uniform float _StencilFailFront;
			uniform float _StencilWriteMask;
			uniform float _StencilReadMask;
			uniform float _StencilReference;
			uniform float _CullMode;
			uniform float _UseOutlineWidthMask;
			uniform sampler2D _ctrl2Tex;
			uniform float4 _ctrl2Tex_ST;
			uniform float _OutlineWidth;
			uniform float _OutlineDistanceAdjust;
			uniform float _MinDistance;
			uniform float _MaxDistance;
			uniform float _MinDistanceRemap;
			uniform float _MaxDistanceRemap;
			uniform float _OutlineZPushAdjust;
			uniform float _OutlineZPush;
			uniform float _MixDiffuseinOutlineColor;
			uniform float4 _OutlineColor;
			uniform sampler2D _MainTex;
			uniform float4 _MainTex_ST;
			uniform float _NoShadowinDirectionalLightColor;
			uniform float _MinDirectLight;
			uniform float _ShadowinLightColor;
			uniform float _MaxDirectLight;
			uniform float _UnifyIndirectDiffuseLight;
			uniform float _MinIndirectLight;
			uniform float _MaxIndirectLight;
			uniform float _LightColorGrayScale;
			uniform float _OutlineLightColor;
			uniform float _Outline;
			uniform float _UseOutlineMask;
			uniform float _OutlineClip;


			float PureLightAttenuation( float3 worldPos )
			{
				#ifdef POINT
				        unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz; \
				        return tex2D(_LightTexture0, dot(lightCoord, lightCoord).rr).r;
				#endif
				#ifdef SPOT
				#if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)
				#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1))
				#else
				#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = input._LightCoord
				#endif
				        DECLARE_LIGHT_COORD(input, worldPos); \
				        return (lightCoord.z > 0) * UnitySpotCookie(lightCoord) * UnitySpotAttenuate(lightCoord.xyz);
				#endif
				#ifdef DIRECTIONAL
				        return 1;
				#endif
				#ifdef POINT_COOKIE
				#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz
				#   else
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = input._LightCoord
				#   endif
				        DECLARE_LIGHT_COORD(input, worldPos); \
				        return tex2D(_LightTextureB0, dot(lightCoord, lightCoord).rr).r * texCUBE(_LightTexture0, lightCoord).w;
				#endif
				#ifdef DIRECTIONAL_COOKIE
				#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xy
				#   else
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = input._LightCoord
				#   endif
				        DECLARE_LIGHT_COORD(input, worldPos); \
				        return tex2D(_LightTexture0, lightCoord).w;
				#endif
			}
			
			float3 ShadeSH9out( half4 Normal )
			{
				return ShadeSH9(Normal);
			}
			

			v2f VertexFunction (appdata v  ) {
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 uv_ctrl2Tex = v.ase_texcoord.xy * _ctrl2Tex_ST.xy + _ctrl2Tex_ST.zw;
				float4 tex2DNode66 = tex2Dlod( _ctrl2Tex, float4( uv_ctrl2Tex, 0, 0.0) );
				float OutlineCorrect1140 = tex2DNode66.r;
				float OutlineWidth740 = ( (( _UseOutlineWidthMask )?( OutlineCorrect1140 ):( 1.0 )) * ( _OutlineWidth * 0.01 ) );
				float4 unityObjectToClipPos1105 = UnityObjectToClipPos( v.vertex.xyz );
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float4 transform748 = mul(unity_WorldToObject,float4( ase_worldViewDir , 0.0 ));
				
				o.ase_texcoord8.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord8.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = ( float4( ( OutlineWidth740 * v.normal * (( _OutlineDistanceAdjust )?( (_MinDistanceRemap + (saturate( (0.0 + (unityObjectToClipPos1105.w - _MinDistance) * (1.0 - 0.0) / (_MaxDistance - _MinDistance)) ) - 0.0) * (_MaxDistanceRemap - _MinDistanceRemap) / (1.0 - 0.0)) ):( 1.0 )) ) , 0.0 ) + (( _OutlineZPushAdjust )?( ( transform748 * _OutlineZPush ) ):( float4( 0,0,0,0 ) )) ).xyz;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.vertex.w = 1;
				v.normal = v.normal;
				v.tangent = v.tangent;

				o.pos = UnityObjectToClipPos(v.vertex);
				float3 worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
				fixed3 worldNormal = UnityObjectToWorldNormal(v.normal);
				fixed3 worldTangent = UnityObjectToWorldDir(v.tangent.xyz);
				fixed tangentSign = v.tangent.w * unity_WorldTransformParams.w;
				fixed3 worldBinormal = cross(worldNormal, worldTangent) * tangentSign;
				o.tSpace0 = float4(worldTangent.x, worldBinormal.x, worldNormal.x, worldPos.x);
				o.tSpace1 = float4(worldTangent.y, worldBinormal.y, worldNormal.y, worldPos.y);
				o.tSpace2 = float4(worldTangent.z, worldBinormal.z, worldNormal.z, worldPos.z);

				#if UNITY_VERSION >= 201810 && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					UNITY_TRANSFER_LIGHTING(o, v.texcoord1.xy);
				#elif defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if UNITY_VERSION >= 201710
						UNITY_TRANSFER_SHADOW(o, v.texcoord1.xy);
					#else
						TRANSFER_SHADOW(o);
					#endif
				#endif

				#ifdef ASE_FOG
					UNITY_TRANSFER_FOG(o,o.pos);
				#endif
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( appdata v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.tangent = v.tangent;
				o.normal = v.normal;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, UNITY_MATRIX_M, _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			v2f DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				appdata o = (appdata) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.tangent = patch[0].tangent * bary.x + patch[1].tangent * bary.y + patch[2].tangent * bary.z;
				o.normal = patch[0].normal * bary.x + patch[1].normal * bary.y + patch[2].normal * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].normal * (dot(o.vertex.xyz, patch[i].normal) - dot(patch[i].vertex.xyz, patch[i].normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			v2f vert ( appdata v )
			{
				return VertexFunction( v );
			}
			#endif

			fixed4 frag (v2f IN 
				#ifdef _DEPTHOFFSET_ON
				, out float outputDepth : SV_Depth
				#endif
				) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(IN);

				#ifdef LOD_FADE_CROSSFADE
					UNITY_APPLY_DITHER_CROSSFADE(IN.pos.xy);
				#endif

				#if defined(_SPECULAR_SETUP)
					SurfaceOutputStandardSpecular o = (SurfaceOutputStandardSpecular)0;
				#else
					SurfaceOutputStandard o = (SurfaceOutputStandard)0;
				#endif
				float3 WorldTangent = float3(IN.tSpace0.x,IN.tSpace1.x,IN.tSpace2.x);
				float3 WorldBiTangent = float3(IN.tSpace0.y,IN.tSpace1.y,IN.tSpace2.y);
				float3 WorldNormal = float3(IN.tSpace0.z,IN.tSpace1.z,IN.tSpace2.z);
				float3 worldPos = float3(IN.tSpace0.w,IN.tSpace1.w,IN.tSpace2.w);
				float3 worldViewDir = normalize(UnityWorldSpaceViewDir(worldPos));
				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					UNITY_LIGHT_ATTENUATION(atten, IN, worldPos)
				#else
					half atten = 1;
				#endif

				float2 uv_MainTex = IN.ase_texcoord8.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 tex2DNode64 = tex2D( _MainTex, uv_MainTex );
				float4 diff345 = tex2DNode64;
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float3 temp_cast_0 = (_MinDirectLight).xxx;
				float3 temp_output_1128_0 = max( ase_lightColor.rgb , temp_cast_0 );
				float3 worldPos1029 = worldPos;
				float localPureLightAttenuation1029 = PureLightAttenuation( worldPos1029 );
				float3 temp_output_1073_0 = ( temp_output_1128_0 * (( _ShadowinLightColor )?( float4(atten,0,0,0) ):( localPureLightAttenuation1029 )) );
				float3 temp_cast_1 = (_MinDirectLight).xxx;
				float3 temp_cast_2 = (_MinDirectLight).xxx;
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1075 = temp_output_1073_0;
				#else
				float3 staticSwitch1075 = temp_output_1128_0;
				#endif
				float3 temp_cast_3 = (_MaxDirectLight).xxx;
				float4 Normal1127 = float4( 0,0,0,0 );
				float3 localShadeSH9out1127 = ShadeSH9out( Normal1127 );
				float3 localMaxShadeSH9876 = ( max(ShadeSH9(half4(0, 0, 0, 1)).rgb, ShadeSH9(half4(0, -1, 0, 1)).rgb) );
				float3 temp_cast_4 = (_MinIndirectLight).xxx;
				float3 temp_cast_5 = (_MaxIndirectLight).xxx;
				float3 temp_output_1005_0 = max( min( (( _NoShadowinDirectionalLightColor )?( staticSwitch1075 ):( temp_output_1073_0 )) , temp_cast_3 ) , min( max( (( _UnifyIndirectDiffuseLight )?( localMaxShadeSH9876 ):( localShadeSH9out1127 )) , temp_cast_4 ) , temp_cast_5 ) );
				float3 temp_cast_6 = (_MinDirectLight).xxx;
				float3 temp_cast_7 = (_MaxDirectLight).xxx;
				float3 temp_cast_8 = (_MinIndirectLight).xxx;
				float3 temp_cast_9 = (_MaxIndirectLight).xxx;
				float grayscale1095 = dot(temp_output_1005_0, float3(0.299,0.587,0.114));
				float3 temp_cast_10 = (grayscale1095).xxx;
				float3 lerpResult1096 = lerp( temp_output_1005_0 , temp_cast_10 , _LightColorGrayScale);
				float3 LightColor208 = lerpResult1096;
				float4 lerpResult1137 = lerp( (( _MixDiffuseinOutlineColor )?( ( _OutlineColor * diff345 ) ):( _OutlineColor )) , ( (( _MixDiffuseinOutlineColor )?( ( _OutlineColor * diff345 ) ):( _OutlineColor )) * float4( LightColor208 , 0.0 ) ) , _OutlineLightColor);
				float2 uv_ctrl2Tex = IN.ase_texcoord8.xy * _ctrl2Tex_ST.xy + _ctrl2Tex_ST.zw;
				float4 tex2DNode66 = tex2D( _ctrl2Tex, uv_ctrl2Tex );
				float OutlineCorrect1140 = tex2DNode66.r;
				clip( (( _Outline )?( (( _UseOutlineMask )?( OutlineCorrect1140 ):( 1.0 )) ):( 0.0 )) - _OutlineClip);
				
				float3 Color = lerpResult1137.rgb;
				float Alpha = 1;

				float4 c = float4( Color, Alpha );

				#ifdef _DEPTHOFFSET_ON
					outputDepth = IN.pos.z;
				#endif

				#ifdef ASE_FOG
					UNITY_APPLY_FOG(IN.fogCoord, c);
				#endif
				return c;
			}
			ENDCG
		}
		
		
		Pass
		{
			
			Name "ForwardBase"
			Tags { "LightMode"="ForwardBase" }

			CGINCLUDE
			#pragma target 3.0
			ENDCG
			Blend Off
			BlendOp Add, Add
			AlphaToMask Off
			Cull [_CullMode]
			ColorMask RGBA
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			Stencil
			{
				Ref [_StencilReference]
				ReadMask [_StencilReadMask]
				WriteMask [_StencilWriteMask]
				Comp [_StencilComparison]
				Pass [_StencilPassFront]
				Fail [_StencilFailFront]
				ZFail [_StencilZFailFront]
			}
			CGPROGRAM
			
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_fwdbase
			#ifndef UNITY_PASS_FORWARDBASE
			#define UNITY_PASS_FORWARDBASE
			#endif
			#include "UnityShaderVariables.cginc"
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			#include "AutoLight.cginc"
			#define ASE_SHADOWS 1
			#define ASE_NEEDS_VERT_NORMAL

			//This is a late directive
			
			uniform float _StencilZFailFront;
			uniform float _StencilComparison;
			uniform float _StencilPassFront;
			uniform float _StencilFailFront;
			uniform float _StencilWriteMask;
			uniform float _StencilReadMask;
			uniform float _StencilReference;
			uniform float _CullMode;
			uniform float4 _UnsaturationColor;
			uniform float4 _CharaColor;
			uniform float _NoShadowinDirectionalLightColor;
			uniform float _MinDirectLight;
			uniform float _ShadowinLightColor;
			uniform float _MaxDirectLight;
			uniform float _UnifyIndirectDiffuseLight;
			uniform float _MinIndirectLight;
			uniform float _MaxIndirectLight;
			uniform float _LightColorGrayScale;
			uniform float4 _GlobalRimColor;
			uniform float _CustomRimLightColor;
			uniform float _MinRimLightColor;
			uniform float4 _SpecularColor;
			uniform float4 _RimColor2;
			uniform float _RimSpecRate2;
			uniform float _RimStep2;
			uniform float _RimVerticalOffset2;
			uniform float _RimHorizonOffset2;
			uniform float _RimFeather2;
			uniform float _Use_DisRimMask;
			uniform float _RimAttenuation2;
			uniform float _RimShadowRate2;
			uniform float _SpecularPower;
			uniform sampler2D _spcTex;
			uniform float4 _spcTex_ST;
			uniform float _SpecularBias;
			uniform float _GlobalLightFactor;
			uniform float4 _ToonBrightColor;
			uniform sampler2D _MainTex;
			uniform float4 _MainTex_ST;
			uniform float _DiffuseLightFactor;
			uniform float4 _ToonDarkColor;
			uniform sampler2D _ShadTex;
			uniform float4 _ShadTex_ST;
			uniform float4 _GlobalShadowColor;
			uniform float _ShadowStep;
			uniform float _OnlyPaintedShadow;
			uniform float _ReceiveShadowLerp;
			uniform sampler2D _ctrl2Tex;
			uniform float4 _ctrl2Tex_ST;
			uniform float _ShadowFeather;
			uniform float _UseReflectionProbeAsEnvMap;
			uniform sampler2D _EnvTex;
			uniform float _EnvMatCap;
			uniform sampler2D _BumpMap;
			uniform float4 _BumpMap_ST;
			uniform float _RefProbeSmoothness;
			uniform float _EnvBias;
			uniform float _EnvRate;
			uniform float _Use_MetalMask;
			uniform sampler2D _ctrl1Tex;
			uniform float4 _ctrl1Tex_ST;
			uniform float _RimAttenuation;
			uniform float _RimShadowRate;
			uniform float4 _RimColor;
			uniform float _RimSpecRate;
			uniform float _RimStep;
			uniform float _RimVerticalOffset;
			uniform float _RimHorizonOffset;
			uniform float _RimFeather;
			uniform sampler2D _EmiTex;
			uniform float4 _EmiTex_ST;
			uniform float4 _EmissiveColor;
			uniform float _EmmisiveStrength;
			uniform float _Saturation;
			float PureLightAttenuation( float3 worldPos )
			{
				#ifdef POINT
				        unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz; \
				        return tex2D(_LightTexture0, dot(lightCoord, lightCoord).rr).r;
				#endif
				#ifdef SPOT
				#if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)
				#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1))
				#else
				#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = input._LightCoord
				#endif
				        DECLARE_LIGHT_COORD(input, worldPos); \
				        return (lightCoord.z > 0) * UnitySpotCookie(lightCoord) * UnitySpotAttenuate(lightCoord.xyz);
				#endif
				#ifdef DIRECTIONAL
				        return 1;
				#endif
				#ifdef POINT_COOKIE
				#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz
				#   else
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = input._LightCoord
				#   endif
				        DECLARE_LIGHT_COORD(input, worldPos); \
				        return tex2D(_LightTextureB0, dot(lightCoord, lightCoord).rr).r * texCUBE(_LightTexture0, lightCoord).w;
				#endif
				#ifdef DIRECTIONAL_COOKIE
				#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xy
				#   else
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = input._LightCoord
				#   endif
				        DECLARE_LIGHT_COORD(input, worldPos); \
				        return tex2D(_LightTexture0, lightCoord).w;
				#endif
			}
			
			float3 ShadeSH9out( half4 Normal )
			{
				return ShadeSH9(Normal);
			}
			
			float3 v_bias(  )
			{
				return float3(unity_MatrixV[0][1],unity_MatrixV[1][1],unity_MatrixV[2][1]);
			}
			
			float3 h_bias(  )
			{
				return float3(unity_MatrixV[0][0],unity_MatrixV[0][1],unity_MatrixV[0][2]);
			}
			
			float2 getMatcapUVs1147( float3 normal, float3 viewDir )
			{
				half3 worldUp = float3(0, 1, 0);
				half3 worldViewUp = normalize(worldUp - viewDir * dot(viewDir, worldUp));
				half3 worldViewRight = normalize(cross(viewDir, worldViewUp));
				return half2(dot(worldViewRight, normal), dot(worldViewUp, normal)) * 0.5 + 0.5;
			}
			
			float4 RefProbe( float3 dir, float smoothness )
			{
				float4 cube = 1;
				float roughness = 1 - smoothness;
				roughness *= 1.7 - 0.7 * roughness;
				float4 val = UNITY_SAMPLE_TEXCUBE_LOD(unity_SpecCube0, dir, roughness * UNITY_SPECCUBE_LOD_STEPS);
				cube.xyz = (DecodeHDR(val, unity_SpecCube0_HDR));
				return cube;
			}
			


			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_tangent : TANGENT;
			};
			
			struct v2f
			{
				float4 pos : SV_POSITION;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord1 : TEXCOORD1;
				UNITY_SHADOW_COORDS(2)
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
			};
			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord1.xyz = ase_worldPos;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord3.xyz = ase_worldNormal;
				float3 ase_worldTangent = UnityObjectToWorldDir(v.ase_tangent);
				o.ase_texcoord5.xyz = ase_worldTangent;
				float ase_vertexTangentSign = v.ase_tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord6.xyz = ase_worldBitangent;
				
				o.ase_texcoord4.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.w = 0;
				o.ase_texcoord3.w = 0;
				o.ase_texcoord4.zw = 0;
				o.ase_texcoord5.w = 0;
				o.ase_texcoord6.w = 0;
				
				v.vertex.xyz +=  float3(0,0,0) ;
				o.pos = UnityObjectToClipPos(v.vertex);
				#if ASE_SHADOWS
					#if UNITY_VERSION >= 560
						UNITY_TRANSFER_SHADOW( o, v.texcoord );
					#else
						TRANSFER_SHADOW( o );
					#endif
				#endif
				return o;
			}
			
			float4 frag (v2f i ) : SV_Target
			{
				float3 outColor;
				float outAlpha;

				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float3 temp_cast_0 = (_MinDirectLight).xxx;
				float3 temp_output_1128_0 = max( ase_lightColor.rgb , temp_cast_0 );
				float3 ase_worldPos = i.ase_texcoord1.xyz;
				float3 worldPos1029 = ase_worldPos;
				float localPureLightAttenuation1029 = PureLightAttenuation( worldPos1029 );
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 temp_output_1073_0 = ( temp_output_1128_0 * (( _ShadowinLightColor )?( ase_atten ):( localPureLightAttenuation1029 )) );
				float3 temp_cast_1 = (_MinDirectLight).xxx;
				float3 temp_cast_2 = (_MinDirectLight).xxx;
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1075 = temp_output_1073_0;
				#else
				float3 staticSwitch1075 = temp_output_1128_0;
				#endif
				float3 temp_cast_3 = (_MaxDirectLight).xxx;
				float4 Normal1127 = float4( 0,0,0,0 );
				float3 localShadeSH9out1127 = ShadeSH9out( Normal1127 );
				float3 localMaxShadeSH9876 = ( max(ShadeSH9(half4(0, 0, 0, 1)).rgb, ShadeSH9(half4(0, -1, 0, 1)).rgb) );
				float3 temp_cast_4 = (_MinIndirectLight).xxx;
				float3 temp_cast_5 = (_MaxIndirectLight).xxx;
				float3 temp_output_1005_0 = max( min( (( _NoShadowinDirectionalLightColor )?( staticSwitch1075 ):( temp_output_1073_0 )) , temp_cast_3 ) , min( max( (( _UnifyIndirectDiffuseLight )?( localMaxShadeSH9876 ):( localShadeSH9out1127 )) , temp_cast_4 ) , temp_cast_5 ) );
				float3 temp_cast_6 = (_MinDirectLight).xxx;
				float3 temp_cast_7 = (_MaxDirectLight).xxx;
				float3 temp_cast_8 = (_MinIndirectLight).xxx;
				float3 temp_cast_9 = (_MaxIndirectLight).xxx;
				float grayscale1095 = dot(temp_output_1005_0, float3(0.299,0.587,0.114));
				float3 temp_cast_10 = (grayscale1095).xxx;
				float3 lerpResult1096 = lerp( temp_output_1005_0 , temp_cast_10 , _LightColorGrayScale);
				float3 LightColor208 = lerpResult1096;
				float4 lerpResult1089 = lerp( float4( LightColor208 , 0.0 ) , _GlobalRimColor , _CustomRimLightColor);
				float4 temp_cast_12 = (_MinRimLightColor).xxxx;
				float4 clampResult1088 = clamp( lerpResult1089 , temp_cast_12 , float4( 1,1,1,0 ) );
				float4 SpecularColor539 = _SpecularColor;
				float4 RimColor2541 = _RimColor2;
				float4 lerpResult543 = lerp( SpecularColor539 , RimColor2541 , _RimSpecRate2);
				float3 localv_bias502 = v_bias();
				float3 localh_bias510 = h_bias();
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_worldNormal = i.ase_texcoord3.xyz;
				float dotResult505 = dot( ( ( -1.0 * localv_bias502 * _RimVerticalOffset2 ) + ( ( 1.0 - abs( _RimVerticalOffset2 ) ) * ( ( -1.0 * localh_bias510 * _RimHorizonOffset2 ) + ( ( 1.0 - abs( _RimHorizonOffset2 ) ) * ase_worldViewDir ) ) ) ) , ase_worldNormal );
				float rimoffset_Facing2513 = dotResult505;
				float RimMask355 = 0.0;
				float dis_rim360 = ( (( _Use_DisRimMask )?( ( RimMask355 - 0.5 ) ):( 0.0 )) + 0.5 );
				float RimStrength2462 = ( _RimColor2.a * pow( saturate( ( ( _RimStep2 - rimoffset_Facing2513 ) / _RimFeather2 ) ) , 3.0 ) * dis_rim360 );
				float localIsThereALight797 = ( any(_WorldSpaceLightPos0.xyz) );
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float3 localDefaultLightDir798 = ( normalize(UNITY_MATRIX_V[2].xyz + UNITY_MATRIX_V[1].xyz) );
				float3 LightDir801 = ( localIsThereALight797 == 1.0 ? worldSpaceLightDir : localDefaultLightDir798 );
				float dotResult551 = dot( LightDir801 , ase_worldNormal );
				float LambertTerm552 = dotResult551;
				float RimAtten1076 = localPureLightAttenuation1029;
				float lerpResult1085 = lerp( LambertTerm552 , ( LambertTerm552 * RimAtten1076 ) , _RimAttenuation2);
				float dotResult129 = dot( ase_worldViewDir , ase_worldNormal );
				float Facing136 = dotResult129;
				float fixed_specpower623 = exp2( ( ( _SpecularPower * -10.0 ) + 11.0 ) );
				float2 uv_spcTex = i.ase_texcoord4.xy * _spcTex_ST.xy + _spcTex_ST.zw;
				float grayscale1159 = (tex2D( _spcTex, uv_spcTex ).rgb.r + tex2D( _spcTex, uv_spcTex ).rgb.g + tex2D( _spcTex, uv_spcTex ).rgb.b) / 3;
				float SpecularMask436 = grayscale1159;
				float SpecularPower438 = ( min( pow( max( Facing136 , 0.0 ) , ( ( fixed_specpower623 * 10.0 ) + 1.0 ) ) , 1.0 ) * SpecularMask436 * (0.0 + (_SpecularBias - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) );
				float GlobalLightFactor1011 = _GlobalLightFactor;
				float4 lerpResult1016 = lerp( ( _SpecularColor * SpecularPower438 ) , ( _SpecularColor * SpecularPower438 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1011);
				float2 uv_MainTex = i.ase_texcoord4.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 tex2DNode64 = tex2D( _MainTex, uv_MainTex );
				float4 diff345 = tex2DNode64;
				float DiffuseLightFactor1119 = _DiffuseLightFactor;
				float4 lerpResult1009 = lerp( diff345 , ( diff345 * float4( LightColor208 , 0.0 ) ) , DiffuseLightFactor1119);
				float4 lit_diff349 = lerpResult1009;
				float4 toon_diff370 = ( 0.5 >= _ToonBrightColor.a ? ( _ToonBrightColor * lit_diff349 ) : ( _ToonBrightColor + lit_diff349 ) );
				float2 uv_ShadTex = i.ase_texcoord4.xy * _ShadTex_ST.xy + _ShadTex_ST.zw;
				float4 shad_c330 = tex2D( _ShadTex, uv_ShadTex );
				float4 lerpResult1008 = lerp( shad_c330 , ( shad_c330 * float4( LightColor208 , 0.0 ) * _GlobalShadowColor ) , DiffuseLightFactor1119);
				float4 lit_shad344 = lerpResult1008;
				float2 uv_ctrl2Tex = i.ase_texcoord4.xy * _ctrl2Tex_ST.xy + _ctrl2Tex_ST.zw;
				float4 tex2DNode66 = tex2D( _ctrl2Tex, uv_ctrl2Tex );
				float ShadowMask408 = tex2DNode66.b;
				float dotResult779 = dot( LightDir801 , ase_worldNormal );
				float HalfLambertTerm781 = (dotResult779*0.5 + 0.5);
				float localIsThereALight1124 = ( any(_WorldSpaceLightPos0.xyz) );
				float HalfShadowAttenuation1070 = ( localIsThereALight1124 == 1.0 ? (saturate( ase_atten )*0.5 + 0.5) : 1.0 );
				float shad_lerp339 = saturate( ( ( _ShadowStep - (( _OnlyPaintedShadow )?( ShadowMask408 ):( (( _ReceiveShadowLerp )?( ( ShadowMask408 * HalfLambertTerm781 * HalfShadowAttenuation1070 ) ):( ( ShadowMask408 * HalfLambertTerm781 ) )) )) ) / _ShadowFeather ) );
				float4 lerpResult405 = lerp( toon_diff370 , ( 0.5 >= _ToonDarkColor.a ? ( _ToonDarkColor * lit_shad344 ) : ( _ToonDarkColor + lit_shad344 ) ) , shad_lerp339);
				float4 shaded_diff399 = lerpResult405;
				float4 specshaded_diff445 = ( lerpResult1016 + shaded_diff399 );
				float3 normal2view521 = mul( UNITY_MATRIX_V, float4( ase_worldNormal , 0.0 ) ).xyz;
				float2 uv_BumpMap = i.ase_texcoord4.xy * _BumpMap_ST.xy + _BumpMap_ST.zw;
				float3 tex2DNode1148 = UnpackNormal( tex2D( _BumpMap, uv_BumpMap ) );
				float3 ase_worldTangent = i.ase_texcoord5.xyz;
				float3 ase_worldBitangent = i.ase_texcoord6.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal1150 = tex2DNode1148;
				float3 worldNormal1150 = normalize( float3(dot(tanToWorld0,tanNormal1150), dot(tanToWorld1,tanNormal1150), dot(tanToWorld2,tanNormal1150)) );
				float3 WorldNormal1149 = worldNormal1150;
				float3 normal1147 = WorldNormal1149;
				float3 viewDir1147 = ase_worldViewDir;
				float2 localgetMatcapUVs1147 = getMatcapUVs1147( normal1147 , viewDir1147 );
				float2 matcapUV1145 = localgetMatcapUVs1147;
				float3 NormalMap1153 = tex2DNode1148;
				float3 worldRefl1156 = reflect( -ase_worldViewDir, float3( dot( tanToWorld0, NormalMap1153 ), dot( tanToWorld1, NormalMap1153 ), dot( tanToWorld2, NormalMap1153 ) ) );
				float3 dir1157 = worldRefl1156;
				float smoothness1157 = _RefProbeSmoothness;
				float4 localRefProbe1157 = RefProbe( dir1157 , smoothness1157 );
				float2 uv_ctrl1Tex = i.ase_texcoord4.xy * _ctrl1Tex_ST.xy + _ctrl1Tex_ST.zw;
				float MetalMask350 = (( _Use_MetalMask )?( tex2D( _ctrl1Tex, uv_ctrl1Tex ).g ):( 0.0 ));
				float4 lerpResult532 = lerp( specshaded_diff445 , ( specshaded_diff445 * (( _UseReflectionProbeAsEnvMap )?( localRefProbe1157 ):( tex2D( _EnvTex, (( _EnvMatCap )?( float3( matcapUV1145 ,  0.0 ) ):( ( ( float3( float2( 1,1 ) ,  0.0 ) + normal2view521 ) * 0.5 ) )).xy ) )) * _EnvBias ) , saturate( ( _EnvRate * MetalMask350 ) ));
				float4 EnvSpecShaded_diff542 = lerpResult532;
				float lerpResult1083 = lerp( LambertTerm552 , ( LambertTerm552 * RimAtten1076 ) , _RimAttenuation);
				float4 RimColor540 = _RimColor;
				float4 lerpResult564 = lerp( SpecularColor539 , RimColor540 , _RimSpecRate);
				float3 localv_bias475 = v_bias();
				float3 localh_bias473 = h_bias();
				float dotResult463 = dot( ( ( -1.0 * localv_bias475 * _RimVerticalOffset ) + ( ( 1.0 - abs( _RimVerticalOffset ) ) * ( ( -1.0 * localh_bias473 * _RimHorizonOffset ) + ( ( 1.0 - abs( _RimHorizonOffset ) ) * ase_worldViewDir ) ) ) ) , ase_worldNormal );
				float rimoffset_Facing493 = dotResult463;
				float RimStrength427 = ( _RimColor.a * pow( saturate( ( ( _RimStep - rimoffset_Facing493 ) / _RimFeather ) ) , 3.0 ) * dis_rim360 );
				float4 temp_output_563_0 = ( ( saturate( lerpResult1083 ) + _RimShadowRate ) * ( lerpResult564 * RimStrength427 ) * clampResult1088 );
				float4 RimEnvSpecShaded_diff562 = ( EnvSpecShaded_diff542 + temp_output_563_0 );
				float4 Rim2EnvSpecShaded_diff577 = ( ( clampResult1088 * ( lerpResult543 * RimStrength2462 ) * ( saturate( lerpResult1085 ) + _RimShadowRate2 ) ) + RimEnvSpecShaded_diff562 );
				float4 lerpResult1021 = lerp( ( _CharaColor * Rim2EnvSpecShaded_diff577 ) , ( _CharaColor * Rim2EnvSpecShaded_diff577 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1011);
				float2 uv_EmiTex = i.ase_texcoord4.xy * _EmiTex_ST.xy + _EmiTex_ST.zw;
				float4 Emissive600 = tex2D( _EmiTex, uv_EmiTex );
				float4 Refined_diff612 = ( lerpResult1021 + ( ( 1.0 - (0) ) * Emissive600 * _EmissiveColor * _EmmisiveStrength ) );
				float dotResult614 = dot( _UnsaturationColor , Refined_diff612 );
				float4 temp_cast_25 = (dotResult614).xxxx;
				float4 lerpResult616 = lerp( temp_cast_25 , Refined_diff612 , _Saturation);
				float4 output_diff618 = lerpResult616;
				
				
				outColor = output_diff618.rgb;
				outAlpha = 1;
				return float4(outColor,outAlpha);
			}
			ENDCG
		}
		
		
		Pass
		{
			Name "ForwardAdd"
			Tags { "LightMode"="ForwardAdd" }
			ZWrite Off
			CGINCLUDE
			#pragma target 3.0
			ENDCG
			Blend One One, Zero One
			BlendOp Max, Max
			AlphaToMask Off
			Cull [_CullMode]
			ColorMask RGBA
			Stencil
			{
				Ref [_StencilReference]
				ReadMask [_StencilReadMask]
				WriteMask [_StencilWriteMask]
				Comp [_StencilComparison]
				Pass [_StencilPassFront]
				Fail [_StencilFailFront]
				ZFail [_StencilZFailFront]
			}
			CGPROGRAM
			
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_fwdadd_fullshadows
			#ifndef UNITY_PASS_FORWARDADD
			#define UNITY_PASS_FORWARDADD
			#endif
			#include "UnityShaderVariables.cginc"
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			#include "AutoLight.cginc"
			#define ASE_SHADOWS 1
			#define ASE_NEEDS_VERT_NORMAL

			//This is a late directive
			
			uniform float _StencilZFailFront;
			uniform float _StencilComparison;
			uniform float _StencilPassFront;
			uniform float _StencilFailFront;
			uniform float _StencilWriteMask;
			uniform float _StencilReadMask;
			uniform float _StencilReference;
			uniform float _CullMode;
			uniform float4 _UnsaturationColor;
			uniform float4 _CharaColor;
			uniform float _NoShadowinDirectionalLightColor;
			uniform float _MinDirectLight;
			uniform float _ShadowinLightColor;
			uniform float _MaxDirectLight;
			uniform float _UnifyIndirectDiffuseLight;
			uniform float _MinIndirectLight;
			uniform float _MaxIndirectLight;
			uniform float _LightColorGrayScale;
			uniform float4 _GlobalRimColor;
			uniform float _CustomRimLightColor;
			uniform float _MinRimLightColor;
			uniform float4 _SpecularColor;
			uniform float4 _RimColor2;
			uniform float _RimSpecRate2;
			uniform float _RimStep2;
			uniform float _RimVerticalOffset2;
			uniform float _RimHorizonOffset2;
			uniform float _RimFeather2;
			uniform float _Use_DisRimMask;
			uniform float _RimAttenuation2;
			uniform float _RimShadowRate2;
			uniform float _SpecularPower;
			uniform sampler2D _spcTex;
			uniform float4 _spcTex_ST;
			uniform float _SpecularBias;
			uniform float _GlobalLightFactor;
			uniform float4 _ToonBrightColor;
			uniform sampler2D _MainTex;
			uniform float4 _MainTex_ST;
			uniform float _DiffuseLightFactor;
			uniform float4 _ToonDarkColor;
			uniform sampler2D _ShadTex;
			uniform float4 _ShadTex_ST;
			uniform float4 _GlobalShadowColor;
			uniform float _ShadowStep;
			uniform float _OnlyPaintedShadow;
			uniform float _ReceiveShadowLerp;
			uniform sampler2D _ctrl2Tex;
			uniform float4 _ctrl2Tex_ST;
			uniform float _ShadowFeather;
			uniform float _UseReflectionProbeAsEnvMap;
			uniform sampler2D _EnvTex;
			uniform float _EnvMatCap;
			uniform sampler2D _BumpMap;
			uniform float4 _BumpMap_ST;
			uniform float _RefProbeSmoothness;
			uniform float _EnvBias;
			uniform float _EnvRate;
			uniform float _Use_MetalMask;
			uniform sampler2D _ctrl1Tex;
			uniform float4 _ctrl1Tex_ST;
			uniform float _RimAttenuation;
			uniform float _RimShadowRate;
			uniform float4 _RimColor;
			uniform float _RimSpecRate;
			uniform float _RimStep;
			uniform float _RimVerticalOffset;
			uniform float _RimHorizonOffset;
			uniform float _RimFeather;
			uniform sampler2D _EmiTex;
			uniform float4 _EmiTex_ST;
			uniform float4 _EmissiveColor;
			uniform float _EmmisiveStrength;
			uniform float _Saturation;
			float PureLightAttenuation( float3 worldPos )
			{
				#ifdef POINT
				        unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz; \
				        return tex2D(_LightTexture0, dot(lightCoord, lightCoord).rr).r;
				#endif
				#ifdef SPOT
				#if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)
				#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1))
				#else
				#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = input._LightCoord
				#endif
				        DECLARE_LIGHT_COORD(input, worldPos); \
				        return (lightCoord.z > 0) * UnitySpotCookie(lightCoord) * UnitySpotAttenuate(lightCoord.xyz);
				#endif
				#ifdef DIRECTIONAL
				        return 1;
				#endif
				#ifdef POINT_COOKIE
				#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz
				#   else
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = input._LightCoord
				#   endif
				        DECLARE_LIGHT_COORD(input, worldPos); \
				        return tex2D(_LightTextureB0, dot(lightCoord, lightCoord).rr).r * texCUBE(_LightTexture0, lightCoord).w;
				#endif
				#ifdef DIRECTIONAL_COOKIE
				#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xy
				#   else
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = input._LightCoord
				#   endif
				        DECLARE_LIGHT_COORD(input, worldPos); \
				        return tex2D(_LightTexture0, lightCoord).w;
				#endif
			}
			
			float3 ShadeSH9out( half4 Normal )
			{
				return ShadeSH9(Normal);
			}
			
			float3 v_bias(  )
			{
				return float3(unity_MatrixV[0][1],unity_MatrixV[1][1],unity_MatrixV[2][1]);
			}
			
			float3 h_bias(  )
			{
				return float3(unity_MatrixV[0][0],unity_MatrixV[0][1],unity_MatrixV[0][2]);
			}
			
			float2 getMatcapUVs1147( float3 normal, float3 viewDir )
			{
				half3 worldUp = float3(0, 1, 0);
				half3 worldViewUp = normalize(worldUp - viewDir * dot(viewDir, worldUp));
				half3 worldViewRight = normalize(cross(viewDir, worldViewUp));
				return half2(dot(worldViewRight, normal), dot(worldViewUp, normal)) * 0.5 + 0.5;
			}
			
			float4 RefProbe( float3 dir, float smoothness )
			{
				float4 cube = 1;
				float roughness = 1 - smoothness;
				roughness *= 1.7 - 0.7 * roughness;
				float4 val = UNITY_SAMPLE_TEXCUBE_LOD(unity_SpecCube0, dir, roughness * UNITY_SPECCUBE_LOD_STEPS);
				cube.xyz = (DecodeHDR(val, unity_SpecCube0_HDR));
				return cube;
			}
			


			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_tangent : TANGENT;
			};
			
			struct v2f
			{
				float4 pos : SV_POSITION;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord1 : TEXCOORD1;
				UNITY_SHADOW_COORDS(2)
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
			};
			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord1.xyz = ase_worldPos;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord3.xyz = ase_worldNormal;
				float3 ase_worldTangent = UnityObjectToWorldDir(v.ase_tangent);
				o.ase_texcoord5.xyz = ase_worldTangent;
				float ase_vertexTangentSign = v.ase_tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord6.xyz = ase_worldBitangent;
				
				o.ase_texcoord4.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.w = 0;
				o.ase_texcoord3.w = 0;
				o.ase_texcoord4.zw = 0;
				o.ase_texcoord5.w = 0;
				o.ase_texcoord6.w = 0;
				
				v.vertex.xyz +=  float3(0,0,0) ;
				o.pos = UnityObjectToClipPos(v.vertex);
				#if ASE_SHADOWS
					#if UNITY_VERSION >= 560
						UNITY_TRANSFER_SHADOW( o, v.texcoord );
					#else
						TRANSFER_SHADOW( o );
					#endif
				#endif
				return o;
			}
			
			float4 frag (v2f i ) : SV_Target
			{
				float3 outColor;
				float outAlpha;

				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float3 temp_cast_0 = (_MinDirectLight).xxx;
				float3 temp_output_1128_0 = max( ase_lightColor.rgb , temp_cast_0 );
				float3 ase_worldPos = i.ase_texcoord1.xyz;
				float3 worldPos1029 = ase_worldPos;
				float localPureLightAttenuation1029 = PureLightAttenuation( worldPos1029 );
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 temp_output_1073_0 = ( temp_output_1128_0 * (( _ShadowinLightColor )?( ase_atten ):( localPureLightAttenuation1029 )) );
				float3 temp_cast_1 = (_MinDirectLight).xxx;
				float3 temp_cast_2 = (_MinDirectLight).xxx;
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1075 = temp_output_1073_0;
				#else
				float3 staticSwitch1075 = temp_output_1128_0;
				#endif
				float3 temp_cast_3 = (_MaxDirectLight).xxx;
				float4 Normal1127 = float4( 0,0,0,0 );
				float3 localShadeSH9out1127 = ShadeSH9out( Normal1127 );
				float3 localMaxShadeSH9876 = ( max(ShadeSH9(half4(0, 0, 0, 1)).rgb, ShadeSH9(half4(0, -1, 0, 1)).rgb) );
				float3 temp_cast_4 = (_MinIndirectLight).xxx;
				float3 temp_cast_5 = (_MaxIndirectLight).xxx;
				float3 temp_output_1005_0 = max( min( (( _NoShadowinDirectionalLightColor )?( staticSwitch1075 ):( temp_output_1073_0 )) , temp_cast_3 ) , min( max( (( _UnifyIndirectDiffuseLight )?( localMaxShadeSH9876 ):( localShadeSH9out1127 )) , temp_cast_4 ) , temp_cast_5 ) );
				float3 temp_cast_6 = (_MinDirectLight).xxx;
				float3 temp_cast_7 = (_MaxDirectLight).xxx;
				float3 temp_cast_8 = (_MinIndirectLight).xxx;
				float3 temp_cast_9 = (_MaxIndirectLight).xxx;
				float grayscale1095 = dot(temp_output_1005_0, float3(0.299,0.587,0.114));
				float3 temp_cast_10 = (grayscale1095).xxx;
				float3 lerpResult1096 = lerp( temp_output_1005_0 , temp_cast_10 , _LightColorGrayScale);
				float3 LightColor208 = lerpResult1096;
				float4 lerpResult1089 = lerp( float4( LightColor208 , 0.0 ) , _GlobalRimColor , _CustomRimLightColor);
				float4 temp_cast_12 = (_MinRimLightColor).xxxx;
				float4 clampResult1088 = clamp( lerpResult1089 , temp_cast_12 , float4( 1,1,1,0 ) );
				float4 SpecularColor539 = _SpecularColor;
				float4 RimColor2541 = _RimColor2;
				float4 lerpResult543 = lerp( SpecularColor539 , RimColor2541 , _RimSpecRate2);
				float3 localv_bias502 = v_bias();
				float3 localh_bias510 = h_bias();
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_worldNormal = i.ase_texcoord3.xyz;
				float dotResult505 = dot( ( ( -1.0 * localv_bias502 * _RimVerticalOffset2 ) + ( ( 1.0 - abs( _RimVerticalOffset2 ) ) * ( ( -1.0 * localh_bias510 * _RimHorizonOffset2 ) + ( ( 1.0 - abs( _RimHorizonOffset2 ) ) * ase_worldViewDir ) ) ) ) , ase_worldNormal );
				float rimoffset_Facing2513 = dotResult505;
				float RimMask355 = 0.0;
				float dis_rim360 = ( (( _Use_DisRimMask )?( ( RimMask355 - 0.5 ) ):( 0.0 )) + 0.5 );
				float RimStrength2462 = ( _RimColor2.a * pow( saturate( ( ( _RimStep2 - rimoffset_Facing2513 ) / _RimFeather2 ) ) , 3.0 ) * dis_rim360 );
				float localIsThereALight797 = ( any(_WorldSpaceLightPos0.xyz) );
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float3 localDefaultLightDir798 = ( normalize(UNITY_MATRIX_V[2].xyz + UNITY_MATRIX_V[1].xyz) );
				float3 LightDir801 = ( localIsThereALight797 == 1.0 ? worldSpaceLightDir : localDefaultLightDir798 );
				float dotResult551 = dot( LightDir801 , ase_worldNormal );
				float LambertTerm552 = dotResult551;
				float RimAtten1076 = localPureLightAttenuation1029;
				float lerpResult1085 = lerp( LambertTerm552 , ( LambertTerm552 * RimAtten1076 ) , _RimAttenuation2);
				float dotResult129 = dot( ase_worldViewDir , ase_worldNormal );
				float Facing136 = dotResult129;
				float fixed_specpower623 = exp2( ( ( _SpecularPower * -10.0 ) + 11.0 ) );
				float2 uv_spcTex = i.ase_texcoord4.xy * _spcTex_ST.xy + _spcTex_ST.zw;
				float grayscale1159 = (tex2D( _spcTex, uv_spcTex ).rgb.r + tex2D( _spcTex, uv_spcTex ).rgb.g + tex2D( _spcTex, uv_spcTex ).rgb.b) / 3;
				float SpecularMask436 = grayscale1159;
				float SpecularPower438 = ( min( pow( max( Facing136 , 0.0 ) , ( ( fixed_specpower623 * 10.0 ) + 1.0 ) ) , 1.0 ) * SpecularMask436 * (0.0 + (_SpecularBias - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) );
				float GlobalLightFactor1011 = _GlobalLightFactor;
				float4 lerpResult1016 = lerp( ( _SpecularColor * SpecularPower438 ) , ( _SpecularColor * SpecularPower438 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1011);
				float2 uv_MainTex = i.ase_texcoord4.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 tex2DNode64 = tex2D( _MainTex, uv_MainTex );
				float4 diff345 = tex2DNode64;
				float DiffuseLightFactor1119 = _DiffuseLightFactor;
				float4 lerpResult1009 = lerp( diff345 , ( diff345 * float4( LightColor208 , 0.0 ) ) , DiffuseLightFactor1119);
				float4 lit_diff349 = lerpResult1009;
				float4 toon_diff370 = ( 0.5 >= _ToonBrightColor.a ? ( _ToonBrightColor * lit_diff349 ) : ( _ToonBrightColor + lit_diff349 ) );
				float2 uv_ShadTex = i.ase_texcoord4.xy * _ShadTex_ST.xy + _ShadTex_ST.zw;
				float4 shad_c330 = tex2D( _ShadTex, uv_ShadTex );
				float4 lerpResult1008 = lerp( shad_c330 , ( shad_c330 * float4( LightColor208 , 0.0 ) * _GlobalShadowColor ) , DiffuseLightFactor1119);
				float4 lit_shad344 = lerpResult1008;
				float2 uv_ctrl2Tex = i.ase_texcoord4.xy * _ctrl2Tex_ST.xy + _ctrl2Tex_ST.zw;
				float4 tex2DNode66 = tex2D( _ctrl2Tex, uv_ctrl2Tex );
				float ShadowMask408 = tex2DNode66.b;
				float dotResult779 = dot( LightDir801 , ase_worldNormal );
				float HalfLambertTerm781 = (dotResult779*0.5 + 0.5);
				float localIsThereALight1124 = ( any(_WorldSpaceLightPos0.xyz) );
				float HalfShadowAttenuation1070 = ( localIsThereALight1124 == 1.0 ? (saturate( ase_atten )*0.5 + 0.5) : 1.0 );
				float shad_lerp339 = saturate( ( ( _ShadowStep - (( _OnlyPaintedShadow )?( ShadowMask408 ):( (( _ReceiveShadowLerp )?( ( ShadowMask408 * HalfLambertTerm781 * HalfShadowAttenuation1070 ) ):( ( ShadowMask408 * HalfLambertTerm781 ) )) )) ) / _ShadowFeather ) );
				float4 lerpResult405 = lerp( toon_diff370 , ( 0.5 >= _ToonDarkColor.a ? ( _ToonDarkColor * lit_shad344 ) : ( _ToonDarkColor + lit_shad344 ) ) , shad_lerp339);
				float4 shaded_diff399 = lerpResult405;
				float4 specshaded_diff445 = ( lerpResult1016 + shaded_diff399 );
				float3 normal2view521 = mul( UNITY_MATRIX_V, float4( ase_worldNormal , 0.0 ) ).xyz;
				float2 uv_BumpMap = i.ase_texcoord4.xy * _BumpMap_ST.xy + _BumpMap_ST.zw;
				float3 tex2DNode1148 = UnpackNormal( tex2D( _BumpMap, uv_BumpMap ) );
				float3 ase_worldTangent = i.ase_texcoord5.xyz;
				float3 ase_worldBitangent = i.ase_texcoord6.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal1150 = tex2DNode1148;
				float3 worldNormal1150 = normalize( float3(dot(tanToWorld0,tanNormal1150), dot(tanToWorld1,tanNormal1150), dot(tanToWorld2,tanNormal1150)) );
				float3 WorldNormal1149 = worldNormal1150;
				float3 normal1147 = WorldNormal1149;
				float3 viewDir1147 = ase_worldViewDir;
				float2 localgetMatcapUVs1147 = getMatcapUVs1147( normal1147 , viewDir1147 );
				float2 matcapUV1145 = localgetMatcapUVs1147;
				float3 NormalMap1153 = tex2DNode1148;
				float3 worldRefl1156 = reflect( -ase_worldViewDir, float3( dot( tanToWorld0, NormalMap1153 ), dot( tanToWorld1, NormalMap1153 ), dot( tanToWorld2, NormalMap1153 ) ) );
				float3 dir1157 = worldRefl1156;
				float smoothness1157 = _RefProbeSmoothness;
				float4 localRefProbe1157 = RefProbe( dir1157 , smoothness1157 );
				float2 uv_ctrl1Tex = i.ase_texcoord4.xy * _ctrl1Tex_ST.xy + _ctrl1Tex_ST.zw;
				float MetalMask350 = (( _Use_MetalMask )?( tex2D( _ctrl1Tex, uv_ctrl1Tex ).g ):( 0.0 ));
				float4 lerpResult532 = lerp( specshaded_diff445 , ( specshaded_diff445 * (( _UseReflectionProbeAsEnvMap )?( localRefProbe1157 ):( tex2D( _EnvTex, (( _EnvMatCap )?( float3( matcapUV1145 ,  0.0 ) ):( ( ( float3( float2( 1,1 ) ,  0.0 ) + normal2view521 ) * 0.5 ) )).xy ) )) * _EnvBias ) , saturate( ( _EnvRate * MetalMask350 ) ));
				float4 EnvSpecShaded_diff542 = lerpResult532;
				float lerpResult1083 = lerp( LambertTerm552 , ( LambertTerm552 * RimAtten1076 ) , _RimAttenuation);
				float4 RimColor540 = _RimColor;
				float4 lerpResult564 = lerp( SpecularColor539 , RimColor540 , _RimSpecRate);
				float3 localv_bias475 = v_bias();
				float3 localh_bias473 = h_bias();
				float dotResult463 = dot( ( ( -1.0 * localv_bias475 * _RimVerticalOffset ) + ( ( 1.0 - abs( _RimVerticalOffset ) ) * ( ( -1.0 * localh_bias473 * _RimHorizonOffset ) + ( ( 1.0 - abs( _RimHorizonOffset ) ) * ase_worldViewDir ) ) ) ) , ase_worldNormal );
				float rimoffset_Facing493 = dotResult463;
				float RimStrength427 = ( _RimColor.a * pow( saturate( ( ( _RimStep - rimoffset_Facing493 ) / _RimFeather ) ) , 3.0 ) * dis_rim360 );
				float4 temp_output_563_0 = ( ( saturate( lerpResult1083 ) + _RimShadowRate ) * ( lerpResult564 * RimStrength427 ) * clampResult1088 );
				float4 RimEnvSpecShaded_diff562 = ( EnvSpecShaded_diff542 + temp_output_563_0 );
				float4 Rim2EnvSpecShaded_diff577 = ( ( clampResult1088 * ( lerpResult543 * RimStrength2462 ) * ( saturate( lerpResult1085 ) + _RimShadowRate2 ) ) + RimEnvSpecShaded_diff562 );
				float4 lerpResult1021 = lerp( ( _CharaColor * Rim2EnvSpecShaded_diff577 ) , ( _CharaColor * Rim2EnvSpecShaded_diff577 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1011);
				float2 uv_EmiTex = i.ase_texcoord4.xy * _EmiTex_ST.xy + _EmiTex_ST.zw;
				float4 Emissive600 = tex2D( _EmiTex, uv_EmiTex );
				float4 Refined_diff612 = ( lerpResult1021 + ( ( 1.0 - (0) ) * Emissive600 * _EmissiveColor * _EmmisiveStrength ) );
				float dotResult614 = dot( _UnsaturationColor , Refined_diff612 );
				float4 temp_cast_25 = (dotResult614).xxxx;
				float4 lerpResult616 = lerp( temp_cast_25 , Refined_diff612 , _Saturation);
				float4 output_diff618 = lerpResult616;
				
				
				outColor = output_diff618.rgb;
				outAlpha = 1;
				return float4(outColor,outAlpha);
			}
			ENDCG
		}

		
		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }
			ZWrite On
			ZTest LEqual
			CGPROGRAM
			
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_shadowcaster
			#ifndef UNITY_PASS_SHADOWCASTER
			#define UNITY_PASS_SHADOWCASTER
			#endif
			#include "UnityShaderVariables.cginc"
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			#include "AutoLight.cginc"
			#define ASE_SHADOWS 1
			#define ASE_NEEDS_VERT_NORMAL

			//This is a late directive
			
			uniform float _StencilZFailFront;
			uniform float _StencilComparison;
			uniform float _StencilPassFront;
			uniform float _StencilFailFront;
			uniform float _StencilWriteMask;
			uniform float _StencilReadMask;
			uniform float _StencilReference;
			uniform float _CullMode;
			uniform float4 _UnsaturationColor;
			uniform float4 _CharaColor;
			uniform float _NoShadowinDirectionalLightColor;
			uniform float _MinDirectLight;
			uniform float _ShadowinLightColor;
			uniform float _MaxDirectLight;
			uniform float _UnifyIndirectDiffuseLight;
			uniform float _MinIndirectLight;
			uniform float _MaxIndirectLight;
			uniform float _LightColorGrayScale;
			uniform float4 _GlobalRimColor;
			uniform float _CustomRimLightColor;
			uniform float _MinRimLightColor;
			uniform float4 _SpecularColor;
			uniform float4 _RimColor2;
			uniform float _RimSpecRate2;
			uniform float _RimStep2;
			uniform float _RimVerticalOffset2;
			uniform float _RimHorizonOffset2;
			uniform float _RimFeather2;
			uniform float _Use_DisRimMask;
			uniform float _RimAttenuation2;
			uniform float _RimShadowRate2;
			uniform float _SpecularPower;
			uniform sampler2D _spcTex;
			uniform float4 _spcTex_ST;
			uniform float _SpecularBias;
			uniform float _GlobalLightFactor;
			uniform float4 _ToonBrightColor;
			uniform sampler2D _MainTex;
			uniform float4 _MainTex_ST;
			uniform float _DiffuseLightFactor;
			uniform float4 _ToonDarkColor;
			uniform sampler2D _ShadTex;
			uniform float4 _ShadTex_ST;
			uniform float4 _GlobalShadowColor;
			uniform float _ShadowStep;
			uniform float _OnlyPaintedShadow;
			uniform float _ReceiveShadowLerp;
			uniform sampler2D _ctrl2Tex;
			uniform float4 _ctrl2Tex_ST;
			uniform float _ShadowFeather;
			uniform float _UseReflectionProbeAsEnvMap;
			uniform sampler2D _EnvTex;
			uniform float _EnvMatCap;
			uniform sampler2D _BumpMap;
			uniform float4 _BumpMap_ST;
			uniform float _RefProbeSmoothness;
			uniform float _EnvBias;
			uniform float _EnvRate;
			uniform float _Use_MetalMask;
			uniform sampler2D _ctrl1Tex;
			uniform float4 _ctrl1Tex_ST;
			uniform float _RimAttenuation;
			uniform float _RimShadowRate;
			uniform float4 _RimColor;
			uniform float _RimSpecRate;
			uniform float _RimStep;
			uniform float _RimVerticalOffset;
			uniform float _RimHorizonOffset;
			uniform float _RimFeather;
			uniform sampler2D _EmiTex;
			uniform float4 _EmiTex_ST;
			uniform float4 _EmissiveColor;
			uniform float _EmmisiveStrength;
			uniform float _Saturation;
			float PureLightAttenuation( float3 worldPos )
			{
				#ifdef POINT
				        unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz; \
				        return tex2D(_LightTexture0, dot(lightCoord, lightCoord).rr).r;
				#endif
				#ifdef SPOT
				#if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)
				#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1))
				#else
				#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = input._LightCoord
				#endif
				        DECLARE_LIGHT_COORD(input, worldPos); \
				        return (lightCoord.z > 0) * UnitySpotCookie(lightCoord) * UnitySpotAttenuate(lightCoord.xyz);
				#endif
				#ifdef DIRECTIONAL
				        return 1;
				#endif
				#ifdef POINT_COOKIE
				#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz
				#   else
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = input._LightCoord
				#   endif
				        DECLARE_LIGHT_COORD(input, worldPos); \
				        return tex2D(_LightTextureB0, dot(lightCoord, lightCoord).rr).r * texCUBE(_LightTexture0, lightCoord).w;
				#endif
				#ifdef DIRECTIONAL_COOKIE
				#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xy
				#   else
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = input._LightCoord
				#   endif
				        DECLARE_LIGHT_COORD(input, worldPos); \
				        return tex2D(_LightTexture0, lightCoord).w;
				#endif
			}
			
			float3 ShadeSH9out( half4 Normal )
			{
				return ShadeSH9(Normal);
			}
			
			float3 v_bias(  )
			{
				return float3(unity_MatrixV[0][1],unity_MatrixV[1][1],unity_MatrixV[2][1]);
			}
			
			float3 h_bias(  )
			{
				return float3(unity_MatrixV[0][0],unity_MatrixV[0][1],unity_MatrixV[0][2]);
			}
			
			float2 getMatcapUVs1147( float3 normal, float3 viewDir )
			{
				half3 worldUp = float3(0, 1, 0);
				half3 worldViewUp = normalize(worldUp - viewDir * dot(viewDir, worldUp));
				half3 worldViewRight = normalize(cross(viewDir, worldViewUp));
				return half2(dot(worldViewRight, normal), dot(worldViewUp, normal)) * 0.5 + 0.5;
			}
			
			float4 RefProbe( float3 dir, float smoothness )
			{
				float4 cube = 1;
				float roughness = 1 - smoothness;
				roughness *= 1.7 - 0.7 * roughness;
				float4 val = UNITY_SAMPLE_TEXCUBE_LOD(unity_SpecCube0, dir, roughness * UNITY_SPECCUBE_LOD_STEPS);
				cube.xyz = (DecodeHDR(val, unity_SpecCube0_HDR));
				return cube;
			}
			


			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_tangent : TANGENT;
			};
			
			struct v2f
			{
				V2F_SHADOW_CASTER;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord1 : TEXCOORD1;
				UNITY_SHADOW_COORDS(2)
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
			};

			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord1.xyz = ase_worldPos;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord3.xyz = ase_worldNormal;
				float3 ase_worldTangent = UnityObjectToWorldDir(v.ase_tangent);
				o.ase_texcoord5.xyz = ase_worldTangent;
				float ase_vertexTangentSign = v.ase_tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord6.xyz = ase_worldBitangent;
				
				o.ase_texcoord4.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.w = 0;
				o.ase_texcoord3.w = 0;
				o.ase_texcoord4.zw = 0;
				o.ase_texcoord5.w = 0;
				o.ase_texcoord6.w = 0;
				
				v.vertex.xyz +=  float3(0,0,0) ;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET(o)
				return o;
			}
			
			float4 frag (v2f i ) : SV_Target
			{
				float3 outColor;
				float outAlpha;

				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float3 temp_cast_0 = (_MinDirectLight).xxx;
				float3 temp_output_1128_0 = max( ase_lightColor.rgb , temp_cast_0 );
				float3 ase_worldPos = i.ase_texcoord1.xyz;
				float3 worldPos1029 = ase_worldPos;
				float localPureLightAttenuation1029 = PureLightAttenuation( worldPos1029 );
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 temp_output_1073_0 = ( temp_output_1128_0 * (( _ShadowinLightColor )?( ase_atten ):( localPureLightAttenuation1029 )) );
				float3 temp_cast_1 = (_MinDirectLight).xxx;
				float3 temp_cast_2 = (_MinDirectLight).xxx;
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1075 = temp_output_1073_0;
				#else
				float3 staticSwitch1075 = temp_output_1128_0;
				#endif
				float3 temp_cast_3 = (_MaxDirectLight).xxx;
				float4 Normal1127 = float4( 0,0,0,0 );
				float3 localShadeSH9out1127 = ShadeSH9out( Normal1127 );
				float3 localMaxShadeSH9876 = ( max(ShadeSH9(half4(0, 0, 0, 1)).rgb, ShadeSH9(half4(0, -1, 0, 1)).rgb) );
				float3 temp_cast_4 = (_MinIndirectLight).xxx;
				float3 temp_cast_5 = (_MaxIndirectLight).xxx;
				float3 temp_output_1005_0 = max( min( (( _NoShadowinDirectionalLightColor )?( staticSwitch1075 ):( temp_output_1073_0 )) , temp_cast_3 ) , min( max( (( _UnifyIndirectDiffuseLight )?( localMaxShadeSH9876 ):( localShadeSH9out1127 )) , temp_cast_4 ) , temp_cast_5 ) );
				float3 temp_cast_6 = (_MinDirectLight).xxx;
				float3 temp_cast_7 = (_MaxDirectLight).xxx;
				float3 temp_cast_8 = (_MinIndirectLight).xxx;
				float3 temp_cast_9 = (_MaxIndirectLight).xxx;
				float grayscale1095 = dot(temp_output_1005_0, float3(0.299,0.587,0.114));
				float3 temp_cast_10 = (grayscale1095).xxx;
				float3 lerpResult1096 = lerp( temp_output_1005_0 , temp_cast_10 , _LightColorGrayScale);
				float3 LightColor208 = lerpResult1096;
				float4 lerpResult1089 = lerp( float4( LightColor208 , 0.0 ) , _GlobalRimColor , _CustomRimLightColor);
				float4 temp_cast_12 = (_MinRimLightColor).xxxx;
				float4 clampResult1088 = clamp( lerpResult1089 , temp_cast_12 , float4( 1,1,1,0 ) );
				float4 SpecularColor539 = _SpecularColor;
				float4 RimColor2541 = _RimColor2;
				float4 lerpResult543 = lerp( SpecularColor539 , RimColor2541 , _RimSpecRate2);
				float3 localv_bias502 = v_bias();
				float3 localh_bias510 = h_bias();
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_worldNormal = i.ase_texcoord3.xyz;
				float dotResult505 = dot( ( ( -1.0 * localv_bias502 * _RimVerticalOffset2 ) + ( ( 1.0 - abs( _RimVerticalOffset2 ) ) * ( ( -1.0 * localh_bias510 * _RimHorizonOffset2 ) + ( ( 1.0 - abs( _RimHorizonOffset2 ) ) * ase_worldViewDir ) ) ) ) , ase_worldNormal );
				float rimoffset_Facing2513 = dotResult505;
				float RimMask355 = 0.0;
				float dis_rim360 = ( (( _Use_DisRimMask )?( ( RimMask355 - 0.5 ) ):( 0.0 )) + 0.5 );
				float RimStrength2462 = ( _RimColor2.a * pow( saturate( ( ( _RimStep2 - rimoffset_Facing2513 ) / _RimFeather2 ) ) , 3.0 ) * dis_rim360 );
				float localIsThereALight797 = ( any(_WorldSpaceLightPos0.xyz) );
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float3 localDefaultLightDir798 = ( normalize(UNITY_MATRIX_V[2].xyz + UNITY_MATRIX_V[1].xyz) );
				float3 LightDir801 = ( localIsThereALight797 == 1.0 ? worldSpaceLightDir : localDefaultLightDir798 );
				float dotResult551 = dot( LightDir801 , ase_worldNormal );
				float LambertTerm552 = dotResult551;
				float RimAtten1076 = localPureLightAttenuation1029;
				float lerpResult1085 = lerp( LambertTerm552 , ( LambertTerm552 * RimAtten1076 ) , _RimAttenuation2);
				float dotResult129 = dot( ase_worldViewDir , ase_worldNormal );
				float Facing136 = dotResult129;
				float fixed_specpower623 = exp2( ( ( _SpecularPower * -10.0 ) + 11.0 ) );
				float2 uv_spcTex = i.ase_texcoord4.xy * _spcTex_ST.xy + _spcTex_ST.zw;
				float grayscale1159 = (tex2D( _spcTex, uv_spcTex ).rgb.r + tex2D( _spcTex, uv_spcTex ).rgb.g + tex2D( _spcTex, uv_spcTex ).rgb.b) / 3;
				float SpecularMask436 = grayscale1159;
				float SpecularPower438 = ( min( pow( max( Facing136 , 0.0 ) , ( ( fixed_specpower623 * 10.0 ) + 1.0 ) ) , 1.0 ) * SpecularMask436 * (0.0 + (_SpecularBias - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) );
				float GlobalLightFactor1011 = _GlobalLightFactor;
				float4 lerpResult1016 = lerp( ( _SpecularColor * SpecularPower438 ) , ( _SpecularColor * SpecularPower438 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1011);
				float2 uv_MainTex = i.ase_texcoord4.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 tex2DNode64 = tex2D( _MainTex, uv_MainTex );
				float4 diff345 = tex2DNode64;
				float DiffuseLightFactor1119 = _DiffuseLightFactor;
				float4 lerpResult1009 = lerp( diff345 , ( diff345 * float4( LightColor208 , 0.0 ) ) , DiffuseLightFactor1119);
				float4 lit_diff349 = lerpResult1009;
				float4 toon_diff370 = ( 0.5 >= _ToonBrightColor.a ? ( _ToonBrightColor * lit_diff349 ) : ( _ToonBrightColor + lit_diff349 ) );
				float2 uv_ShadTex = i.ase_texcoord4.xy * _ShadTex_ST.xy + _ShadTex_ST.zw;
				float4 shad_c330 = tex2D( _ShadTex, uv_ShadTex );
				float4 lerpResult1008 = lerp( shad_c330 , ( shad_c330 * float4( LightColor208 , 0.0 ) * _GlobalShadowColor ) , DiffuseLightFactor1119);
				float4 lit_shad344 = lerpResult1008;
				float2 uv_ctrl2Tex = i.ase_texcoord4.xy * _ctrl2Tex_ST.xy + _ctrl2Tex_ST.zw;
				float4 tex2DNode66 = tex2D( _ctrl2Tex, uv_ctrl2Tex );
				float ShadowMask408 = tex2DNode66.b;
				float dotResult779 = dot( LightDir801 , ase_worldNormal );
				float HalfLambertTerm781 = (dotResult779*0.5 + 0.5);
				float localIsThereALight1124 = ( any(_WorldSpaceLightPos0.xyz) );
				float HalfShadowAttenuation1070 = ( localIsThereALight1124 == 1.0 ? (saturate( ase_atten )*0.5 + 0.5) : 1.0 );
				float shad_lerp339 = saturate( ( ( _ShadowStep - (( _OnlyPaintedShadow )?( ShadowMask408 ):( (( _ReceiveShadowLerp )?( ( ShadowMask408 * HalfLambertTerm781 * HalfShadowAttenuation1070 ) ):( ( ShadowMask408 * HalfLambertTerm781 ) )) )) ) / _ShadowFeather ) );
				float4 lerpResult405 = lerp( toon_diff370 , ( 0.5 >= _ToonDarkColor.a ? ( _ToonDarkColor * lit_shad344 ) : ( _ToonDarkColor + lit_shad344 ) ) , shad_lerp339);
				float4 shaded_diff399 = lerpResult405;
				float4 specshaded_diff445 = ( lerpResult1016 + shaded_diff399 );
				float3 normal2view521 = mul( UNITY_MATRIX_V, float4( ase_worldNormal , 0.0 ) ).xyz;
				float2 uv_BumpMap = i.ase_texcoord4.xy * _BumpMap_ST.xy + _BumpMap_ST.zw;
				float3 tex2DNode1148 = UnpackNormal( tex2D( _BumpMap, uv_BumpMap ) );
				float3 ase_worldTangent = i.ase_texcoord5.xyz;
				float3 ase_worldBitangent = i.ase_texcoord6.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal1150 = tex2DNode1148;
				float3 worldNormal1150 = normalize( float3(dot(tanToWorld0,tanNormal1150), dot(tanToWorld1,tanNormal1150), dot(tanToWorld2,tanNormal1150)) );
				float3 WorldNormal1149 = worldNormal1150;
				float3 normal1147 = WorldNormal1149;
				float3 viewDir1147 = ase_worldViewDir;
				float2 localgetMatcapUVs1147 = getMatcapUVs1147( normal1147 , viewDir1147 );
				float2 matcapUV1145 = localgetMatcapUVs1147;
				float3 NormalMap1153 = tex2DNode1148;
				float3 worldRefl1156 = reflect( -ase_worldViewDir, float3( dot( tanToWorld0, NormalMap1153 ), dot( tanToWorld1, NormalMap1153 ), dot( tanToWorld2, NormalMap1153 ) ) );
				float3 dir1157 = worldRefl1156;
				float smoothness1157 = _RefProbeSmoothness;
				float4 localRefProbe1157 = RefProbe( dir1157 , smoothness1157 );
				float2 uv_ctrl1Tex = i.ase_texcoord4.xy * _ctrl1Tex_ST.xy + _ctrl1Tex_ST.zw;
				float MetalMask350 = (( _Use_MetalMask )?( tex2D( _ctrl1Tex, uv_ctrl1Tex ).g ):( 0.0 ));
				float4 lerpResult532 = lerp( specshaded_diff445 , ( specshaded_diff445 * (( _UseReflectionProbeAsEnvMap )?( localRefProbe1157 ):( tex2D( _EnvTex, (( _EnvMatCap )?( float3( matcapUV1145 ,  0.0 ) ):( ( ( float3( float2( 1,1 ) ,  0.0 ) + normal2view521 ) * 0.5 ) )).xy ) )) * _EnvBias ) , saturate( ( _EnvRate * MetalMask350 ) ));
				float4 EnvSpecShaded_diff542 = lerpResult532;
				float lerpResult1083 = lerp( LambertTerm552 , ( LambertTerm552 * RimAtten1076 ) , _RimAttenuation);
				float4 RimColor540 = _RimColor;
				float4 lerpResult564 = lerp( SpecularColor539 , RimColor540 , _RimSpecRate);
				float3 localv_bias475 = v_bias();
				float3 localh_bias473 = h_bias();
				float dotResult463 = dot( ( ( -1.0 * localv_bias475 * _RimVerticalOffset ) + ( ( 1.0 - abs( _RimVerticalOffset ) ) * ( ( -1.0 * localh_bias473 * _RimHorizonOffset ) + ( ( 1.0 - abs( _RimHorizonOffset ) ) * ase_worldViewDir ) ) ) ) , ase_worldNormal );
				float rimoffset_Facing493 = dotResult463;
				float RimStrength427 = ( _RimColor.a * pow( saturate( ( ( _RimStep - rimoffset_Facing493 ) / _RimFeather ) ) , 3.0 ) * dis_rim360 );
				float4 temp_output_563_0 = ( ( saturate( lerpResult1083 ) + _RimShadowRate ) * ( lerpResult564 * RimStrength427 ) * clampResult1088 );
				float4 RimEnvSpecShaded_diff562 = ( EnvSpecShaded_diff542 + temp_output_563_0 );
				float4 Rim2EnvSpecShaded_diff577 = ( ( clampResult1088 * ( lerpResult543 * RimStrength2462 ) * ( saturate( lerpResult1085 ) + _RimShadowRate2 ) ) + RimEnvSpecShaded_diff562 );
				float4 lerpResult1021 = lerp( ( _CharaColor * Rim2EnvSpecShaded_diff577 ) , ( _CharaColor * Rim2EnvSpecShaded_diff577 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1011);
				float2 uv_EmiTex = i.ase_texcoord4.xy * _EmiTex_ST.xy + _EmiTex_ST.zw;
				float4 Emissive600 = tex2D( _EmiTex, uv_EmiTex );
				float4 Refined_diff612 = ( lerpResult1021 + ( ( 1.0 - (0) ) * Emissive600 * _EmissiveColor * _EmmisiveStrength ) );
				float dotResult614 = dot( _UnsaturationColor , Refined_diff612 );
				float4 temp_cast_25 = (dotResult614).xxxx;
				float4 lerpResult616 = lerp( temp_cast_25 , Refined_diff612 , _Saturation);
				float4 output_diff618 = lerpResult616;
				
				
				outColor = output_diff618.rgb;
				outAlpha = 1;
				SHADOW_CASTER_FRAGMENT(i)
			}
			ENDCG
		}
		
	}
	CustomEditor "ASEMaterialInspector"
	
	Fallback Off
}
/*ASEBEGIN
Version=19200
Node;AmplifyShaderEditor.CommentaryNode;1162;-2516.605,-294.0528;Inherit;False;1899.027;700.1136;;22;529;532;535;527;448;449;451;531;840;542;450;1152;528;1154;537;530;1155;533;1157;1161;1156;1163;Metal Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1160;-3087.171,-2578.367;Inherit;False;836.8398;2147.038;;21;600;68;1140;408;1143;1148;330;345;64;1150;1149;1153;65;66;559;350;646;1158;1159;436;355;Texture Input;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1117;-607.4543,2110.428;Inherit;False;1426.515;1601.894;;37;727;735;737;738;739;740;742;729;733;914;913;730;732;1111;1113;1115;1108;743;745;746;744;1106;747;748;749;750;751;1105;1104;1110;1114;1112;1132;1137;1138;1139;1141;Outline;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1098;-5174.794,1552.989;Inherit;False;2832.956;1061.392;;51;780;779;781;800;799;550;551;552;803;1005;825;773;801;778;776;802;1028;1035;1073;1075;1067;1068;1069;1070;1033;1076;1029;1074;826;797;798;1066;1010;1011;875;303;301;876;1096;208;1095;1097;1118;1119;1122;1124;1127;1128;1129;1130;1131;Light;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1092;-2262.148,560.6261;Inherit;False;1535.696;2259.567;;73;410;411;413;423;425;424;427;409;412;540;452;453;454;458;459;461;455;462;457;456;541;359;358;570;562;357;356;360;354;460;426;421;563;578;564;565;566;568;569;572;556;573;1077;1078;1083;546;1084;558;1089;1088;557;561;577;576;555;1085;1081;1086;575;543;567;544;545;547;548;553;1080;1090;1091;1093;1094;1120;1142;Rim Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1014;-2167.618,-3398.751;Inherit;False;1312.803;1911.911;;41;338;337;331;339;333;334;336;335;387;394;386;381;405;393;369;365;366;368;370;399;783;392;375;364;342;1008;343;420;340;1012;344;347;348;346;1009;349;1013;1038;1039;1072;1126;Shadow Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;936;-585.2881,290.5046;Inherit;False;949.0878;1702.382;;21;610;603;604;606;612;602;607;608;609;611;915;613;614;615;616;617;618;1018;1020;1021;1164;Emmisive and Other Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;870;487.8755,371.5081;Inherit;False;356.8159;717.053;;7;869;865;864;868;866;867;863;Stencil;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;850;-4232.141,-313.5239;Inherit;False;1673.75;1710.115;;52;481;486;489;490;492;487;485;488;491;463;464;484;482;483;478;477;493;475;473;465;129;128;127;136;518;521;519;520;494;495;496;497;498;500;501;503;504;505;506;507;508;509;512;511;513;510;502;499;1144;1146;1147;1145;Matrix And Vector;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;639;-2146.74,-1298.209;Inherit;False;1231.752;918.1196;;28;444;440;439;442;539;432;433;428;437;430;435;624;429;441;443;445;315;319;322;636;623;438;434;872;873;1015;1016;1017;Specular Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1003;533.9971,1187.993;Inherit;False;225;166;;1;1004;Cull;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;432;-1865.69,-989.317;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;10;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;433;-1721.69,-989.317;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;428;-1759.332,-1107.791;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;430;-1583.632,-1107.891;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;624;-2096.74,-990.3093;Inherit;False;623;fixed_specpower;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;429;-1949.934,-1107.891;Inherit;False;136;Facing;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;319;-1591.851,-1243.356;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;-10;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;322;-1449.967,-1244.762;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;11;False;1;FLOAT;0
Node;AmplifyShaderEditor.Exp2OpNode;636;-1314.541,-1240.271;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMinOpNode;434;-1424.889,-1108.316;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;481;-3773.483,344.0869;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;486;-3936.808,276.9309;Inherit;False;Constant;_1_;-1_;21;0;Create;True;0;0;0;False;0;False;-1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.AbsOpNode;489;-3507.05,284.4852;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;490;-3389.811,136.4999;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;492;-3557.759,76.68634;Inherit;False;Constant;_1_1;-1_;21;0;Create;True;0;0;0;False;0;False;-1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;487;-3389.752,294.985;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;485;-3620.706,508.5616;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;488;-3238.331,297.0754;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;491;-3118.547,184.1854;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;463;-2930.376,212.8133;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;484;-3772.132,484.3584;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;482;-3482.12,375.0722;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.AbsOpNode;483;-3887.127,488.7747;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;478;-3795.328,220.9915;Inherit;False;Property;_RimVerticalOffset;RimVerticalOffset;26;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;477;-4176.228,439.1925;Inherit;False;Property;_RimHorizonOffset;RimHorizonOffset;25;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;493;-2793.017,206.679;Inherit;False;rimoffset_Facing;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;494;-3788.188,1208.591;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;495;-3779.401,991.6329;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;496;-3942.723,924.4769;Inherit;False;Constant;_1_2;-1_;21;0;Create;True;0;0;0;False;0;False;-1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.AbsOpNode;497;-3512.966,932.0314;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;498;-3395.728,784.0452;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.OneMinusNode;500;-3395.669,942.5309;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;501;-3626.623,1156.108;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;503;-3244.249,944.6212;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;504;-3124.464,831.731;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;505;-2936.293,860.3596;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;506;-3115.049,1011.347;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.OneMinusNode;507;-3778.05,1131.905;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;508;-3488.036,1022.619;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.AbsOpNode;509;-3893.043,1136.321;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;512;-4182.141,1086.739;Inherit;False;Property;_RimHorizonOffset2;RimHorizonOffset2;33;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;511;-3801.243,868.5377;Inherit;False;Property;_RimVerticalOffset2;RimVerticalOffset2;34;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;513;-2798.391,859.7902;Inherit;False;rimoffset_Facing2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;502;-3534.627,810.173;Inherit;False;return float3(unity_MatrixV[0][1],unity_MatrixV[1][1],unity_MatrixV[2][1])@;3;Create;0;v_bias;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;499;-3552.117,724.231;Inherit;False;Constant;__2;-1_;21;0;Create;True;0;0;0;False;0;False;-1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;623;-1186.366,-1248.209;Inherit;False;fixed_specpower;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;869;574.3199,972.5614;Inherit;False;Property;_StencilZFailFront;Stencil ZFailFront;80;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;865;573.0298,697.452;Inherit;False;Property;_StencilComparison;Stencil Comparison;77;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CompareFunction;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;864;575.0732,791.5167;Inherit;False;Property;_StencilPassFront;Stencil PassFront;78;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;868;575.3414,883.6737;Inherit;False;Property;_StencilFailFront;Stencil FailFront;79;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;866;544.6917,599.6441;Inherit;False;Property;_StencilWriteMask;Stencil WriteMask;76;0;Create;True;0;0;0;True;0;False;255;255;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;867;539.5822,510.7573;Inherit;False;Property;_StencilReadMask;Stencil ReadMask;75;0;Create;True;0;0;0;True;0;False;255;255;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;863;537.8758,421.5081;Inherit;False;Property;_StencilReference;Stencil Reference;74;1;[Header];Create;True;1;Stencil Buffer;0;0;True;0;False;0;0;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;315;-1912.664,-1243.571;Inherit;False;Property;_SpecularPower;SpecularPower;16;0;Create;True;0;0;0;False;0;False;1;0;0;5;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;435;-1281.689,-1068.516;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;438;-1135.989,-1072.691;Inherit;False;SpecularPower;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;539;-1662.804,-797.59;Inherit;False;SpecularColor;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;443;-1859.682,-527.5886;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;437;-1572.076,-1005.741;Inherit;False;436;SpecularMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;873;-1445.568,-922.5085;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;10;False;3;FLOAT;0;False;4;FLOAT;100;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;872;-1730.45,-883.5449;Inherit;False;Property;_SpecularBias;Specular Bias;17;0;Create;True;0;0;0;False;0;False;0.2;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;610;-180.452,751.7504;Inherit;False;4;4;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;607;-530.7629,678.1381;Inherit;False;-1;;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;608;-357.7633,680.1382;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;609;-420.3516,756.8454;Inherit;False;600;Emissive;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;915;-509.3508,1006.975;Inherit;False;Property;_EmmisiveStrength;EmmisiveStrength;47;0;Create;True;0;0;0;False;0;False;0;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;613;-483.534,1789.538;Inherit;False;612;Refined_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.DotProductOpNode;614;-234.6367,1650.734;Inherit;False;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;616;-111.1865,1700.939;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;617;-535.1091,1876.887;Inherit;False;Property;_Saturation;Saturation;49;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;618;139.7997,1704.02;Inherit;False;output_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;906;519.8942,1234.809;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;Deferred;0;3;Deferred;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=Deferred;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;907;519.8942,1193.809;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;ShadowCaster;0;4;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.RangedFloatNode;1004;583.9971,1237.993;Inherit;False;Property;_CullMode;Cull Mode;81;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CullMode;True;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;611;-444.1928,835.6896;Inherit;False;Property;_EmissiveColor;EmissiveColor;46;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;442;-1898.68,-797.988;Inherit;False;Property;_SpecularColor;SpecularColor;15;2;[HDR];[Header];Create;True;1;Specular;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;347;-1869.48,-3260.151;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;348;-1690.688,-3283.27;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;346;-1866.481,-3348.751;Inherit;False;345;diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1009;-1544.728,-3340.522;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;349;-1386.96,-3346.379;Inherit;False;lit_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;441;-1894.259,-615.4928;Inherit;False;438;SpecularPower;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1016;-1434.189,-656.3539;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1017;-1643.274,-713.0028;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;444;-1643.881,-609.2066;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1015;-1670.869,-473.9094;Inherit;False;1011;GlobalLightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;439;-1444.733,-512.2018;Inherit;False;399;shaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;440;-1258.359,-605.7688;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;445;-1138.669,-608.9738;Inherit;False;specshaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1013;-1745.355,-3170.702;Inherit;False;1119;DiffuseLightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;606;58.26269,649.2629;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;612;180.2853,646.3752;Inherit;False;Refined_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;602;-513.6968,331.1195;Inherit;False;Property;_CharaColor;CharaColor;48;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;603;-489.9157,584.6661;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;604;-267.8757,360.3331;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1018;-268.2223,481.1762;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1020;-285.7105,603.3796;Inherit;False;1011;GlobalLightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1021;-122.5304,443.265;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;615;-495.1351,1603.838;Inherit;False;Property;_UnsaturationColor;UnsaturationColor;50;1;[HDR];Create;True;0;0;0;False;0;False;0.2117647,0.7137255,0.07058824,0;0.2117647,0.7137255,0.07058824,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CustomExpressionNode;510;-3925.953,1009.424;Inherit;False;return float3(unity_MatrixV[0][0],unity_MatrixV[0][1],unity_MatrixV[0][2])@;3;Create;0;h_bias;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;342;-1695.4,-2999.656;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1008;-1534.697,-3060.831;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;343;-1920.517,-3043.329;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;420;-1939.881,-2961.838;Inherit;False;Property;_GlobalShadowColor;GlobalShadowColor;10;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;340;-1915.025,-3120.806;Inherit;False;330;shad_c;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;344;-1380.347,-3063.965;Inherit;False;lit_shad;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;334;-1743.196,-2767.203;Inherit;False;Property;_ShadowStep;ShadowStep;8;0;Create;True;0;0;0;False;0;False;0.3;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;410;-1875.019,929.4832;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;411;-1713.82,972.3811;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;413;-1585.985,972.9111;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;423;-1431.815,969.7341;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;3;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;425;-1441.389,1075.781;Inherit;False;360;dis_rim;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;424;-1251.615,924.135;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;427;-1110.94,917.3071;Inherit;False;RimStrength;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;409;-2172.718,876.1812;Inherit;False;Property;_RimStep;RimStep;20;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;412;-1998.519,1051.679;Inherit;False;Property;_RimFeather;RimFeather;21;0;Create;True;0;0;0;False;0;False;0.3;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;540;-1251.136,783.5841;Inherit;False;RimColor;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;452;-1859.305,1337.342;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;453;-1698.106,1380.24;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;454;-1570.27,1380.77;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;458;-1416.101,1377.593;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;3;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;459;-1425.676,1483.641;Inherit;False;360;dis_rim;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;461;-1235.902,1331.995;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;455;-1982.805,1459.538;Inherit;False;Property;_RimFeather2;RimFeather2;29;0;Create;True;0;0;0;False;0;False;0.3;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;462;-1095.226,1325.165;Inherit;False;RimStrength2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;457;-2157.003,1284.04;Inherit;False;Property;_RimStep2;RimStep2;28;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;456;-2074.073,1377.257;Inherit;False;513;rimoffset_Facing2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;541;-1243.348,1188.956;Inherit;False;RimColor2;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;359;-1533.194,629.7582;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;358;-2109.946,719.0452;Inherit;False;Constant;_05;0.5;9;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;570;-1132.595,1870.131;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;357;-1918.031,611.2041;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;356;-2111.426,610.8992;Inherit;False;355;RimMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;360;-1385.194,625.7582;Inherit;False;dis_rim;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;354;-1763.362,610.6261;Inherit;False;Property;_Use_DisRimMask;Use_DisRimMask;18;0;Create;True;0;0;0;False;1;Header(Rim);False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;460;-1458.547,1190.603;Inherit;False;Property;_RimColor2;RimColor2;27;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;426;-1474.261,782.7451;Inherit;False;Property;_RimColor;RimColor;19;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0.4;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;421;-2072.787,967.3972;Inherit;False;493;rimoffset_Facing;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;563;-1373.526,1886.543;Inherit;False;3;3;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;578;-1225.221,1989.469;Inherit;False;realRim;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;565;-1636.894,1932.565;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;566;-1821.799,1997.617;Inherit;False;427;RimStrength;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;568;-2052.537,1901.482;Inherit;False;540;RimColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;569;-2069.537,1823.911;Inherit;False;539;SpecularColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;556;-1816.102,1741.901;Inherit;False;Property;_RimShadowRate;RimShadowRate;23;0;Create;True;0;0;0;False;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;573;-2212.148,1555.275;Inherit;False;552;LambertTerm;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;558;-2148.207,2131.801;Inherit;False;Property;_GlobalRimColor;GlobalRimColor;35;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;557;-1385.882,2350.073;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;561;-1140.151,2352.859;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;576;-1358.782,2482.671;Inherit;False;562;RimEnvSpecShaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;555;-1502.489,2563.954;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1081;-1995.207,2612.05;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;575;-1730.331,2701.104;Inherit;False;Property;_RimShadowRate2;RimShadowRate2;31;0;Create;True;0;0;0;False;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;544;-2103.758,2386.455;Inherit;False;541;RimColor2;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;545;-2111.379,2312.675;Inherit;False;539;SpecularColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;547;-1673.684,2391.892;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;553;-2173.804,2544.608;Inherit;False;552;LambertTerm;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1080;-2164.907,2618.251;Inherit;False;1076;RimAtten;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;572;-1543.533,1646.822;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1093;-1685.585,1643.297;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1094;-1639.641,2570.128;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;780;-5112.115,2238.625;Inherit;False;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;779;-4887.077,2188.664;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;781;-4558.023,2212.582;Inherit;False;HalfLambertTerm;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;799;-5120.772,1726.668;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldNormalVector;550;-5069.087,1981.777;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;551;-4832.884,1947.515;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;552;-4702.429,1949.173;Inherit;False;LambertTerm;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;803;-5056.099,1892.292;Inherit;False;801;LightDir;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1005;-3042.598,1889.926;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;801;-4571.421,1676.115;Inherit;False;LightDir;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;778;-4927.337,2304.112;Float;False;Constant;_RemapValue1;Remap Value;0;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;776;-4759.75,2212.881;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;802;-5096.615,2146.201;Inherit;False;801;LightDir;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1073;-3799.813,1824.677;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1074;-3451.59,1681.206;Inherit;False;Property;_NoShadowinDirectionalLightColor;NoShadow in DirectionalLightColor;13;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;826;-3463.226,1845.357;Inherit;False;Property;_MaxDirectLight;MaxDirectLight;52;0;Create;True;0;0;0;False;0;False;1;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;208;-2565.839,1886.426;Inherit;False;LightColor;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;567;-2146.337,2462.626;Inherit;False;Property;_RimSpecRate2;RimSpecRate2;30;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;543;-1850.288,2347.37;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;548;-1857.189,2482.686;Inherit;False;462;RimStrength2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;564;-1814.747,1875.568;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;546;-2104.613,1979.608;Inherit;False;Property;_RimSpecRate;RimSpecRate;22;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1067;-4930.852,2406.041;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1069;-4950.741,2485.326;Float;False;Constant;_RemapValue3;Remap Value;0;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LightAttenuation;1066;-5124.794,2401.124;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1077;-2194.835,1642.66;Inherit;False;1076;RimAtten;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1078;-2020.835,1624.66;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1083;-1855.796,1567.911;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1084;-2139.688,1727.816;Inherit;False;Property;_RimAttenuation;RimAttenuation;24;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1085;-1796.179,2572.154;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1086;-2094.365,2704.193;Inherit;False;Property;_RimAttenuation2;RimAttenuation2;32;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1089;-1689.771,2079.751;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ClampOpNode;1088;-1536.558,2081.359;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0.2,0.2,0.2,0;False;2;COLOR;1,1,1,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1090;-1956.171,2196.864;Inherit;False;Property;_CustomRimLightColor;CustomRimLightColor;36;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1091;-1923.683,2273.887;Inherit;False;Property;_MinRimLightColor;MinRimLightColor;37;0;Create;True;0;0;0;False;0;False;0.2;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1096;-2715.781,1892.544;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1097;-2975.621,2035.361;Inherit;False;Property;_LightColorGrayScale;LightColor GrayScale;56;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;737;-517.9045,2869.757;Inherit;False;Property;_OutlineWidth;OutlineWidth;65;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;739;-47.14717,2744.804;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleNode;742;-302.6379,2826.602;Inherit;False;0.01;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;743;667.0604,2956.962;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;746;331.4294,2789.738;Inherit;False;740;OutlineWidth;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode;744;336.1338,2871.197;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WorldToObjectTransfNode;748;-391.0308,3420.356;Inherit;False;1;0;FLOAT4;0,0,0,1;False;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;749;-394.9265,3596.323;Inherit;False;Property;_OutlineZPush;Outline ZPush;73;0;Create;True;0;0;0;False;0;False;-0.001;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;750;-181.6891,3419.497;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ToggleSwitchNode;751;-31.02092,3386.653;Inherit;False;Property;_OutlineZPushAdjust;Outline ZPush Adjust;72;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1106;311.8834,3016.001;Inherit;False;Property;_OutlineDistanceAdjust;Outline Distance Adjust;67;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1111;-376.2779,3198.019;Inherit;False;Property;_MaxDistance;MaxDistance;69;0;Create;True;0;0;0;False;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1113;132.8863,3045.25;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1115;-176.0658,3299.597;Inherit;False;Property;_MaxDistanceRemap;MaxDistanceRemap;71;0;Create;True;0;0;0;False;0;False;10;5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1108;-173.9645,3218.635;Inherit;False;Property;_MinDistanceRemap;MinDistanceRemap;70;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1110;-375.2779,3117.019;Inherit;False;Property;_MinDistance;MinDistance;68;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1114;-4.025251,3046.467;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1112;-178.5498,3044.917;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.UnityObjToClipPosHlpNode;1105;-381.9543,2950.507;Inherit;False;1;0;FLOAT3;0,0,0;False;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.PosVertexDataNode;1104;-557.4543,2951.808;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;745;530.157,2850.254;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1010;-2866.755,2504.55;Inherit;False;Property;_GlobalLightFactor;GlobalLightFactor;58;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1012;-1727.604,-2869.424;Inherit;False;1119;DiffuseLightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1120;-1915.479,2072.308;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;825;-4250.08,1771.647;Inherit;False;Property;_MinDirectLight;MinDirectLight;51;1;[Header];Create;True;1;Light;0;0;False;0;False;0;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LightColorNode;773;-4139.136,1642.819;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.StaticSwitch;1075;-3737.996,1649.696;Inherit;False;Property;_Keyword1;Keyword 0;6;0;Create;True;0;0;0;False;0;False;0;0;0;False;UNITY_PASS_FORWARDADD;Toggle;2;Key0;Key1;Fetch;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldPosInputsNode;1028;-4428.249,1899.302;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;1076;-4027.74,1878.082;Inherit;False;RimAtten;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1033;-4045.091,1968.581;Inherit;False;Property;_ShadowinLightColor;Shadow in LightColor;12;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;301;-3582.442,2399.641;Inherit;False;Property;_MaxIndirectLight;MaxIndirectLight;55;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;303;-3595.709,2312.447;Inherit;False;Property;_MinIndirectLight;MinIndirectLight;54;0;Create;True;0;0;0;False;0;False;0.1;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;875;-3607.816,2196.11;Inherit;False;Property;_UnifyIndirectDiffuseLight;Unify IndirectDiffuseLight;53;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1118;-2867.647,2413.705;Inherit;False;Property;_DiffuseLightFactor;DiffuseLightFactor;57;0;Create;True;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1011;-2594.49,2503.485;Inherit;False;GlobalLightFactor;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1119;-2594.647,2415.705;Inherit;False;DiffuseLightFactor;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;800;-4739.455,1676.774;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;798;-4895.577,1795.732;Inherit;False;normalize(UNITY_MATRIX_V[2].xyz + UNITY_MATRIX_V[1].xyz);3;Create;0;Default LightDir;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;797;-4899.383,1670.116;Inherit;False;any(_WorldSpaceLightPos0.xyz);1;Create;0;Is There A Light;False;False;0;;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;1068;-4772.154,2426.095;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1122;-4571.178,2369.129;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1070;-4415.778,2374.27;Inherit;False;HalfShadowAttenuation;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;1124;-4723.105,2346.471;Inherit;False;any(_WorldSpaceLightPos0.xyz);1;Create;0;Is There A Light;False;False;0;;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;339;-1041.027,-2738.039;Inherit;False;shad_lerp;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;338;-1176.387,-2735.858;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;337;-1289.654,-2737.753;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;335;-1427.396,-2741.703;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1072;-2165.398,-2484.387;Inherit;False;1070;HalfShadowAttenuation;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;783;-2162.819,-2574.952;Inherit;False;781;HalfLambertTerm;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;331;-2156.821,-2711.386;Inherit;False;408;ShadowMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1039;-1773.927,-2556.708;Inherit;False;Property;_ReceiveShadowLerp;ReceiveShadowLerp;11;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1126;-1666.276,-2677.285;Inherit;False;Property;_OnlyPaintedShadow;Only Painted Shadow;7;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;336;-1534.421,-2516.591;Inherit;False;Property;_ShadowFeather;ShadowFeather;9;0;Create;True;0;0;0;False;0;False;0.01;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LightAttenuation;1035;-4253.71,1982.544;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;1029;-4234.816,1879.543;Inherit;False;#ifdef POINT$        unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz@ \$        return tex2D(_LightTexture0, dot(lightCoord, lightCoord).rr).r@$#endif$$#ifdef SPOT$#if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)$#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1))$#else$#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = input._LightCoord$#endif$        DECLARE_LIGHT_COORD(input, worldPos)@ \$        return (lightCoord.z > 0) * UnitySpotCookie(lightCoord) * UnitySpotAttenuate(lightCoord.xyz)@$#endif$$#ifdef DIRECTIONAL$        return 1@$#endif$$#ifdef POINT_COOKIE$#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz$#   else$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = input._LightCoord$#   endif$        DECLARE_LIGHT_COORD(input, worldPos)@ \$        return tex2D(_LightTextureB0, dot(lightCoord, lightCoord).rr).r * texCUBE(_LightTexture0, lightCoord).w@$#endif$$#ifdef DIRECTIONAL_COOKIE$#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xy$#   else$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = input._LightCoord$#   endif$        DECLARE_LIGHT_COORD(input, worldPos)@ \$        return tex2D(_LightTexture0, lightCoord).w@$#endif;1;Create;1;True;worldPos;FLOAT3;0,0,0;In;;Inherit;False;Pure Light Attenuation;False;False;0;;False;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1128;-3942.754,1685.524;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMinOpNode;1129;-3139.096,1765.547;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1131;-3320.573,2197.24;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMinOpNode;1130;-3199.394,2222.388;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TFHCGrayscale;1095;-2927.163,1954.024;Inherit;False;1;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;876;-3773.33,2250.009;Inherit;False;max(ShadeSH9(half4(0, 0, 0, 1)).rgb, ShadeSH9(half4(0, -1, 0, 1)).rgb);3;Create;0;MaxShadeSH9;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.ClipNode;913;601.0013,2226.113;Inherit;False;3;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;914;304.8408,2584.198;Inherit;False;Property;_OutlineClip;OutlineClip;60;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;733;307.045,2469.07;Inherit;False;Property;_Outline;Outline;59;0;Create;True;0;0;0;False;1;Header(Outline);False;0;True;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;730;-576.7557,2161.428;Inherit;False;Property;_OutlineColor;OutlineColor;62;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;732;-562.5253,2352.656;Inherit;False;345;diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;727;-189.403,2174.07;Inherit;False;Property;_MixDiffuseinOutlineColor;Mix Diffuse in OutlineColor;63;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;729;-343.2987,2270.424;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;747;-574.5201,3420.971;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1038;-1915.726,-2524.208;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;333;-1921.795,-2624.204;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;1127;-3801.52,2165.414;Inherit;False;return ShadeSH9(Normal)@;3;Create;1;True;Normal;FLOAT4;0,0,0,0;In;;Half;False;ShadeSH9out;False;False;0;;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1137;329.1469,2177.831;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1138;126.1261,2240.13;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1132;-111.1925,2280.611;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1139;-8.873901,2363.13;Inherit;False;Property;_OutlineLightColor;OutlineLightColor;64;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;464;-3095.133,372.8004;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;465;-3800.271,566.0444;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.CustomExpressionNode;473;-3920.037,361.8777;Inherit;False;return float3(unity_MatrixV[0][0],unity_MatrixV[0][1],unity_MatrixV[0][2])@;3;Create;0;h_bias;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;740;97.70992,2733.156;Inherit;False;OutlineWidth;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1141;-572.3789,2600.459;Inherit;False;1140;OutlineCorrect;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;735;-287.9843,2489.268;Inherit;False;Property;_UseOutlineMask;Use OutlineMask;61;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;738;-318.3895,2697.563;Inherit;False;Property;_UseOutlineWidthMask;Use OutlineWidthMask;66;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;387;-1794.807,-1954.258;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;394;-1783.524,-1814.154;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;386;-2070.165,-1768.728;Inherit;False;344;lit_shad;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare;381;-1628.715,-1926.145;Inherit;False;3;4;0;FLOAT;0.5;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;405;-1445.228,-1944.354;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;393;-1632.958,-2019.252;Inherit;False;370;toon_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;369;-1787.891,-2153.297;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;365;-2058.301,-2089.209;Inherit;False;349;lit_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare;366;-1612.61,-2286.456;Inherit;False;3;4;0;FLOAT;0.5;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;368;-1803.891,-2286.297;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;375;-2085.293,-1968.205;Inherit;False;Property;_ToonDarkColor;ToonDarkColor;3;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;364;-2072.832,-2286.765;Inherit;False;Property;_ToonBrightColor;ToonBrightColor;1;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,1;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;392;-1639.232,-1749.544;Inherit;False;339;shad_lerp;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;370;-1413.36,-2291.16;Inherit;False;toon_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;399;-1247.491,-1953.36;Inherit;False;shaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;562;-1000.152,1869.178;Inherit;False;RimEnvSpecShaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1142;-1375.092,1794.614;Inherit;False;542;EnvSpecShaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;128;-4207.683,-250.2282;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldNormalVector;127;-4212.418,-95.06068;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;129;-4024.051,-163.5025;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;136;-3909.895,-159.7412;Inherit;False;Facing;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;518;-3471.453,-159.353;Inherit;False;2;2;0;FLOAT4x4;0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;521;-3331.245,-161.237;Inherit;False;normal2view;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldNormalVector;519;-3705.336,-124.2012;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.ViewMatrixNode;520;-3661.814,-207.9513;Inherit;False;0;1;FLOAT4x4;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1144;-3110.292,-124.9926;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1146;-3131.005,-226.1417;Inherit;False;1149;WorldNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1145;-2764.813,-178.9349;Inherit;False;matcapUV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CustomExpressionNode;1147;-2939.598,-178.1424;Inherit;False;half3 worldUp = float3(0, 1, 0)@$half3 worldViewUp = normalize(worldUp - viewDir * dot(viewDir, worldUp))@$half3 worldViewRight = normalize(cross(viewDir, worldViewUp))@$return half2(dot(worldViewRight, normal), dot(worldViewUp, normal)) * 0.5 + 0.5@;2;Create;2;True;normal;FLOAT3;0,0,0;In;;Inherit;False;True;viewDir;FLOAT3;0,0,0;In;;Inherit;False;getMatcapUVs;True;False;0;;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CustomExpressionNode;475;-3528.711,162.6278;Inherit;False;return float3(unity_MatrixV[0][1],unity_MatrixV[1][1],unity_MatrixV[2][1])@;3;Create;0;v_bias;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;905;415.8591,1815.058;Float;False;False;-1;2;ASEMaterialInspector;100;13;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;ForwardAdd;0;2;ForwardAdd;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;True;True;4;1;False;;1;False;;1;0;False;;1;False;;True;5;False;;5;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;0;True;_CullMode;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;True;_StencilReference;255;True;_StencilReadMask;255;True;_StencilWriteMask;0;True;_StencilComparison;0;True;_StencilPassFront;0;True;_StencilFailFront;0;True;_StencilZFailFront;0;False;;0;False;;0;False;;0;False;;True;True;2;False;;False;False;True;1;LightMode=ForwardAdd;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;904;415.8591,1703.058;Float;False;True;-1;2;ASEMaterialInspector;100;13;LCLLHshader/Base;fe4af87006695164d84819765fe282b7;True;ForwardBase;0;1;ForwardBase;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;True;True;0;1;False;;0;False;;0;0;False;;0;False;;True;1;False;;1;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;0;True;_CullMode;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;True;_StencilReference;255;True;_StencilReadMask;255;True;_StencilWriteMask;0;True;_StencilComparison;0;True;_StencilPassFront;0;True;_StencilFailFront;0;True;_StencilZFailFront;0;False;;0;False;;0;False;;0;False;;True;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;True;2;False;0;;0;0;Standard;0;0;5;True;True;True;False;True;False;;False;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;600;-2728.315,-1264.112;Inherit;False;Emissive;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;68;-3030.327,-1260.464;Inherit;True;Property;_EmiTex;Emissive (_emi) [optional];45;1;[Header];Create;False;1;Emissive and Other;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1140;-2706.719,-1664.831;Inherit;False;OutlineCorrect;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;408;-2710.324,-1584.263;Inherit;False;ShadowMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1143;-3028.354,-1470.434;Inherit;True;Property;_spcTex;_spcmask;14;0;Create;False;0;0;0;False;0;False;-1;None;7ab07b24411a8464c93e7c9db344a4b0;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1148;-3028.476,-2115.029;Inherit;True;Property;_BumpMap;Normal Map;4;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;330;-2700.373,-2305.846;Inherit;False;shad_c;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;345;-2707.362,-2520.96;Inherit;False;diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;64;-3017.863,-2528.367;Inherit;True;Property;_MainTex;Diffuse Map (_col0);0;1;[Header];Create;False;1;Diffuse;0;0;False;0;False;-1;None;fad893ce3e4907245ae76bf2e4f48724;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WorldNormalVector;1150;-2695.048,-2049.715;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;1149;-2505.862,-2052.96;Inherit;False;WorldNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1153;-2708.04,-2133.68;Inherit;False;NormalMap;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;65;-3023.054,-2321.58;Inherit;True;Property;_ShadTex;Shaded Diffuse (_col1);2;1;[Header];Create;False;1;Shadow;0;0;False;0;False;-1;None;ceb81bf925c34a24ebbcaf9bd3b69644;True;0;False;gray;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;559;-2702.477,-1876.618;Inherit;False;Property;_Use_MetalMask;Use_MetalMask;38;0;Create;True;0;0;0;False;1;Header(Metal);False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;350;-2492.331,-1873.476;Inherit;False;MetalMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;646;-2660.746,-2429.479;Inherit;False;Alpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCGrayscale;1159;-2711.665,-1469.182;Inherit;False;2;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;436;-2516.152,-1472.147;Inherit;False;SpecularMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;355;-2710.06,-1376.151;Inherit;False;RimMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;66;-3027.189,-1678.757;Inherit;True;Property;_ctrl2Tex;_controlmap2;6;0;Create;False;0;0;0;False;0;False;-1;None;7ab07b24411a8464c93e7c9db344a4b0;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;529;-1476.79,293.0605;Inherit;False;350;MetalMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;532;-1035.601,-51.64332;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;535;-1186.118,-16.26857;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;531;-1238.863,217.117;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;100;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;840;-1105.019,120.1406;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;542;-891.5779,-56.21114;Inherit;False;EnvSpecShaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;530;-1684.225,191.1225;Inherit;False;Property;_EnvRate;EnvRate;43;0;Create;True;0;0;0;False;0;False;1;0.5;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1155;-2422.796,-235.4336;Inherit;False;1153;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;533;-1383.121,-147.6337;Inherit;False;445;specshaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.WorldReflectionVector;1156;-2206.365,-244.0529;Inherit;False;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;1161;-2249.313,-87.61858;Inherit;False;Property;_RefProbeSmoothness;RefProbeSmoothness;42;0;Create;True;0;0;0;False;0;False;0.7;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1154;-1508.088,-58.54283;Inherit;False;Property;_UseReflectionProbeAsEnvMap;UseReflectionProbeAsEnvMap;41;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.CustomExpressionNode;1157;-1763.501,-150.4314;Inherit;False;float4 cube = 1@$float roughness = 1 - smoothness@$roughness *= 1.7 - 0.7 * roughness@$float4 val = UNITY_SAMPLE_TEXCUBE_LOD(unity_SpecCube0, dir, roughness * UNITY_SPECCUBE_LOD_STEPS)@$cube.xyz = (DecodeHDR(val, unity_SpecCube0_HDR))@$return cube@;4;Create;2;True;dir;FLOAT3;0,0,0;In;;Inherit;False;True;smoothness;FLOAT;0;In;;Inherit;False;RefProbe;False;False;0;;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SamplerNode;528;-1839.021,-18.59357;Inherit;True;Property;_EnvTex;EnvironmentMap;39;0;Create;False;0;0;0;False;0;False;-1;None;88ec95f20d6a4df49806dc49e81c06d2;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;537;-1495.281,57.81958;Inherit;False;Property;_EnvBias;EnvBias;44;0;Create;True;0;0;0;False;0;False;1;1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;527;-2502.605,122.0133;Inherit;False;521;normal2view;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector2Node;448;-2489.224,-26.98368;Inherit;False;Constant;_11_;(1,1)_;16;0;Create;True;0;0;0;False;0;False;1,1;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleAddOpNode;449;-2294.302,10.65208;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;451;-2302.102,117.2536;Inherit;False;Constant;_05_;0.5_;16;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;450;-2177.304,6.650905;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1152;-2261.037,210.3145;Inherit;False;1145;matcapUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1163;-2056.363,107.2068;Inherit;False;Property;_EnvMatCap;EnvMatCap;40;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;903;886.2556,2252.555;Float;False;False;-1;2;ASEMaterialInspector;100;13;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;ExtraPrePass;0;0;ExtraPrePass;5;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;True;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;1;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;True;_StencilReference;255;True;_StencilReadMask;255;True;_StencilWriteMask;0;True;_StencilComparison;0;True;_StencilPassFront;0;True;_StencilFailFront;0;True;_StencilZFailFront;0;False;;0;False;;0;False;;0;False;;True;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.SamplerNode;1158;-3031.208,-1896.366;Inherit;True;Property;_ctrl1Tex;_controlmap1;5;0;Create;False;0;0;0;False;0;False;-1;None;7ab07b24411a8464c93e7c9db344a4b0;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1164;-571.3723,504.3734;Inherit;False;577;Rim2EnvSpecShaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;577;-1009.955,2347.9;Inherit;False;Rim2EnvSpecShaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
WireConnection;432;0;624;0
WireConnection;433;0;432;0
WireConnection;428;0;429;0
WireConnection;430;0;428;0
WireConnection;430;1;433;0
WireConnection;319;0;315;0
WireConnection;322;0;319;0
WireConnection;636;0;322;0
WireConnection;434;0;430;0
WireConnection;481;0;486;0
WireConnection;481;1;473;0
WireConnection;481;2;477;0
WireConnection;489;0;478;0
WireConnection;490;0;492;0
WireConnection;490;1;475;0
WireConnection;490;2;478;0
WireConnection;487;0;489;0
WireConnection;485;0;484;0
WireConnection;485;1;465;0
WireConnection;488;0;487;0
WireConnection;488;1;482;0
WireConnection;491;0;490;0
WireConnection;491;1;488;0
WireConnection;463;0;491;0
WireConnection;463;1;464;0
WireConnection;484;0;483;0
WireConnection;482;0;481;0
WireConnection;482;1;485;0
WireConnection;483;0;477;0
WireConnection;493;0;463;0
WireConnection;495;0;496;0
WireConnection;495;1;510;0
WireConnection;495;2;512;0
WireConnection;497;0;511;0
WireConnection;498;0;499;0
WireConnection;498;1;502;0
WireConnection;498;2;511;0
WireConnection;500;0;497;0
WireConnection;501;0;507;0
WireConnection;501;1;494;0
WireConnection;503;0;500;0
WireConnection;503;1;508;0
WireConnection;504;0;498;0
WireConnection;504;1;503;0
WireConnection;505;0;504;0
WireConnection;505;1;506;0
WireConnection;507;0;509;0
WireConnection;508;0;495;0
WireConnection;508;1;501;0
WireConnection;509;0;512;0
WireConnection;513;0;505;0
WireConnection;623;0;636;0
WireConnection;435;0;434;0
WireConnection;435;1;437;0
WireConnection;435;2;873;0
WireConnection;438;0;435;0
WireConnection;539;0;442;0
WireConnection;873;0;872;0
WireConnection;610;0;608;0
WireConnection;610;1;609;0
WireConnection;610;2;611;0
WireConnection;610;3;915;0
WireConnection;608;0;607;0
WireConnection;614;0;615;0
WireConnection;614;1;613;0
WireConnection;616;0;614;0
WireConnection;616;1;613;0
WireConnection;616;2;617;0
WireConnection;618;0;616;0
WireConnection;348;0;346;0
WireConnection;348;1;347;0
WireConnection;1009;0;346;0
WireConnection;1009;1;348;0
WireConnection;1009;2;1013;0
WireConnection;349;0;1009;0
WireConnection;1016;0;1017;0
WireConnection;1016;1;444;0
WireConnection;1016;2;1015;0
WireConnection;1017;0;442;0
WireConnection;1017;1;441;0
WireConnection;444;0;442;0
WireConnection;444;1;441;0
WireConnection;444;2;443;0
WireConnection;440;0;1016;0
WireConnection;440;1;439;0
WireConnection;445;0;440;0
WireConnection;606;0;1021;0
WireConnection;606;1;610;0
WireConnection;612;0;606;0
WireConnection;604;0;602;0
WireConnection;604;1;1164;0
WireConnection;1018;0;602;0
WireConnection;1018;1;1164;0
WireConnection;1018;2;603;0
WireConnection;1021;0;604;0
WireConnection;1021;1;1018;0
WireConnection;1021;2;1020;0
WireConnection;342;0;340;0
WireConnection;342;1;343;0
WireConnection;342;2;420;0
WireConnection;1008;0;340;0
WireConnection;1008;1;342;0
WireConnection;1008;2;1012;0
WireConnection;344;0;1008;0
WireConnection;410;0;409;0
WireConnection;410;1;421;0
WireConnection;411;0;410;0
WireConnection;411;1;412;0
WireConnection;413;0;411;0
WireConnection;423;0;413;0
WireConnection;424;0;426;4
WireConnection;424;1;423;0
WireConnection;424;2;425;0
WireConnection;427;0;424;0
WireConnection;540;0;426;0
WireConnection;452;0;457;0
WireConnection;452;1;456;0
WireConnection;453;0;452;0
WireConnection;453;1;455;0
WireConnection;454;0;453;0
WireConnection;458;0;454;0
WireConnection;461;0;460;4
WireConnection;461;1;458;0
WireConnection;461;2;459;0
WireConnection;462;0;461;0
WireConnection;541;0;460;0
WireConnection;359;0;354;0
WireConnection;359;1;358;0
WireConnection;570;0;1142;0
WireConnection;570;1;563;0
WireConnection;357;0;356;0
WireConnection;357;1;358;0
WireConnection;360;0;359;0
WireConnection;354;1;357;0
WireConnection;563;0;572;0
WireConnection;563;1;565;0
WireConnection;563;2;1088;0
WireConnection;578;0;563;0
WireConnection;565;0;564;0
WireConnection;565;1;566;0
WireConnection;557;0;1088;0
WireConnection;557;1;547;0
WireConnection;557;2;555;0
WireConnection;561;0;557;0
WireConnection;561;1;576;0
WireConnection;555;0;1094;0
WireConnection;555;1;575;0
WireConnection;1081;0;553;0
WireConnection;1081;1;1080;0
WireConnection;547;0;543;0
WireConnection;547;1;548;0
WireConnection;572;0;1093;0
WireConnection;572;1;556;0
WireConnection;1093;0;1083;0
WireConnection;1094;0;1085;0
WireConnection;779;0;802;0
WireConnection;779;1;780;0
WireConnection;781;0;776;0
WireConnection;551;0;803;0
WireConnection;551;1;550;0
WireConnection;552;0;551;0
WireConnection;1005;0;1129;0
WireConnection;1005;1;1130;0
WireConnection;801;0;800;0
WireConnection;776;0;779;0
WireConnection;776;1;778;0
WireConnection;776;2;778;0
WireConnection;1073;0;1128;0
WireConnection;1073;1;1033;0
WireConnection;1074;0;1073;0
WireConnection;1074;1;1075;0
WireConnection;208;0;1096;0
WireConnection;543;0;545;0
WireConnection;543;1;544;0
WireConnection;543;2;567;0
WireConnection;564;0;569;0
WireConnection;564;1;568;0
WireConnection;564;2;546;0
WireConnection;1067;0;1066;0
WireConnection;1078;0;573;0
WireConnection;1078;1;1077;0
WireConnection;1083;0;573;0
WireConnection;1083;1;1078;0
WireConnection;1083;2;1084;0
WireConnection;1085;0;553;0
WireConnection;1085;1;1081;0
WireConnection;1085;2;1086;0
WireConnection;1089;0;1120;0
WireConnection;1089;1;558;0
WireConnection;1089;2;1090;0
WireConnection;1088;0;1089;0
WireConnection;1088;1;1091;0
WireConnection;1096;0;1005;0
WireConnection;1096;1;1095;0
WireConnection;1096;2;1097;0
WireConnection;739;0;738;0
WireConnection;739;1;742;0
WireConnection;742;0;737;0
WireConnection;743;0;745;0
WireConnection;743;1;751;0
WireConnection;748;0;747;0
WireConnection;750;0;748;0
WireConnection;750;1;749;0
WireConnection;751;1;750;0
WireConnection;1106;1;1113;0
WireConnection;1113;0;1114;0
WireConnection;1113;3;1108;0
WireConnection;1113;4;1115;0
WireConnection;1114;0;1112;0
WireConnection;1112;0;1105;4
WireConnection;1112;1;1110;0
WireConnection;1112;2;1111;0
WireConnection;1105;0;1104;0
WireConnection;745;0;746;0
WireConnection;745;1;744;0
WireConnection;745;2;1106;0
WireConnection;1075;1;1128;0
WireConnection;1075;0;1073;0
WireConnection;1076;0;1029;0
WireConnection;1033;0;1029;0
WireConnection;1033;1;1035;0
WireConnection;875;0;1127;0
WireConnection;875;1;876;0
WireConnection;1011;0;1010;0
WireConnection;1119;0;1118;0
WireConnection;800;0;797;0
WireConnection;800;2;799;0
WireConnection;800;3;798;0
WireConnection;1068;0;1067;0
WireConnection;1068;1;1069;0
WireConnection;1068;2;1069;0
WireConnection;1122;0;1124;0
WireConnection;1122;2;1068;0
WireConnection;1070;0;1122;0
WireConnection;339;0;338;0
WireConnection;338;0;337;0
WireConnection;337;0;335;0
WireConnection;337;1;336;0
WireConnection;335;0;334;0
WireConnection;335;1;1126;0
WireConnection;1039;0;333;0
WireConnection;1039;1;1038;0
WireConnection;1126;0;1039;0
WireConnection;1126;1;331;0
WireConnection;1029;0;1028;0
WireConnection;1128;0;773;1
WireConnection;1128;1;825;0
WireConnection;1129;0;1074;0
WireConnection;1129;1;826;0
WireConnection;1131;0;875;0
WireConnection;1131;1;303;0
WireConnection;1130;0;1131;0
WireConnection;1130;1;301;0
WireConnection;1095;0;1005;0
WireConnection;913;0;1137;0
WireConnection;913;1;733;0
WireConnection;913;2;914;0
WireConnection;733;1;735;0
WireConnection;727;0;730;0
WireConnection;727;1;729;0
WireConnection;729;0;730;0
WireConnection;729;1;732;0
WireConnection;1038;0;331;0
WireConnection;1038;1;783;0
WireConnection;1038;2;1072;0
WireConnection;333;0;331;0
WireConnection;333;1;783;0
WireConnection;1137;0;727;0
WireConnection;1137;1;1138;0
WireConnection;1137;2;1139;0
WireConnection;1138;0;727;0
WireConnection;1138;1;1132;0
WireConnection;740;0;739;0
WireConnection;735;1;1141;0
WireConnection;738;1;1141;0
WireConnection;387;0;375;0
WireConnection;387;1;386;0
WireConnection;394;0;375;0
WireConnection;394;1;386;0
WireConnection;381;1;375;4
WireConnection;381;2;387;0
WireConnection;381;3;394;0
WireConnection;405;0;393;0
WireConnection;405;1;381;0
WireConnection;405;2;392;0
WireConnection;369;0;364;0
WireConnection;369;1;365;0
WireConnection;366;1;364;4
WireConnection;366;2;368;0
WireConnection;366;3;369;0
WireConnection;368;0;364;0
WireConnection;368;1;365;0
WireConnection;370;0;366;0
WireConnection;399;0;405;0
WireConnection;562;0;570;0
WireConnection;129;0;128;0
WireConnection;129;1;127;0
WireConnection;136;0;129;0
WireConnection;518;0;520;0
WireConnection;518;1;519;0
WireConnection;521;0;518;0
WireConnection;1145;0;1147;0
WireConnection;1147;0;1146;0
WireConnection;1147;1;1144;0
WireConnection;904;0;618;0
WireConnection;600;0;68;0
WireConnection;1140;0;66;1
WireConnection;408;0;66;3
WireConnection;330;0;65;0
WireConnection;345;0;64;0
WireConnection;1150;0;1148;0
WireConnection;1149;0;1150;0
WireConnection;1153;0;1148;0
WireConnection;559;1;1158;2
WireConnection;350;0;559;0
WireConnection;646;0;64;4
WireConnection;1159;0;1143;0
WireConnection;436;0;1159;0
WireConnection;532;0;533;0
WireConnection;532;1;535;0
WireConnection;532;2;840;0
WireConnection;535;0;533;0
WireConnection;535;1;1154;0
WireConnection;535;2;537;0
WireConnection;531;0;530;0
WireConnection;531;1;529;0
WireConnection;840;0;531;0
WireConnection;542;0;532;0
WireConnection;1156;0;1155;0
WireConnection;1154;0;528;0
WireConnection;1154;1;1157;0
WireConnection;1157;0;1156;0
WireConnection;1157;1;1161;0
WireConnection;528;1;1163;0
WireConnection;449;0;448;0
WireConnection;449;1;527;0
WireConnection;450;0;449;0
WireConnection;450;1;451;0
WireConnection;1163;0;450;0
WireConnection;1163;1;1152;0
WireConnection;903;0;913;0
WireConnection;903;3;743;0
WireConnection;577;0;561;0
ASEEND*/
//CHKSM=EA24EB7F8AC92923165C2EE347B291355288B13F
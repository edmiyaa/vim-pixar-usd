if exists('b:current_syntax')
    finish
endif

syntax keyword usdSpecifier def over class
highlight link usdSpecifier Keyword

syntax keyword usdDatatype asset
syntax keyword usdDatatype bool
syntax keyword usdDatatype double double2 double3 double4
syntax keyword usdDatatype float float2 float3 float4
syntax keyword usdDatatype half half2 half3 half4
syntax keyword usdDatatype int int2 int3 int4 int64
syntax keyword usdDatatype matrix2d matrix3d matrix4d
syntax keyword usdDatatype opaque
syntax keyword usdDatatype quatd quatf quath
syntax keyword usdDatatype string
syntax keyword usdDatatype timecode
syntax keyword usdDatatype token
syntax keyword usdDatatype uchar
syntax keyword usdDatatype uint uint64
highlight link usdDatatype Type

syntax keyword usdCustomAttr custom
highlight link usdCustomAttr Type

syntax keyword usdSpecialDatatype point3d point3f point3h
syntax keyword usdSpecialDatatype normal3d normal3f normal3h
syntax keyword usdSpecialDatatype vector3d vector3f vector3h
syntax keyword usdSpecialDatatype color3d color3f color3h color4d color4f color4h
syntax keyword usdSpecialDatatype frame4d
syntax keyword usdSpecialDatatype texCoord2d texCoord2f texCoord2h texCoord3d texCoord3f texCoord3h group
highlight link usdSpecialDatatype Type

syntax keyword usdBoolean true false
highlight link usdBoolean Boolean

syntax keyword usdCompositionArc subLayers inherits variantSet variantSets references payloads specializes
highlight link usdCompositionArc Special

syntax keyword usdAttrVariability uniform varying
highlight link usdAttrVariability Include

syntax keyword usdListOperator append delete prepend
highlight link usdListOperator Include

syntax match usdVersion "\v^#usda.*"
highlight link usdVersion CursorLine

syntax match usdString "\v\".*\""
highlight link usdString Identifier

syntax match usdAssetPath "\v\@.*\@"
highlight link usdAssetPath Wildmenu

syntax match usdNumber "\v<-?([0-9]*\.)?[0-9]+>"
highlight link usdNumber Special

syntax match usdPrimName "\v(<(def|over|class)>.*)@<=\".*\""
highlight link usdPrimName ModeMsg

syntax match usdPrimPath "\v\<.*\>"
highlight link usdPrimPath Character

syntax match usdPrimType "\v((def|over|class)\s)@<=.*(\s\".*\")@="
highlight link usdPrimType Type

syntax match usdAttrName "\v[^ ]+( \=)@="
highlight link usdAttrName String

let b:current_syntax = 'usd'


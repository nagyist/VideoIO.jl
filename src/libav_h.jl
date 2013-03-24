macro c(ret_type, func, arg_types, lib)
  local args_in = Any[ symbol(string('a',x)) for x in 1:length(arg_types.args) ]
  quote
    $(esc(func))($(args_in...)) = ccall( ($(string(func)), $(Expr(:quote, lib)) ), $ret_type, $arg_types, $(args_in...) )
  end
end

macro ctypedef(fake_t,real_t)
  quote
    typealias $fake_t $real_t
  end
end

# enum AVMediaType
const AVMEDIA_TYPE_UNKNOWN = -1
const AVMEDIA_TYPE_VIDEO = 0
const AVMEDIA_TYPE_AUDIO = 1
const AVMEDIA_TYPE_DATA = 2
const AVMEDIA_TYPE_SUBTITLE = 3
const AVMEDIA_TYPE_ATTACHMENT = 4
const AVMEDIA_TYPE_NB = 5
# end
# enum AVPictureType
const AV_PICTURE_TYPE_I = 1
const AV_PICTURE_TYPE_P = 2
const AV_PICTURE_TYPE_B = 3
const AV_PICTURE_TYPE_S = 4
const AV_PICTURE_TYPE_SI = 5
const AV_PICTURE_TYPE_SP = 6
const AV_PICTURE_TYPE_BI = 7
# end
type AVClass
  class_name::Ptr{Uint8}
  item_name::Ptr{Void}
  AVOption::Void
  option::Ptr{Void}
  version::Int32
  log_level_offset_offset::Int32
  parent_log_context_offset::Int32
  child_next::Ptr{Void}
  child_class_next::Ptr{Void}
end
# enum AVMediaType
const AVMEDIA_TYPE_UNKNOWN = -1
const AVMEDIA_TYPE_VIDEO = 0
const AVMEDIA_TYPE_AUDIO = 1
const AVMEDIA_TYPE_DATA = 2
const AVMEDIA_TYPE_SUBTITLE = 3
const AVMEDIA_TYPE_ATTACHMENT = 4
const AVMEDIA_TYPE_NB = 5
# end
# enum AVPictureType
const AV_PICTURE_TYPE_I = 1
const AV_PICTURE_TYPE_P = 2
const AV_PICTURE_TYPE_B = 3
const AV_PICTURE_TYPE_S = 4
const AV_PICTURE_TYPE_SI = 5
const AV_PICTURE_TYPE_SP = 6
const AV_PICTURE_TYPE_BI = 7
# end
# enum AVMediaType
const AVMEDIA_TYPE_UNKNOWN = -1
const AVMEDIA_TYPE_VIDEO = 0
const AVMEDIA_TYPE_AUDIO = 1
const AVMEDIA_TYPE_DATA = 2
const AVMEDIA_TYPE_SUBTITLE = 3
const AVMEDIA_TYPE_ATTACHMENT = 4
const AVMEDIA_TYPE_NB = 5
# end
# enum AVPictureType
const AV_PICTURE_TYPE_I = 1
const AV_PICTURE_TYPE_P = 2
const AV_PICTURE_TYPE_B = 3
const AV_PICTURE_TYPE_S = 4
const AV_PICTURE_TYPE_SI = 5
const AV_PICTURE_TYPE_SP = 6
const AV_PICTURE_TYPE_BI = 7
# end
@ctypedef AVCRC uint32_t
# enum AVCRCId
const AV_CRC_8_ATM = 0
const AV_CRC_16_ANSI = 1
const AV_CRC_16_CCITT = 2
const AV_CRC_32_IEEE = 3
const AV_CRC_32_IEEE_LE = 4
const AV_CRC_MAX = 5
# end
@ctypedef AVCRCId Int32
type AVDictionaryEntry
  key::Ptr{Uint8}
  value::Ptr{Uint8}
end
# enum AVMediaType
const AVMEDIA_TYPE_UNKNOWN = -1
const AVMEDIA_TYPE_VIDEO = 0
const AVMEDIA_TYPE_AUDIO = 1
const AVMEDIA_TYPE_DATA = 2
const AVMEDIA_TYPE_SUBTITLE = 3
const AVMEDIA_TYPE_ATTACHMENT = 4
const AVMEDIA_TYPE_NB = 5
# end
# enum AVPictureType
const AV_PICTURE_TYPE_I = 1
const AV_PICTURE_TYPE_P = 2
const AV_PICTURE_TYPE_B = 3
const AV_PICTURE_TYPE_S = 4
const AV_PICTURE_TYPE_SI = 5
const AV_PICTURE_TYPE_SP = 6
const AV_PICTURE_TYPE_BI = 7
# end
# enum AVMediaType
const AVMEDIA_TYPE_UNKNOWN = -1
const AVMEDIA_TYPE_VIDEO = 0
const AVMEDIA_TYPE_AUDIO = 1
const AVMEDIA_TYPE_DATA = 2
const AVMEDIA_TYPE_SUBTITLE = 3
const AVMEDIA_TYPE_ATTACHMENT = 4
const AVMEDIA_TYPE_NB = 5
# end
# enum AVPictureType
const AV_PICTURE_TYPE_I = 1
const AV_PICTURE_TYPE_P = 2
const AV_PICTURE_TYPE_B = 3
const AV_PICTURE_TYPE_S = 4
const AV_PICTURE_TYPE_SI = 5
const AV_PICTURE_TYPE_SP = 6
const AV_PICTURE_TYPE_BI = 7
# end
# enum AVMediaType
const AVMEDIA_TYPE_UNKNOWN = -1
const AVMEDIA_TYPE_VIDEO = 0
const AVMEDIA_TYPE_AUDIO = 1
const AVMEDIA_TYPE_DATA = 2
const AVMEDIA_TYPE_SUBTITLE = 3
const AVMEDIA_TYPE_ATTACHMENT = 4
const AVMEDIA_TYPE_NB = 5
# end
# enum AVPictureType
const AV_PICTURE_TYPE_I = 1
const AV_PICTURE_TYPE_P = 2
const AV_PICTURE_TYPE_B = 3
const AV_PICTURE_TYPE_S = 4
const AV_PICTURE_TYPE_SI = 5
const AV_PICTURE_TYPE_SP = 6
const AV_PICTURE_TYPE_BI = 7
# end
type AVFifoBuffer
  buffer::Ptr{uint8_t}
  rptr::Ptr{uint8_t}
  wptr::Ptr{uint8_t}
  end::Ptr{uint8_t}
  rndx::uint32_t
  wndx::uint32_t
end
# enum AVMediaType
const AVMEDIA_TYPE_UNKNOWN = -1
const AVMEDIA_TYPE_VIDEO = 0
const AVMEDIA_TYPE_AUDIO = 1
const AVMEDIA_TYPE_DATA = 2
const AVMEDIA_TYPE_SUBTITLE = 3
const AVMEDIA_TYPE_ATTACHMENT = 4
const AVMEDIA_TYPE_NB = 5
# end
# enum AVPictureType
const AV_PICTURE_TYPE_I = 1
const AV_PICTURE_TYPE_P = 2
const AV_PICTURE_TYPE_B = 3
const AV_PICTURE_TYPE_S = 4
const AV_PICTURE_TYPE_SI = 5
const AV_PICTURE_TYPE_SP = 6
const AV_PICTURE_TYPE_BI = 7
# end
# enum AVMediaType
const AVMEDIA_TYPE_UNKNOWN = -1
const AVMEDIA_TYPE_VIDEO = 0
const AVMEDIA_TYPE_AUDIO = 1
const AVMEDIA_TYPE_DATA = 2
const AVMEDIA_TYPE_SUBTITLE = 3
const AVMEDIA_TYPE_ATTACHMENT = 4
const AVMEDIA_TYPE_NB = 5
# end
# enum AVPictureType
const AV_PICTURE_TYPE_I = 1
const AV_PICTURE_TYPE_P = 2
const AV_PICTURE_TYPE_B = 3
const AV_PICTURE_TYPE_S = 4
const AV_PICTURE_TYPE_SI = 5
const AV_PICTURE_TYPE_SP = 6
const AV_PICTURE_TYPE_BI = 7
# end
# enum PixelFormat
const PIX_FMT_NONE = -1
const PIX_FMT_YUV420P = 0
const PIX_FMT_YUYV422 = 1
const PIX_FMT_RGB24 = 2
const PIX_FMT_BGR24 = 3
const PIX_FMT_YUV422P = 4
const PIX_FMT_YUV444P = 5
const PIX_FMT_YUV410P = 6
const PIX_FMT_YUV411P = 7
const PIX_FMT_GRAY8 = 8
const PIX_FMT_MONOWHITE = 9
const PIX_FMT_MONOBLACK = 10
const PIX_FMT_PAL8 = 11
const PIX_FMT_YUVJ420P = 12
const PIX_FMT_YUVJ422P = 13
const PIX_FMT_YUVJ444P = 14
const PIX_FMT_XVMC_MPEG2_MC = 15
const PIX_FMT_XVMC_MPEG2_IDCT = 16
const PIX_FMT_UYVY422 = 17
const PIX_FMT_UYYVYY411 = 18
const PIX_FMT_BGR8 = 19
const PIX_FMT_BGR4 = 20
const PIX_FMT_BGR4_BYTE = 21
const PIX_FMT_RGB8 = 22
const PIX_FMT_RGB4 = 23
const PIX_FMT_RGB4_BYTE = 24
const PIX_FMT_NV12 = 25
const PIX_FMT_NV21 = 26
const PIX_FMT_ARGB = 27
const PIX_FMT_RGBA = 28
const PIX_FMT_ABGR = 29
const PIX_FMT_BGRA = 30
const PIX_FMT_GRAY16BE = 31
const PIX_FMT_GRAY16LE = 32
const PIX_FMT_YUV440P = 33
const PIX_FMT_YUVJ440P = 34
const PIX_FMT_YUVA420P = 35
const PIX_FMT_VDPAU_H264 = 36
const PIX_FMT_VDPAU_MPEG1 = 37
const PIX_FMT_VDPAU_MPEG2 = 38
const PIX_FMT_VDPAU_WMV3 = 39
const PIX_FMT_VDPAU_VC1 = 40
const PIX_FMT_RGB48BE = 41
const PIX_FMT_RGB48LE = 42
const PIX_FMT_RGB565BE = 43
const PIX_FMT_RGB565LE = 44
const PIX_FMT_RGB555BE = 45
const PIX_FMT_RGB555LE = 46
const PIX_FMT_BGR565BE = 47
const PIX_FMT_BGR565LE = 48
const PIX_FMT_BGR555BE = 49
const PIX_FMT_BGR555LE = 50
const PIX_FMT_VAAPI_MOCO = 51
const PIX_FMT_VAAPI_IDCT = 52
const PIX_FMT_VAAPI_VLD = 53
const PIX_FMT_YUV420P16LE = 54
const PIX_FMT_YUV420P16BE = 55
const PIX_FMT_YUV422P16LE = 56
const PIX_FMT_YUV422P16BE = 57
const PIX_FMT_YUV444P16LE = 58
const PIX_FMT_YUV444P16BE = 59
const PIX_FMT_VDPAU_MPEG4 = 60
const PIX_FMT_DXVA2_VLD = 61
const PIX_FMT_RGB444LE = 62
const PIX_FMT_RGB444BE = 63
const PIX_FMT_BGR444LE = 64
const PIX_FMT_BGR444BE = 65
const PIX_FMT_Y400A = 66
const PIX_FMT_BGR48BE = 67
const PIX_FMT_BGR48LE = 68
const PIX_FMT_YUV420P9BE = 69
const PIX_FMT_YUV420P9LE = 70
const PIX_FMT_YUV420P10BE = 71
const PIX_FMT_YUV420P10LE = 72
const PIX_FMT_YUV422P10BE = 73
const PIX_FMT_YUV422P10LE = 74
const PIX_FMT_YUV444P9BE = 75
const PIX_FMT_YUV444P9LE = 76
const PIX_FMT_YUV444P10BE = 77
const PIX_FMT_YUV444P10LE = 78
const PIX_FMT_YUV422P9BE = 79
const PIX_FMT_YUV422P9LE = 80
const PIX_FMT_VDA_VLD = 81
const PIX_FMT_GBRP = 82
const PIX_FMT_GBRP9BE = 83
const PIX_FMT_GBRP9LE = 84
const PIX_FMT_GBRP10BE = 85
const PIX_FMT_GBRP10LE = 86
const PIX_FMT_GBRP16BE = 87
const PIX_FMT_GBRP16LE = 88
const PIX_FMT_NB = 89
# end
type AVComponentDescriptor
  plane::uint16_t
  step_minus1::uint16_t
  offset_plus1::uint16_t
  shift::uint16_t
  depth_minus1::uint16_t
end
type AVPixFmtDescriptor
  name::Ptr{Uint8}
  nb_components::uint8_t
  log2_chroma_w::uint8_t
  log2_chroma_h::uint8_t
  flags::uint8_t
  comp::Void
end
type AVExtFloat
  exponent::Void
  mantissa::Void
end
@ctypedef av_alias64 Void
@ctypedef av_alias32 Void
@ctypedef av_alias16 Void
type AVLFG
  state::Void
  index::Int32
end
# enum AVMediaType
const AVMEDIA_TYPE_UNKNOWN = -1
const AVMEDIA_TYPE_VIDEO = 0
const AVMEDIA_TYPE_AUDIO = 1
const AVMEDIA_TYPE_DATA = 2
const AVMEDIA_TYPE_SUBTITLE = 3
const AVMEDIA_TYPE_ATTACHMENT = 4
const AVMEDIA_TYPE_NB = 5
# end
# enum AVPictureType
const AV_PICTURE_TYPE_I = 1
const AV_PICTURE_TYPE_P = 2
const AV_PICTURE_TYPE_B = 3
const AV_PICTURE_TYPE_S = 4
const AV_PICTURE_TYPE_SI = 5
const AV_PICTURE_TYPE_SP = 6
const AV_PICTURE_TYPE_BI = 7
# end
type AVRational
  num::Int32
  den::Int32
end
# enum AVRounding
const AV_ROUND_ZERO = 0
const AV_ROUND_INF = 1
const AV_ROUND_DOWN = 2
const AV_ROUND_UP = 3
const AV_ROUND_NEAR_INF = 5
# end
# enum AVMediaType
const AVMEDIA_TYPE_UNKNOWN = -1
const AVMEDIA_TYPE_VIDEO = 0
const AVMEDIA_TYPE_AUDIO = 1
const AVMEDIA_TYPE_DATA = 2
const AVMEDIA_TYPE_SUBTITLE = 3
const AVMEDIA_TYPE_ATTACHMENT = 4
const AVMEDIA_TYPE_NB = 5
# end
# enum AVPictureType
const AV_PICTURE_TYPE_I = 1
const AV_PICTURE_TYPE_P = 2
const AV_PICTURE_TYPE_B = 3
const AV_PICTURE_TYPE_S = 4
const AV_PICTURE_TYPE_SI = 5
const AV_PICTURE_TYPE_SP = 6
const AV_PICTURE_TYPE_BI = 7
# end
# enum AVMediaType
const AVMEDIA_TYPE_UNKNOWN = -1
const AVMEDIA_TYPE_VIDEO = 0
const AVMEDIA_TYPE_AUDIO = 1
const AVMEDIA_TYPE_DATA = 2
const AVMEDIA_TYPE_SUBTITLE = 3
const AVMEDIA_TYPE_ATTACHMENT = 4
const AVMEDIA_TYPE_NB = 5
# end
# enum AVPictureType
const AV_PICTURE_TYPE_I = 1
const AV_PICTURE_TYPE_P = 2
const AV_PICTURE_TYPE_B = 3
const AV_PICTURE_TYPE_S = 4
const AV_PICTURE_TYPE_SI = 5
const AV_PICTURE_TYPE_SP = 6
const AV_PICTURE_TYPE_BI = 7
# end
# enum AVOptionType
const AV_OPT_TYPE_FLAGS = 0
const AV_OPT_TYPE_INT = 1
const AV_OPT_TYPE_INT64 = 2
const AV_OPT_TYPE_DOUBLE = 3
const AV_OPT_TYPE_FLOAT = 4
const AV_OPT_TYPE_STRING = 5
const AV_OPT_TYPE_RATIONAL = 6
const AV_OPT_TYPE_BINARY = 7
const AV_OPT_TYPE_CONST = 128
const FF_OPT_TYPE_FLAGS = 0
const FF_OPT_TYPE_INT = 1
const FF_OPT_TYPE_INT64 = 2
const FF_OPT_TYPE_DOUBLE = 3
const FF_OPT_TYPE_FLOAT = 4
const FF_OPT_TYPE_STRING = 5
const FF_OPT_TYPE_RATIONAL = 6
const FF_OPT_TYPE_BINARY = 7
const FF_OPT_TYPE_CONST = 128
# end
type AVOption
  name::Ptr{Uint8}
  help::Ptr{Uint8}
  offset::Int32
  type::Void
  default_val::Void
  min::Float64
  max::Float64
  flags::Int32
  unit::Ptr{Uint8}
end
# enum PixelFormat
const PIX_FMT_NONE = -1
const PIX_FMT_YUV420P = 0
const PIX_FMT_YUYV422 = 1
const PIX_FMT_RGB24 = 2
const PIX_FMT_BGR24 = 3
const PIX_FMT_YUV422P = 4
const PIX_FMT_YUV444P = 5
const PIX_FMT_YUV410P = 6
const PIX_FMT_YUV411P = 7
const PIX_FMT_GRAY8 = 8
const PIX_FMT_MONOWHITE = 9
const PIX_FMT_MONOBLACK = 10
const PIX_FMT_PAL8 = 11
const PIX_FMT_YUVJ420P = 12
const PIX_FMT_YUVJ422P = 13
const PIX_FMT_YUVJ444P = 14
const PIX_FMT_XVMC_MPEG2_MC = 15
const PIX_FMT_XVMC_MPEG2_IDCT = 16
const PIX_FMT_UYVY422 = 17
const PIX_FMT_UYYVYY411 = 18
const PIX_FMT_BGR8 = 19
const PIX_FMT_BGR4 = 20
const PIX_FMT_BGR4_BYTE = 21
const PIX_FMT_RGB8 = 22
const PIX_FMT_RGB4 = 23
const PIX_FMT_RGB4_BYTE = 24
const PIX_FMT_NV12 = 25
const PIX_FMT_NV21 = 26
const PIX_FMT_ARGB = 27
const PIX_FMT_RGBA = 28
const PIX_FMT_ABGR = 29
const PIX_FMT_BGRA = 30
const PIX_FMT_GRAY16BE = 31
const PIX_FMT_GRAY16LE = 32
const PIX_FMT_YUV440P = 33
const PIX_FMT_YUVJ440P = 34
const PIX_FMT_YUVA420P = 35
const PIX_FMT_VDPAU_H264 = 36
const PIX_FMT_VDPAU_MPEG1 = 37
const PIX_FMT_VDPAU_MPEG2 = 38
const PIX_FMT_VDPAU_WMV3 = 39
const PIX_FMT_VDPAU_VC1 = 40
const PIX_FMT_RGB48BE = 41
const PIX_FMT_RGB48LE = 42
const PIX_FMT_RGB565BE = 43
const PIX_FMT_RGB565LE = 44
const PIX_FMT_RGB555BE = 45
const PIX_FMT_RGB555LE = 46
const PIX_FMT_BGR565BE = 47
const PIX_FMT_BGR565LE = 48
const PIX_FMT_BGR555BE = 49
const PIX_FMT_BGR555LE = 50
const PIX_FMT_VAAPI_MOCO = 51
const PIX_FMT_VAAPI_IDCT = 52
const PIX_FMT_VAAPI_VLD = 53
const PIX_FMT_YUV420P16LE = 54
const PIX_FMT_YUV420P16BE = 55
const PIX_FMT_YUV422P16LE = 56
const PIX_FMT_YUV422P16BE = 57
const PIX_FMT_YUV444P16LE = 58
const PIX_FMT_YUV444P16BE = 59
const PIX_FMT_VDPAU_MPEG4 = 60
const PIX_FMT_DXVA2_VLD = 61
const PIX_FMT_RGB444LE = 62
const PIX_FMT_RGB444BE = 63
const PIX_FMT_BGR444LE = 64
const PIX_FMT_BGR444BE = 65
const PIX_FMT_Y400A = 66
const PIX_FMT_BGR48BE = 67
const PIX_FMT_BGR48LE = 68
const PIX_FMT_YUV420P9BE = 69
const PIX_FMT_YUV420P9LE = 70
const PIX_FMT_YUV420P10BE = 71
const PIX_FMT_YUV420P10LE = 72
const PIX_FMT_YUV422P10BE = 73
const PIX_FMT_YUV422P10LE = 74
const PIX_FMT_YUV444P9BE = 75
const PIX_FMT_YUV444P9LE = 76
const PIX_FMT_YUV444P10BE = 77
const PIX_FMT_YUV444P10LE = 78
const PIX_FMT_YUV422P9BE = 79
const PIX_FMT_YUV422P9LE = 80
const PIX_FMT_VDA_VLD = 81
const PIX_FMT_GBRP = 82
const PIX_FMT_GBRP9BE = 83
const PIX_FMT_GBRP9LE = 84
const PIX_FMT_GBRP10BE = 85
const PIX_FMT_GBRP10LE = 86
const PIX_FMT_GBRP16BE = 87
const PIX_FMT_GBRP16LE = 88
const PIX_FMT_NB = 89
# end
# enum PixelFormat
const PIX_FMT_NONE = -1
const PIX_FMT_YUV420P = 0
const PIX_FMT_YUYV422 = 1
const PIX_FMT_RGB24 = 2
const PIX_FMT_BGR24 = 3
const PIX_FMT_YUV422P = 4
const PIX_FMT_YUV444P = 5
const PIX_FMT_YUV410P = 6
const PIX_FMT_YUV411P = 7
const PIX_FMT_GRAY8 = 8
const PIX_FMT_MONOWHITE = 9
const PIX_FMT_MONOBLACK = 10
const PIX_FMT_PAL8 = 11
const PIX_FMT_YUVJ420P = 12
const PIX_FMT_YUVJ422P = 13
const PIX_FMT_YUVJ444P = 14
const PIX_FMT_XVMC_MPEG2_MC = 15
const PIX_FMT_XVMC_MPEG2_IDCT = 16
const PIX_FMT_UYVY422 = 17
const PIX_FMT_UYYVYY411 = 18
const PIX_FMT_BGR8 = 19
const PIX_FMT_BGR4 = 20
const PIX_FMT_BGR4_BYTE = 21
const PIX_FMT_RGB8 = 22
const PIX_FMT_RGB4 = 23
const PIX_FMT_RGB4_BYTE = 24
const PIX_FMT_NV12 = 25
const PIX_FMT_NV21 = 26
const PIX_FMT_ARGB = 27
const PIX_FMT_RGBA = 28
const PIX_FMT_ABGR = 29
const PIX_FMT_BGRA = 30
const PIX_FMT_GRAY16BE = 31
const PIX_FMT_GRAY16LE = 32
const PIX_FMT_YUV440P = 33
const PIX_FMT_YUVJ440P = 34
const PIX_FMT_YUVA420P = 35
const PIX_FMT_VDPAU_H264 = 36
const PIX_FMT_VDPAU_MPEG1 = 37
const PIX_FMT_VDPAU_MPEG2 = 38
const PIX_FMT_VDPAU_WMV3 = 39
const PIX_FMT_VDPAU_VC1 = 40
const PIX_FMT_RGB48BE = 41
const PIX_FMT_RGB48LE = 42
const PIX_FMT_RGB565BE = 43
const PIX_FMT_RGB565LE = 44
const PIX_FMT_RGB555BE = 45
const PIX_FMT_RGB555LE = 46
const PIX_FMT_BGR565BE = 47
const PIX_FMT_BGR565LE = 48
const PIX_FMT_BGR555BE = 49
const PIX_FMT_BGR555LE = 50
const PIX_FMT_VAAPI_MOCO = 51
const PIX_FMT_VAAPI_IDCT = 52
const PIX_FMT_VAAPI_VLD = 53
const PIX_FMT_YUV420P16LE = 54
const PIX_FMT_YUV420P16BE = 55
const PIX_FMT_YUV422P16LE = 56
const PIX_FMT_YUV422P16BE = 57
const PIX_FMT_YUV444P16LE = 58
const PIX_FMT_YUV444P16BE = 59
const PIX_FMT_VDPAU_MPEG4 = 60
const PIX_FMT_DXVA2_VLD = 61
const PIX_FMT_RGB444LE = 62
const PIX_FMT_RGB444BE = 63
const PIX_FMT_BGR444LE = 64
const PIX_FMT_BGR444BE = 65
const PIX_FMT_Y400A = 66
const PIX_FMT_BGR48BE = 67
const PIX_FMT_BGR48LE = 68
const PIX_FMT_YUV420P9BE = 69
const PIX_FMT_YUV420P9LE = 70
const PIX_FMT_YUV420P10BE = 71
const PIX_FMT_YUV420P10LE = 72
const PIX_FMT_YUV422P10BE = 73
const PIX_FMT_YUV422P10LE = 74
const PIX_FMT_YUV444P9BE = 75
const PIX_FMT_YUV444P9LE = 76
const PIX_FMT_YUV444P10BE = 77
const PIX_FMT_YUV444P10LE = 78
const PIX_FMT_YUV422P9BE = 79
const PIX_FMT_YUV422P9LE = 80
const PIX_FMT_VDA_VLD = 81
const PIX_FMT_GBRP = 82
const PIX_FMT_GBRP9BE = 83
const PIX_FMT_GBRP9LE = 84
const PIX_FMT_GBRP10BE = 85
const PIX_FMT_GBRP10LE = 86
const PIX_FMT_GBRP16BE = 87
const PIX_FMT_GBRP16LE = 88
const PIX_FMT_NB = 89
# end
# enum AVMediaType
const AVMEDIA_TYPE_UNKNOWN = -1
const AVMEDIA_TYPE_VIDEO = 0
const AVMEDIA_TYPE_AUDIO = 1
const AVMEDIA_TYPE_DATA = 2
const AVMEDIA_TYPE_SUBTITLE = 3
const AVMEDIA_TYPE_ATTACHMENT = 4
const AVMEDIA_TYPE_NB = 5
# end
# enum AVPictureType
const AV_PICTURE_TYPE_I = 1
const AV_PICTURE_TYPE_P = 2
const AV_PICTURE_TYPE_B = 3
const AV_PICTURE_TYPE_S = 4
const AV_PICTURE_TYPE_SI = 5
const AV_PICTURE_TYPE_SP = 6
const AV_PICTURE_TYPE_BI = 7
# end
# enum AVSampleFormat
const AV_SAMPLE_FMT_NONE = -1
const AV_SAMPLE_FMT_U8 = 0
const AV_SAMPLE_FMT_S16 = 1
const AV_SAMPLE_FMT_S32 = 2
const AV_SAMPLE_FMT_FLT = 3
const AV_SAMPLE_FMT_DBL = 4
const AV_SAMPLE_FMT_U8P = 5
const AV_SAMPLE_FMT_S16P = 6
const AV_SAMPLE_FMT_S32P = 7
const AV_SAMPLE_FMT_FLTP = 8
const AV_SAMPLE_FMT_DBLP = 9
const AV_SAMPLE_FMT_NB = 10
# end
# enum AVMediaType
const AVMEDIA_TYPE_UNKNOWN = -1
const AVMEDIA_TYPE_VIDEO = 0
const AVMEDIA_TYPE_AUDIO = 1
const AVMEDIA_TYPE_DATA = 2
const AVMEDIA_TYPE_SUBTITLE = 3
const AVMEDIA_TYPE_ATTACHMENT = 4
const AVMEDIA_TYPE_NB = 5
# end
# enum AVPictureType
const AV_PICTURE_TYPE_I = 1
const AV_PICTURE_TYPE_P = 2
const AV_PICTURE_TYPE_B = 3
const AV_PICTURE_TYPE_S = 4
const AV_PICTURE_TYPE_SI = 5
const AV_PICTURE_TYPE_SP = 6
const AV_PICTURE_TYPE_BI = 7
# end
# enum AVSampleFormat
const AV_SAMPLE_FMT_NONE = -1
const AV_SAMPLE_FMT_U8 = 0
const AV_SAMPLE_FMT_S16 = 1
const AV_SAMPLE_FMT_S32 = 2
const AV_SAMPLE_FMT_FLT = 3
const AV_SAMPLE_FMT_DBL = 4
const AV_SAMPLE_FMT_U8P = 5
const AV_SAMPLE_FMT_S16P = 6
const AV_SAMPLE_FMT_S32P = 7
const AV_SAMPLE_FMT_FLTP = 8
const AV_SAMPLE_FMT_DBLP = 9
const AV_SAMPLE_FMT_NB = 10
# end
# enum CodecID
const CODEC_ID_NONE = 0
const CODEC_ID_MPEG1VIDEO = 1
const CODEC_ID_MPEG2VIDEO = 2
const CODEC_ID_MPEG2VIDEO_XVMC = 3
const CODEC_ID_H261 = 4
const CODEC_ID_H263 = 5
const CODEC_ID_RV10 = 6
const CODEC_ID_RV20 = 7
const CODEC_ID_MJPEG = 8
const CODEC_ID_MJPEGB = 9
const CODEC_ID_LJPEG = 10
const CODEC_ID_SP5X = 11
const CODEC_ID_JPEGLS = 12
const CODEC_ID_MPEG4 = 13
const CODEC_ID_RAWVIDEO = 14
const CODEC_ID_MSMPEG4V1 = 15
const CODEC_ID_MSMPEG4V2 = 16
const CODEC_ID_MSMPEG4V3 = 17
const CODEC_ID_WMV1 = 18
const CODEC_ID_WMV2 = 19
const CODEC_ID_H263P = 20
const CODEC_ID_H263I = 21
const CODEC_ID_FLV1 = 22
const CODEC_ID_SVQ1 = 23
const CODEC_ID_SVQ3 = 24
const CODEC_ID_DVVIDEO = 25
const CODEC_ID_HUFFYUV = 26
const CODEC_ID_CYUV = 27
const CODEC_ID_H264 = 28
const CODEC_ID_INDEO3 = 29
const CODEC_ID_VP3 = 30
const CODEC_ID_THEORA = 31
const CODEC_ID_ASV1 = 32
const CODEC_ID_ASV2 = 33
const CODEC_ID_FFV1 = 34
const CODEC_ID_4XM = 35
const CODEC_ID_VCR1 = 36
const CODEC_ID_CLJR = 37
const CODEC_ID_MDEC = 38
const CODEC_ID_ROQ = 39
const CODEC_ID_INTERPLAY_VIDEO = 40
const CODEC_ID_XAN_WC3 = 41
const CODEC_ID_XAN_WC4 = 42
const CODEC_ID_RPZA = 43
const CODEC_ID_CINEPAK = 44
const CODEC_ID_WS_VQA = 45
const CODEC_ID_MSRLE = 46
const CODEC_ID_MSVIDEO1 = 47
const CODEC_ID_IDCIN = 48
const CODEC_ID_8BPS = 49
const CODEC_ID_SMC = 50
const CODEC_ID_FLIC = 51
const CODEC_ID_TRUEMOTION1 = 52
const CODEC_ID_VMDVIDEO = 53
const CODEC_ID_MSZH = 54
const CODEC_ID_ZLIB = 55
const CODEC_ID_QTRLE = 56
const CODEC_ID_SNOW = 57
const CODEC_ID_TSCC = 58
const CODEC_ID_ULTI = 59
const CODEC_ID_QDRAW = 60
const CODEC_ID_VIXL = 61
const CODEC_ID_QPEG = 62
const CODEC_ID_PNG = 63
const CODEC_ID_PPM = 64
const CODEC_ID_PBM = 65
const CODEC_ID_PGM = 66
const CODEC_ID_PGMYUV = 67
const CODEC_ID_PAM = 68
const CODEC_ID_FFVHUFF = 69
const CODEC_ID_RV30 = 70
const CODEC_ID_RV40 = 71
const CODEC_ID_VC1 = 72
const CODEC_ID_WMV3 = 73
const CODEC_ID_LOCO = 74
const CODEC_ID_WNV1 = 75
const CODEC_ID_AASC = 76
const CODEC_ID_INDEO2 = 77
const CODEC_ID_FRAPS = 78
const CODEC_ID_TRUEMOTION2 = 79
const CODEC_ID_BMP = 80
const CODEC_ID_CSCD = 81
const CODEC_ID_MMVIDEO = 82
const CODEC_ID_ZMBV = 83
const CODEC_ID_AVS = 84
const CODEC_ID_SMACKVIDEO = 85
const CODEC_ID_NUV = 86
const CODEC_ID_KMVC = 87
const CODEC_ID_FLASHSV = 88
const CODEC_ID_CAVS = 89
const CODEC_ID_JPEG2000 = 90
const CODEC_ID_VMNC = 91
const CODEC_ID_VP5 = 92
const CODEC_ID_VP6 = 93
const CODEC_ID_VP6F = 94
const CODEC_ID_TARGA = 95
const CODEC_ID_DSICINVIDEO = 96
const CODEC_ID_TIERTEXSEQVIDEO = 97
const CODEC_ID_TIFF = 98
const CODEC_ID_GIF = 99
const CODEC_ID_FFH264 = 100
const CODEC_ID_DXA = 101
const CODEC_ID_DNXHD = 102
const CODEC_ID_THP = 103
const CODEC_ID_SGI = 104
const CODEC_ID_C93 = 105
const CODEC_ID_BETHSOFTVID = 106
const CODEC_ID_PTX = 107
const CODEC_ID_TXD = 108
const CODEC_ID_VP6A = 109
const CODEC_ID_AMV = 110
const CODEC_ID_VB = 111
const CODEC_ID_PCX = 112
const CODEC_ID_SUNRAST = 113
const CODEC_ID_INDEO4 = 114
const CODEC_ID_INDEO5 = 115
const CODEC_ID_MIMIC = 116
const CODEC_ID_RL2 = 117
const CODEC_ID_8SVX_EXP = 118
const CODEC_ID_8SVX_FIB = 119
const CODEC_ID_ESCAPE124 = 120
const CODEC_ID_DIRAC = 121
const CODEC_ID_BFI = 122
const CODEC_ID_CMV = 123
const CODEC_ID_MOTIONPIXELS = 124
const CODEC_ID_TGV = 125
const CODEC_ID_TGQ = 126
const CODEC_ID_TQI = 127
const CODEC_ID_AURA = 128
const CODEC_ID_AURA2 = 129
const CODEC_ID_V210X = 130
const CODEC_ID_TMV = 131
const CODEC_ID_V210 = 132
const CODEC_ID_DPX = 133
const CODEC_ID_MAD = 134
const CODEC_ID_FRWU = 135
const CODEC_ID_FLASHSV2 = 136
const CODEC_ID_CDGRAPHICS = 137
const CODEC_ID_R210 = 138
const CODEC_ID_ANM = 139
const CODEC_ID_BINKVIDEO = 140
const CODEC_ID_IFF_ILBM = 141
const CODEC_ID_IFF_BYTERUN1 = 142
const CODEC_ID_KGV1 = 143
const CODEC_ID_YOP = 144
const CODEC_ID_VP8 = 145
const CODEC_ID_PICTOR = 146
const CODEC_ID_ANSI = 147
const CODEC_ID_A64_MULTI = 148
const CODEC_ID_A64_MULTI5 = 149
const CODEC_ID_R10K = 150
const CODEC_ID_MXPEG = 151
const CODEC_ID_LAGARITH = 152
const CODEC_ID_PRORES = 153
const CODEC_ID_JV = 154
const CODEC_ID_DFA = 155
const CODEC_ID_WMV3IMAGE = 156
const CODEC_ID_VC1IMAGE = 157
const CODEC_ID_G723_1 = 158
const CODEC_ID_G729 = 159
const CODEC_ID_UTVIDEO = 160
const CODEC_ID_BMV_VIDEO = 161
const CODEC_ID_VBLE = 162
const CODEC_ID_DXTORY = 163
const CODEC_ID_V410 = 164
const CODEC_ID_FIRST_AUDIO = 65536
const CODEC_ID_PCM_S16LE = 65536
const CODEC_ID_PCM_S16BE = 65537
const CODEC_ID_PCM_U16LE = 65538
const CODEC_ID_PCM_U16BE = 65539
const CODEC_ID_PCM_S8 = 65540
const CODEC_ID_PCM_U8 = 65541
const CODEC_ID_PCM_MULAW = 65542
const CODEC_ID_PCM_ALAW = 65543
const CODEC_ID_PCM_S32LE = 65544
const CODEC_ID_PCM_S32BE = 65545
const CODEC_ID_PCM_U32LE = 65546
const CODEC_ID_PCM_U32BE = 65547
const CODEC_ID_PCM_S24LE = 65548
const CODEC_ID_PCM_S24BE = 65549
const CODEC_ID_PCM_U24LE = 65550
const CODEC_ID_PCM_U24BE = 65551
const CODEC_ID_PCM_S24DAUD = 65552
const CODEC_ID_PCM_ZORK = 65553
const CODEC_ID_PCM_S16LE_PLANAR = 65554
const CODEC_ID_PCM_DVD = 65555
const CODEC_ID_PCM_F32BE = 65556
const CODEC_ID_PCM_F32LE = 65557
const CODEC_ID_PCM_F64BE = 65558
const CODEC_ID_PCM_F64LE = 65559
const CODEC_ID_PCM_BLURAY = 65560
const CODEC_ID_PCM_LXF = 65561
const CODEC_ID_S302M = 65562
const CODEC_ID_PCM_S8_PLANAR = 65563
const CODEC_ID_ADPCM_IMA_QT = 69632
const CODEC_ID_ADPCM_IMA_WAV = 69633
const CODEC_ID_ADPCM_IMA_DK3 = 69634
const CODEC_ID_ADPCM_IMA_DK4 = 69635
const CODEC_ID_ADPCM_IMA_WS = 69636
const CODEC_ID_ADPCM_IMA_SMJPEG = 69637
const CODEC_ID_ADPCM_MS = 69638
const CODEC_ID_ADPCM_4XM = 69639
const CODEC_ID_ADPCM_XA = 69640
const CODEC_ID_ADPCM_ADX = 69641
const CODEC_ID_ADPCM_EA = 69642
const CODEC_ID_ADPCM_G726 = 69643
const CODEC_ID_ADPCM_CT = 69644
const CODEC_ID_ADPCM_SWF = 69645
const CODEC_ID_ADPCM_YAMAHA = 69646
const CODEC_ID_ADPCM_SBPRO_4 = 69647
const CODEC_ID_ADPCM_SBPRO_3 = 69648
const CODEC_ID_ADPCM_SBPRO_2 = 69649
const CODEC_ID_ADPCM_THP = 69650
const CODEC_ID_ADPCM_IMA_AMV = 69651
const CODEC_ID_ADPCM_EA_R1 = 69652
const CODEC_ID_ADPCM_EA_R3 = 69653
const CODEC_ID_ADPCM_EA_R2 = 69654
const CODEC_ID_ADPCM_IMA_EA_SEAD = 69655
const CODEC_ID_ADPCM_IMA_EA_EACS = 69656
const CODEC_ID_ADPCM_EA_XAS = 69657
const CODEC_ID_ADPCM_EA_MAXIS_XA = 69658
const CODEC_ID_ADPCM_IMA_ISS = 69659
const CODEC_ID_ADPCM_G722 = 69660
const CODEC_ID_AMR_NB = 73728
const CODEC_ID_AMR_WB = 73729
const CODEC_ID_RA_144 = 77824
const CODEC_ID_RA_288 = 77825
const CODEC_ID_ROQ_DPCM = 81920
const CODEC_ID_INTERPLAY_DPCM = 81921
const CODEC_ID_XAN_DPCM = 81922
const CODEC_ID_SOL_DPCM = 81923
const CODEC_ID_MP2 = 86016
const CODEC_ID_MP3 = 86017
const CODEC_ID_AAC = 86018
const CODEC_ID_AC3 = 86019
const CODEC_ID_DTS = 86020
const CODEC_ID_VORBIS = 86021
const CODEC_ID_DVAUDIO = 86022
const CODEC_ID_WMAV1 = 86023
const CODEC_ID_WMAV2 = 86024
const CODEC_ID_MACE3 = 86025
const CODEC_ID_MACE6 = 86026
const CODEC_ID_VMDAUDIO = 86027
const CODEC_ID_SONIC = 86028
const CODEC_ID_SONIC_LS = 86029
const CODEC_ID_FLAC = 86030
const CODEC_ID_MP3ADU = 86031
const CODEC_ID_MP3ON4 = 86032
const CODEC_ID_SHORTEN = 86033
const CODEC_ID_ALAC = 86034
const CODEC_ID_WESTWOOD_SND1 = 86035
const CODEC_ID_GSM = 86036
const CODEC_ID_QDM2 = 86037
const CODEC_ID_COOK = 86038
const CODEC_ID_TRUESPEECH = 86039
const CODEC_ID_TTA = 86040
const CODEC_ID_SMACKAUDIO = 86041
const CODEC_ID_QCELP = 86042
const CODEC_ID_WAVPACK = 86043
const CODEC_ID_DSICINAUDIO = 86044
const CODEC_ID_IMC = 86045
const CODEC_ID_MUSEPACK7 = 86046
const CODEC_ID_MLP = 86047
const CODEC_ID_GSM_MS = 86048
const CODEC_ID_ATRAC3 = 86049
const CODEC_ID_VOXWARE = 86050
const CODEC_ID_APE = 86051
const CODEC_ID_NELLYMOSER = 86052
const CODEC_ID_MUSEPACK8 = 86053
const CODEC_ID_SPEEX = 86054
const CODEC_ID_WMAVOICE = 86055
const CODEC_ID_WMAPRO = 86056
const CODEC_ID_WMALOSSLESS = 86057
const CODEC_ID_ATRAC3P = 86058
const CODEC_ID_EAC3 = 86059
const CODEC_ID_SIPR = 86060
const CODEC_ID_MP1 = 86061
const CODEC_ID_TWINVQ = 86062
const CODEC_ID_TRUEHD = 86063
const CODEC_ID_MP4ALS = 86064
const CODEC_ID_ATRAC1 = 86065
const CODEC_ID_BINKAUDIO_RDFT = 86066
const CODEC_ID_BINKAUDIO_DCT = 86067
const CODEC_ID_AAC_LATM = 86068
const CODEC_ID_QDMC = 86069
const CODEC_ID_CELT = 86070
const CODEC_ID_BMV_AUDIO = 86071
const CODEC_ID_FIRST_SUBTITLE = 94208
const CODEC_ID_DVD_SUBTITLE = 94208
const CODEC_ID_DVB_SUBTITLE = 94209
const CODEC_ID_TEXT = 94210
const CODEC_ID_XSUB = 94211
const CODEC_ID_SSA = 94212
const CODEC_ID_MOV_TEXT = 94213
const CODEC_ID_HDMV_PGS_SUBTITLE = 94214
const CODEC_ID_DVB_TELETEXT = 94215
const CODEC_ID_SRT = 94216
const CODEC_ID_FIRST_UNKNOWN = 98304
const CODEC_ID_TTF = 98304
const CODEC_ID_PROBE = 102400
const CODEC_ID_MPEG2TS = 131072
const CODEC_ID_MPEG4SYSTEMS = 131073
const CODEC_ID_FFMETADATA = 135168
# end
# enum Motion_Est_ID
const ME_ZERO = 1
const ME_FULL = 2
const ME_LOG = 3
const ME_PHODS = 4
const ME_EPZS = 5
const ME_X1 = 6
const ME_HEX = 7
const ME_UMH = 8
const ME_ITER = 9
const ME_TESA = 10
# end
# enum AVDiscard
const AVDISCARD_NONE = -16
const AVDISCARD_DEFAULT = 0
const AVDISCARD_NONREF = 8
const AVDISCARD_BIDIR = 16
const AVDISCARD_NONKEY = 32
const AVDISCARD_ALL = 48
# end
# enum AVColorPrimaries
const AVCOL_PRI_BT709 = 1
const AVCOL_PRI_UNSPECIFIED = 2
const AVCOL_PRI_BT470M = 4
const AVCOL_PRI_BT470BG = 5
const AVCOL_PRI_SMPTE170M = 6
const AVCOL_PRI_SMPTE240M = 7
const AVCOL_PRI_FILM = 8
const AVCOL_PRI_NB = 9
# end
# enum AVColorTransferCharacteristic
const AVCOL_TRC_BT709 = 1
const AVCOL_TRC_UNSPECIFIED = 2
const AVCOL_TRC_GAMMA22 = 4
const AVCOL_TRC_GAMMA28 = 5
const AVCOL_TRC_NB = 6
# end
# enum AVColorSpace
const AVCOL_SPC_RGB = 0
const AVCOL_SPC_BT709 = 1
const AVCOL_SPC_UNSPECIFIED = 2
const AVCOL_SPC_FCC = 4
const AVCOL_SPC_BT470BG = 5
const AVCOL_SPC_SMPTE170M = 6
const AVCOL_SPC_SMPTE240M = 7
const AVCOL_SPC_NB = 8
# end
# enum AVColorRange
const AVCOL_RANGE_UNSPECIFIED = 0
const AVCOL_RANGE_MPEG = 1
const AVCOL_RANGE_JPEG = 2
const AVCOL_RANGE_NB = 3
# end
# enum AVChromaLocation
const AVCHROMA_LOC_UNSPECIFIED = 0
const AVCHROMA_LOC_LEFT = 1
const AVCHROMA_LOC_CENTER = 2
const AVCHROMA_LOC_TOPLEFT = 3
const AVCHROMA_LOC_TOP = 4
const AVCHROMA_LOC_BOTTOMLEFT = 5
const AVCHROMA_LOC_BOTTOM = 6
const AVCHROMA_LOC_NB = 7
# end
# enum AVLPCType
const AV_LPC_TYPE_DEFAULT = -1
const AV_LPC_TYPE_NONE = 0
const AV_LPC_TYPE_FIXED = 1
const AV_LPC_TYPE_LEVINSON = 2
const AV_LPC_TYPE_CHOLESKY = 3
const AV_LPC_TYPE_NB = 4
# end
# enum AVAudioServiceType
const AV_AUDIO_SERVICE_TYPE_MAIN = 0
const AV_AUDIO_SERVICE_TYPE_EFFECTS = 1
const AV_AUDIO_SERVICE_TYPE_VISUALLY_IMPAIRED = 2
const AV_AUDIO_SERVICE_TYPE_HEARING_IMPAIRED = 3
const AV_AUDIO_SERVICE_TYPE_DIALOGUE = 4
const AV_AUDIO_SERVICE_TYPE_COMMENTARY = 5
const AV_AUDIO_SERVICE_TYPE_EMERGENCY = 6
const AV_AUDIO_SERVICE_TYPE_VOICE_OVER = 7
const AV_AUDIO_SERVICE_TYPE_KARAOKE = 8
const AV_AUDIO_SERVICE_TYPE_NB = 9
# end
type RcOverride
  start_frame::Int32
  end_frame::Int32
  qscale::Int32
  quality_factor::Float32
end
type AVPanScan
  id::Int32
  width::Int32
  height::Int32
  position::Void
end
# enum AVPacketSideDataType
const AV_PKT_DATA_PALETTE = 0
const AV_PKT_DATA_NEW_EXTRADATA = 1
const AV_PKT_DATA_PARAM_CHANGE = 2
# end
type AVPacket
  pts::int64_t
  dts::int64_t
  data::Ptr{uint8_t}
  size::Int32
  stream_index::Int32
  flags::Int32
  side_data::Ptr{Void}
  side_data_elems::Int32
  duration::Int32
  destruct::Ptr{Void}
  priv::Ptr{None}
  pos::int64_t
  convergence_duration::int64_t
end
# enum AVSideDataParamChangeFlags
const AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_COUNT = 1
const AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_LAYOUT = 2
const AV_SIDE_DATA_PARAM_CHANGE_SAMPLE_RATE = 4
const AV_SIDE_DATA_PARAM_CHANGE_DIMENSIONS = 8
# end
type AVFrame
  data::Void
  linesize::Void
  base::Void
  key_frame::Int32
  pict_type::Void
  pts::int64_t
  coded_picture_number::Int32
  display_picture_number::Int32
  quality::Int32
  age::Int32
  reference::Int32
  qscale_table::Ptr{int8_t}
  qstride::Int32
  mbskip_table::Ptr{uint8_t}
  motion_val::Void
  mb_type::Ptr{uint32_t}
  motion_subsample_log2::uint8_t
  opaque::Ptr{None}
  error::Void
  type::Int32
  repeat_pict::Int32
  qscale_type::Int32
  interlaced_frame::Int32
  top_field_first::Int32
  pan_scan::Ptr{AVPanScan}
  palette_has_changed::Int32
  buffer_hints::Int32
  dct_coeff::Ptr{Int16}
  ref_index::Void
  reordered_opaque::int64_t
  hwaccel_picture_private::Ptr{None}
  pkt_pts::int64_t
  pkt_dts::int64_t
  AVCodecContext::Void
  owner::Ptr{Void}
  thread_opaque::Ptr{None}
  nb_samples::Int32
  extended_data::Ptr{Ptr{uint8_t}}
  sample_aspect_ratio::AVRational
  width::Int32
  height::Int32
  format::Int32
end
# enum AVFieldOrder
const AV_FIELD_UNKNOWN = 0
const AV_FIELD_PROGRESSIVE = 1
const AV_FIELD_TT = 2
const AV_FIELD_BB = 3
const AV_FIELD_TB = 4
const AV_FIELD_BT = 5
# end
type AVCodecContext
  av_class::Ptr{AVClass}
  bit_rate::Int32
  bit_rate_tolerance::Int32
  flags::Int32
  sub_id::Int32
  me_method::Int32
  extradata::Ptr{uint8_t}
  extradata_size::Int32
  time_base::AVRational
  width::Int32
  height::Int32
  gop_size::Int32
  pix_fmt::Void
  draw_horiz_band::Ptr{Void}
  sample_rate::Int32
  channels::Int32
  sample_fmt::Void
  frame_size::Int32
  frame_number::Int32
  delay::Int32
  qcompress::Float32
  qblur::Float32
  qmin::Int32
  qmax::Int32
  max_qdiff::Int32
  max_b_frames::Int32
  b_quant_factor::Float32
  rc_strategy::Int32
  b_frame_strategy::Int32
  AVCodec::Void
  codec::Ptr{Void}
  priv_data::Ptr{None}
  rtp_payload_size::Int32
  rtp_callback::Ptr{Void}
  mv_bits::Int32
  header_bits::Int32
  i_tex_bits::Int32
  p_tex_bits::Int32
  i_count::Int32
  p_count::Int32
  skip_count::Int32
  misc_bits::Int32
  frame_bits::Int32
  opaque::Ptr{None}
  codec_name::Void
  codec_type::Void
  codec_id::Void
  codec_tag::Uint32
  workaround_bugs::Int32
  luma_elim_threshold::Int32
  chroma_elim_threshold::Int32
  strict_std_compliance::Int32
  b_quant_offset::Float32
  error_recognition::Int32
  get_buffer::Ptr{Void}
  release_buffer::Ptr{Void}
  has_b_frames::Int32
  block_align::Int32
  parse_only::Int32
  mpeg_quant::Int32
  stats_out::Ptr{Uint8}
  stats_in::Ptr{Uint8}
  rc_qsquish::Float32
  rc_qmod_amp::Float32
  rc_qmod_freq::Int32
  rc_override::Ptr{RcOverride}
  rc_override_count::Int32
  rc_eq::Ptr{Uint8}
  rc_max_rate::Int32
  rc_min_rate::Int32
  rc_buffer_size::Int32
  rc_buffer_aggressivity::Float32
  i_quant_factor::Float32
  i_quant_offset::Float32
  rc_initial_cplx::Float32
  dct_algo::Int32
  lumi_masking::Float32
  temporal_cplx_masking::Float32
  spatial_cplx_masking::Float32
  p_masking::Float32
  dark_masking::Float32
  idct_algo::Int32
  slice_count::Int32
  slice_offset::Ptr{Int32}
  error_concealment::Int32
  dsp_mask::Uint32
  bits_per_coded_sample::Int32
  prediction_method::Int32
  sample_aspect_ratio::AVRational
  coded_frame::Ptr{AVFrame}
  debug::Int32
  debug_mv::Int32
  error::Void
  me_cmp::Int32
  me_sub_cmp::Int32
  mb_cmp::Int32
  ildct_cmp::Int32
  dia_size::Int32
  last_predictor_count::Int32
  pre_me::Int32
  me_pre_cmp::Int32
  pre_dia_size::Int32
  me_subpel_quality::Int32
  get_format::Ptr{Void}
  dtg_active_format::Int32
  me_range::Int32
  intra_quant_bias::Int32
  inter_quant_bias::Int32
  color_table_id::Int32
  internal_buffer_count::Int32
  internal_buffer::Ptr{None}
  global_quality::Int32
  coder_type::Int32
  context_model::Int32
  slice_flags::Int32
  xvmc_acceleration::Int32
  mb_decision::Int32
  intra_matrix::Ptr{uint16_t}
  inter_matrix::Ptr{uint16_t}
  stream_codec_tag::Uint32
  scenechange_threshold::Int32
  lmin::Int32
  lmax::Int32
  AVPaletteControl::Void
  palctrl::Ptr{Void}
  noise_reduction::Int32
  reget_buffer::Ptr{Void}
  rc_initial_buffer_occupancy::Int32
  inter_threshold::Int32
  flags2::Int32
  error_rate::Int32
  antialias_algo::Int32
  quantizer_noise_shaping::Int32
  thread_count::Int32
  execute::Ptr{Void}
  thread_opaque::Ptr{None}
  me_threshold::Int32
  mb_threshold::Int32
  intra_dc_precision::Int32
  nsse_weight::Int32
  skip_top::Int32
  skip_bottom::Int32
  profile::Int32
  level::Int32
  lowres::Int32
  coded_width::Int32
  coded_height::Int32
  frame_skip_threshold::Int32
  frame_skip_factor::Int32
  frame_skip_exp::Int32
  frame_skip_cmp::Int32
  border_masking::Float32
  mb_lmin::Int32
  mb_lmax::Int32
  me_penalty_compensation::Int32
  skip_loop_filter::Void
  skip_idct::Void
  skip_frame::Void
  bidir_refine::Int32
  brd_scale::Int32
  crf::Float32
  cqp::Int32
  keyint_min::Int32
  refs::Int32
  chromaoffset::Int32
  bframebias::Int32
  trellis::Int32
  complexityblur::Float32
  deblockalpha::Int32
  deblockbeta::Int32
  partitions::Int32
  directpred::Int32
  cutoff::Int32
  scenechange_factor::Int32
  mv0_threshold::Int32
  b_sensitivity::Int32
  compression_level::Int32
  min_prediction_order::Int32
  max_prediction_order::Int32
  lpc_coeff_precision::Int32
  prediction_order_method::Int32
  min_partition_order::Int32
  max_partition_order::Int32
  timecode_frame_start::int64_t
  request_channels::Int32
  drc_scale::Float32
  reordered_opaque::int64_t
  bits_per_raw_sample::Int32
  channel_layout::uint64_t
  request_channel_layout::uint64_t
  rc_max_available_vbv_use::Float32
  rc_min_vbv_overflow_use::Float32
  AVHWAccel::Void
  hwaccel::Ptr{Void}
  ticks_per_frame::Int32
  hwaccel_context::Ptr{None}
  color_primaries::Void
  color_trc::Void
  colorspace::Void
  color_range::Void
  chroma_sample_location::Void
  execute2::Ptr{Void}
  weighted_p_pred::Int32
  aq_mode::Int32
  aq_strength::Float32
  psy_rd::Float32
  psy_trellis::Float32
  rc_lookahead::Int32
  crf_max::Float32
  log_level_offset::Int32
  lpc_type::Void
  lpc_passes::Int32
  slices::Int32
  subtitle_header::Ptr{uint8_t}
  subtitle_header_size::Int32
  pkt::Ptr{AVPacket}
  is_copy::Int32
  thread_type::Int32
  active_thread_type::Int32
  thread_safe_callbacks::Int32
  vbv_delay::uint64_t
  audio_service_type::Void
  request_sample_fmt::Void
  err_recognition::Int32
  internal::Ptr{Void}
  field_order::Void
end
type AVProfile
  profile::Int32
  name::Ptr{Uint8}
end
type AVCodec
  name::Ptr{Uint8}
  type::Void
  id::Void
  priv_data_size::Int32
  init::Ptr{Void}
  encode::Ptr{Void}
  close::Ptr{Void}
  decode::Ptr{Void}
  capabilities::Int32
  next::Ptr{Void}
  flush::Ptr{Void}
  supported_framerates::Ptr{AVRational}
  pix_fmts::Ptr{Void}
  long_name::Ptr{Uint8}
  supported_samplerates::Ptr{Int32}
  sample_fmts::Ptr{Void}
  channel_layouts::Ptr{uint64_t}
  max_lowres::uint8_t
  priv_class::Ptr{AVClass}
  profiles::Ptr{AVProfile}
  init_thread_copy::Ptr{Void}
  update_thread_context::Ptr{Void}
  defaults::Ptr{AVCodecDefault}
  init_static_data::Ptr{Void}
  encode2::Ptr{Void}
end
type AVHWAccel
  name::Ptr{Uint8}
  type::Void
  id::Void
  pix_fmt::Void
  capabilities::Int32
  next::Ptr{Void}
  start_frame::Ptr{Void}
  decode_slice::Ptr{Void}
  end_frame::Ptr{Void}
  priv_data_size::Int32
end
type AVPicture
  data::Void
  linesize::Void
end
type AVPaletteControl
  palette_changed::Int32
  palette::Void
end
# enum AVSubtitleType
const SUBTITLE_NONE = 0
const SUBTITLE_BITMAP = 1
const SUBTITLE_TEXT = 2
const SUBTITLE_ASS = 3
# end
type AVSubtitleRect
  x::Int32
  y::Int32
  w::Int32
  h::Int32
  nb_colors::Int32
  pict::AVPicture
  type::Void
  text::Ptr{Uint8}
  ass::Ptr{Uint8}
end
type AVSubtitle
  format::uint16_t
  start_display_time::uint32_t
  end_display_time::uint32_t
  num_rects::Uint32
  rects::Ptr{Ptr{AVSubtitleRect}}
  pts::int64_t
end
type AVCodecParserContext
  priv_data::Ptr{None}
  AVCodecParser::Void
  parser::Ptr{Void}
  frame_offset::int64_t
  cur_offset::int64_t
  next_frame_offset::int64_t
  pict_type::Int32
  repeat_pict::Int32
  pts::int64_t
  dts::int64_t
  last_pts::int64_t
  last_dts::int64_t
  fetch_timestamp::Int32
  cur_frame_start_index::Int32
  cur_frame_offset::Void
  cur_frame_pts::Void
  cur_frame_dts::Void
  flags::Int32
  offset::int64_t
  cur_frame_end::Void
  key_frame::Int32
  convergence_duration::int64_t
  dts_sync_point::Int32
  dts_ref_dts_delta::Int32
  pts_dts_delta::Int32
  cur_frame_pos::Void
  pos::int64_t
  last_pos::int64_t
end
type AVCodecParser
  codec_ids::Void
  priv_data_size::Int32
  parser_init::Ptr{Void}
  parser_parse::Ptr{Void}
  parser_close::Ptr{Void}
  split::Ptr{Void}
  next::Ptr{Void}
end
type AVBitStreamFilterContext
  priv_data::Ptr{None}
  AVBitStreamFilter::Void
  filter::Ptr{Void}
  parser::Ptr{AVCodecParserContext}
  next::Ptr{Void}
end
type AVBitStreamFilter
  name::Ptr{Uint8}
  priv_data_size::Int32
  filter::Ptr{Void}
  close::Ptr{Void}
  next::Ptr{Void}
end
# enum AVLockOp
const AV_LOCK_CREATE = 0
const AV_LOCK_OBTAIN = 1
const AV_LOCK_RELEASE = 2
const AV_LOCK_DESTROY = 3
# end
@ctypedef FFTSample Float32
type FFTComplex
  re::FFTSample
  im::FFTSample
end
# enum RDFTransformType
const DFT_R2C = 0
const IDFT_C2R = 1
const IDFT_R2C = 2
const DFT_C2R = 3
# end
# enum DCTTransformType
const DCT_II = 0
const DCT_III = 1
const DCT_I = 2
const DST_I = 3
# end
type dxva_context
  decoder::Ptr{Int32}
  cfg::Ptr{Int32}
  surface_count::Uint32
  surface::Ptr{Int32}
  workaround::uint64_t
  report_id::Uint32
end
# enum AVMediaType
const AVMEDIA_TYPE_UNKNOWN = -1
const AVMEDIA_TYPE_VIDEO = 0
const AVMEDIA_TYPE_AUDIO = 1
const AVMEDIA_TYPE_DATA = 2
const AVMEDIA_TYPE_SUBTITLE = 3
const AVMEDIA_TYPE_ATTACHMENT = 4
const AVMEDIA_TYPE_NB = 5
# end
# enum AVPictureType
const AV_PICTURE_TYPE_I = 1
const AV_PICTURE_TYPE_P = 2
const AV_PICTURE_TYPE_B = 3
const AV_PICTURE_TYPE_S = 4
const AV_PICTURE_TYPE_SI = 5
const AV_PICTURE_TYPE_SP = 6
const AV_PICTURE_TYPE_BI = 7
# end
# enum AVOptionType
const AV_OPT_TYPE_FLAGS = 0
const AV_OPT_TYPE_INT = 1
const AV_OPT_TYPE_INT64 = 2
const AV_OPT_TYPE_DOUBLE = 3
const AV_OPT_TYPE_FLOAT = 4
const AV_OPT_TYPE_STRING = 5
const AV_OPT_TYPE_RATIONAL = 6
const AV_OPT_TYPE_BINARY = 7
const AV_OPT_TYPE_CONST = 128
const FF_OPT_TYPE_FLAGS = 0
const FF_OPT_TYPE_INT = 1
const FF_OPT_TYPE_INT64 = 2
const FF_OPT_TYPE_DOUBLE = 3
const FF_OPT_TYPE_FLOAT = 4
const FF_OPT_TYPE_STRING = 5
const FF_OPT_TYPE_RATIONAL = 6
const FF_OPT_TYPE_BINARY = 7
const FF_OPT_TYPE_CONST = 128
# end
type vaapi_context
  display::Ptr{None}
  config_id::uint32_t
  context_id::uint32_t
  pic_param_buf_id::uint32_t
  iq_matrix_buf_id::uint32_t
  bitplane_buf_id::uint32_t
  slice_buf_ids::Ptr{uint32_t}
  n_slice_buf_ids::Uint32
  slice_buf_ids_alloc::Uint32
  slice_params::Ptr{None}
  slice_param_size::Uint32
  slice_params_alloc::Uint32
  slice_count::Uint32
  slice_data::Ptr{uint8_t}
  slice_data_size::uint32_t
end
type vda_frame
  pts::int64_t
  cv_buffer::Int32
  next_frame::Ptr{Void}
end
type vda_context
  decoder::Int32
  queue::Ptr{vda_frame}
  queue_mutex::pthread_mutex_t
  width::Int32
  height::Int32
  format::Int32
  cv_pix_fmt_type::Int32
end
type vdpau_render_state
  surface::Int32
  state::Int32
  VdpPictureInfo::Void
  info::Void
  bitstream_buffers_allocated::Int32
  bitstream_buffers_used::Int32
  bitstream_buffers::Ptr{Int32}
end
# enum AVMediaType
const AVMEDIA_TYPE_UNKNOWN = -1
const AVMEDIA_TYPE_VIDEO = 0
const AVMEDIA_TYPE_AUDIO = 1
const AVMEDIA_TYPE_DATA = 2
const AVMEDIA_TYPE_SUBTITLE = 3
const AVMEDIA_TYPE_ATTACHMENT = 4
const AVMEDIA_TYPE_NB = 5
# end
# enum AVPictureType
const AV_PICTURE_TYPE_I = 1
const AV_PICTURE_TYPE_P = 2
const AV_PICTURE_TYPE_B = 3
const AV_PICTURE_TYPE_S = 4
const AV_PICTURE_TYPE_SI = 5
const AV_PICTURE_TYPE_SP = 6
const AV_PICTURE_TYPE_BI = 7
# end
# enum AVSampleFormat
const AV_SAMPLE_FMT_NONE = -1
const AV_SAMPLE_FMT_U8 = 0
const AV_SAMPLE_FMT_S16 = 1
const AV_SAMPLE_FMT_S32 = 2
const AV_SAMPLE_FMT_FLT = 3
const AV_SAMPLE_FMT_DBL = 4
const AV_SAMPLE_FMT_U8P = 5
const AV_SAMPLE_FMT_S16P = 6
const AV_SAMPLE_FMT_S32P = 7
const AV_SAMPLE_FMT_FLTP = 8
const AV_SAMPLE_FMT_DBLP = 9
const AV_SAMPLE_FMT_NB = 10
# end
# enum CodecID
const CODEC_ID_NONE = 0
const CODEC_ID_MPEG1VIDEO = 1
const CODEC_ID_MPEG2VIDEO = 2
const CODEC_ID_MPEG2VIDEO_XVMC = 3
const CODEC_ID_H261 = 4
const CODEC_ID_H263 = 5
const CODEC_ID_RV10 = 6
const CODEC_ID_RV20 = 7
const CODEC_ID_MJPEG = 8
const CODEC_ID_MJPEGB = 9
const CODEC_ID_LJPEG = 10
const CODEC_ID_SP5X = 11
const CODEC_ID_JPEGLS = 12
const CODEC_ID_MPEG4 = 13
const CODEC_ID_RAWVIDEO = 14
const CODEC_ID_MSMPEG4V1 = 15
const CODEC_ID_MSMPEG4V2 = 16
const CODEC_ID_MSMPEG4V3 = 17
const CODEC_ID_WMV1 = 18
const CODEC_ID_WMV2 = 19
const CODEC_ID_H263P = 20
const CODEC_ID_H263I = 21
const CODEC_ID_FLV1 = 22
const CODEC_ID_SVQ1 = 23
const CODEC_ID_SVQ3 = 24
const CODEC_ID_DVVIDEO = 25
const CODEC_ID_HUFFYUV = 26
const CODEC_ID_CYUV = 27
const CODEC_ID_H264 = 28
const CODEC_ID_INDEO3 = 29
const CODEC_ID_VP3 = 30
const CODEC_ID_THEORA = 31
const CODEC_ID_ASV1 = 32
const CODEC_ID_ASV2 = 33
const CODEC_ID_FFV1 = 34
const CODEC_ID_4XM = 35
const CODEC_ID_VCR1 = 36
const CODEC_ID_CLJR = 37
const CODEC_ID_MDEC = 38
const CODEC_ID_ROQ = 39
const CODEC_ID_INTERPLAY_VIDEO = 40
const CODEC_ID_XAN_WC3 = 41
const CODEC_ID_XAN_WC4 = 42
const CODEC_ID_RPZA = 43
const CODEC_ID_CINEPAK = 44
const CODEC_ID_WS_VQA = 45
const CODEC_ID_MSRLE = 46
const CODEC_ID_MSVIDEO1 = 47
const CODEC_ID_IDCIN = 48
const CODEC_ID_8BPS = 49
const CODEC_ID_SMC = 50
const CODEC_ID_FLIC = 51
const CODEC_ID_TRUEMOTION1 = 52
const CODEC_ID_VMDVIDEO = 53
const CODEC_ID_MSZH = 54
const CODEC_ID_ZLIB = 55
const CODEC_ID_QTRLE = 56
const CODEC_ID_SNOW = 57
const CODEC_ID_TSCC = 58
const CODEC_ID_ULTI = 59
const CODEC_ID_QDRAW = 60
const CODEC_ID_VIXL = 61
const CODEC_ID_QPEG = 62
const CODEC_ID_PNG = 63
const CODEC_ID_PPM = 64
const CODEC_ID_PBM = 65
const CODEC_ID_PGM = 66
const CODEC_ID_PGMYUV = 67
const CODEC_ID_PAM = 68
const CODEC_ID_FFVHUFF = 69
const CODEC_ID_RV30 = 70
const CODEC_ID_RV40 = 71
const CODEC_ID_VC1 = 72
const CODEC_ID_WMV3 = 73
const CODEC_ID_LOCO = 74
const CODEC_ID_WNV1 = 75
const CODEC_ID_AASC = 76
const CODEC_ID_INDEO2 = 77
const CODEC_ID_FRAPS = 78
const CODEC_ID_TRUEMOTION2 = 79
const CODEC_ID_BMP = 80
const CODEC_ID_CSCD = 81
const CODEC_ID_MMVIDEO = 82
const CODEC_ID_ZMBV = 83
const CODEC_ID_AVS = 84
const CODEC_ID_SMACKVIDEO = 85
const CODEC_ID_NUV = 86
const CODEC_ID_KMVC = 87
const CODEC_ID_FLASHSV = 88
const CODEC_ID_CAVS = 89
const CODEC_ID_JPEG2000 = 90
const CODEC_ID_VMNC = 91
const CODEC_ID_VP5 = 92
const CODEC_ID_VP6 = 93
const CODEC_ID_VP6F = 94
const CODEC_ID_TARGA = 95
const CODEC_ID_DSICINVIDEO = 96
const CODEC_ID_TIERTEXSEQVIDEO = 97
const CODEC_ID_TIFF = 98
const CODEC_ID_GIF = 99
const CODEC_ID_FFH264 = 100
const CODEC_ID_DXA = 101
const CODEC_ID_DNXHD = 102
const CODEC_ID_THP = 103
const CODEC_ID_SGI = 104
const CODEC_ID_C93 = 105
const CODEC_ID_BETHSOFTVID = 106
const CODEC_ID_PTX = 107
const CODEC_ID_TXD = 108
const CODEC_ID_VP6A = 109
const CODEC_ID_AMV = 110
const CODEC_ID_VB = 111
const CODEC_ID_PCX = 112
const CODEC_ID_SUNRAST = 113
const CODEC_ID_INDEO4 = 114
const CODEC_ID_INDEO5 = 115
const CODEC_ID_MIMIC = 116
const CODEC_ID_RL2 = 117
const CODEC_ID_8SVX_EXP = 118
const CODEC_ID_8SVX_FIB = 119
const CODEC_ID_ESCAPE124 = 120
const CODEC_ID_DIRAC = 121
const CODEC_ID_BFI = 122
const CODEC_ID_CMV = 123
const CODEC_ID_MOTIONPIXELS = 124
const CODEC_ID_TGV = 125
const CODEC_ID_TGQ = 126
const CODEC_ID_TQI = 127
const CODEC_ID_AURA = 128
const CODEC_ID_AURA2 = 129
const CODEC_ID_V210X = 130
const CODEC_ID_TMV = 131
const CODEC_ID_V210 = 132
const CODEC_ID_DPX = 133
const CODEC_ID_MAD = 134
const CODEC_ID_FRWU = 135
const CODEC_ID_FLASHSV2 = 136
const CODEC_ID_CDGRAPHICS = 137
const CODEC_ID_R210 = 138
const CODEC_ID_ANM = 139
const CODEC_ID_BINKVIDEO = 140
const CODEC_ID_IFF_ILBM = 141
const CODEC_ID_IFF_BYTERUN1 = 142
const CODEC_ID_KGV1 = 143
const CODEC_ID_YOP = 144
const CODEC_ID_VP8 = 145
const CODEC_ID_PICTOR = 146
const CODEC_ID_ANSI = 147
const CODEC_ID_A64_MULTI = 148
const CODEC_ID_A64_MULTI5 = 149
const CODEC_ID_R10K = 150
const CODEC_ID_MXPEG = 151
const CODEC_ID_LAGARITH = 152
const CODEC_ID_PRORES = 153
const CODEC_ID_JV = 154
const CODEC_ID_DFA = 155
const CODEC_ID_WMV3IMAGE = 156
const CODEC_ID_VC1IMAGE = 157
const CODEC_ID_G723_1 = 158
const CODEC_ID_G729 = 159
const CODEC_ID_UTVIDEO = 160
const CODEC_ID_BMV_VIDEO = 161
const CODEC_ID_VBLE = 162
const CODEC_ID_DXTORY = 163
const CODEC_ID_V410 = 164
const CODEC_ID_FIRST_AUDIO = 65536
const CODEC_ID_PCM_S16LE = 65536
const CODEC_ID_PCM_S16BE = 65537
const CODEC_ID_PCM_U16LE = 65538
const CODEC_ID_PCM_U16BE = 65539
const CODEC_ID_PCM_S8 = 65540
const CODEC_ID_PCM_U8 = 65541
const CODEC_ID_PCM_MULAW = 65542
const CODEC_ID_PCM_ALAW = 65543
const CODEC_ID_PCM_S32LE = 65544
const CODEC_ID_PCM_S32BE = 65545
const CODEC_ID_PCM_U32LE = 65546
const CODEC_ID_PCM_U32BE = 65547
const CODEC_ID_PCM_S24LE = 65548
const CODEC_ID_PCM_S24BE = 65549
const CODEC_ID_PCM_U24LE = 65550
const CODEC_ID_PCM_U24BE = 65551
const CODEC_ID_PCM_S24DAUD = 65552
const CODEC_ID_PCM_ZORK = 65553
const CODEC_ID_PCM_S16LE_PLANAR = 65554
const CODEC_ID_PCM_DVD = 65555
const CODEC_ID_PCM_F32BE = 65556
const CODEC_ID_PCM_F32LE = 65557
const CODEC_ID_PCM_F64BE = 65558
const CODEC_ID_PCM_F64LE = 65559
const CODEC_ID_PCM_BLURAY = 65560
const CODEC_ID_PCM_LXF = 65561
const CODEC_ID_S302M = 65562
const CODEC_ID_PCM_S8_PLANAR = 65563
const CODEC_ID_ADPCM_IMA_QT = 69632
const CODEC_ID_ADPCM_IMA_WAV = 69633
const CODEC_ID_ADPCM_IMA_DK3 = 69634
const CODEC_ID_ADPCM_IMA_DK4 = 69635
const CODEC_ID_ADPCM_IMA_WS = 69636
const CODEC_ID_ADPCM_IMA_SMJPEG = 69637
const CODEC_ID_ADPCM_MS = 69638
const CODEC_ID_ADPCM_4XM = 69639
const CODEC_ID_ADPCM_XA = 69640
const CODEC_ID_ADPCM_ADX = 69641
const CODEC_ID_ADPCM_EA = 69642
const CODEC_ID_ADPCM_G726 = 69643
const CODEC_ID_ADPCM_CT = 69644
const CODEC_ID_ADPCM_SWF = 69645
const CODEC_ID_ADPCM_YAMAHA = 69646
const CODEC_ID_ADPCM_SBPRO_4 = 69647
const CODEC_ID_ADPCM_SBPRO_3 = 69648
const CODEC_ID_ADPCM_SBPRO_2 = 69649
const CODEC_ID_ADPCM_THP = 69650
const CODEC_ID_ADPCM_IMA_AMV = 69651
const CODEC_ID_ADPCM_EA_R1 = 69652
const CODEC_ID_ADPCM_EA_R3 = 69653
const CODEC_ID_ADPCM_EA_R2 = 69654
const CODEC_ID_ADPCM_IMA_EA_SEAD = 69655
const CODEC_ID_ADPCM_IMA_EA_EACS = 69656
const CODEC_ID_ADPCM_EA_XAS = 69657
const CODEC_ID_ADPCM_EA_MAXIS_XA = 69658
const CODEC_ID_ADPCM_IMA_ISS = 69659
const CODEC_ID_ADPCM_G722 = 69660
const CODEC_ID_AMR_NB = 73728
const CODEC_ID_AMR_WB = 73729
const CODEC_ID_RA_144 = 77824
const CODEC_ID_RA_288 = 77825
const CODEC_ID_ROQ_DPCM = 81920
const CODEC_ID_INTERPLAY_DPCM = 81921
const CODEC_ID_XAN_DPCM = 81922
const CODEC_ID_SOL_DPCM = 81923
const CODEC_ID_MP2 = 86016
const CODEC_ID_MP3 = 86017
const CODEC_ID_AAC = 86018
const CODEC_ID_AC3 = 86019
const CODEC_ID_DTS = 86020
const CODEC_ID_VORBIS = 86021
const CODEC_ID_DVAUDIO = 86022
const CODEC_ID_WMAV1 = 86023
const CODEC_ID_WMAV2 = 86024
const CODEC_ID_MACE3 = 86025
const CODEC_ID_MACE6 = 86026
const CODEC_ID_VMDAUDIO = 86027
const CODEC_ID_SONIC = 86028
const CODEC_ID_SONIC_LS = 86029
const CODEC_ID_FLAC = 86030
const CODEC_ID_MP3ADU = 86031
const CODEC_ID_MP3ON4 = 86032
const CODEC_ID_SHORTEN = 86033
const CODEC_ID_ALAC = 86034
const CODEC_ID_WESTWOOD_SND1 = 86035
const CODEC_ID_GSM = 86036
const CODEC_ID_QDM2 = 86037
const CODEC_ID_COOK = 86038
const CODEC_ID_TRUESPEECH = 86039
const CODEC_ID_TTA = 86040
const CODEC_ID_SMACKAUDIO = 86041
const CODEC_ID_QCELP = 86042
const CODEC_ID_WAVPACK = 86043
const CODEC_ID_DSICINAUDIO = 86044
const CODEC_ID_IMC = 86045
const CODEC_ID_MUSEPACK7 = 86046
const CODEC_ID_MLP = 86047
const CODEC_ID_GSM_MS = 86048
const CODEC_ID_ATRAC3 = 86049
const CODEC_ID_VOXWARE = 86050
const CODEC_ID_APE = 86051
const CODEC_ID_NELLYMOSER = 86052
const CODEC_ID_MUSEPACK8 = 86053
const CODEC_ID_SPEEX = 86054
const CODEC_ID_WMAVOICE = 86055
const CODEC_ID_WMAPRO = 86056
const CODEC_ID_WMALOSSLESS = 86057
const CODEC_ID_ATRAC3P = 86058
const CODEC_ID_EAC3 = 86059
const CODEC_ID_SIPR = 86060
const CODEC_ID_MP1 = 86061
const CODEC_ID_TWINVQ = 86062
const CODEC_ID_TRUEHD = 86063
const CODEC_ID_MP4ALS = 86064
const CODEC_ID_ATRAC1 = 86065
const CODEC_ID_BINKAUDIO_RDFT = 86066
const CODEC_ID_BINKAUDIO_DCT = 86067
const CODEC_ID_AAC_LATM = 86068
const CODEC_ID_QDMC = 86069
const CODEC_ID_CELT = 86070
const CODEC_ID_BMV_AUDIO = 86071
const CODEC_ID_FIRST_SUBTITLE = 94208
const CODEC_ID_DVD_SUBTITLE = 94208
const CODEC_ID_DVB_SUBTITLE = 94209
const CODEC_ID_TEXT = 94210
const CODEC_ID_XSUB = 94211
const CODEC_ID_SSA = 94212
const CODEC_ID_MOV_TEXT = 94213
const CODEC_ID_HDMV_PGS_SUBTITLE = 94214
const CODEC_ID_DVB_TELETEXT = 94215
const CODEC_ID_SRT = 94216
const CODEC_ID_FIRST_UNKNOWN = 98304
const CODEC_ID_TTF = 98304
const CODEC_ID_PROBE = 102400
const CODEC_ID_MPEG2TS = 131072
const CODEC_ID_MPEG4SYSTEMS = 131073
const CODEC_ID_FFMETADATA = 135168
# end
# enum Motion_Est_ID
const ME_ZERO = 1
const ME_FULL = 2
const ME_LOG = 3
const ME_PHODS = 4
const ME_EPZS = 5
const ME_X1 = 6
const ME_HEX = 7
const ME_UMH = 8
const ME_ITER = 9
const ME_TESA = 10
# end
# enum AVDiscard
const AVDISCARD_NONE = -16
const AVDISCARD_DEFAULT = 0
const AVDISCARD_NONREF = 8
const AVDISCARD_BIDIR = 16
const AVDISCARD_NONKEY = 32
const AVDISCARD_ALL = 48
# end
# enum AVColorPrimaries
const AVCOL_PRI_BT709 = 1
const AVCOL_PRI_UNSPECIFIED = 2
const AVCOL_PRI_BT470M = 4
const AVCOL_PRI_BT470BG = 5
const AVCOL_PRI_SMPTE170M = 6
const AVCOL_PRI_SMPTE240M = 7
const AVCOL_PRI_FILM = 8
const AVCOL_PRI_NB = 9
# end
# enum AVColorTransferCharacteristic
const AVCOL_TRC_BT709 = 1
const AVCOL_TRC_UNSPECIFIED = 2
const AVCOL_TRC_GAMMA22 = 4
const AVCOL_TRC_GAMMA28 = 5
const AVCOL_TRC_NB = 6
# end
# enum AVColorSpace
const AVCOL_SPC_RGB = 0
const AVCOL_SPC_BT709 = 1
const AVCOL_SPC_UNSPECIFIED = 2
const AVCOL_SPC_FCC = 4
const AVCOL_SPC_BT470BG = 5
const AVCOL_SPC_SMPTE170M = 6
const AVCOL_SPC_SMPTE240M = 7
const AVCOL_SPC_NB = 8
# end
# enum AVColorRange
const AVCOL_RANGE_UNSPECIFIED = 0
const AVCOL_RANGE_MPEG = 1
const AVCOL_RANGE_JPEG = 2
const AVCOL_RANGE_NB = 3
# end
# enum AVChromaLocation
const AVCHROMA_LOC_UNSPECIFIED = 0
const AVCHROMA_LOC_LEFT = 1
const AVCHROMA_LOC_CENTER = 2
const AVCHROMA_LOC_TOPLEFT = 3
const AVCHROMA_LOC_TOP = 4
const AVCHROMA_LOC_BOTTOMLEFT = 5
const AVCHROMA_LOC_BOTTOM = 6
const AVCHROMA_LOC_NB = 7
# end
# enum AVLPCType
const AV_LPC_TYPE_DEFAULT = -1
const AV_LPC_TYPE_NONE = 0
const AV_LPC_TYPE_FIXED = 1
const AV_LPC_TYPE_LEVINSON = 2
const AV_LPC_TYPE_CHOLESKY = 3
const AV_LPC_TYPE_NB = 4
# end
# enum AVAudioServiceType
const AV_AUDIO_SERVICE_TYPE_MAIN = 0
const AV_AUDIO_SERVICE_TYPE_EFFECTS = 1
const AV_AUDIO_SERVICE_TYPE_VISUALLY_IMPAIRED = 2
const AV_AUDIO_SERVICE_TYPE_HEARING_IMPAIRED = 3
const AV_AUDIO_SERVICE_TYPE_DIALOGUE = 4
const AV_AUDIO_SERVICE_TYPE_COMMENTARY = 5
const AV_AUDIO_SERVICE_TYPE_EMERGENCY = 6
const AV_AUDIO_SERVICE_TYPE_VOICE_OVER = 7
const AV_AUDIO_SERVICE_TYPE_KARAOKE = 8
const AV_AUDIO_SERVICE_TYPE_NB = 9
# end
# enum AVPacketSideDataType
const AV_PKT_DATA_PALETTE = 0
const AV_PKT_DATA_NEW_EXTRADATA = 1
const AV_PKT_DATA_PARAM_CHANGE = 2
# end
# enum AVSideDataParamChangeFlags
const AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_COUNT = 1
const AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_LAYOUT = 2
const AV_SIDE_DATA_PARAM_CHANGE_SAMPLE_RATE = 4
const AV_SIDE_DATA_PARAM_CHANGE_DIMENSIONS = 8
# end
# enum AVFieldOrder
const AV_FIELD_UNKNOWN = 0
const AV_FIELD_PROGRESSIVE = 1
const AV_FIELD_TT = 2
const AV_FIELD_BB = 3
const AV_FIELD_TB = 4
const AV_FIELD_BT = 5
# end
# enum AVSubtitleType
const SUBTITLE_NONE = 0
const SUBTITLE_BITMAP = 1
const SUBTITLE_TEXT = 2
const SUBTITLE_ASS = 3
# end
# enum AVLockOp
const AV_LOCK_CREATE = 0
const AV_LOCK_OBTAIN = 1
const AV_LOCK_RELEASE = 2
const AV_LOCK_DESTROY = 3
# end
type xvmc_pix_fmt
  xvmc_id::Int32
  data_blocks::Ptr{Int16}
  mv_blocks::Ptr{Int32}
  allocated_mv_blocks::Int32
  allocated_data_blocks::Int32
  idct::Int32
  unsigned_intra::Int32
  p_surface::Ptr{Int32}
  p_past_surface::Ptr{Int32}
  p_future_surface::Ptr{Int32}
  picture_structure::Uint32
  flags::Uint32
  start_mv_blocks_num::Int32
  filled_mv_blocks_num::Int32
  next_free_data_block_num::Int32
end
# enum AVMediaType
const AVMEDIA_TYPE_UNKNOWN = -1
const AVMEDIA_TYPE_VIDEO = 0
const AVMEDIA_TYPE_AUDIO = 1
const AVMEDIA_TYPE_DATA = 2
const AVMEDIA_TYPE_SUBTITLE = 3
const AVMEDIA_TYPE_ATTACHMENT = 4
const AVMEDIA_TYPE_NB = 5
# end
# enum AVPictureType
const AV_PICTURE_TYPE_I = 1
const AV_PICTURE_TYPE_P = 2
const AV_PICTURE_TYPE_B = 3
const AV_PICTURE_TYPE_S = 4
const AV_PICTURE_TYPE_SI = 5
const AV_PICTURE_TYPE_SP = 6
const AV_PICTURE_TYPE_BI = 7
# end
# enum AVSampleFormat
const AV_SAMPLE_FMT_NONE = -1
const AV_SAMPLE_FMT_U8 = 0
const AV_SAMPLE_FMT_S16 = 1
const AV_SAMPLE_FMT_S32 = 2
const AV_SAMPLE_FMT_FLT = 3
const AV_SAMPLE_FMT_DBL = 4
const AV_SAMPLE_FMT_U8P = 5
const AV_SAMPLE_FMT_S16P = 6
const AV_SAMPLE_FMT_S32P = 7
const AV_SAMPLE_FMT_FLTP = 8
const AV_SAMPLE_FMT_DBLP = 9
const AV_SAMPLE_FMT_NB = 10
# end
# enum CodecID
const CODEC_ID_NONE = 0
const CODEC_ID_MPEG1VIDEO = 1
const CODEC_ID_MPEG2VIDEO = 2
const CODEC_ID_MPEG2VIDEO_XVMC = 3
const CODEC_ID_H261 = 4
const CODEC_ID_H263 = 5
const CODEC_ID_RV10 = 6
const CODEC_ID_RV20 = 7
const CODEC_ID_MJPEG = 8
const CODEC_ID_MJPEGB = 9
const CODEC_ID_LJPEG = 10
const CODEC_ID_SP5X = 11
const CODEC_ID_JPEGLS = 12
const CODEC_ID_MPEG4 = 13
const CODEC_ID_RAWVIDEO = 14
const CODEC_ID_MSMPEG4V1 = 15
const CODEC_ID_MSMPEG4V2 = 16
const CODEC_ID_MSMPEG4V3 = 17
const CODEC_ID_WMV1 = 18
const CODEC_ID_WMV2 = 19
const CODEC_ID_H263P = 20
const CODEC_ID_H263I = 21
const CODEC_ID_FLV1 = 22
const CODEC_ID_SVQ1 = 23
const CODEC_ID_SVQ3 = 24
const CODEC_ID_DVVIDEO = 25
const CODEC_ID_HUFFYUV = 26
const CODEC_ID_CYUV = 27
const CODEC_ID_H264 = 28
const CODEC_ID_INDEO3 = 29
const CODEC_ID_VP3 = 30
const CODEC_ID_THEORA = 31
const CODEC_ID_ASV1 = 32
const CODEC_ID_ASV2 = 33
const CODEC_ID_FFV1 = 34
const CODEC_ID_4XM = 35
const CODEC_ID_VCR1 = 36
const CODEC_ID_CLJR = 37
const CODEC_ID_MDEC = 38
const CODEC_ID_ROQ = 39
const CODEC_ID_INTERPLAY_VIDEO = 40
const CODEC_ID_XAN_WC3 = 41
const CODEC_ID_XAN_WC4 = 42
const CODEC_ID_RPZA = 43
const CODEC_ID_CINEPAK = 44
const CODEC_ID_WS_VQA = 45
const CODEC_ID_MSRLE = 46
const CODEC_ID_MSVIDEO1 = 47
const CODEC_ID_IDCIN = 48
const CODEC_ID_8BPS = 49
const CODEC_ID_SMC = 50
const CODEC_ID_FLIC = 51
const CODEC_ID_TRUEMOTION1 = 52
const CODEC_ID_VMDVIDEO = 53
const CODEC_ID_MSZH = 54
const CODEC_ID_ZLIB = 55
const CODEC_ID_QTRLE = 56
const CODEC_ID_SNOW = 57
const CODEC_ID_TSCC = 58
const CODEC_ID_ULTI = 59
const CODEC_ID_QDRAW = 60
const CODEC_ID_VIXL = 61
const CODEC_ID_QPEG = 62
const CODEC_ID_PNG = 63
const CODEC_ID_PPM = 64
const CODEC_ID_PBM = 65
const CODEC_ID_PGM = 66
const CODEC_ID_PGMYUV = 67
const CODEC_ID_PAM = 68
const CODEC_ID_FFVHUFF = 69
const CODEC_ID_RV30 = 70
const CODEC_ID_RV40 = 71
const CODEC_ID_VC1 = 72
const CODEC_ID_WMV3 = 73
const CODEC_ID_LOCO = 74
const CODEC_ID_WNV1 = 75
const CODEC_ID_AASC = 76
const CODEC_ID_INDEO2 = 77
const CODEC_ID_FRAPS = 78
const CODEC_ID_TRUEMOTION2 = 79
const CODEC_ID_BMP = 80
const CODEC_ID_CSCD = 81
const CODEC_ID_MMVIDEO = 82
const CODEC_ID_ZMBV = 83
const CODEC_ID_AVS = 84
const CODEC_ID_SMACKVIDEO = 85
const CODEC_ID_NUV = 86
const CODEC_ID_KMVC = 87
const CODEC_ID_FLASHSV = 88
const CODEC_ID_CAVS = 89
const CODEC_ID_JPEG2000 = 90
const CODEC_ID_VMNC = 91
const CODEC_ID_VP5 = 92
const CODEC_ID_VP6 = 93
const CODEC_ID_VP6F = 94
const CODEC_ID_TARGA = 95
const CODEC_ID_DSICINVIDEO = 96
const CODEC_ID_TIERTEXSEQVIDEO = 97
const CODEC_ID_TIFF = 98
const CODEC_ID_GIF = 99
const CODEC_ID_FFH264 = 100
const CODEC_ID_DXA = 101
const CODEC_ID_DNXHD = 102
const CODEC_ID_THP = 103
const CODEC_ID_SGI = 104
const CODEC_ID_C93 = 105
const CODEC_ID_BETHSOFTVID = 106
const CODEC_ID_PTX = 107
const CODEC_ID_TXD = 108
const CODEC_ID_VP6A = 109
const CODEC_ID_AMV = 110
const CODEC_ID_VB = 111
const CODEC_ID_PCX = 112
const CODEC_ID_SUNRAST = 113
const CODEC_ID_INDEO4 = 114
const CODEC_ID_INDEO5 = 115
const CODEC_ID_MIMIC = 116
const CODEC_ID_RL2 = 117
const CODEC_ID_8SVX_EXP = 118
const CODEC_ID_8SVX_FIB = 119
const CODEC_ID_ESCAPE124 = 120
const CODEC_ID_DIRAC = 121
const CODEC_ID_BFI = 122
const CODEC_ID_CMV = 123
const CODEC_ID_MOTIONPIXELS = 124
const CODEC_ID_TGV = 125
const CODEC_ID_TGQ = 126
const CODEC_ID_TQI = 127
const CODEC_ID_AURA = 128
const CODEC_ID_AURA2 = 129
const CODEC_ID_V210X = 130
const CODEC_ID_TMV = 131
const CODEC_ID_V210 = 132
const CODEC_ID_DPX = 133
const CODEC_ID_MAD = 134
const CODEC_ID_FRWU = 135
const CODEC_ID_FLASHSV2 = 136
const CODEC_ID_CDGRAPHICS = 137
const CODEC_ID_R210 = 138
const CODEC_ID_ANM = 139
const CODEC_ID_BINKVIDEO = 140
const CODEC_ID_IFF_ILBM = 141
const CODEC_ID_IFF_BYTERUN1 = 142
const CODEC_ID_KGV1 = 143
const CODEC_ID_YOP = 144
const CODEC_ID_VP8 = 145
const CODEC_ID_PICTOR = 146
const CODEC_ID_ANSI = 147
const CODEC_ID_A64_MULTI = 148
const CODEC_ID_A64_MULTI5 = 149
const CODEC_ID_R10K = 150
const CODEC_ID_MXPEG = 151
const CODEC_ID_LAGARITH = 152
const CODEC_ID_PRORES = 153
const CODEC_ID_JV = 154
const CODEC_ID_DFA = 155
const CODEC_ID_WMV3IMAGE = 156
const CODEC_ID_VC1IMAGE = 157
const CODEC_ID_G723_1 = 158
const CODEC_ID_G729 = 159
const CODEC_ID_UTVIDEO = 160
const CODEC_ID_BMV_VIDEO = 161
const CODEC_ID_VBLE = 162
const CODEC_ID_DXTORY = 163
const CODEC_ID_V410 = 164
const CODEC_ID_FIRST_AUDIO = 65536
const CODEC_ID_PCM_S16LE = 65536
const CODEC_ID_PCM_S16BE = 65537
const CODEC_ID_PCM_U16LE = 65538
const CODEC_ID_PCM_U16BE = 65539
const CODEC_ID_PCM_S8 = 65540
const CODEC_ID_PCM_U8 = 65541
const CODEC_ID_PCM_MULAW = 65542
const CODEC_ID_PCM_ALAW = 65543
const CODEC_ID_PCM_S32LE = 65544
const CODEC_ID_PCM_S32BE = 65545
const CODEC_ID_PCM_U32LE = 65546
const CODEC_ID_PCM_U32BE = 65547
const CODEC_ID_PCM_S24LE = 65548
const CODEC_ID_PCM_S24BE = 65549
const CODEC_ID_PCM_U24LE = 65550
const CODEC_ID_PCM_U24BE = 65551
const CODEC_ID_PCM_S24DAUD = 65552
const CODEC_ID_PCM_ZORK = 65553
const CODEC_ID_PCM_S16LE_PLANAR = 65554
const CODEC_ID_PCM_DVD = 65555
const CODEC_ID_PCM_F32BE = 65556
const CODEC_ID_PCM_F32LE = 65557
const CODEC_ID_PCM_F64BE = 65558
const CODEC_ID_PCM_F64LE = 65559
const CODEC_ID_PCM_BLURAY = 65560
const CODEC_ID_PCM_LXF = 65561
const CODEC_ID_S302M = 65562
const CODEC_ID_PCM_S8_PLANAR = 65563
const CODEC_ID_ADPCM_IMA_QT = 69632
const CODEC_ID_ADPCM_IMA_WAV = 69633
const CODEC_ID_ADPCM_IMA_DK3 = 69634
const CODEC_ID_ADPCM_IMA_DK4 = 69635
const CODEC_ID_ADPCM_IMA_WS = 69636
const CODEC_ID_ADPCM_IMA_SMJPEG = 69637
const CODEC_ID_ADPCM_MS = 69638
const CODEC_ID_ADPCM_4XM = 69639
const CODEC_ID_ADPCM_XA = 69640
const CODEC_ID_ADPCM_ADX = 69641
const CODEC_ID_ADPCM_EA = 69642
const CODEC_ID_ADPCM_G726 = 69643
const CODEC_ID_ADPCM_CT = 69644
const CODEC_ID_ADPCM_SWF = 69645
const CODEC_ID_ADPCM_YAMAHA = 69646
const CODEC_ID_ADPCM_SBPRO_4 = 69647
const CODEC_ID_ADPCM_SBPRO_3 = 69648
const CODEC_ID_ADPCM_SBPRO_2 = 69649
const CODEC_ID_ADPCM_THP = 69650
const CODEC_ID_ADPCM_IMA_AMV = 69651
const CODEC_ID_ADPCM_EA_R1 = 69652
const CODEC_ID_ADPCM_EA_R3 = 69653
const CODEC_ID_ADPCM_EA_R2 = 69654
const CODEC_ID_ADPCM_IMA_EA_SEAD = 69655
const CODEC_ID_ADPCM_IMA_EA_EACS = 69656
const CODEC_ID_ADPCM_EA_XAS = 69657
const CODEC_ID_ADPCM_EA_MAXIS_XA = 69658
const CODEC_ID_ADPCM_IMA_ISS = 69659
const CODEC_ID_ADPCM_G722 = 69660
const CODEC_ID_AMR_NB = 73728
const CODEC_ID_AMR_WB = 73729
const CODEC_ID_RA_144 = 77824
const CODEC_ID_RA_288 = 77825
const CODEC_ID_ROQ_DPCM = 81920
const CODEC_ID_INTERPLAY_DPCM = 81921
const CODEC_ID_XAN_DPCM = 81922
const CODEC_ID_SOL_DPCM = 81923
const CODEC_ID_MP2 = 86016
const CODEC_ID_MP3 = 86017
const CODEC_ID_AAC = 86018
const CODEC_ID_AC3 = 86019
const CODEC_ID_DTS = 86020
const CODEC_ID_VORBIS = 86021
const CODEC_ID_DVAUDIO = 86022
const CODEC_ID_WMAV1 = 86023
const CODEC_ID_WMAV2 = 86024
const CODEC_ID_MACE3 = 86025
const CODEC_ID_MACE6 = 86026
const CODEC_ID_VMDAUDIO = 86027
const CODEC_ID_SONIC = 86028
const CODEC_ID_SONIC_LS = 86029
const CODEC_ID_FLAC = 86030
const CODEC_ID_MP3ADU = 86031
const CODEC_ID_MP3ON4 = 86032
const CODEC_ID_SHORTEN = 86033
const CODEC_ID_ALAC = 86034
const CODEC_ID_WESTWOOD_SND1 = 86035
const CODEC_ID_GSM = 86036
const CODEC_ID_QDM2 = 86037
const CODEC_ID_COOK = 86038
const CODEC_ID_TRUESPEECH = 86039
const CODEC_ID_TTA = 86040
const CODEC_ID_SMACKAUDIO = 86041
const CODEC_ID_QCELP = 86042
const CODEC_ID_WAVPACK = 86043
const CODEC_ID_DSICINAUDIO = 86044
const CODEC_ID_IMC = 86045
const CODEC_ID_MUSEPACK7 = 86046
const CODEC_ID_MLP = 86047
const CODEC_ID_GSM_MS = 86048
const CODEC_ID_ATRAC3 = 86049
const CODEC_ID_VOXWARE = 86050
const CODEC_ID_APE = 86051
const CODEC_ID_NELLYMOSER = 86052
const CODEC_ID_MUSEPACK8 = 86053
const CODEC_ID_SPEEX = 86054
const CODEC_ID_WMAVOICE = 86055
const CODEC_ID_WMAPRO = 86056
const CODEC_ID_WMALOSSLESS = 86057
const CODEC_ID_ATRAC3P = 86058
const CODEC_ID_EAC3 = 86059
const CODEC_ID_SIPR = 86060
const CODEC_ID_MP1 = 86061
const CODEC_ID_TWINVQ = 86062
const CODEC_ID_TRUEHD = 86063
const CODEC_ID_MP4ALS = 86064
const CODEC_ID_ATRAC1 = 86065
const CODEC_ID_BINKAUDIO_RDFT = 86066
const CODEC_ID_BINKAUDIO_DCT = 86067
const CODEC_ID_AAC_LATM = 86068
const CODEC_ID_QDMC = 86069
const CODEC_ID_CELT = 86070
const CODEC_ID_BMV_AUDIO = 86071
const CODEC_ID_FIRST_SUBTITLE = 94208
const CODEC_ID_DVD_SUBTITLE = 94208
const CODEC_ID_DVB_SUBTITLE = 94209
const CODEC_ID_TEXT = 94210
const CODEC_ID_XSUB = 94211
const CODEC_ID_SSA = 94212
const CODEC_ID_MOV_TEXT = 94213
const CODEC_ID_HDMV_PGS_SUBTITLE = 94214
const CODEC_ID_DVB_TELETEXT = 94215
const CODEC_ID_SRT = 94216
const CODEC_ID_FIRST_UNKNOWN = 98304
const CODEC_ID_TTF = 98304
const CODEC_ID_PROBE = 102400
const CODEC_ID_MPEG2TS = 131072
const CODEC_ID_MPEG4SYSTEMS = 131073
const CODEC_ID_FFMETADATA = 135168
# end
# enum Motion_Est_ID
const ME_ZERO = 1
const ME_FULL = 2
const ME_LOG = 3
const ME_PHODS = 4
const ME_EPZS = 5
const ME_X1 = 6
const ME_HEX = 7
const ME_UMH = 8
const ME_ITER = 9
const ME_TESA = 10
# end
# enum AVDiscard
const AVDISCARD_NONE = -16
const AVDISCARD_DEFAULT = 0
const AVDISCARD_NONREF = 8
const AVDISCARD_BIDIR = 16
const AVDISCARD_NONKEY = 32
const AVDISCARD_ALL = 48
# end
# enum AVColorPrimaries
const AVCOL_PRI_BT709 = 1
const AVCOL_PRI_UNSPECIFIED = 2
const AVCOL_PRI_BT470M = 4
const AVCOL_PRI_BT470BG = 5
const AVCOL_PRI_SMPTE170M = 6
const AVCOL_PRI_SMPTE240M = 7
const AVCOL_PRI_FILM = 8
const AVCOL_PRI_NB = 9
# end
# enum AVColorTransferCharacteristic
const AVCOL_TRC_BT709 = 1
const AVCOL_TRC_UNSPECIFIED = 2
const AVCOL_TRC_GAMMA22 = 4
const AVCOL_TRC_GAMMA28 = 5
const AVCOL_TRC_NB = 6
# end
# enum AVColorSpace
const AVCOL_SPC_RGB = 0
const AVCOL_SPC_BT709 = 1
const AVCOL_SPC_UNSPECIFIED = 2
const AVCOL_SPC_FCC = 4
const AVCOL_SPC_BT470BG = 5
const AVCOL_SPC_SMPTE170M = 6
const AVCOL_SPC_SMPTE240M = 7
const AVCOL_SPC_NB = 8
# end
# enum AVColorRange
const AVCOL_RANGE_UNSPECIFIED = 0
const AVCOL_RANGE_MPEG = 1
const AVCOL_RANGE_JPEG = 2
const AVCOL_RANGE_NB = 3
# end
# enum AVChromaLocation
const AVCHROMA_LOC_UNSPECIFIED = 0
const AVCHROMA_LOC_LEFT = 1
const AVCHROMA_LOC_CENTER = 2
const AVCHROMA_LOC_TOPLEFT = 3
const AVCHROMA_LOC_TOP = 4
const AVCHROMA_LOC_BOTTOMLEFT = 5
const AVCHROMA_LOC_BOTTOM = 6
const AVCHROMA_LOC_NB = 7
# end
# enum AVLPCType
const AV_LPC_TYPE_DEFAULT = -1
const AV_LPC_TYPE_NONE = 0
const AV_LPC_TYPE_FIXED = 1
const AV_LPC_TYPE_LEVINSON = 2
const AV_LPC_TYPE_CHOLESKY = 3
const AV_LPC_TYPE_NB = 4
# end
# enum AVAudioServiceType
const AV_AUDIO_SERVICE_TYPE_MAIN = 0
const AV_AUDIO_SERVICE_TYPE_EFFECTS = 1
const AV_AUDIO_SERVICE_TYPE_VISUALLY_IMPAIRED = 2
const AV_AUDIO_SERVICE_TYPE_HEARING_IMPAIRED = 3
const AV_AUDIO_SERVICE_TYPE_DIALOGUE = 4
const AV_AUDIO_SERVICE_TYPE_COMMENTARY = 5
const AV_AUDIO_SERVICE_TYPE_EMERGENCY = 6
const AV_AUDIO_SERVICE_TYPE_VOICE_OVER = 7
const AV_AUDIO_SERVICE_TYPE_KARAOKE = 8
const AV_AUDIO_SERVICE_TYPE_NB = 9
# end
# enum AVPacketSideDataType
const AV_PKT_DATA_PALETTE = 0
const AV_PKT_DATA_NEW_EXTRADATA = 1
const AV_PKT_DATA_PARAM_CHANGE = 2
# end
# enum AVSideDataParamChangeFlags
const AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_COUNT = 1
const AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_LAYOUT = 2
const AV_SIDE_DATA_PARAM_CHANGE_SAMPLE_RATE = 4
const AV_SIDE_DATA_PARAM_CHANGE_DIMENSIONS = 8
# end
# enum AVFieldOrder
const AV_FIELD_UNKNOWN = 0
const AV_FIELD_PROGRESSIVE = 1
const AV_FIELD_TT = 2
const AV_FIELD_BB = 3
const AV_FIELD_TB = 4
const AV_FIELD_BT = 5
# end
# enum AVSubtitleType
const SUBTITLE_NONE = 0
const SUBTITLE_BITMAP = 1
const SUBTITLE_TEXT = 2
const SUBTITLE_ASS = 3
# end
# enum AVLockOp
const AV_LOCK_CREATE = 0
const AV_LOCK_OBTAIN = 1
const AV_LOCK_RELEASE = 2
const AV_LOCK_DESTROY = 3
# end
type AVIOInterruptCB
  callback::Ptr{Void}
  opaque::Ptr{None}
end
type AVIOContext
  buffer::Ptr{Uint8}
  buffer_size::Int32
  buf_ptr::Ptr{Uint8}
  buf_end::Ptr{Uint8}
  opaque::Ptr{None}
  read_packet::Ptr{Void}
  write_packet::Ptr{Void}
  seek::Ptr{Void}
  pos::int64_t
  must_flush::Int32
  eof_reached::Int32
  write_flag::Int32
  is_streamed::Int32
  max_packet_size::Int32
  checksum::Uint64
  checksum_ptr::Ptr{Uint8}
  update_checksum::Ptr{Void}
  error::Int32
  read_pause::Ptr{Void}
  read_seek::Ptr{Void}
  seekable::Int32
end
type URLContext
  av_class::Ptr{AVClass}
  URLProtocol::Void
  prot::Ptr{Void}
  flags::Int32
  is_streamed::Int32
  max_packet_size::Int32
  priv_data::Ptr{None}
  filename::Ptr{Uint8}
  is_connected::Int32
  interrupt_callback::AVIOInterruptCB
end
type URLProtocol
  name::Ptr{Uint8}
  url_open::Ptr{Void}
  url_read::Ptr{Void}
  url_write::Ptr{Void}
  url_seek::Ptr{Void}
  url_close::Ptr{Void}
  next::Ptr{Void}
  url_read_pause::Ptr{Void}
  url_read_seek::Ptr{Void}
  url_get_file_handle::Ptr{Void}
  priv_data_size::Int32
  priv_data_class::Ptr{AVClass}
  flags::Int32
  url_check::Ptr{Void}
end
type URLPollEntry
  handle::Ptr{URLContext}
  events::Int32
  revents::Int32
end
@ctypedef URLInterruptCB Void
@ctypedef ByteIOContext AVIOContext
@ctypedef AVMetadata AVDictionary
@ctypedef AVMetadataTag AVDictionaryEntry
type AVFrac
  val::int64_t
  num::int64_t
  den::int64_t
end
type AVProbeData
  filename::Ptr{Uint8}
  buf::Ptr{Uint8}
  buf_size::Int32
end
type AVFormatParameters
  time_base::AVRational
  sample_rate::Int32
  channels::Int32
  width::Int32
  height::Int32
  pix_fmt::Void
  channel::Int32
  standard::Ptr{Uint8}
  mpeg2ts_raw::Uint32
  mpeg2ts_compute_pcr::Uint32
  initial_pause::Uint32
  prealloced_context::Uint32
end
type AVOutputFormat
  name::Ptr{Uint8}
  long_name::Ptr{Uint8}
  mime_type::Ptr{Uint8}
  extensions::Ptr{Uint8}
  priv_data_size::Int32
  audio_codec::Void
  video_codec::Void
  write_header::Ptr{Void}
  write_packet::Ptr{Void}
  write_trailer::Ptr{Void}
  flags::Int32
  set_parameters::Ptr{Void}
  interleave_packet::Ptr{Void}
  codec_tag::Ptr{Ptr{Void}}
  subtitle_codec::Void
  metadata_conv::Ptr{AVMetadataConv}
  priv_class::Ptr{AVClass}
  query_codec::Ptr{Void}
  next::Ptr{Void}
end
type AVInputFormat
  name::Ptr{Uint8}
  long_name::Ptr{Uint8}
  priv_data_size::Int32
  read_probe::Ptr{Void}
  read_header::Ptr{Void}
  read_packet::Ptr{Void}
  read_close::Ptr{Void}
  read_seek::Ptr{Void}
  read_timestamp::Ptr{Void}
  flags::Int32
  extensions::Ptr{Uint8}
  value::Int32
  read_play::Ptr{Void}
  read_pause::Ptr{Void}
  codec_tag::Ptr{Ptr{Void}}
  read_seek2::Ptr{Void}
  metadata_conv::Ptr{AVMetadataConv}
  priv_class::Ptr{AVClass}
  next::Ptr{Void}
end
# enum AVStreamParseType
const AVSTREAM_PARSE_NONE = 0
const AVSTREAM_PARSE_FULL = 1
const AVSTREAM_PARSE_HEADERS = 2
const AVSTREAM_PARSE_TIMESTAMPS = 3
const AVSTREAM_PARSE_FULL_ONCE = 4
# end
type AVIndexEntry
  pos::int64_t
  timestamp::int64_t
  flags::Int32
  size::Int32
  min_distance::Int32
end
type AVStream
  index::Int32
  id::Int32
  codec::Ptr{AVCodecContext}
  r_frame_rate::AVRational
  priv_data::Ptr{None}
  first_dts::int64_t
  pts::Void
  time_base::AVRational
  pts_wrap_bits::Int32
  stream_copy::Int32
  discard::Void
  quality::Float32
  start_time::int64_t
  duration::int64_t
  need_parsing::Void
  parser::Ptr{Void}
  cur_dts::int64_t
  last_IP_duration::Int32
  last_IP_pts::int64_t
  index_entries::Ptr{AVIndexEntry}
  nb_index_entries::Int32
  index_entries_allocated_size::Uint32
  nb_frames::int64_t
  disposition::Int32
  probe_data::AVProbeData
  pts_buffer::Void
  sample_aspect_ratio::AVRational
  metadata::Ptr{AVDictionary}
  cur_ptr::Ptr{uint8_t}
  cur_len::Int32
  cur_pkt::AVPacket
  reference_dts::int64_t
  probe_packets::Int32
  AVPacketList::Void
  last_in_packet_buffer::Ptr{Void}
  avg_frame_rate::AVRational
  codec_info_nb_frames::Int32
  info::Ptr{Void}
end
type AVProgram
  id::Int32
  flags::Int32
  discard::Void
  stream_index::Ptr{Uint32}
  nb_stream_indexes::Uint32
  metadata::Ptr{AVDictionary}
end
type AVChapter
  id::Int32
  time_base::AVRational
  start::int64_t
  end::int64_t
  metadata::Ptr{AVDictionary}
end
type AVPacketList
  pkt::AVPacket
  next::Ptr{Void}
end
# enum AVMediaType
const AVMEDIA_TYPE_UNKNOWN = -1
const AVMEDIA_TYPE_VIDEO = 0
const AVMEDIA_TYPE_AUDIO = 1
const AVMEDIA_TYPE_DATA = 2
const AVMEDIA_TYPE_SUBTITLE = 3
const AVMEDIA_TYPE_ATTACHMENT = 4
const AVMEDIA_TYPE_NB = 5
# end
# enum AVPictureType
const AV_PICTURE_TYPE_I = 1
const AV_PICTURE_TYPE_P = 2
const AV_PICTURE_TYPE_B = 3
const AV_PICTURE_TYPE_S = 4
const AV_PICTURE_TYPE_SI = 5
const AV_PICTURE_TYPE_SP = 6
const AV_PICTURE_TYPE_BI = 7
# end
# enum AVMediaType
const AVMEDIA_TYPE_UNKNOWN = -1
const AVMEDIA_TYPE_VIDEO = 0
const AVMEDIA_TYPE_AUDIO = 1
const AVMEDIA_TYPE_DATA = 2
const AVMEDIA_TYPE_SUBTITLE = 3
const AVMEDIA_TYPE_ATTACHMENT = 4
const AVMEDIA_TYPE_NB = 5
# end
# enum AVPictureType
const AV_PICTURE_TYPE_I = 1
const AV_PICTURE_TYPE_P = 2
const AV_PICTURE_TYPE_B = 3
const AV_PICTURE_TYPE_S = 4
const AV_PICTURE_TYPE_SI = 5
const AV_PICTURE_TYPE_SP = 6
const AV_PICTURE_TYPE_BI = 7
# end
# enum AVMediaType
const AVMEDIA_TYPE_UNKNOWN = -1
const AVMEDIA_TYPE_VIDEO = 0
const AVMEDIA_TYPE_AUDIO = 1
const AVMEDIA_TYPE_DATA = 2
const AVMEDIA_TYPE_SUBTITLE = 3
const AVMEDIA_TYPE_ATTACHMENT = 4
const AVMEDIA_TYPE_NB = 5
# end
# enum AVPictureType
const AV_PICTURE_TYPE_I = 1
const AV_PICTURE_TYPE_P = 2
const AV_PICTURE_TYPE_B = 3
const AV_PICTURE_TYPE_S = 4
const AV_PICTURE_TYPE_SI = 5
const AV_PICTURE_TYPE_SP = 6
const AV_PICTURE_TYPE_BI = 7
# end
type SwsVector
  coeff::Ptr{Float64}
  length::Int32
end
type SwsFilter
  lumH::Ptr{SwsVector}
  lumV::Ptr{SwsVector}
  chrH::Ptr{SwsVector}
  chrV::Ptr{SwsVector}
end

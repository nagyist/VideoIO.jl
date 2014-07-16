# Julia wrapper for header: /usr/include/libavutil/avutil.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function avutil_version()
    ccall((:avutil_version,libavutil),Uint32,())
end
function avutil_configuration()
    ccall((:avutil_configuration,libavutil),Ptr{Uint8},())
end
function avutil_license()
    ccall((:avutil_license,libavutil),Ptr{Uint8},())
end
function av_get_media_type_string(media_type::AVMediaType)
    ccall((:av_get_media_type_string,libavutil),Ptr{Uint8},(AVMediaType,),media_type)
end
function av_get_picture_type_char(pict_type::AVPictureType)
    ccall((:av_get_picture_type_char,libavutil),Uint8,(AVPictureType,),pict_type)
end
function av_x_if_null(_p::Ptr,_x::Ptr)
    p = convert(Ptr{Void},_p)
    x = convert(Ptr{Void},_x)
    ccall((:av_x_if_null,libavutil),Ptr{Void},(Ptr{Void},Ptr{Void}),p,x)
end
function av_int_list_length_for_size(_elsize::Integer,_list::Ptr,term::Uint64)
    elsize = uint32(_elsize)
    list = convert(Ptr{Void},_list)
    ccall((:av_int_list_length_for_size,libavutil),Uint32,(Uint32,Ptr{Void},Uint64),elsize,list,term)
end
function av_fopen_utf8(_path::Union(Ptr,ByteString),_mode::Union(Ptr,ByteString))
    path = convert(Ptr{Uint8},_path)
    mode = convert(Ptr{Uint8},_mode)
    ccall((:av_fopen_utf8,libavutil),Ptr{FILE},(Ptr{Uint8},Ptr{Uint8}),path,mode)
end

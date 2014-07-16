# Julia wrapper for header: /usr/include/libavutil/log.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function av_vlog(_avcl::Ptr,_level::Integer,_fmt::Union(Ptr,ByteString),_vl::Ptr)
    avcl = convert(Ptr{Void},_avcl)
    level = int32(_level)
    fmt = convert(Ptr{Uint8},_fmt)
    vl = convert(Ptr{__va_list_tag},_vl)
    ccall((:av_vlog,libavutil),Void,(Ptr{Void},Cint,Ptr{Uint8},Ptr{__va_list_tag}),avcl,level,fmt,vl)
end
function av_log_get_level()
    ccall((:av_log_get_level,libavutil),Cint,())
end
function av_log_set_level(_level::Integer)
    level = int32(_level)
    ccall((:av_log_set_level,libavutil),Void,(Cint,),level)
end
function av_log_set_callback(_callback::Ptr)
    callback = convert(Ptr{Void},_callback)
    ccall((:av_log_set_callback,libavutil),Void,(Ptr{Void},),callback)
end
function av_log_default_callback(_avcl::Ptr,_level::Integer,_fmt::Union(Ptr,ByteString),_vl::Ptr)
    avcl = convert(Ptr{Void},_avcl)
    level = int32(_level)
    fmt = convert(Ptr{Uint8},_fmt)
    vl = convert(Ptr{__va_list_tag},_vl)
    ccall((:av_log_default_callback,libavutil),Void,(Ptr{Void},Cint,Ptr{Uint8},Ptr{__va_list_tag}),avcl,level,fmt,vl)
end
function av_default_item_name(_ctx::Ptr)
    ctx = convert(Ptr{Void},_ctx)
    ccall((:av_default_item_name,libavutil),Ptr{Uint8},(Ptr{Void},),ctx)
end
function av_default_get_category(_ptr::Ptr)
    ptr = convert(Ptr{Void},_ptr)
    ccall((:av_default_get_category,libavutil),AVClassCategory,(Ptr{Void},),ptr)
end
function av_log_format_line(_ptr::Ptr,_level::Integer,_fmt::Union(Ptr,ByteString),_vl::Ptr,_line::Union(Ptr,ByteString),_line_size::Integer,_print_prefix::Ptr)
    ptr = convert(Ptr{Void},_ptr)
    level = int32(_level)
    fmt = convert(Ptr{Uint8},_fmt)
    vl = convert(Ptr{__va_list_tag},_vl)
    line = convert(Ptr{Uint8},_line)
    line_size = int32(_line_size)
    print_prefix = convert(Ptr{Cint},_print_prefix)
    ccall((:av_log_format_line,libavutil),Void,(Ptr{Void},Cint,Ptr{Uint8},Ptr{__va_list_tag},Ptr{Uint8},Cint,Ptr{Cint}),ptr,level,fmt,vl,line,line_size,print_prefix)
end
function av_log_set_flags(_arg::Integer)
    arg = int32(_arg)
    ccall((:av_log_set_flags,libavutil),Void,(Cint,),arg)
end

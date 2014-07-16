# Julia wrapper for header: /usr/include/libavutil/bprint.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function av_bprint_init(_buf::Ptr,_size_init::Integer,_size_max::Integer)
    buf = convert(Ptr{AVBPrint},_buf)
    size_init = uint32(_size_init)
    size_max = uint32(_size_max)
    ccall((:av_bprint_init,libavutil),Void,(Ptr{AVBPrint},Uint32,Uint32),buf,size_init,size_max)
end
function av_bprint_init_for_buffer(_buf::Ptr,_buffer::Union(Ptr,ByteString),_size::Integer)
    buf = convert(Ptr{AVBPrint},_buf)
    buffer = convert(Ptr{Uint8},_buffer)
    size = uint32(_size)
    ccall((:av_bprint_init_for_buffer,libavutil),Void,(Ptr{AVBPrint},Ptr{Uint8},Uint32),buf,buffer,size)
end
function av_vbprintf(_buf::Ptr,_fmt::Union(Ptr,ByteString),_vl_arg::Ptr)
    buf = convert(Ptr{AVBPrint},_buf)
    fmt = convert(Ptr{Uint8},_fmt)
    vl_arg = convert(Ptr{__va_list_tag},_vl_arg)
    ccall((:av_vbprintf,libavutil),Void,(Ptr{AVBPrint},Ptr{Uint8},Ptr{__va_list_tag}),buf,fmt,vl_arg)
end
function av_bprint_chars(_buf::Ptr,c::Uint8,_n::Integer)
    buf = convert(Ptr{AVBPrint},_buf)
    n = uint32(_n)
    ccall((:av_bprint_chars,libavutil),Void,(Ptr{AVBPrint},Uint8,Uint32),buf,c,n)
end
function av_bprint_append_data(_buf::Ptr,_data::Union(Ptr,ByteString),_size::Integer)
    buf = convert(Ptr{AVBPrint},_buf)
    data = convert(Ptr{Uint8},_data)
    size = uint32(_size)
    ccall((:av_bprint_append_data,libavutil),Void,(Ptr{AVBPrint},Ptr{Uint8},Uint32),buf,data,size)
end
function av_bprint_strftime(_buf::Ptr,_fmt::Union(Ptr,ByteString),_tm::Ptr)
    buf = convert(Ptr{AVBPrint},_buf)
    fmt = convert(Ptr{Uint8},_fmt)
    tm = convert(Ptr{tm},_tm)
    ccall((:av_bprint_strftime,libavutil),Void,(Ptr{AVBPrint},Ptr{Uint8},Ptr{tm}),buf,fmt,tm)
end
function av_bprint_get_buffer(_buf::Ptr,_size::Integer,_mem::Ptr,_actual_size::Ptr)
    buf = convert(Ptr{AVBPrint},_buf)
    size = uint32(_size)
    mem = convert(Ptr{Ptr{Cuchar}},_mem)
    actual_size = convert(Ptr{Uint32},_actual_size)
    ccall((:av_bprint_get_buffer,libavutil),Void,(Ptr{AVBPrint},Uint32,Ptr{Ptr{Cuchar}},Ptr{Uint32}),buf,size,mem,actual_size)
end
function av_bprint_clear(_buf::Ptr)
    buf = convert(Ptr{AVBPrint},_buf)
    ccall((:av_bprint_clear,libavutil),Void,(Ptr{AVBPrint},),buf)
end
function av_bprint_is_complete(_buf::Ptr)
    buf = convert(Ptr{AVBPrint},_buf)
    ccall((:av_bprint_is_complete,libavutil),Cint,(Ptr{AVBPrint},),buf)
end
function av_bprint_finalize(_buf::Ptr,_ret_str::Ptr)
    buf = convert(Ptr{AVBPrint},_buf)
    ret_str = convert(Ptr{Ptr{Uint8}},_ret_str)
    ccall((:av_bprint_finalize,libavutil),Cint,(Ptr{AVBPrint},Ptr{Ptr{Uint8}}),buf,ret_str)
end
function av_bprint_escape(_dstbuf::Ptr,_src::Union(Ptr,ByteString),_special_chars::Union(Ptr,ByteString),mode::AVEscapeMode,_flags::Integer)
    dstbuf = convert(Ptr{AVBPrint},_dstbuf)
    src = convert(Ptr{Uint8},_src)
    special_chars = convert(Ptr{Uint8},_special_chars)
    flags = int32(_flags)
    ccall((:av_bprint_escape,libavutil),Void,(Ptr{AVBPrint},Ptr{Uint8},Ptr{Uint8},AVEscapeMode,Cint),dstbuf,src,special_chars,mode,flags)
end

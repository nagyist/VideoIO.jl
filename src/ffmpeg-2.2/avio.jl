# Julia wrapper for header: /usr/include/libavformat/avio.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function avio_find_protocol_name(_url::Union(Ptr,ByteString))
    url = convert(Ptr{Uint8},_url)
    ccall((:avio_find_protocol_name,libavformat),Ptr{Uint8},(Ptr{Uint8},),url)
end
function avio_check(_url::Union(Ptr,ByteString),_flags::Integer)
    url = convert(Ptr{Uint8},_url)
    flags = int32(_flags)
    ccall((:avio_check,libavformat),Cint,(Ptr{Uint8},Cint),url,flags)
end
function avio_alloc_context(_buffer::Ptr,_buffer_size::Integer,_write_flag::Integer,_opaque::Ptr,_read_packet::Ptr,_write_packet::Ptr,_seek::Ptr)
    buffer = convert(Ptr{Cuchar},_buffer)
    buffer_size = int32(_buffer_size)
    write_flag = int32(_write_flag)
    opaque = convert(Ptr{Void},_opaque)
    read_packet = convert(Ptr{Void},_read_packet)
    write_packet = convert(Ptr{Void},_write_packet)
    seek = convert(Ptr{Void},_seek)
    ccall((:avio_alloc_context,libavformat),Ptr{AVIOContext},(Ptr{Cuchar},Cint,Cint,Ptr{Void},Ptr{Void},Ptr{Void},Ptr{Void}),buffer,buffer_size,write_flag,opaque,read_packet,write_packet,seek)
end
function avio_w8(_s::Ptr,_b::Integer)
    s = convert(Ptr{AVIOContext},_s)
    b = int32(_b)
    ccall((:avio_w8,libavformat),Void,(Ptr{AVIOContext},Cint),s,b)
end
function avio_write(_s::Ptr,_buf::Ptr,_size::Integer)
    s = convert(Ptr{AVIOContext},_s)
    buf = convert(Ptr{Cuchar},_buf)
    size = int32(_size)
    ccall((:avio_write,libavformat),Void,(Ptr{AVIOContext},Ptr{Cuchar},Cint),s,buf,size)
end
function avio_wl64(_s::Ptr,val::Uint64)
    s = convert(Ptr{AVIOContext},_s)
    ccall((:avio_wl64,libavformat),Void,(Ptr{AVIOContext},Uint64),s,val)
end
function avio_wb64(_s::Ptr,val::Uint64)
    s = convert(Ptr{AVIOContext},_s)
    ccall((:avio_wb64,libavformat),Void,(Ptr{AVIOContext},Uint64),s,val)
end
function avio_wl32(_s::Ptr,_val::Integer)
    s = convert(Ptr{AVIOContext},_s)
    val = uint32(_val)
    ccall((:avio_wl32,libavformat),Void,(Ptr{AVIOContext},Uint32),s,val)
end
function avio_wb32(_s::Ptr,_val::Integer)
    s = convert(Ptr{AVIOContext},_s)
    val = uint32(_val)
    ccall((:avio_wb32,libavformat),Void,(Ptr{AVIOContext},Uint32),s,val)
end
function avio_wl24(_s::Ptr,_val::Integer)
    s = convert(Ptr{AVIOContext},_s)
    val = uint32(_val)
    ccall((:avio_wl24,libavformat),Void,(Ptr{AVIOContext},Uint32),s,val)
end
function avio_wb24(_s::Ptr,_val::Integer)
    s = convert(Ptr{AVIOContext},_s)
    val = uint32(_val)
    ccall((:avio_wb24,libavformat),Void,(Ptr{AVIOContext},Uint32),s,val)
end
function avio_wl16(_s::Ptr,_val::Integer)
    s = convert(Ptr{AVIOContext},_s)
    val = uint32(_val)
    ccall((:avio_wl16,libavformat),Void,(Ptr{AVIOContext},Uint32),s,val)
end
function avio_wb16(_s::Ptr,_val::Integer)
    s = convert(Ptr{AVIOContext},_s)
    val = uint32(_val)
    ccall((:avio_wb16,libavformat),Void,(Ptr{AVIOContext},Uint32),s,val)
end
function avio_put_str(_s::Ptr,_str::Union(Ptr,ByteString))
    s = convert(Ptr{AVIOContext},_s)
    str = convert(Ptr{Uint8},_str)
    ccall((:avio_put_str,libavformat),Cint,(Ptr{AVIOContext},Ptr{Uint8}),s,str)
end
function avio_put_str16le(_s::Ptr,_str::Union(Ptr,ByteString))
    s = convert(Ptr{AVIOContext},_s)
    str = convert(Ptr{Uint8},_str)
    ccall((:avio_put_str16le,libavformat),Cint,(Ptr{AVIOContext},Ptr{Uint8}),s,str)
end
function avio_seek(_s::Ptr,offset::Int64,_whence::Integer)
    s = convert(Ptr{AVIOContext},_s)
    whence = int32(_whence)
    ccall((:avio_seek,libavformat),Int64,(Ptr{AVIOContext},Int64,Cint),s,offset,whence)
end
function avio_skip(_s::Ptr,offset::Int64)
    s = convert(Ptr{AVIOContext},_s)
    ccall((:avio_skip,libavformat),Int64,(Ptr{AVIOContext},Int64),s,offset)
end
function avio_tell(_s::Ptr)
    s = convert(Ptr{AVIOContext},_s)
    ccall((:avio_tell,libavformat),Int64,(Ptr{AVIOContext},),s)
end
function avio_size(_s::Ptr)
    s = convert(Ptr{AVIOContext},_s)
    ccall((:avio_size,libavformat),Int64,(Ptr{AVIOContext},),s)
end
function url_feof(_s::Ptr)
    s = convert(Ptr{AVIOContext},_s)
    ccall((:url_feof,libavformat),Cint,(Ptr{AVIOContext},),s)
end
function avio_flush(_s::Ptr)
    s = convert(Ptr{AVIOContext},_s)
    ccall((:avio_flush,libavformat),Void,(Ptr{AVIOContext},),s)
end
function avio_read(_s::Ptr,_buf::Ptr,_size::Integer)
    s = convert(Ptr{AVIOContext},_s)
    buf = convert(Ptr{Cuchar},_buf)
    size = int32(_size)
    ccall((:avio_read,libavformat),Cint,(Ptr{AVIOContext},Ptr{Cuchar},Cint),s,buf,size)
end
function avio_r8(_s::Ptr)
    s = convert(Ptr{AVIOContext},_s)
    ccall((:avio_r8,libavformat),Cint,(Ptr{AVIOContext},),s)
end
function avio_rl16(_s::Ptr)
    s = convert(Ptr{AVIOContext},_s)
    ccall((:avio_rl16,libavformat),Uint32,(Ptr{AVIOContext},),s)
end
function avio_rl24(_s::Ptr)
    s = convert(Ptr{AVIOContext},_s)
    ccall((:avio_rl24,libavformat),Uint32,(Ptr{AVIOContext},),s)
end
function avio_rl32(_s::Ptr)
    s = convert(Ptr{AVIOContext},_s)
    ccall((:avio_rl32,libavformat),Uint32,(Ptr{AVIOContext},),s)
end
function avio_rl64(_s::Ptr)
    s = convert(Ptr{AVIOContext},_s)
    ccall((:avio_rl64,libavformat),Uint64,(Ptr{AVIOContext},),s)
end
function avio_rb16(_s::Ptr)
    s = convert(Ptr{AVIOContext},_s)
    ccall((:avio_rb16,libavformat),Uint32,(Ptr{AVIOContext},),s)
end
function avio_rb24(_s::Ptr)
    s = convert(Ptr{AVIOContext},_s)
    ccall((:avio_rb24,libavformat),Uint32,(Ptr{AVIOContext},),s)
end
function avio_rb32(_s::Ptr)
    s = convert(Ptr{AVIOContext},_s)
    ccall((:avio_rb32,libavformat),Uint32,(Ptr{AVIOContext},),s)
end
function avio_rb64(_s::Ptr)
    s = convert(Ptr{AVIOContext},_s)
    ccall((:avio_rb64,libavformat),Uint64,(Ptr{AVIOContext},),s)
end
function avio_get_str(_pb::Ptr,_maxlen::Integer,_buf::Union(Ptr,ByteString),_buflen::Integer)
    pb = convert(Ptr{AVIOContext},_pb)
    maxlen = int32(_maxlen)
    buf = convert(Ptr{Uint8},_buf)
    buflen = int32(_buflen)
    ccall((:avio_get_str,libavformat),Cint,(Ptr{AVIOContext},Cint,Ptr{Uint8},Cint),pb,maxlen,buf,buflen)
end
function avio_get_str16le(_pb::Ptr,_maxlen::Integer,_buf::Union(Ptr,ByteString),_buflen::Integer)
    pb = convert(Ptr{AVIOContext},_pb)
    maxlen = int32(_maxlen)
    buf = convert(Ptr{Uint8},_buf)
    buflen = int32(_buflen)
    ccall((:avio_get_str16le,libavformat),Cint,(Ptr{AVIOContext},Cint,Ptr{Uint8},Cint),pb,maxlen,buf,buflen)
end
function avio_get_str16be(_pb::Ptr,_maxlen::Integer,_buf::Union(Ptr,ByteString),_buflen::Integer)
    pb = convert(Ptr{AVIOContext},_pb)
    maxlen = int32(_maxlen)
    buf = convert(Ptr{Uint8},_buf)
    buflen = int32(_buflen)
    ccall((:avio_get_str16be,libavformat),Cint,(Ptr{AVIOContext},Cint,Ptr{Uint8},Cint),pb,maxlen,buf,buflen)
end
function avio_open(_s::Ptr,_url::Union(Ptr,ByteString),_flags::Integer)
    s = convert(Ptr{Ptr{AVIOContext}},_s)
    url = convert(Ptr{Uint8},_url)
    flags = int32(_flags)
    ccall((:avio_open,libavformat),Cint,(Ptr{Ptr{AVIOContext}},Ptr{Uint8},Cint),s,url,flags)
end
function avio_open2(_s::Ptr,_url::Union(Ptr,ByteString),_flags::Integer,_int_cb::Ptr,_options::Ptr)
    s = convert(Ptr{Ptr{AVIOContext}},_s)
    url = convert(Ptr{Uint8},_url)
    flags = int32(_flags)
    int_cb = convert(Ptr{AVIOInterruptCB},_int_cb)
    options = convert(Ptr{Ptr{AVDictionary}},_options)
    ccall((:avio_open2,libavformat),Cint,(Ptr{Ptr{AVIOContext}},Ptr{Uint8},Cint,Ptr{AVIOInterruptCB},Ptr{Ptr{AVDictionary}}),s,url,flags,int_cb,options)
end
function avio_close(_s::Ptr)
    s = convert(Ptr{AVIOContext},_s)
    ccall((:avio_close,libavformat),Cint,(Ptr{AVIOContext},),s)
end
function avio_closep(_s::Ptr)
    s = convert(Ptr{Ptr{AVIOContext}},_s)
    ccall((:avio_closep,libavformat),Cint,(Ptr{Ptr{AVIOContext}},),s)
end
function avio_open_dyn_buf(_s::Ptr)
    s = convert(Ptr{Ptr{AVIOContext}},_s)
    ccall((:avio_open_dyn_buf,libavformat),Cint,(Ptr{Ptr{AVIOContext}},),s)
end
function avio_close_dyn_buf(_s::Ptr,_pbuffer::Ptr)
    s = convert(Ptr{AVIOContext},_s)
    pbuffer = convert(Ptr{Ptr{Uint8}},_pbuffer)
    ccall((:avio_close_dyn_buf,libavformat),Cint,(Ptr{AVIOContext},Ptr{Ptr{Uint8}}),s,pbuffer)
end
function avio_enum_protocols(_opaque::Ptr,_output::Integer)
    opaque = convert(Ptr{Ptr{Void}},_opaque)
    output = int32(_output)
    ccall((:avio_enum_protocols,libavformat),Ptr{Uint8},(Ptr{Ptr{Void}},Cint),opaque,output)
end
function avio_pause(_h::Ptr,_pause::Integer)
    h = convert(Ptr{AVIOContext},_h)
    pause = int32(_pause)
    ccall((:avio_pause,libavformat),Cint,(Ptr{AVIOContext},Cint),h,pause)
end
function avio_seek_time(_h::Ptr,_stream_index::Integer,timestamp::Int64,_flags::Integer)
    h = convert(Ptr{AVIOContext},_h)
    stream_index = int32(_stream_index)
    flags = int32(_flags)
    ccall((:avio_seek_time,libavformat),Int64,(Ptr{AVIOContext},Cint,Int64,Cint),h,stream_index,timestamp,flags)
end

# Julia wrapper for header: /usr/include/libavutil/timestamp.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function av_ts_make_string(_buf::Union(Ptr,ByteString),ts::Int64)
    buf = convert(Ptr{Uint8},_buf)
    ccall((:av_ts_make_string,libavutil),Ptr{Uint8},(Ptr{Uint8},Int64),buf,ts)
end
function av_ts_make_time_string(_buf::Union(Ptr,ByteString),ts::Int64,_tb::Ptr)
    buf = convert(Ptr{Uint8},_buf)
    tb = convert(Ptr{AVRational},_tb)
    ccall((:av_ts_make_time_string,libavutil),Ptr{Uint8},(Ptr{Uint8},Int64,Ptr{AVRational}),buf,ts,tb)
end

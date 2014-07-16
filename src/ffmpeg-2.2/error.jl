# Julia wrapper for header: /usr/include/libavutil/error.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function av_strerror(_errnum::Integer,_errbuf::Union(Ptr,ByteString),errbuf_size::Csize_t)
    errnum = int32(_errnum)
    errbuf = convert(Ptr{Uint8},_errbuf)
    ccall((:av_strerror,libavutil),Cint,(Cint,Ptr{Uint8},Csize_t),errnum,errbuf,errbuf_size)
end
function av_make_error_string(_errbuf::Union(Ptr,ByteString),errbuf_size::Csize_t,_errnum::Integer)
    errbuf = convert(Ptr{Uint8},_errbuf)
    errnum = int32(_errnum)
    ccall((:av_make_error_string,libavutil),Ptr{Uint8},(Ptr{Uint8},Csize_t,Cint),errbuf,errbuf_size,errnum)
end

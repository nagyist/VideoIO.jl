# Julia wrapper for header: /usr/include/libavutil/lzo.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function av_lzo1x_decode(_out::Ptr,_outlen::Ptr,__in::Ptr,_inlen::Ptr)
    out = convert(Ptr{Void},_out)
    outlen = convert(Ptr{Cint},_outlen)
    _in = convert(Ptr{Void},__in)
    inlen = convert(Ptr{Cint},_inlen)
    ccall((:av_lzo1x_decode,libavutil),Cint,(Ptr{Void},Ptr{Cint},Ptr{Void},Ptr{Cint}),out,outlen,_in,inlen)
end

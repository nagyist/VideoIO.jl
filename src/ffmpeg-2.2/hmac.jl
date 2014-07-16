# Julia wrapper for header: /usr/include/libavutil/hmac.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function av_hmac_alloc(_type::AVHMACType)
    ccall((:av_hmac_alloc,libavutil),Ptr{AVHMAC},(AVHMACType,),_type)
end
function av_hmac_free(_ctx::Ptr)
    ctx = convert(Ptr{AVHMAC},_ctx)
    ccall((:av_hmac_free,libavutil),Void,(Ptr{AVHMAC},),ctx)
end
function av_hmac_init(_ctx::Ptr,_key::Union(Ptr,ByteString),_keylen::Integer)
    ctx = convert(Ptr{AVHMAC},_ctx)
    key = convert(Ptr{Uint8},_key)
    keylen = uint32(_keylen)
    ccall((:av_hmac_init,libavutil),Void,(Ptr{AVHMAC},Ptr{Uint8},Uint32),ctx,key,keylen)
end
function av_hmac_update(_ctx::Ptr,_data::Union(Ptr,ByteString),_len::Integer)
    ctx = convert(Ptr{AVHMAC},_ctx)
    data = convert(Ptr{Uint8},_data)
    len = uint32(_len)
    ccall((:av_hmac_update,libavutil),Void,(Ptr{AVHMAC},Ptr{Uint8},Uint32),ctx,data,len)
end
function av_hmac_final(_ctx::Ptr,_out::Union(Ptr,ByteString),_outlen::Integer)
    ctx = convert(Ptr{AVHMAC},_ctx)
    out = convert(Ptr{Uint8},_out)
    outlen = uint32(_outlen)
    ccall((:av_hmac_final,libavutil),Cint,(Ptr{AVHMAC},Ptr{Uint8},Uint32),ctx,out,outlen)
end
function av_hmac_calc(_ctx::Ptr,_data::Union(Ptr,ByteString),_len::Integer,_key::Union(Ptr,ByteString),_keylen::Integer,_out::Union(Ptr,ByteString),_outlen::Integer)
    ctx = convert(Ptr{AVHMAC},_ctx)
    data = convert(Ptr{Uint8},_data)
    len = uint32(_len)
    key = convert(Ptr{Uint8},_key)
    keylen = uint32(_keylen)
    out = convert(Ptr{Uint8},_out)
    outlen = uint32(_outlen)
    ccall((:av_hmac_calc,libavutil),Cint,(Ptr{AVHMAC},Ptr{Uint8},Uint32,Ptr{Uint8},Uint32,Ptr{Uint8},Uint32),ctx,data,len,key,keylen,out,outlen)
end

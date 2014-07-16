# Julia wrapper for header: /usr/include/libavutil/xtea.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function av_xtea_init(_ctx::Ptr,_key::Union(Ptr,ByteString))
    ctx = convert(Ptr{AVXTEA},_ctx)
    key = convert(Ptr{Uint8},_key)
    ccall((:av_xtea_init,libavutil),Void,(Ptr{AVXTEA},Ptr{Uint8}),ctx,key)
end
function av_xtea_crypt(_ctx::Ptr,_dst::Union(Ptr,ByteString),_src::Union(Ptr,ByteString),_count::Integer,_iv::Union(Ptr,ByteString),_decrypt::Integer)
    ctx = convert(Ptr{AVXTEA},_ctx)
    dst = convert(Ptr{Uint8},_dst)
    src = convert(Ptr{Uint8},_src)
    count = int32(_count)
    iv = convert(Ptr{Uint8},_iv)
    decrypt = int32(_decrypt)
    ccall((:av_xtea_crypt,libavutil),Void,(Ptr{AVXTEA},Ptr{Uint8},Ptr{Uint8},Cint,Ptr{Uint8},Cint),ctx,dst,src,count,iv,decrypt)
end

# Julia wrapper for header: /usr/include/libavutil/blowfish.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function av_blowfish_init(_ctx::Ptr,_key::Union(Ptr,ByteString),_key_len::Integer)
    ctx = convert(Ptr{AVBlowfish},_ctx)
    key = convert(Ptr{Uint8},_key)
    key_len = int32(_key_len)
    ccall((:av_blowfish_init,libavutil),Void,(Ptr{AVBlowfish},Ptr{Uint8},Cint),ctx,key,key_len)
end
function av_blowfish_crypt_ecb(_ctx::Ptr,_xl::Ptr,_xr::Ptr,_decrypt::Integer)
    ctx = convert(Ptr{AVBlowfish},_ctx)
    xl = convert(Ptr{Uint32},_xl)
    xr = convert(Ptr{Uint32},_xr)
    decrypt = int32(_decrypt)
    ccall((:av_blowfish_crypt_ecb,libavutil),Void,(Ptr{AVBlowfish},Ptr{Uint32},Ptr{Uint32},Cint),ctx,xl,xr,decrypt)
end
function av_blowfish_crypt(_ctx::Ptr,_dst::Union(Ptr,ByteString),_src::Union(Ptr,ByteString),_count::Integer,_iv::Union(Ptr,ByteString),_decrypt::Integer)
    ctx = convert(Ptr{AVBlowfish},_ctx)
    dst = convert(Ptr{Uint8},_dst)
    src = convert(Ptr{Uint8},_src)
    count = int32(_count)
    iv = convert(Ptr{Uint8},_iv)
    decrypt = int32(_decrypt)
    ccall((:av_blowfish_crypt,libavutil),Void,(Ptr{AVBlowfish},Ptr{Uint8},Ptr{Uint8},Cint,Ptr{Uint8},Cint),ctx,dst,src,count,iv,decrypt)
end

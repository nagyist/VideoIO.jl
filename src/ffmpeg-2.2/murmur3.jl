# Julia wrapper for header: /usr/include/libavutil/murmur3.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function av_murmur3_alloc()
    ccall((:av_murmur3_alloc,libavutil),Ptr{AVMurMur3},())
end
function av_murmur3_init_seeded(_c::Ptr,seed::Uint64)
    c = convert(Ptr{AVMurMur3},_c)
    ccall((:av_murmur3_init_seeded,libavutil),Void,(Ptr{AVMurMur3},Uint64),c,seed)
end
function av_murmur3_init(_c::Ptr)
    c = convert(Ptr{AVMurMur3},_c)
    ccall((:av_murmur3_init,libavutil),Void,(Ptr{AVMurMur3},),c)
end
function av_murmur3_update(_c::Ptr,_src::Union(Ptr,ByteString),_len::Integer)
    c = convert(Ptr{AVMurMur3},_c)
    src = convert(Ptr{Uint8},_src)
    len = int32(_len)
    ccall((:av_murmur3_update,libavutil),Void,(Ptr{AVMurMur3},Ptr{Uint8},Cint),c,src,len)
end
function av_murmur3_final(_c::Ptr,_dst::Union(Ptr,ByteString))
    c = convert(Ptr{AVMurMur3},_c)
    dst = convert(Ptr{Uint8},_dst)
    ccall((:av_murmur3_final,libavutil),Void,(Ptr{AVMurMur3},Ptr{Uint8}),c,dst)
end

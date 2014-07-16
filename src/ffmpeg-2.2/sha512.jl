# Julia wrapper for header: /usr/include/libavutil/sha512.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function av_sha512_alloc()
    ccall((:av_sha512_alloc,libavutil),Ptr{AVSHA512},())
end
function av_sha512_init(_context::Ptr,_bits::Integer)
    context = convert(Ptr{AVSHA512},_context)
    bits = int32(_bits)
    ccall((:av_sha512_init,libavutil),Cint,(Ptr{AVSHA512},Cint),context,bits)
end
function av_sha512_update(_context::Ptr,_data::Union(Ptr,ByteString),_len::Integer)
    context = convert(Ptr{AVSHA512},_context)
    data = convert(Ptr{Uint8},_data)
    len = uint32(_len)
    ccall((:av_sha512_update,libavutil),Void,(Ptr{AVSHA512},Ptr{Uint8},Uint32),context,data,len)
end
function av_sha512_final(_context::Ptr,_digest::Union(Ptr,ByteString))
    context = convert(Ptr{AVSHA512},_context)
    digest = convert(Ptr{Uint8},_digest)
    ccall((:av_sha512_final,libavutil),Void,(Ptr{AVSHA512},Ptr{Uint8}),context,digest)
end

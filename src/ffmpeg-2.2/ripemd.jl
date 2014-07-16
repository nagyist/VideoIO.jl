# Julia wrapper for header: /usr/include/libavutil/ripemd.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function av_ripemd_alloc()
    ccall((:av_ripemd_alloc,libavutil),Ptr{AVRIPEMD},())
end
function av_ripemd_init(_context::Ptr,_bits::Integer)
    context = convert(Ptr{AVRIPEMD},_context)
    bits = int32(_bits)
    ccall((:av_ripemd_init,libavutil),Cint,(Ptr{AVRIPEMD},Cint),context,bits)
end
function av_ripemd_update(_context::Ptr,_data::Union(Ptr,ByteString),_len::Integer)
    context = convert(Ptr{AVRIPEMD},_context)
    data = convert(Ptr{Uint8},_data)
    len = uint32(_len)
    ccall((:av_ripemd_update,libavutil),Void,(Ptr{AVRIPEMD},Ptr{Uint8},Uint32),context,data,len)
end
function av_ripemd_final(_context::Ptr,_digest::Union(Ptr,ByteString))
    context = convert(Ptr{AVRIPEMD},_context)
    digest = convert(Ptr{Uint8},_digest)
    ccall((:av_ripemd_final,libavutil),Void,(Ptr{AVRIPEMD},Ptr{Uint8}),context,digest)
end

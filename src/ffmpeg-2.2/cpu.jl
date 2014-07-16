# Julia wrapper for header: /usr/include/libavutil/cpu.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function av_get_cpu_flags()
    ccall((:av_get_cpu_flags,libavutil),Cint,())
end
function av_force_cpu_flags(_flags::Integer)
    flags = int32(_flags)
    ccall((:av_force_cpu_flags,libavutil),Void,(Cint,),flags)
end
function av_set_cpu_flags_mask(_mask::Integer)
    mask = int32(_mask)
    ccall((:av_set_cpu_flags_mask,libavutil),Void,(Cint,),mask)
end
function av_parse_cpu_flags(_s::Union(Ptr,ByteString))
    s = convert(Ptr{Uint8},_s)
    ccall((:av_parse_cpu_flags,libavutil),Cint,(Ptr{Uint8},),s)
end
function av_parse_cpu_caps(_flags::Ptr,_s::Union(Ptr,ByteString))
    flags = convert(Ptr{Uint32},_flags)
    s = convert(Ptr{Uint8},_s)
    ccall((:av_parse_cpu_caps,libavutil),Cint,(Ptr{Uint32},Ptr{Uint8}),flags,s)
end
function av_cpu_count()
    ccall((:av_cpu_count,libavutil),Cint,())
end

# Julia wrapper for header: /usr/include/libavcodec/vda.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function ff_vda_create_decoder(_vda_ctx::Ptr,_extradata::Union(Ptr,ByteString),_extradata_size::Integer)
    vda_ctx = convert(Ptr{vda_context},_vda_ctx)
    extradata = convert(Ptr{Uint8},_extradata)
    extradata_size = int32(_extradata_size)
    ccall((:ff_vda_create_decoder,libavcodec),Cint,(Ptr{vda_context},Ptr{Uint8},Cint),vda_ctx,extradata,extradata_size)
end
function ff_vda_destroy_decoder(_vda_ctx::Ptr)
    vda_ctx = convert(Ptr{vda_context},_vda_ctx)
    ccall((:ff_vda_destroy_decoder,libavcodec),Cint,(Ptr{vda_context},),vda_ctx)
end

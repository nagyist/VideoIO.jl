# Julia wrapper for header: /usr/include/libavutil/buffer.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function av_buffer_alloc(_size::Integer)
    size = int32(_size)
    ccall((:av_buffer_alloc,libavutil),Ptr{AVBufferRef},(Cint,),size)
end
function av_buffer_allocz(_size::Integer)
    size = int32(_size)
    ccall((:av_buffer_allocz,libavutil),Ptr{AVBufferRef},(Cint,),size)
end
function av_buffer_create(_data::Union(Ptr,ByteString),_size::Integer,_free::Ptr,_opaque::Ptr,_flags::Integer)
    data = convert(Ptr{Uint8},_data)
    size = int32(_size)
    free = convert(Ptr{Void},_free)
    opaque = convert(Ptr{Void},_opaque)
    flags = int32(_flags)
    ccall((:av_buffer_create,libavutil),Ptr{AVBufferRef},(Ptr{Uint8},Cint,Ptr{Void},Ptr{Void},Cint),data,size,free,opaque,flags)
end
function av_buffer_default_free(_opaque::Ptr,_data::Union(Ptr,ByteString))
    opaque = convert(Ptr{Void},_opaque)
    data = convert(Ptr{Uint8},_data)
    ccall((:av_buffer_default_free,libavutil),Void,(Ptr{Void},Ptr{Uint8}),opaque,data)
end
function av_buffer_ref(_buf::Ptr)
    buf = convert(Ptr{AVBufferRef},_buf)
    ccall((:av_buffer_ref,libavutil),Ptr{AVBufferRef},(Ptr{AVBufferRef},),buf)
end
function av_buffer_unref(_buf::Ptr)
    buf = convert(Ptr{Ptr{AVBufferRef}},_buf)
    ccall((:av_buffer_unref,libavutil),Void,(Ptr{Ptr{AVBufferRef}},),buf)
end
function av_buffer_is_writable(_buf::Ptr)
    buf = convert(Ptr{AVBufferRef},_buf)
    ccall((:av_buffer_is_writable,libavutil),Cint,(Ptr{AVBufferRef},),buf)
end
function av_buffer_get_opaque(_buf::Ptr)
    buf = convert(Ptr{AVBufferRef},_buf)
    ccall((:av_buffer_get_opaque,libavutil),Ptr{Void},(Ptr{AVBufferRef},),buf)
end
function av_buffer_get_ref_count(_buf::Ptr)
    buf = convert(Ptr{AVBufferRef},_buf)
    ccall((:av_buffer_get_ref_count,libavutil),Cint,(Ptr{AVBufferRef},),buf)
end
function av_buffer_make_writable(_buf::Ptr)
    buf = convert(Ptr{Ptr{AVBufferRef}},_buf)
    ccall((:av_buffer_make_writable,libavutil),Cint,(Ptr{Ptr{AVBufferRef}},),buf)
end
function av_buffer_realloc(_buf::Ptr,_size::Integer)
    buf = convert(Ptr{Ptr{AVBufferRef}},_buf)
    size = int32(_size)
    ccall((:av_buffer_realloc,libavutil),Cint,(Ptr{Ptr{AVBufferRef}},Cint),buf,size)
end
function av_buffer_pool_init(_size::Integer,_alloc::Ptr)
    size = int32(_size)
    alloc = convert(Ptr{Void},_alloc)
    ccall((:av_buffer_pool_init,libavutil),Ptr{AVBufferPool},(Cint,Ptr{Void}),size,alloc)
end
function av_buffer_pool_uninit(_pool::Ptr)
    pool = convert(Ptr{Ptr{AVBufferPool}},_pool)
    ccall((:av_buffer_pool_uninit,libavutil),Void,(Ptr{Ptr{AVBufferPool}},),pool)
end
function av_buffer_pool_get(_pool::Ptr)
    pool = convert(Ptr{AVBufferPool},_pool)
    ccall((:av_buffer_pool_get,libavutil),Ptr{AVBufferRef},(Ptr{AVBufferPool},),pool)
end

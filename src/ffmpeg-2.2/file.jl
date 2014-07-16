# Julia wrapper for header: /usr/include/libavutil/file.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function av_file_map(_filename::Union(Ptr,ByteString),_bufptr::Ptr,_size::Ptr,_log_offset::Integer,_log_ctx::Ptr)
    filename = convert(Ptr{Uint8},_filename)
    bufptr = convert(Ptr{Ptr{Uint8}},_bufptr)
    size = convert(Ptr{Csize_t},_size)
    log_offset = int32(_log_offset)
    log_ctx = convert(Ptr{Void},_log_ctx)
    ccall((:av_file_map,libavutil),Cint,(Ptr{Uint8},Ptr{Ptr{Uint8}},Ptr{Csize_t},Cint,Ptr{Void}),filename,bufptr,size,log_offset,log_ctx)
end
function av_file_unmap(_bufptr::Union(Ptr,ByteString),size::Csize_t)
    bufptr = convert(Ptr{Uint8},_bufptr)
    ccall((:av_file_unmap,libavutil),Void,(Ptr{Uint8},Csize_t),bufptr,size)
end
function av_tempfile(_prefix::Union(Ptr,ByteString),_filename::Ptr,_log_offset::Integer,_log_ctx::Ptr)
    prefix = convert(Ptr{Uint8},_prefix)
    filename = convert(Ptr{Ptr{Uint8}},_filename)
    log_offset = int32(_log_offset)
    log_ctx = convert(Ptr{Void},_log_ctx)
    ccall((:av_tempfile,libavutil),Cint,(Ptr{Uint8},Ptr{Ptr{Uint8}},Cint,Ptr{Void}),prefix,filename,log_offset,log_ctx)
end

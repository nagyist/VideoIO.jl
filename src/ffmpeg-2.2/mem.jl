# Julia wrapper for header: /usr/include/libavutil/mem.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function av_malloc(size::Csize_t)
    ccall((:av_malloc,libavutil),Ptr{Void},(Csize_t,),size)
end
function av_malloc_array(nmemb::Csize_t,size::Csize_t)
    ccall((:av_malloc_array,libavutil),Ptr{Void},(Csize_t,Csize_t),nmemb,size)
end
function av_realloc(_ptr::Ptr,size::Csize_t)
    ptr = convert(Ptr{Void},_ptr)
    ccall((:av_realloc,libavutil),Ptr{Void},(Ptr{Void},Csize_t),ptr,size)
end
function av_realloc_f(_ptr::Ptr,nelem::Csize_t,elsize::Csize_t)
    ptr = convert(Ptr{Void},_ptr)
    ccall((:av_realloc_f,libavutil),Ptr{Void},(Ptr{Void},Csize_t,Csize_t),ptr,nelem,elsize)
end
function av_reallocp(_ptr::Ptr,size::Csize_t)
    ptr = convert(Ptr{Void},_ptr)
    ccall((:av_reallocp,libavutil),Cint,(Ptr{Void},Csize_t),ptr,size)
end
function av_realloc_array(_ptr::Ptr,nmemb::Csize_t,size::Csize_t)
    ptr = convert(Ptr{Void},_ptr)
    ccall((:av_realloc_array,libavutil),Ptr{Void},(Ptr{Void},Csize_t,Csize_t),ptr,nmemb,size)
end
function av_reallocp_array(_ptr::Ptr,nmemb::Csize_t,size::Csize_t)
    ptr = convert(Ptr{Void},_ptr)
    ccall((:av_reallocp_array,libavutil),Cint,(Ptr{Void},Csize_t,Csize_t),ptr,nmemb,size)
end
function av_free(_ptr::Ptr)
    ptr = convert(Ptr{Void},_ptr)
    ccall((:av_free,libavutil),Void,(Ptr{Void},),ptr)
end
function av_mallocz(size::Csize_t)
    ccall((:av_mallocz,libavutil),Ptr{Void},(Csize_t,),size)
end
function av_calloc(nmemb::Csize_t,size::Csize_t)
    ccall((:av_calloc,libavutil),Ptr{Void},(Csize_t,Csize_t),nmemb,size)
end
function av_mallocz_array(nmemb::Csize_t,size::Csize_t)
    ccall((:av_mallocz_array,libavutil),Ptr{Void},(Csize_t,Csize_t),nmemb,size)
end
function av_strdup(_s::Union(Ptr,ByteString))
    s = convert(Ptr{Uint8},_s)
    ccall((:av_strdup,libavutil),Ptr{Uint8},(Ptr{Uint8},),s)
end
function av_memdup(_p::Ptr,size::Csize_t)
    p = convert(Ptr{Void},_p)
    ccall((:av_memdup,libavutil),Ptr{Void},(Ptr{Void},Csize_t),p,size)
end
function av_freep(_ptr::Ptr)
    ptr = convert(Ptr{Void},_ptr)
    ccall((:av_freep,libavutil),Void,(Ptr{Void},),ptr)
end
function av_dynarray_add(_tab_ptr::Ptr,_nb_ptr::Ptr,_elem::Ptr)
    tab_ptr = convert(Ptr{Void},_tab_ptr)
    nb_ptr = convert(Ptr{Cint},_nb_ptr)
    elem = convert(Ptr{Void},_elem)
    ccall((:av_dynarray_add,libavutil),Void,(Ptr{Void},Ptr{Cint},Ptr{Void}),tab_ptr,nb_ptr,elem)
end
function av_dynarray2_add(_tab_ptr::Ptr,_nb_ptr::Ptr,elem_size::Csize_t,_elem_data::Union(Ptr,ByteString))
    tab_ptr = convert(Ptr{Ptr{Void}},_tab_ptr)
    nb_ptr = convert(Ptr{Cint},_nb_ptr)
    elem_data = convert(Ptr{Uint8},_elem_data)
    ccall((:av_dynarray2_add,libavutil),Ptr{Void},(Ptr{Ptr{Void}},Ptr{Cint},Csize_t,Ptr{Uint8}),tab_ptr,nb_ptr,elem_size,elem_data)
end
function av_size_mult(a::Csize_t,b::Csize_t,_r::Ptr)
    r = convert(Ptr{Csize_t},_r)
    ccall((:av_size_mult,libavutil),Cint,(Csize_t,Csize_t,Ptr{Csize_t}),a,b,r)
end
function av_max_alloc(max::Csize_t)
    ccall((:av_max_alloc,libavutil),Void,(Csize_t,),max)
end
function av_memcpy_backptr(_dst::Union(Ptr,ByteString),_back::Integer,_cnt::Integer)
    dst = convert(Ptr{Uint8},_dst)
    back = int32(_back)
    cnt = int32(_cnt)
    ccall((:av_memcpy_backptr,libavutil),Void,(Ptr{Uint8},Cint,Cint),dst,back,cnt)
end
function av_fast_realloc(_ptr::Ptr,_size::Ptr,min_size::Csize_t)
    ptr = convert(Ptr{Void},_ptr)
    size = convert(Ptr{Uint32},_size)
    ccall((:av_fast_realloc,libavutil),Ptr{Void},(Ptr{Void},Ptr{Uint32},Csize_t),ptr,size,min_size)
end
function av_fast_malloc(_ptr::Ptr,_size::Ptr,min_size::Csize_t)
    ptr = convert(Ptr{Void},_ptr)
    size = convert(Ptr{Uint32},_size)
    ccall((:av_fast_malloc,libavutil),Void,(Ptr{Void},Ptr{Uint32},Csize_t),ptr,size,min_size)
end

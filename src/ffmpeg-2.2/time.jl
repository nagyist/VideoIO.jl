# Julia wrapper for header: /usr/include/libavutil/time.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function av_gettime()
    ccall((:av_gettime,libavutil),Int64,())
end
function av_usleep(_usec::Integer)
    usec = uint32(_usec)
    ccall((:av_usleep,libavutil),Cint,(Uint32,),usec)
end

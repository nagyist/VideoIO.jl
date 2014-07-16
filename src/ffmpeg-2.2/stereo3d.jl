# Julia wrapper for header: /usr/include/libavutil/stereo3d.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function av_stereo3d_alloc()
    ccall((:av_stereo3d_alloc,libavutil),Ptr{AVStereo3D},())
end
function av_stereo3d_create_side_data(_frame::Ptr)
    frame = convert(Ptr{AVFrame},_frame)
    ccall((:av_stereo3d_create_side_data,libavutil),Ptr{AVStereo3D},(Ptr{AVFrame},),frame)
end

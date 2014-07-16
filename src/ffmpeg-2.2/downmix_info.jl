# Julia wrapper for header: /usr/include/libavutil/downmix_info.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function av_downmix_info_update_side_data(_frame::Ptr)
    frame = convert(Ptr{AVFrame},_frame)
    ccall((:av_downmix_info_update_side_data,libavutil),Ptr{AVDownmixInfo},(Ptr{AVFrame},),frame)
end

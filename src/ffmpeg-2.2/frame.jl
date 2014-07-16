# Julia wrapper for header: /usr/include/libavutil/frame.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function av_frame_get_best_effort_timestamp(_frame::Ptr)
    frame = convert(Ptr{AVFrame},_frame)
    ccall((:av_frame_get_best_effort_timestamp,libavutil),Int64,(Ptr{AVFrame},),frame)
end
function av_frame_set_best_effort_timestamp(_frame::Ptr,val::Int64)
    frame = convert(Ptr{AVFrame},_frame)
    ccall((:av_frame_set_best_effort_timestamp,libavutil),Void,(Ptr{AVFrame},Int64),frame,val)
end
function av_frame_get_pkt_duration(_frame::Ptr)
    frame = convert(Ptr{AVFrame},_frame)
    ccall((:av_frame_get_pkt_duration,libavutil),Int64,(Ptr{AVFrame},),frame)
end
function av_frame_set_pkt_duration(_frame::Ptr,val::Int64)
    frame = convert(Ptr{AVFrame},_frame)
    ccall((:av_frame_set_pkt_duration,libavutil),Void,(Ptr{AVFrame},Int64),frame,val)
end
function av_frame_get_pkt_pos(_frame::Ptr)
    frame = convert(Ptr{AVFrame},_frame)
    ccall((:av_frame_get_pkt_pos,libavutil),Int64,(Ptr{AVFrame},),frame)
end
function av_frame_set_pkt_pos(_frame::Ptr,val::Int64)
    frame = convert(Ptr{AVFrame},_frame)
    ccall((:av_frame_set_pkt_pos,libavutil),Void,(Ptr{AVFrame},Int64),frame,val)
end
function av_frame_get_channel_layout(_frame::Ptr)
    frame = convert(Ptr{AVFrame},_frame)
    ccall((:av_frame_get_channel_layout,libavutil),Int64,(Ptr{AVFrame},),frame)
end
function av_frame_set_channel_layout(_frame::Ptr,val::Int64)
    frame = convert(Ptr{AVFrame},_frame)
    ccall((:av_frame_set_channel_layout,libavutil),Void,(Ptr{AVFrame},Int64),frame,val)
end
function av_frame_get_channels(_frame::Ptr)
    frame = convert(Ptr{AVFrame},_frame)
    ccall((:av_frame_get_channels,libavutil),Cint,(Ptr{AVFrame},),frame)
end
function av_frame_set_channels(_frame::Ptr,_val::Integer)
    frame = convert(Ptr{AVFrame},_frame)
    val = int32(_val)
    ccall((:av_frame_set_channels,libavutil),Void,(Ptr{AVFrame},Cint),frame,val)
end
function av_frame_get_sample_rate(_frame::Ptr)
    frame = convert(Ptr{AVFrame},_frame)
    ccall((:av_frame_get_sample_rate,libavutil),Cint,(Ptr{AVFrame},),frame)
end
function av_frame_set_sample_rate(_frame::Ptr,_val::Integer)
    frame = convert(Ptr{AVFrame},_frame)
    val = int32(_val)
    ccall((:av_frame_set_sample_rate,libavutil),Void,(Ptr{AVFrame},Cint),frame,val)
end
function av_frame_get_metadata(_frame::Ptr)
    frame = convert(Ptr{AVFrame},_frame)
    ccall((:av_frame_get_metadata,libavutil),Ptr{AVDictionary},(Ptr{AVFrame},),frame)
end
function av_frame_set_metadata(_frame::Ptr,_val::Ptr)
    frame = convert(Ptr{AVFrame},_frame)
    val = convert(Ptr{AVDictionary},_val)
    ccall((:av_frame_set_metadata,libavutil),Void,(Ptr{AVFrame},Ptr{AVDictionary}),frame,val)
end
function av_frame_get_decode_error_flags(_frame::Ptr)
    frame = convert(Ptr{AVFrame},_frame)
    ccall((:av_frame_get_decode_error_flags,libavutil),Cint,(Ptr{AVFrame},),frame)
end
function av_frame_set_decode_error_flags(_frame::Ptr,_val::Integer)
    frame = convert(Ptr{AVFrame},_frame)
    val = int32(_val)
    ccall((:av_frame_set_decode_error_flags,libavutil),Void,(Ptr{AVFrame},Cint),frame,val)
end
function av_frame_get_pkt_size(_frame::Ptr)
    frame = convert(Ptr{AVFrame},_frame)
    ccall((:av_frame_get_pkt_size,libavutil),Cint,(Ptr{AVFrame},),frame)
end
function av_frame_set_pkt_size(_frame::Ptr,_val::Integer)
    frame = convert(Ptr{AVFrame},_frame)
    val = int32(_val)
    ccall((:av_frame_set_pkt_size,libavutil),Void,(Ptr{AVFrame},Cint),frame,val)
end
function avpriv_frame_get_metadatap(_frame::Ptr)
    frame = convert(Ptr{AVFrame},_frame)
    ccall((:avpriv_frame_get_metadatap,libavutil),Ptr{Ptr{AVDictionary}},(Ptr{AVFrame},),frame)
end
function av_frame_get_qp_table(_f::Ptr,_stride::Ptr,__type::Ptr)
    f = convert(Ptr{AVFrame},_f)
    stride = convert(Ptr{Cint},_stride)
    _type = convert(Ptr{Cint},__type)
    ccall((:av_frame_get_qp_table,libavutil),Ptr{Int8},(Ptr{AVFrame},Ptr{Cint},Ptr{Cint}),f,stride,_type)
end
function av_frame_set_qp_table(_f::Ptr,_buf::Ptr,_stride::Integer,__type::Integer)
    f = convert(Ptr{AVFrame},_f)
    buf = convert(Ptr{AVBufferRef},_buf)
    stride = int32(_stride)
    _type = int32(__type)
    ccall((:av_frame_set_qp_table,libavutil),Cint,(Ptr{AVFrame},Ptr{AVBufferRef},Cint,Cint),f,buf,stride,_type)
end
function av_frame_get_colorspace(_frame::Ptr)
    frame = convert(Ptr{AVFrame},_frame)
    ccall((:av_frame_get_colorspace,libavutil),Cint,(Ptr{AVFrame},),frame)
end
function av_frame_set_colorspace(_frame::Ptr,val::AVColorSpace)
    frame = convert(Ptr{AVFrame},_frame)
    ccall((:av_frame_set_colorspace,libavutil),Void,(Ptr{AVFrame},AVColorSpace),frame,val)
end
function av_frame_get_color_range(_frame::Ptr)
    frame = convert(Ptr{AVFrame},_frame)
    ccall((:av_frame_get_color_range,libavutil),Cint,(Ptr{AVFrame},),frame)
end
function av_frame_set_color_range(_frame::Ptr,val::AVColorRange)
    frame = convert(Ptr{AVFrame},_frame)
    ccall((:av_frame_set_color_range,libavutil),Void,(Ptr{AVFrame},AVColorRange),frame,val)
end
function av_get_colorspace_name(val::AVColorSpace)
    ccall((:av_get_colorspace_name,libavutil),Ptr{Uint8},(AVColorSpace,),val)
end
function av_frame_alloc()
    ccall((:av_frame_alloc,libavutil),Ptr{AVFrame},())
end
function av_frame_free(_frame::Ptr)
    frame = convert(Ptr{Ptr{AVFrame}},_frame)
    ccall((:av_frame_free,libavutil),Void,(Ptr{Ptr{AVFrame}},),frame)
end
function av_frame_ref(_dst::Ptr,_src::Ptr)
    dst = convert(Ptr{AVFrame},_dst)
    src = convert(Ptr{AVFrame},_src)
    ccall((:av_frame_ref,libavutil),Cint,(Ptr{AVFrame},Ptr{AVFrame}),dst,src)
end
function av_frame_clone(_src::Ptr)
    src = convert(Ptr{AVFrame},_src)
    ccall((:av_frame_clone,libavutil),Ptr{AVFrame},(Ptr{AVFrame},),src)
end
function av_frame_unref(_frame::Ptr)
    frame = convert(Ptr{AVFrame},_frame)
    ccall((:av_frame_unref,libavutil),Void,(Ptr{AVFrame},),frame)
end
function av_frame_move_ref(_dst::Ptr,_src::Ptr)
    dst = convert(Ptr{AVFrame},_dst)
    src = convert(Ptr{AVFrame},_src)
    ccall((:av_frame_move_ref,libavutil),Void,(Ptr{AVFrame},Ptr{AVFrame}),dst,src)
end
function av_frame_get_buffer(_frame::Ptr,_align::Integer)
    frame = convert(Ptr{AVFrame},_frame)
    align = int32(_align)
    ccall((:av_frame_get_buffer,libavutil),Cint,(Ptr{AVFrame},Cint),frame,align)
end
function av_frame_is_writable(_frame::Ptr)
    frame = convert(Ptr{AVFrame},_frame)
    ccall((:av_frame_is_writable,libavutil),Cint,(Ptr{AVFrame},),frame)
end
function av_frame_make_writable(_frame::Ptr)
    frame = convert(Ptr{AVFrame},_frame)
    ccall((:av_frame_make_writable,libavutil),Cint,(Ptr{AVFrame},),frame)
end
function av_frame_copy(_dst::Ptr,_src::Ptr)
    dst = convert(Ptr{AVFrame},_dst)
    src = convert(Ptr{AVFrame},_src)
    ccall((:av_frame_copy,libavutil),Cint,(Ptr{AVFrame},Ptr{AVFrame}),dst,src)
end
function av_frame_copy_props(_dst::Ptr,_src::Ptr)
    dst = convert(Ptr{AVFrame},_dst)
    src = convert(Ptr{AVFrame},_src)
    ccall((:av_frame_copy_props,libavutil),Cint,(Ptr{AVFrame},Ptr{AVFrame}),dst,src)
end
function av_frame_get_plane_buffer(_frame::Ptr,_plane::Integer)
    frame = convert(Ptr{AVFrame},_frame)
    plane = int32(_plane)
    ccall((:av_frame_get_plane_buffer,libavutil),Ptr{AVBufferRef},(Ptr{AVFrame},Cint),frame,plane)
end
function av_frame_new_side_data(_frame::Ptr,_type::AVFrameSideDataType,_size::Integer)
    frame = convert(Ptr{AVFrame},_frame)
    size = int32(_size)
    ccall((:av_frame_new_side_data,libavutil),Ptr{AVFrameSideData},(Ptr{AVFrame},AVFrameSideDataType,Cint),frame,_type,size)
end
function av_frame_get_side_data(_frame::Ptr,_type::AVFrameSideDataType)
    frame = convert(Ptr{AVFrame},_frame)
    ccall((:av_frame_get_side_data,libavutil),Ptr{AVFrameSideData},(Ptr{AVFrame},AVFrameSideDataType),frame,_type)
end

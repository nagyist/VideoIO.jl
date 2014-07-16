# Julia wrapper for header: /usr/include/libavutil/samplefmt.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function av_get_sample_fmt_name(sample_fmt::AVSampleFormat)
    ccall((:av_get_sample_fmt_name,libavutil),Ptr{Uint8},(AVSampleFormat,),sample_fmt)
end
function av_get_sample_fmt(_name::Union(Ptr,ByteString))
    name = convert(Ptr{Uint8},_name)
    ccall((:av_get_sample_fmt,libavutil),Cint,(Ptr{Uint8},),name)
end
function av_get_alt_sample_fmt(sample_fmt::AVSampleFormat,_planar::Integer)
    planar = int32(_planar)
    ccall((:av_get_alt_sample_fmt,libavutil),Cint,(AVSampleFormat,Cint),sample_fmt,planar)
end
function av_get_packed_sample_fmt(sample_fmt::AVSampleFormat)
    ccall((:av_get_packed_sample_fmt,libavutil),Cint,(AVSampleFormat,),sample_fmt)
end
function av_get_planar_sample_fmt(sample_fmt::AVSampleFormat)
    ccall((:av_get_planar_sample_fmt,libavutil),Cint,(AVSampleFormat,),sample_fmt)
end
function av_get_sample_fmt_string(_buf::Union(Ptr,ByteString),_buf_size::Integer,sample_fmt::AVSampleFormat)
    buf = convert(Ptr{Uint8},_buf)
    buf_size = int32(_buf_size)
    ccall((:av_get_sample_fmt_string,libavutil),Ptr{Uint8},(Ptr{Uint8},Cint,AVSampleFormat),buf,buf_size,sample_fmt)
end
function av_get_bits_per_sample_fmt(sample_fmt::AVSampleFormat)
    ccall((:av_get_bits_per_sample_fmt,libavutil),Cint,(AVSampleFormat,),sample_fmt)
end
function av_get_bytes_per_sample(sample_fmt::AVSampleFormat)
    ccall((:av_get_bytes_per_sample,libavutil),Cint,(AVSampleFormat,),sample_fmt)
end
function av_sample_fmt_is_planar(sample_fmt::AVSampleFormat)
    ccall((:av_sample_fmt_is_planar,libavutil),Cint,(AVSampleFormat,),sample_fmt)
end
function av_samples_get_buffer_size(_linesize::Ptr,_nb_channels::Integer,_nb_samples::Integer,sample_fmt::AVSampleFormat,_align::Integer)
    linesize = convert(Ptr{Cint},_linesize)
    nb_channels = int32(_nb_channels)
    nb_samples = int32(_nb_samples)
    align = int32(_align)
    ccall((:av_samples_get_buffer_size,libavutil),Cint,(Ptr{Cint},Cint,Cint,AVSampleFormat,Cint),linesize,nb_channels,nb_samples,sample_fmt,align)
end
function av_samples_fill_arrays(_audio_data::Ptr,_linesize::Ptr,_buf::Union(Ptr,ByteString),_nb_channels::Integer,_nb_samples::Integer,sample_fmt::AVSampleFormat,_align::Integer)
    audio_data = convert(Ptr{Ptr{Uint8}},_audio_data)
    linesize = convert(Ptr{Cint},_linesize)
    buf = convert(Ptr{Uint8},_buf)
    nb_channels = int32(_nb_channels)
    nb_samples = int32(_nb_samples)
    align = int32(_align)
    ccall((:av_samples_fill_arrays,libavutil),Cint,(Ptr{Ptr{Uint8}},Ptr{Cint},Ptr{Uint8},Cint,Cint,AVSampleFormat,Cint),audio_data,linesize,buf,nb_channels,nb_samples,sample_fmt,align)
end
function av_samples_alloc(_audio_data::Ptr,_linesize::Ptr,_nb_channels::Integer,_nb_samples::Integer,sample_fmt::AVSampleFormat,_align::Integer)
    audio_data = convert(Ptr{Ptr{Uint8}},_audio_data)
    linesize = convert(Ptr{Cint},_linesize)
    nb_channels = int32(_nb_channels)
    nb_samples = int32(_nb_samples)
    align = int32(_align)
    ccall((:av_samples_alloc,libavutil),Cint,(Ptr{Ptr{Uint8}},Ptr{Cint},Cint,Cint,AVSampleFormat,Cint),audio_data,linesize,nb_channels,nb_samples,sample_fmt,align)
end
function av_samples_alloc_array_and_samples(_audio_data::Ptr,_linesize::Ptr,_nb_channels::Integer,_nb_samples::Integer,sample_fmt::AVSampleFormat,_align::Integer)
    audio_data = convert(Ptr{Ptr{Ptr{Uint8}}},_audio_data)
    linesize = convert(Ptr{Cint},_linesize)
    nb_channels = int32(_nb_channels)
    nb_samples = int32(_nb_samples)
    align = int32(_align)
    ccall((:av_samples_alloc_array_and_samples,libavutil),Cint,(Ptr{Ptr{Ptr{Uint8}}},Ptr{Cint},Cint,Cint,AVSampleFormat,Cint),audio_data,linesize,nb_channels,nb_samples,sample_fmt,align)
end
function av_samples_copy(_dst::Ptr,_src::Ptr,_dst_offset::Integer,_src_offset::Integer,_nb_samples::Integer,_nb_channels::Integer,sample_fmt::AVSampleFormat)
    dst = convert(Ptr{Ptr{Uint8}},_dst)
    src = convert(Ptr{Ptr{Uint8}},_src)
    dst_offset = int32(_dst_offset)
    src_offset = int32(_src_offset)
    nb_samples = int32(_nb_samples)
    nb_channels = int32(_nb_channels)
    ccall((:av_samples_copy,libavutil),Cint,(Ptr{Ptr{Uint8}},Ptr{Ptr{Uint8}},Cint,Cint,Cint,Cint,AVSampleFormat),dst,src,dst_offset,src_offset,nb_samples,nb_channels,sample_fmt)
end
function av_samples_set_silence(_audio_data::Ptr,_offset::Integer,_nb_samples::Integer,_nb_channels::Integer,sample_fmt::AVSampleFormat)
    audio_data = convert(Ptr{Ptr{Uint8}},_audio_data)
    offset = int32(_offset)
    nb_samples = int32(_nb_samples)
    nb_channels = int32(_nb_channels)
    ccall((:av_samples_set_silence,libavutil),Cint,(Ptr{Ptr{Uint8}},Cint,Cint,Cint,AVSampleFormat),audio_data,offset,nb_samples,nb_channels,sample_fmt)
end

# Julia wrapper for header: /usr/include/libavutil/audio_fifo.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function av_audio_fifo_free(_af::Ptr)
    af = convert(Ptr{AVAudioFifo},_af)
    ccall((:av_audio_fifo_free,libavutil),Void,(Ptr{AVAudioFifo},),af)
end
function av_audio_fifo_alloc(sample_fmt::AVSampleFormat,_channels::Integer,_nb_samples::Integer)
    channels = int32(_channels)
    nb_samples = int32(_nb_samples)
    ccall((:av_audio_fifo_alloc,libavutil),Ptr{AVAudioFifo},(AVSampleFormat,Cint,Cint),sample_fmt,channels,nb_samples)
end
function av_audio_fifo_realloc(_af::Ptr,_nb_samples::Integer)
    af = convert(Ptr{AVAudioFifo},_af)
    nb_samples = int32(_nb_samples)
    ccall((:av_audio_fifo_realloc,libavutil),Cint,(Ptr{AVAudioFifo},Cint),af,nb_samples)
end
function av_audio_fifo_write(_af::Ptr,_data::Ptr,_nb_samples::Integer)
    af = convert(Ptr{AVAudioFifo},_af)
    data = convert(Ptr{Ptr{Void}},_data)
    nb_samples = int32(_nb_samples)
    ccall((:av_audio_fifo_write,libavutil),Cint,(Ptr{AVAudioFifo},Ptr{Ptr{Void}},Cint),af,data,nb_samples)
end
function av_audio_fifo_read(_af::Ptr,_data::Ptr,_nb_samples::Integer)
    af = convert(Ptr{AVAudioFifo},_af)
    data = convert(Ptr{Ptr{Void}},_data)
    nb_samples = int32(_nb_samples)
    ccall((:av_audio_fifo_read,libavutil),Cint,(Ptr{AVAudioFifo},Ptr{Ptr{Void}},Cint),af,data,nb_samples)
end
function av_audio_fifo_drain(_af::Ptr,_nb_samples::Integer)
    af = convert(Ptr{AVAudioFifo},_af)
    nb_samples = int32(_nb_samples)
    ccall((:av_audio_fifo_drain,libavutil),Cint,(Ptr{AVAudioFifo},Cint),af,nb_samples)
end
function av_audio_fifo_reset(_af::Ptr)
    af = convert(Ptr{AVAudioFifo},_af)
    ccall((:av_audio_fifo_reset,libavutil),Void,(Ptr{AVAudioFifo},),af)
end
function av_audio_fifo_size(_af::Ptr)
    af = convert(Ptr{AVAudioFifo},_af)
    ccall((:av_audio_fifo_size,libavutil),Cint,(Ptr{AVAudioFifo},),af)
end
function av_audio_fifo_space(_af::Ptr)
    af = convert(Ptr{AVAudioFifo},_af)
    ccall((:av_audio_fifo_space,libavutil),Cint,(Ptr{AVAudioFifo},),af)
end

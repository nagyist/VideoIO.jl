# Julia wrapper for header: /usr/include/libavutil/timecode.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function av_timecode_adjust_ntsc_framenum2(_framenum::Integer,_fps::Integer)
    framenum = int32(_framenum)
    fps = int32(_fps)
    ccall((:av_timecode_adjust_ntsc_framenum2,libavutil),Cint,(Cint,Cint),framenum,fps)
end
function av_timecode_get_smpte_from_framenum(_tc::Ptr,_framenum::Integer)
    tc = convert(Ptr{AVTimecode},_tc)
    framenum = int32(_framenum)
    ccall((:av_timecode_get_smpte_from_framenum,libavutil),Uint32,(Ptr{AVTimecode},Cint),tc,framenum)
end
function av_timecode_make_string(_tc::Ptr,_buf::Union(Ptr,ByteString),_framenum::Integer)
    tc = convert(Ptr{AVTimecode},_tc)
    buf = convert(Ptr{Uint8},_buf)
    framenum = int32(_framenum)
    ccall((:av_timecode_make_string,libavutil),Ptr{Uint8},(Ptr{AVTimecode},Ptr{Uint8},Cint),tc,buf,framenum)
end
function av_timecode_make_smpte_tc_string(_buf::Union(Ptr,ByteString),_tcsmpte::Integer,_prevent_df::Integer)
    buf = convert(Ptr{Uint8},_buf)
    tcsmpte = uint32(_tcsmpte)
    prevent_df = int32(_prevent_df)
    ccall((:av_timecode_make_smpte_tc_string,libavutil),Ptr{Uint8},(Ptr{Uint8},Uint32,Cint),buf,tcsmpte,prevent_df)
end
function av_timecode_make_mpeg_tc_string(_buf::Union(Ptr,ByteString),_tc25bit::Integer)
    buf = convert(Ptr{Uint8},_buf)
    tc25bit = uint32(_tc25bit)
    ccall((:av_timecode_make_mpeg_tc_string,libavutil),Ptr{Uint8},(Ptr{Uint8},Uint32),buf,tc25bit)
end
function av_timecode_init(_tc::Ptr,rate::AVRational,_flags::Integer,_frame_start::Integer,_log_ctx::Ptr)
    tc = convert(Ptr{AVTimecode},_tc)
    flags = int32(_flags)
    frame_start = int32(_frame_start)
    log_ctx = convert(Ptr{Void},_log_ctx)
    ccall((:av_timecode_init,libavutil),Cint,(Ptr{AVTimecode},AVRational,Cint,Cint,Ptr{Void}),tc,rate,flags,frame_start,log_ctx)
end
function av_timecode_init_from_string(_tc::Ptr,rate::AVRational,_str::Union(Ptr,ByteString),_log_ctx::Ptr)
    tc = convert(Ptr{AVTimecode},_tc)
    str = convert(Ptr{Uint8},_str)
    log_ctx = convert(Ptr{Void},_log_ctx)
    ccall((:av_timecode_init_from_string,libavutil),Cint,(Ptr{AVTimecode},AVRational,Ptr{Uint8},Ptr{Void}),tc,rate,str,log_ctx)
end
function av_timecode_check_frame_rate(rate::AVRational)
    ccall((:av_timecode_check_frame_rate,libavutil),Cint,(AVRational,),rate)
end

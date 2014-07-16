# Julia wrapper for header: /usr/include/libavutil/parseutils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function av_parse_ratio(_q::Ptr,_str::Union(Ptr,ByteString),_max::Integer,_log_offset::Integer,_log_ctx::Ptr)
    q = convert(Ptr{AVRational},_q)
    str = convert(Ptr{Uint8},_str)
    max = int32(_max)
    log_offset = int32(_log_offset)
    log_ctx = convert(Ptr{Void},_log_ctx)
    ccall((:av_parse_ratio,libavutil),Cint,(Ptr{AVRational},Ptr{Uint8},Cint,Cint,Ptr{Void}),q,str,max,log_offset,log_ctx)
end
function av_parse_video_size(_width_ptr::Ptr,_height_ptr::Ptr,_str::Union(Ptr,ByteString))
    width_ptr = convert(Ptr{Cint},_width_ptr)
    height_ptr = convert(Ptr{Cint},_height_ptr)
    str = convert(Ptr{Uint8},_str)
    ccall((:av_parse_video_size,libavutil),Cint,(Ptr{Cint},Ptr{Cint},Ptr{Uint8}),width_ptr,height_ptr,str)
end
function av_parse_video_rate(_rate::Ptr,_str::Union(Ptr,ByteString))
    rate = convert(Ptr{AVRational},_rate)
    str = convert(Ptr{Uint8},_str)
    ccall((:av_parse_video_rate,libavutil),Cint,(Ptr{AVRational},Ptr{Uint8}),rate,str)
end
function av_parse_color(_rgba_color::Union(Ptr,ByteString),_color_string::Union(Ptr,ByteString),_slen::Integer,_log_ctx::Ptr)
    rgba_color = convert(Ptr{Uint8},_rgba_color)
    color_string = convert(Ptr{Uint8},_color_string)
    slen = int32(_slen)
    log_ctx = convert(Ptr{Void},_log_ctx)
    ccall((:av_parse_color,libavutil),Cint,(Ptr{Uint8},Ptr{Uint8},Cint,Ptr{Void}),rgba_color,color_string,slen,log_ctx)
end
function av_get_known_color_name(_color_idx::Integer,_rgb::Ptr)
    color_idx = int32(_color_idx)
    rgb = convert(Ptr{Ptr{Uint8}},_rgb)
    ccall((:av_get_known_color_name,libavutil),Ptr{Uint8},(Cint,Ptr{Ptr{Uint8}}),color_idx,rgb)
end
function av_parse_time(_timeval::Ptr,_timestr::Union(Ptr,ByteString),_duration::Integer)
    timeval = convert(Ptr{Int64},_timeval)
    timestr = convert(Ptr{Uint8},_timestr)
    duration = int32(_duration)
    ccall((:av_parse_time,libavutil),Cint,(Ptr{Int64},Ptr{Uint8},Cint),timeval,timestr,duration)
end
function av_small_strptime(_p::Union(Ptr,ByteString),_fmt::Union(Ptr,ByteString),_dt::Ptr)
    p = convert(Ptr{Uint8},_p)
    fmt = convert(Ptr{Uint8},_fmt)
    dt = convert(Ptr{tm},_dt)
    ccall((:av_small_strptime,libavutil),Ptr{Uint8},(Ptr{Uint8},Ptr{Uint8},Ptr{tm}),p,fmt,dt)
end
function av_find_info_tag(_arg::Union(Ptr,ByteString),_arg_size::Integer,_tag1::Union(Ptr,ByteString),_info::Union(Ptr,ByteString))
    arg = convert(Ptr{Uint8},_arg)
    arg_size = int32(_arg_size)
    tag1 = convert(Ptr{Uint8},_tag1)
    info = convert(Ptr{Uint8},_info)
    ccall((:av_find_info_tag,libavutil),Cint,(Ptr{Uint8},Cint,Ptr{Uint8},Ptr{Uint8}),arg,arg_size,tag1,info)
end
function av_timegm(_tm::Ptr)
    tm = convert(Ptr{tm},_tm)
    ccall((:av_timegm,libavutil),time_t,(Ptr{tm},),tm)
end

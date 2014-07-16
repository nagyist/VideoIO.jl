# Julia wrapper for header: /usr/include/libavformat/avformat.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function av_get_packet(_s::Ptr,_pkt::Ptr,_size::Integer)
    s = convert(Ptr{AVIOContext},_s)
    pkt = convert(Ptr{AVPacket},_pkt)
    size = int32(_size)
    ccall((:av_get_packet,libavformat),Cint,(Ptr{AVIOContext},Ptr{AVPacket},Cint),s,pkt,size)
end
function av_append_packet(_s::Ptr,_pkt::Ptr,_size::Integer)
    s = convert(Ptr{AVIOContext},_s)
    pkt = convert(Ptr{AVPacket},_pkt)
    size = int32(_size)
    ccall((:av_append_packet,libavformat),Cint,(Ptr{AVIOContext},Ptr{AVPacket},Cint),s,pkt,size)
end
function av_stream_get_r_frame_rate(_s::Ptr)
    s = convert(Ptr{AVStream},_s)
    ccall((:av_stream_get_r_frame_rate,libavformat),AVRational,(Ptr{AVStream},),s)
end
function av_stream_set_r_frame_rate(_s::Ptr,r::AVRational)
    s = convert(Ptr{AVStream},_s)
    ccall((:av_stream_set_r_frame_rate,libavformat),Void,(Ptr{AVStream},AVRational),s,r)
end
function av_format_get_probe_score(_s::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    ccall((:av_format_get_probe_score,libavformat),Cint,(Ptr{AVFormatContext},),s)
end
function av_format_get_video_codec(_s::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    ccall((:av_format_get_video_codec,libavformat),Ptr{AVCodec},(Ptr{AVFormatContext},),s)
end
function av_format_set_video_codec(_s::Ptr,_c::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    c = convert(Ptr{AVCodec},_c)
    ccall((:av_format_set_video_codec,libavformat),Void,(Ptr{AVFormatContext},Ptr{AVCodec}),s,c)
end
function av_format_get_audio_codec(_s::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    ccall((:av_format_get_audio_codec,libavformat),Ptr{AVCodec},(Ptr{AVFormatContext},),s)
end
function av_format_set_audio_codec(_s::Ptr,_c::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    c = convert(Ptr{AVCodec},_c)
    ccall((:av_format_set_audio_codec,libavformat),Void,(Ptr{AVFormatContext},Ptr{AVCodec}),s,c)
end
function av_format_get_subtitle_codec(_s::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    ccall((:av_format_get_subtitle_codec,libavformat),Ptr{AVCodec},(Ptr{AVFormatContext},),s)
end
function av_format_set_subtitle_codec(_s::Ptr,_c::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    c = convert(Ptr{AVCodec},_c)
    ccall((:av_format_set_subtitle_codec,libavformat),Void,(Ptr{AVFormatContext},Ptr{AVCodec}),s,c)
end
function av_format_get_metadata_header_padding(_s::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    ccall((:av_format_get_metadata_header_padding,libavformat),Cint,(Ptr{AVFormatContext},),s)
end
function av_format_set_metadata_header_padding(_s::Ptr,_c::Integer)
    s = convert(Ptr{AVFormatContext},_s)
    c = int32(_c)
    ccall((:av_format_set_metadata_header_padding,libavformat),Void,(Ptr{AVFormatContext},Cint),s,c)
end
function av_format_get_opaque(_s::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    ccall((:av_format_get_opaque,libavformat),Ptr{Void},(Ptr{AVFormatContext},),s)
end
function av_format_set_opaque(_s::Ptr,_opaque::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    opaque = convert(Ptr{Void},_opaque)
    ccall((:av_format_set_opaque,libavformat),Void,(Ptr{AVFormatContext},Ptr{Void}),s,opaque)
end
function av_format_get_control_message_cb(_s::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    ccall((:av_format_get_control_message_cb,libavformat),av_format_control_message,(Ptr{AVFormatContext},),s)
end
function av_format_set_control_message_cb(_s::Ptr,callback::av_format_control_message)
    s = convert(Ptr{AVFormatContext},_s)
    ccall((:av_format_set_control_message_cb,libavformat),Void,(Ptr{AVFormatContext},av_format_control_message),s,callback)
end
function av_fmt_ctx_get_duration_estimation_method(_ctx::Ptr)
    ctx = convert(Ptr{AVFormatContext},_ctx)
    ccall((:av_fmt_ctx_get_duration_estimation_method,libavformat),Cint,(Ptr{AVFormatContext},),ctx)
end
function avformat_version()
    ccall((:avformat_version,libavformat),Uint32,())
end
function avformat_configuration()
    ccall((:avformat_configuration,libavformat),Ptr{Uint8},())
end
function avformat_license()
    ccall((:avformat_license,libavformat),Ptr{Uint8},())
end
function av_register_all()
    ccall((:av_register_all,libavformat),Void,())
end
function av_register_input_format(_format::Ptr)
    format = convert(Ptr{AVInputFormat},_format)
    ccall((:av_register_input_format,libavformat),Void,(Ptr{AVInputFormat},),format)
end
function av_register_output_format(_format::Ptr)
    format = convert(Ptr{AVOutputFormat},_format)
    ccall((:av_register_output_format,libavformat),Void,(Ptr{AVOutputFormat},),format)
end
function avformat_network_init()
    ccall((:avformat_network_init,libavformat),Cint,())
end
function avformat_network_deinit()
    ccall((:avformat_network_deinit,libavformat),Cint,())
end
function av_iformat_next(_f::Ptr)
    f = convert(Ptr{AVInputFormat},_f)
    ccall((:av_iformat_next,libavformat),Ptr{AVInputFormat},(Ptr{AVInputFormat},),f)
end
function av_oformat_next(_f::Ptr)
    f = convert(Ptr{AVOutputFormat},_f)
    ccall((:av_oformat_next,libavformat),Ptr{AVOutputFormat},(Ptr{AVOutputFormat},),f)
end
function avformat_alloc_context()
    ccall((:avformat_alloc_context,libavformat),Ptr{AVFormatContext},())
end
function avformat_free_context(_s::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    ccall((:avformat_free_context,libavformat),Void,(Ptr{AVFormatContext},),s)
end
function avformat_get_class()
    ccall((:avformat_get_class,libavformat),Ptr{AVClass},())
end
function avformat_new_stream(_s::Ptr,_c::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    c = convert(Ptr{AVCodec},_c)
    ccall((:avformat_new_stream,libavformat),Ptr{AVStream},(Ptr{AVFormatContext},Ptr{AVCodec}),s,c)
end
function av_new_program(_s::Ptr,_id::Integer)
    s = convert(Ptr{AVFormatContext},_s)
    id = int32(_id)
    ccall((:av_new_program,libavformat),Ptr{AVProgram},(Ptr{AVFormatContext},Cint),s,id)
end
function avformat_alloc_output_context(_format::Union(Ptr,ByteString),_oformat::Ptr,_filename::Union(Ptr,ByteString))
    format = convert(Ptr{Uint8},_format)
    oformat = convert(Ptr{AVOutputFormat},_oformat)
    filename = convert(Ptr{Uint8},_filename)
    ccall((:avformat_alloc_output_context,libavformat),Ptr{AVFormatContext},(Ptr{Uint8},Ptr{AVOutputFormat},Ptr{Uint8}),format,oformat,filename)
end
function avformat_alloc_output_context2(_ctx::Ptr,_oformat::Ptr,_format_name::Union(Ptr,ByteString),_filename::Union(Ptr,ByteString))
    ctx = convert(Ptr{Ptr{AVFormatContext}},_ctx)
    oformat = convert(Ptr{AVOutputFormat},_oformat)
    format_name = convert(Ptr{Uint8},_format_name)
    filename = convert(Ptr{Uint8},_filename)
    ccall((:avformat_alloc_output_context2,libavformat),Cint,(Ptr{Ptr{AVFormatContext}},Ptr{AVOutputFormat},Ptr{Uint8},Ptr{Uint8}),ctx,oformat,format_name,filename)
end
function av_find_input_format(_short_name::Union(Ptr,ByteString))
    short_name = convert(Ptr{Uint8},_short_name)
    ccall((:av_find_input_format,libavformat),Ptr{AVInputFormat},(Ptr{Uint8},),short_name)
end
function av_probe_input_format(_pd::Ptr,_is_opened::Integer)
    pd = convert(Ptr{AVProbeData},_pd)
    is_opened = int32(_is_opened)
    ccall((:av_probe_input_format,libavformat),Ptr{AVInputFormat},(Ptr{AVProbeData},Cint),pd,is_opened)
end
function av_probe_input_format2(_pd::Ptr,_is_opened::Integer,_score_max::Ptr)
    pd = convert(Ptr{AVProbeData},_pd)
    is_opened = int32(_is_opened)
    score_max = convert(Ptr{Cint},_score_max)
    ccall((:av_probe_input_format2,libavformat),Ptr{AVInputFormat},(Ptr{AVProbeData},Cint,Ptr{Cint}),pd,is_opened,score_max)
end
function av_probe_input_format3(_pd::Ptr,_is_opened::Integer,_score_ret::Ptr)
    pd = convert(Ptr{AVProbeData},_pd)
    is_opened = int32(_is_opened)
    score_ret = convert(Ptr{Cint},_score_ret)
    ccall((:av_probe_input_format3,libavformat),Ptr{AVInputFormat},(Ptr{AVProbeData},Cint,Ptr{Cint}),pd,is_opened,score_ret)
end
function av_probe_input_buffer2(_pb::Ptr,_fmt::Ptr,_filename::Union(Ptr,ByteString),_logctx::Ptr,_offset::Integer,_max_probe_size::Integer)
    pb = convert(Ptr{AVIOContext},_pb)
    fmt = convert(Ptr{Ptr{AVInputFormat}},_fmt)
    filename = convert(Ptr{Uint8},_filename)
    logctx = convert(Ptr{Void},_logctx)
    offset = uint32(_offset)
    max_probe_size = uint32(_max_probe_size)
    ccall((:av_probe_input_buffer2,libavformat),Cint,(Ptr{AVIOContext},Ptr{Ptr{AVInputFormat}},Ptr{Uint8},Ptr{Void},Uint32,Uint32),pb,fmt,filename,logctx,offset,max_probe_size)
end
function av_probe_input_buffer(_pb::Ptr,_fmt::Ptr,_filename::Union(Ptr,ByteString),_logctx::Ptr,_offset::Integer,_max_probe_size::Integer)
    pb = convert(Ptr{AVIOContext},_pb)
    fmt = convert(Ptr{Ptr{AVInputFormat}},_fmt)
    filename = convert(Ptr{Uint8},_filename)
    logctx = convert(Ptr{Void},_logctx)
    offset = uint32(_offset)
    max_probe_size = uint32(_max_probe_size)
    ccall((:av_probe_input_buffer,libavformat),Cint,(Ptr{AVIOContext},Ptr{Ptr{AVInputFormat}},Ptr{Uint8},Ptr{Void},Uint32,Uint32),pb,fmt,filename,logctx,offset,max_probe_size)
end
function avformat_open_input(_ps::Ptr,_filename::Union(Ptr,ByteString),_fmt::Ptr,_options::Ptr)
    ps = convert(Ptr{Ptr{AVFormatContext}},_ps)
    filename = convert(Ptr{Uint8},_filename)
    fmt = convert(Ptr{AVInputFormat},_fmt)
    options = convert(Ptr{Ptr{AVDictionary}},_options)
    ccall((:avformat_open_input,libavformat),Cint,(Ptr{Ptr{AVFormatContext}},Ptr{Uint8},Ptr{AVInputFormat},Ptr{Ptr{AVDictionary}}),ps,filename,fmt,options)
end
function av_demuxer_open(_ic::Ptr)
    ic = convert(Ptr{AVFormatContext},_ic)
    ccall((:av_demuxer_open,libavformat),Cint,(Ptr{AVFormatContext},),ic)
end
function av_find_stream_info(_ic::Ptr)
    ic = convert(Ptr{AVFormatContext},_ic)
    ccall((:av_find_stream_info,libavformat),Cint,(Ptr{AVFormatContext},),ic)
end
function avformat_find_stream_info(_ic::Ptr,_options::Ptr)
    ic = convert(Ptr{AVFormatContext},_ic)
    options = convert(Ptr{Ptr{AVDictionary}},_options)
    ccall((:avformat_find_stream_info,libavformat),Cint,(Ptr{AVFormatContext},Ptr{Ptr{AVDictionary}}),ic,options)
end
function av_find_program_from_stream(_ic::Ptr,_last::Ptr,_s::Integer)
    ic = convert(Ptr{AVFormatContext},_ic)
    last = convert(Ptr{AVProgram},_last)
    s = int32(_s)
    ccall((:av_find_program_from_stream,libavformat),Ptr{AVProgram},(Ptr{AVFormatContext},Ptr{AVProgram},Cint),ic,last,s)
end
function av_find_best_stream(_ic::Ptr,_type::AVMediaType,_wanted_stream_nb::Integer,_related_stream::Integer,_decoder_ret::Ptr,_flags::Integer)
    ic = convert(Ptr{AVFormatContext},_ic)
    wanted_stream_nb = int32(_wanted_stream_nb)
    related_stream = int32(_related_stream)
    decoder_ret = convert(Ptr{Ptr{AVCodec}},_decoder_ret)
    flags = int32(_flags)
    ccall((:av_find_best_stream,libavformat),Cint,(Ptr{AVFormatContext},AVMediaType,Cint,Cint,Ptr{Ptr{AVCodec}},Cint),ic,_type,wanted_stream_nb,related_stream,decoder_ret,flags)
end
function av_read_packet(_s::Ptr,_pkt::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    pkt = convert(Ptr{AVPacket},_pkt)
    ccall((:av_read_packet,libavformat),Cint,(Ptr{AVFormatContext},Ptr{AVPacket}),s,pkt)
end
function av_read_frame(_s::Ptr,_pkt::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    pkt = convert(Ptr{AVPacket},_pkt)
    ccall((:av_read_frame,libavformat),Cint,(Ptr{AVFormatContext},Ptr{AVPacket}),s,pkt)
end
function av_seek_frame(_s::Ptr,_stream_index::Integer,timestamp::Int64,_flags::Integer)
    s = convert(Ptr{AVFormatContext},_s)
    stream_index = int32(_stream_index)
    flags = int32(_flags)
    ccall((:av_seek_frame,libavformat),Cint,(Ptr{AVFormatContext},Cint,Int64,Cint),s,stream_index,timestamp,flags)
end
function avformat_seek_file(_s::Ptr,_stream_index::Integer,min_ts::Int64,ts::Int64,max_ts::Int64,_flags::Integer)
    s = convert(Ptr{AVFormatContext},_s)
    stream_index = int32(_stream_index)
    flags = int32(_flags)
    ccall((:avformat_seek_file,libavformat),Cint,(Ptr{AVFormatContext},Cint,Int64,Int64,Int64,Cint),s,stream_index,min_ts,ts,max_ts,flags)
end
function av_read_play(_s::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    ccall((:av_read_play,libavformat),Cint,(Ptr{AVFormatContext},),s)
end
function av_read_pause(_s::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    ccall((:av_read_pause,libavformat),Cint,(Ptr{AVFormatContext},),s)
end
function av_close_input_file(_s::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    ccall((:av_close_input_file,libavformat),Void,(Ptr{AVFormatContext},),s)
end
function avformat_close_input(_s::Ptr)
    s = convert(Ptr{Ptr{AVFormatContext}},_s)
    ccall((:avformat_close_input,libavformat),Void,(Ptr{Ptr{AVFormatContext}},),s)
end
function av_new_stream(_s::Ptr,_id::Integer)
    s = convert(Ptr{AVFormatContext},_s)
    id = int32(_id)
    ccall((:av_new_stream,libavformat),Ptr{AVStream},(Ptr{AVFormatContext},Cint),s,id)
end
function av_set_pts_info(_s::Ptr,_pts_wrap_bits::Integer,_pts_num::Integer,_pts_den::Integer)
    s = convert(Ptr{AVStream},_s)
    pts_wrap_bits = int32(_pts_wrap_bits)
    pts_num = uint32(_pts_num)
    pts_den = uint32(_pts_den)
    ccall((:av_set_pts_info,libavformat),Void,(Ptr{AVStream},Cint,Uint32,Uint32),s,pts_wrap_bits,pts_num,pts_den)
end
function avformat_write_header(_s::Ptr,_options::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    options = convert(Ptr{Ptr{AVDictionary}},_options)
    ccall((:avformat_write_header,libavformat),Cint,(Ptr{AVFormatContext},Ptr{Ptr{AVDictionary}}),s,options)
end
function av_write_frame(_s::Ptr,_pkt::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    pkt = convert(Ptr{AVPacket},_pkt)
    ccall((:av_write_frame,libavformat),Cint,(Ptr{AVFormatContext},Ptr{AVPacket}),s,pkt)
end
function av_interleaved_write_frame(_s::Ptr,_pkt::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    pkt = convert(Ptr{AVPacket},_pkt)
    ccall((:av_interleaved_write_frame,libavformat),Cint,(Ptr{AVFormatContext},Ptr{AVPacket}),s,pkt)
end
function av_write_uncoded_frame(_s::Ptr,_stream_index::Integer,_frame::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    stream_index = int32(_stream_index)
    frame = convert(Ptr{AVFrame},_frame)
    ccall((:av_write_uncoded_frame,libavformat),Cint,(Ptr{AVFormatContext},Cint,Ptr{AVFrame}),s,stream_index,frame)
end
function av_interleaved_write_uncoded_frame(_s::Ptr,_stream_index::Integer,_frame::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    stream_index = int32(_stream_index)
    frame = convert(Ptr{AVFrame},_frame)
    ccall((:av_interleaved_write_uncoded_frame,libavformat),Cint,(Ptr{AVFormatContext},Cint,Ptr{AVFrame}),s,stream_index,frame)
end
function av_write_uncoded_frame_query(_s::Ptr,_stream_index::Integer)
    s = convert(Ptr{AVFormatContext},_s)
    stream_index = int32(_stream_index)
    ccall((:av_write_uncoded_frame_query,libavformat),Cint,(Ptr{AVFormatContext},Cint),s,stream_index)
end
function av_write_trailer(_s::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    ccall((:av_write_trailer,libavformat),Cint,(Ptr{AVFormatContext},),s)
end
function av_guess_format(_short_name::Union(Ptr,ByteString),_filename::Union(Ptr,ByteString),_mime_type::Union(Ptr,ByteString))
    short_name = convert(Ptr{Uint8},_short_name)
    filename = convert(Ptr{Uint8},_filename)
    mime_type = convert(Ptr{Uint8},_mime_type)
    ccall((:av_guess_format,libavformat),Ptr{AVOutputFormat},(Ptr{Uint8},Ptr{Uint8},Ptr{Uint8}),short_name,filename,mime_type)
end
function av_guess_codec(_fmt::Ptr,_short_name::Union(Ptr,ByteString),_filename::Union(Ptr,ByteString),_mime_type::Union(Ptr,ByteString),_type::AVMediaType)
    fmt = convert(Ptr{AVOutputFormat},_fmt)
    short_name = convert(Ptr{Uint8},_short_name)
    filename = convert(Ptr{Uint8},_filename)
    mime_type = convert(Ptr{Uint8},_mime_type)
    ccall((:av_guess_codec,libavformat),Cint,(Ptr{AVOutputFormat},Ptr{Uint8},Ptr{Uint8},Ptr{Uint8},AVMediaType),fmt,short_name,filename,mime_type,_type)
end
function av_get_output_timestamp(_s::Ptr,_stream::Integer,_dts::Ptr,_wall::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    stream = int32(_stream)
    dts = convert(Ptr{Int64},_dts)
    wall = convert(Ptr{Int64},_wall)
    ccall((:av_get_output_timestamp,libavformat),Cint,(Ptr{AVFormatContext},Cint,Ptr{Int64},Ptr{Int64}),s,stream,dts,wall)
end
function av_hex_dump(_f::Ptr,_buf::Union(Ptr,ByteString),_size::Integer)
    f = convert(Ptr{FILE},_f)
    buf = convert(Ptr{Uint8},_buf)
    size = int32(_size)
    ccall((:av_hex_dump,libavformat),Void,(Ptr{FILE},Ptr{Uint8},Cint),f,buf,size)
end
function av_hex_dump_log(_avcl::Ptr,_level::Integer,_buf::Union(Ptr,ByteString),_size::Integer)
    avcl = convert(Ptr{Void},_avcl)
    level = int32(_level)
    buf = convert(Ptr{Uint8},_buf)
    size = int32(_size)
    ccall((:av_hex_dump_log,libavformat),Void,(Ptr{Void},Cint,Ptr{Uint8},Cint),avcl,level,buf,size)
end
function av_pkt_dump2(_f::Ptr,_pkt::Ptr,_dump_payload::Integer,_st::Ptr)
    f = convert(Ptr{FILE},_f)
    pkt = convert(Ptr{AVPacket},_pkt)
    dump_payload = int32(_dump_payload)
    st = convert(Ptr{AVStream},_st)
    ccall((:av_pkt_dump2,libavformat),Void,(Ptr{FILE},Ptr{AVPacket},Cint,Ptr{AVStream}),f,pkt,dump_payload,st)
end
function av_pkt_dump_log2(_avcl::Ptr,_level::Integer,_pkt::Ptr,_dump_payload::Integer,_st::Ptr)
    avcl = convert(Ptr{Void},_avcl)
    level = int32(_level)
    pkt = convert(Ptr{AVPacket},_pkt)
    dump_payload = int32(_dump_payload)
    st = convert(Ptr{AVStream},_st)
    ccall((:av_pkt_dump_log2,libavformat),Void,(Ptr{Void},Cint,Ptr{AVPacket},Cint,Ptr{AVStream}),avcl,level,pkt,dump_payload,st)
end
function av_codec_get_id(_tags::Ptr,_tag::Integer)
    tags = convert(Ptr{Ptr{AVCodecTag}},_tags)
    tag = uint32(_tag)
    ccall((:av_codec_get_id,libavformat),Cint,(Ptr{Ptr{AVCodecTag}},Uint32),tags,tag)
end
function av_codec_get_tag(_tags::Ptr,id::AVCodecID)
    tags = convert(Ptr{Ptr{AVCodecTag}},_tags)
    ccall((:av_codec_get_tag,libavformat),Uint32,(Ptr{Ptr{AVCodecTag}},AVCodecID),tags,id)
end
function av_codec_get_tag2(_tags::Ptr,id::AVCodecID,_tag::Ptr)
    tags = convert(Ptr{Ptr{AVCodecTag}},_tags)
    tag = convert(Ptr{Uint32},_tag)
    ccall((:av_codec_get_tag2,libavformat),Cint,(Ptr{Ptr{AVCodecTag}},AVCodecID,Ptr{Uint32}),tags,id,tag)
end
function av_find_default_stream_index(_s::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    ccall((:av_find_default_stream_index,libavformat),Cint,(Ptr{AVFormatContext},),s)
end
function av_index_search_timestamp(_st::Ptr,timestamp::Int64,_flags::Integer)
    st = convert(Ptr{AVStream},_st)
    flags = int32(_flags)
    ccall((:av_index_search_timestamp,libavformat),Cint,(Ptr{AVStream},Int64,Cint),st,timestamp,flags)
end
function av_add_index_entry(_st::Ptr,pos::Int64,timestamp::Int64,_size::Integer,_distance::Integer,_flags::Integer)
    st = convert(Ptr{AVStream},_st)
    size = int32(_size)
    distance = int32(_distance)
    flags = int32(_flags)
    ccall((:av_add_index_entry,libavformat),Cint,(Ptr{AVStream},Int64,Int64,Cint,Cint,Cint),st,pos,timestamp,size,distance,flags)
end
function av_url_split(_proto::Union(Ptr,ByteString),_proto_size::Integer,_authorization::Union(Ptr,ByteString),_authorization_size::Integer,_hostname::Union(Ptr,ByteString),_hostname_size::Integer,_port_ptr::Ptr,_path::Union(Ptr,ByteString),_path_size::Integer,_url::Union(Ptr,ByteString))
    proto = convert(Ptr{Uint8},_proto)
    proto_size = int32(_proto_size)
    authorization = convert(Ptr{Uint8},_authorization)
    authorization_size = int32(_authorization_size)
    hostname = convert(Ptr{Uint8},_hostname)
    hostname_size = int32(_hostname_size)
    port_ptr = convert(Ptr{Cint},_port_ptr)
    path = convert(Ptr{Uint8},_path)
    path_size = int32(_path_size)
    url = convert(Ptr{Uint8},_url)
    ccall((:av_url_split,libavformat),Void,(Ptr{Uint8},Cint,Ptr{Uint8},Cint,Ptr{Uint8},Cint,Ptr{Cint},Ptr{Uint8},Cint,Ptr{Uint8}),proto,proto_size,authorization,authorization_size,hostname,hostname_size,port_ptr,path,path_size,url)
end
function av_dump_format(_ic::Ptr,_index::Integer,_url::Union(Ptr,ByteString),_is_output::Integer)
    ic = convert(Ptr{AVFormatContext},_ic)
    index = int32(_index)
    url = convert(Ptr{Uint8},_url)
    is_output = int32(_is_output)
    ccall((:av_dump_format,libavformat),Void,(Ptr{AVFormatContext},Cint,Ptr{Uint8},Cint),ic,index,url,is_output)
end
function av_get_frame_filename(_buf::Union(Ptr,ByteString),_buf_size::Integer,_path::Union(Ptr,ByteString),_number::Integer)
    buf = convert(Ptr{Uint8},_buf)
    buf_size = int32(_buf_size)
    path = convert(Ptr{Uint8},_path)
    number = int32(_number)
    ccall((:av_get_frame_filename,libavformat),Cint,(Ptr{Uint8},Cint,Ptr{Uint8},Cint),buf,buf_size,path,number)
end
function av_filename_number_test(_filename::Union(Ptr,ByteString))
    filename = convert(Ptr{Uint8},_filename)
    ccall((:av_filename_number_test,libavformat),Cint,(Ptr{Uint8},),filename)
end
function av_sdp_create(_ac::Ptr,_n_files::Integer,_buf::Union(Ptr,ByteString),_size::Integer)
    ac = convert(Ptr{Ptr{AVFormatContext}},_ac)
    n_files = int32(_n_files)
    buf = convert(Ptr{Uint8},_buf)
    size = int32(_size)
    ccall((:av_sdp_create,libavformat),Cint,(Ptr{Ptr{AVFormatContext}},Cint,Ptr{Uint8},Cint),ac,n_files,buf,size)
end
function av_match_ext(_filename::Union(Ptr,ByteString),_extensions::Union(Ptr,ByteString))
    filename = convert(Ptr{Uint8},_filename)
    extensions = convert(Ptr{Uint8},_extensions)
    ccall((:av_match_ext,libavformat),Cint,(Ptr{Uint8},Ptr{Uint8}),filename,extensions)
end
function avformat_query_codec(_ofmt::Ptr,codec_id::AVCodecID,_std_compliance::Integer)
    ofmt = convert(Ptr{AVOutputFormat},_ofmt)
    std_compliance = int32(_std_compliance)
    ccall((:avformat_query_codec,libavformat),Cint,(Ptr{AVOutputFormat},AVCodecID,Cint),ofmt,codec_id,std_compliance)
end
function avformat_get_riff_video_tags()
    ccall((:avformat_get_riff_video_tags,libavformat),Ptr{AVCodecTag},())
end
function avformat_get_riff_audio_tags()
    ccall((:avformat_get_riff_audio_tags,libavformat),Ptr{AVCodecTag},())
end
function avformat_get_mov_video_tags()
    ccall((:avformat_get_mov_video_tags,libavformat),Ptr{AVCodecTag},())
end
function avformat_get_mov_audio_tags()
    ccall((:avformat_get_mov_audio_tags,libavformat),Ptr{AVCodecTag},())
end
function av_guess_sample_aspect_ratio(_format::Ptr,_stream::Ptr,_frame::Ptr)
    format = convert(Ptr{AVFormatContext},_format)
    stream = convert(Ptr{AVStream},_stream)
    frame = convert(Ptr{AVFrame},_frame)
    ccall((:av_guess_sample_aspect_ratio,libavformat),AVRational,(Ptr{AVFormatContext},Ptr{AVStream},Ptr{AVFrame}),format,stream,frame)
end
function av_guess_frame_rate(_ctx::Ptr,_stream::Ptr,_frame::Ptr)
    ctx = convert(Ptr{AVFormatContext},_ctx)
    stream = convert(Ptr{AVStream},_stream)
    frame = convert(Ptr{AVFrame},_frame)
    ccall((:av_guess_frame_rate,libavformat),AVRational,(Ptr{AVFormatContext},Ptr{AVStream},Ptr{AVFrame}),ctx,stream,frame)
end
function avformat_match_stream_specifier(_s::Ptr,_st::Ptr,_spec::Union(Ptr,ByteString))
    s = convert(Ptr{AVFormatContext},_s)
    st = convert(Ptr{AVStream},_st)
    spec = convert(Ptr{Uint8},_spec)
    ccall((:avformat_match_stream_specifier,libavformat),Cint,(Ptr{AVFormatContext},Ptr{AVStream},Ptr{Uint8}),s,st,spec)
end
function avformat_queue_attached_pictures(_s::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    ccall((:avformat_queue_attached_pictures,libavformat),Cint,(Ptr{AVFormatContext},),s)
end

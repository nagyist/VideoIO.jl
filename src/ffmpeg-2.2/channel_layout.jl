# Julia wrapper for header: /usr/include/libavutil/channel_layout.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function av_get_channel_layout(_name::Union(Ptr,ByteString))
    name = convert(Ptr{Uint8},_name)
    ccall((:av_get_channel_layout,libavutil),Uint64,(Ptr{Uint8},),name)
end
function av_get_channel_layout_string(_buf::Union(Ptr,ByteString),_buf_size::Integer,_nb_channels::Integer,channel_layout::Uint64)
    buf = convert(Ptr{Uint8},_buf)
    buf_size = int32(_buf_size)
    nb_channels = int32(_nb_channels)
    ccall((:av_get_channel_layout_string,libavutil),Void,(Ptr{Uint8},Cint,Cint,Uint64),buf,buf_size,nb_channels,channel_layout)
end
function av_bprint_channel_layout(_bp::Ptr,_nb_channels::Integer,channel_layout::Uint64)
    bp = convert(Ptr{AVBPrint},_bp)
    nb_channels = int32(_nb_channels)
    ccall((:av_bprint_channel_layout,libavutil),Void,(Ptr{AVBPrint},Cint,Uint64),bp,nb_channels,channel_layout)
end
function av_get_channel_layout_nb_channels(channel_layout::Uint64)
    ccall((:av_get_channel_layout_nb_channels,libavutil),Cint,(Uint64,),channel_layout)
end
function av_get_default_channel_layout(_nb_channels::Integer)
    nb_channels = int32(_nb_channels)
    ccall((:av_get_default_channel_layout,libavutil),Int64,(Cint,),nb_channels)
end
function av_get_channel_layout_channel_index(channel_layout::Uint64,channel::Uint64)
    ccall((:av_get_channel_layout_channel_index,libavutil),Cint,(Uint64,Uint64),channel_layout,channel)
end
function av_channel_layout_extract_channel(channel_layout::Uint64,_index::Integer)
    index = int32(_index)
    ccall((:av_channel_layout_extract_channel,libavutil),Uint64,(Uint64,Cint),channel_layout,index)
end
function av_get_channel_name(channel::Uint64)
    ccall((:av_get_channel_name,libavutil),Ptr{Uint8},(Uint64,),channel)
end
function av_get_channel_description(channel::Uint64)
    ccall((:av_get_channel_description,libavutil),Ptr{Uint8},(Uint64,),channel)
end
function av_get_standard_channel_layout(_index::Integer,_layout::Ptr,_name::Ptr)
    index = uint32(_index)
    layout = convert(Ptr{Uint64},_layout)
    name = convert(Ptr{Ptr{Uint8}},_name)
    ccall((:av_get_standard_channel_layout,libavutil),Cint,(Uint32,Ptr{Uint64},Ptr{Ptr{Uint8}}),index,layout,name)
end

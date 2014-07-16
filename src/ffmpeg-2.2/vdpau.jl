# Julia wrapper for header: /usr/include/libavcodec/vdpau.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function av_alloc_vdpaucontext()
    ccall((:av_alloc_vdpaucontext,libavcodec),Ptr{AVVDPAUContext},())
end
function av_vdpau_hwaccel_get_render2(_arg1::Ptr)
    arg1 = convert(Ptr{AVVDPAUContext},_arg1)
    ccall((:av_vdpau_hwaccel_get_render2,libavcodec),AVVDPAU_Render2,(Ptr{AVVDPAUContext},),arg1)
end
function av_vdpau_hwaccel_set_render2(_arg1::Ptr,arg2::AVVDPAU_Render2)
    arg1 = convert(Ptr{AVVDPAUContext},_arg1)
    ccall((:av_vdpau_hwaccel_set_render2,libavcodec),Void,(Ptr{AVVDPAUContext},AVVDPAU_Render2),arg1,arg2)
end
function av_vdpau_alloc_context()
    ccall((:av_vdpau_alloc_context,libavcodec),Ptr{AVVDPAUContext},())
end
function av_vdpau_get_profile(_avctx::Ptr,_profile::Ptr)
    avctx = convert(Ptr{AVCodecContext},_avctx)
    profile = convert(Ptr{VdpDecoderProfile},_profile)
    ccall((:av_vdpau_get_profile,libavcodec),Cint,(Ptr{AVCodecContext},Ptr{VdpDecoderProfile}),avctx,profile)
end

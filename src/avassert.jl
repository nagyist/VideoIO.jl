# Julia wrapper for header: /usr/include/libavutil/avassert.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Uint32 avutil_version () libavutil
@c Ptr{Uint8} avutil_configuration () libavutil
@c Ptr{Uint8} avutil_license () libavutil
@c Uint8 av_get_picture_type_char (Void,) libavutil
@c Int32 av_log2_c (Uint32,) libavutil
@c Int32 av_log2_16bit_c (Uint32,) libavutil
@c Int32 av_clip_c (Int32, Int32, Int32) libavutil
@c uint8_t av_clip_uint8_c (Int32,) libavutil
@c int8_t av_clip_int8_c (Int32,) libavutil
@c uint16_t av_clip_uint16_c (Int32,) libavutil
@c int16_t av_clip_int16_c (Int32,) libavutil
@c int32_t av_clipl_int32_c (int64_t,) libavutil
@c Uint32 av_clip_uintp2_c (Int32, Int32) libavutil
@c Float32 av_clipf_c (Float32, Float32, Float32) libavutil
@c Int32 av_ceil_log2_c (Int32,) libavutil
@c Int32 av_popcount_c (uint32_t,) libavutil
@c Int32 av_popcount64_c (uint64_t,) libavutil
@c Ptr{None} av_malloc (size_t,) libavutil
@c Ptr{None} av_realloc (Ptr{None}, size_t) libavutil
@c None av_free (Ptr{None},) libavutil
@c Ptr{None} av_mallocz (size_t,) libavutil
@c Ptr{Uint8} av_strdup (Ptr{Uint8},) libavutil
@c None av_freep (Ptr{None},) libavutil
@c Int32 av_strerror (Int32, Ptr{Uint8}, size_t) libavutil
@c None av_log (Ptr{None}, Int32, Ptr{Uint8}) libavutil
@c None av_vlog (Ptr{None}, Int32, Ptr{Uint8}, Ptr{__va_list_tag}) libavutil
@c Int32 av_log_get_level () libavutil
@c None av_log_set_level (Int32,) libavutil
@c None av_log_set_callback (Ptr{Void},) libavutil
@c None av_log_default_callback (Ptr{None}, Int32, Ptr{Uint8}, Ptr{__va_list_tag}) libavutil
@c Ptr{Uint8} av_default_item_name (Ptr{None},) libavutil
@c None av_log_set_flags (Int32,) libavutil


# Julia wrapper for header: /usr/include/libavutil/mathematics.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Int32 av_cmp_q (AVRational, AVRational) libavutil
@c Float64 av_q2d (AVRational,) libavutil
@c Int32 av_reduce (Ptr{Int32}, Ptr{Int32}, int64_t, int64_t, int64_t) libavutil
@c AVRational av_mul_q (AVRational, AVRational) libavutil
@c AVRational av_div_q (AVRational, AVRational) libavutil
@c AVRational av_add_q (AVRational, AVRational) libavutil
@c AVRational av_sub_q (AVRational, AVRational) libavutil
@c AVRational av_d2q (Float64, Int32) libavutil
@c Int32 av_nearer_q (AVRational, AVRational, AVRational) libavutil
@c Int32 av_find_nearest_q_idx (AVRational, Ptr{AVRational}) libavutil
@c int64_t av_gcd (int64_t, int64_t) libavutil
@c int64_t av_rescale (int64_t, int64_t, int64_t) libavutil
@c int64_t av_rescale_rnd (int64_t, int64_t, int64_t, Void) libavutil
@c int64_t av_rescale_q (int64_t, AVRational, AVRational) libavutil
@c Int32 av_compare_ts (int64_t, AVRational, int64_t, AVRational) libavutil
@c int64_t av_compare_mod (uint64_t, uint64_t, uint64_t) libavutil


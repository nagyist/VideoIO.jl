# Julia wrapper for header: /usr/include/libavutil/mathematics.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function av_gcd(a::Int64,b::Int64)
    ccall((:av_gcd,libavutil),Int64,(Int64,Int64),a,b)
end
function av_rescale(a::Int64,b::Int64,c::Int64)
    ccall((:av_rescale,libavutil),Int64,(Int64,Int64,Int64),a,b,c)
end
function av_rescale_rnd(a::Int64,b::Int64,c::Int64,arg1::AVRounding)
    ccall((:av_rescale_rnd,libavutil),Int64,(Int64,Int64,Int64,AVRounding),a,b,c,arg1)
end
function av_rescale_q(a::Int64,bq::AVRational,cq::AVRational)
    ccall((:av_rescale_q,libavutil),Int64,(Int64,AVRational,AVRational),a,bq,cq)
end
function av_rescale_q_rnd(a::Int64,bq::AVRational,cq::AVRational,arg1::AVRounding)
    ccall((:av_rescale_q_rnd,libavutil),Int64,(Int64,AVRational,AVRational,AVRounding),a,bq,cq,arg1)
end
function av_compare_ts(ts_a::Int64,tb_a::AVRational,ts_b::Int64,tb_b::AVRational)
    ccall((:av_compare_ts,libavutil),Cint,(Int64,AVRational,Int64,AVRational),ts_a,tb_a,ts_b,tb_b)
end
function av_compare_mod(a::Uint64,b::Uint64,mod::Uint64)
    ccall((:av_compare_mod,libavutil),Int64,(Uint64,Uint64,Uint64),a,b,mod)
end
function av_rescale_delta(in_tb::AVRational,in_ts::Int64,fs_tb::AVRational,_duration::Integer,_last::Ptr,out_tb::AVRational)
    duration = int32(_duration)
    last = convert(Ptr{Int64},_last)
    ccall((:av_rescale_delta,libavutil),Int64,(AVRational,Int64,AVRational,Cint,Ptr{Int64},AVRational),in_tb,in_ts,fs_tb,duration,last,out_tb)
end
function av_add_stable(ts_tb::AVRational,ts::Int64,inc_tb::AVRational,inc::Int64)
    ccall((:av_add_stable,libavutil),Int64,(AVRational,Int64,AVRational,Int64),ts_tb,ts,inc_tb,inc)
end

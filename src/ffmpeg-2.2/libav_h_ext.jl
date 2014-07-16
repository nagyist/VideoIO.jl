### Libraries
const libavutil = :libavutil
const libavformat = :libavformat
const libavcodec = :libavcodec
const libswscale = :libswscale

### Aliases
typealias FILE Void

###
include("exports.jl")
include("libav_h.jl")
include("avutil.jl")
include("pixdesc.jl")



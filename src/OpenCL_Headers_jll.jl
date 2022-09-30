# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule OpenCL_Headers_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("OpenCL_Headers")
JLLWrappers.@generate_main_file("OpenCL_Headers", UUID("a7aa756b-2b7f-562a-9e9d-e94076c5c8ee"))
end  # module OpenCL_Headers_jll

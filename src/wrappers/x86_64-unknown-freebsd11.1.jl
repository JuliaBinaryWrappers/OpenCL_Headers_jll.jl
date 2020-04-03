# Autogenerated wrapper script for OpenCL_Headers_jll for x86_64-unknown-freebsd11.1
export cl_h

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `cl_h`
const cl_h_splitpath = ["include", "CL", "cl.h"]

# This will be filled out by __init__() for all products, as it must be done at runtime
cl_h_path = ""

# cl_h-specific global declaration
# This will be filled out by __init__()
cl_h = ""


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"OpenCL_Headers")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    global cl_h_path = normpath(joinpath(artifact_dir, cl_h_splitpath...))

    global cl_h = cl_h_path
    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()


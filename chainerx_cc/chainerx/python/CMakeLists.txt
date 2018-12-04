add_library(_core.so MODULE
    core_module.cc
    array.cc
    array_index.cc
    axes.cc
    backend.cc
    backward.cc
    backprop_mode.cc
    chainer_interop.cc
    check_backward.cc
    context.cc
    device.cc
    dtype.cc
    error.cc
    graph.cc
    routines.cc
    scalar.cc
    shape.cc
    slice.cc
    strides.cc
    testing/device_buffer.cc
    testing/testing_module.cc
    )
if(APPLE)
  set(just_symbol_option -rpath)
else()
  set(just_symbol_option -R)
endif()
target_link_libraries(_core.so
    PRIVATE
    "-Wl,-flto" pybind11::module
    "-Wl,${just_symbol_option},'$ORIGIN/.'" chainerx)
set_target_properties(_core.so
    PROPERTIES
    PREFIX "${PYTHON_MODULE_PREFIX}"
    SUFFIX "${PYTHON_MODULE_SUFFIX}")

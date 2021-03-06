cmake_minimum_required(VERSION 3.5)
project(mav_control_rw)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)
include_directories(mav_control_interface/include)
include_directories(mav_control_interface/include/mav_control_interface)
include_directories(mav_control_interface/src)
include_directories(mav_disturbance_observer/include)
include_directories(mav_disturbance_observer/include/mav_disturbance_observer)
include_directories(mav_linear_mpc/include)
include_directories(mav_linear_mpc/include/mav_linear_mpc)
include_directories(mav_linear_mpc/lib)
include_directories(mav_lowlevel_attitude_controller/include)
include_directories(mav_lowlevel_attitude_controller/include/mav_lowlevel_attitude_controller)
include_directories(mav_nonlinear_mpc/include)
include_directories(mav_nonlinear_mpc/include/mav_nonlinear_mpc)
include_directories(mav_nonlinear_mpc/solver)
include_directories(mav_nonlinear_mpc/solver/qpoases/INCLUDE)
include_directories(mav_nonlinear_mpc/solver/qpoases/INCLUDE/EXTRAS)
include_directories(mav_nonlinear_mpc/solver_made_from_cpp/qpoases/INCLUDE)
include_directories(mav_nonlinear_mpc/solver_made_from_cpp/qpoases/INCLUDE/EXTRAS)

add_executable(mav_control_rw
        mav_control_interface/include/mav_control_interface/deadzone.h
        mav_control_interface/include/mav_control_interface/mav_control_interface.h
        mav_control_interface/include/mav_control_interface/mpc_queue.h
        mav_control_interface/include/mav_control_interface/position_controller_interface.h
        mav_control_interface/include/mav_control_interface/rc_interface.h
        mav_control_interface/include/mav_control_interface/rc_interface_aci.h
        mav_control_interface/resource/mav_state_machine.svg
        mav_control_interface/resource/state_machine.pdf
        mav_control_interface/src/mav_control_interface.cpp
        mav_control_interface/src/mav_control_interface_impl.cpp
        mav_control_interface/src/mav_control_interface_impl.h
        mav_control_interface/src/mpc_queue.cpp
        mav_control_interface/src/parameters.cpp
        mav_control_interface/src/parameters.h
        mav_control_interface/src/position_controller_interface.cpp
        mav_control_interface/src/rc_interface.cpp
        mav_control_interface/src/rc_interface_aci.cpp
        mav_control_interface/src/state_machine.cpp
        mav_control_interface/src/state_machine.h
        mav_control_interface/src/test_node.cpp
        mav_control_interface/CMakeLists.txt
        mav_control_interface/LICENSE
        mav_control_interface/package.xml
        mav_control_interface/README.md
        mav_disturbance_observer/cfg/KFDisturbanceObserver.cfg
        mav_disturbance_observer/include/mav_disturbance_observer/KF_disturbance_observer.h
        mav_disturbance_observer/msg/ObserverState.msg
        mav_disturbance_observer/resources/disturbance_observer_firefly.yaml
        mav_disturbance_observer/resources/disturbance_observer_hummingbird.yaml
        mav_disturbance_observer/resources/disturbance_observer_neo11.yaml
        mav_disturbance_observer/src/KF_disturbance_observer.cpp
        mav_disturbance_observer/CMakeLists.txt
        mav_disturbance_observer/package.xml
        mav_disturbance_observer/README.md
        mav_linear_mpc/cfg/LinearMPC.cfg
        mav_linear_mpc/include/mav_linear_mpc/linear_mpc.h
        mav_linear_mpc/include/mav_linear_mpc/linear_mpc_node.h
        mav_linear_mpc/include/mav_linear_mpc/steady_state_calculation.h
        mav_linear_mpc/launch/mav_linear_mpc.launch
        mav_linear_mpc/launch/mav_linear_mpc_sim.launch
        mav_linear_mpc/launch/mav_linear_mpc_sim_msf.launch
        mav_linear_mpc/lib/ldl.c
        mav_linear_mpc/lib/matrix_support.c
        mav_linear_mpc/lib/solver.c
        mav_linear_mpc/lib/solver.h
        mav_linear_mpc/lib/util.c
        mav_linear_mpc/lib/variables_definition.c
        mav_linear_mpc/resources/linear_mpc_firefly.yaml
        mav_linear_mpc/resources/linear_mpc_hummingbird.yaml
        mav_linear_mpc/resources/msf_parameters_sim.yaml
        mav_linear_mpc/src/linear_mpc.cpp
        mav_linear_mpc/src/linear_mpc_node.cpp
        mav_linear_mpc/src/steady_state_calculation.cpp
        mav_linear_mpc/CMakeLists.txt
        mav_linear_mpc/package.xml
        mav_lowlevel_attitude_controller/cfg/PIDAttitude.cfg
        mav_lowlevel_attitude_controller/include/mav_lowlevel_attitude_controller/PID_attitude_controller.h
        mav_lowlevel_attitude_controller/include/mav_lowlevel_attitude_controller/PID_attitude_controller_node.h
        mav_lowlevel_attitude_controller/launch/mav_lowlevel_controller.launch
        mav_lowlevel_attitude_controller/launch/PID_attitude_controller.launch
        mav_lowlevel_attitude_controller/resources/PID_attitude_firefly.yaml
        mav_lowlevel_attitude_controller/resources/PID_attitude_hummingbird.yaml
        mav_lowlevel_attitude_controller/resources/PID_attitude_neo11.yaml
        mav_lowlevel_attitude_controller/src/PID_attitude_controller.cc
        mav_lowlevel_attitude_controller/src/PID_attitude_controller_node.cc
        mav_lowlevel_attitude_controller/CMakeLists.txt
        mav_lowlevel_attitude_controller/package.xml
        mav_lowlevel_attitude_controller/README.md
        mav_nonlinear_mpc/cfg/NonLinearMPC.cfg
        mav_nonlinear_mpc/cmake/FindOpenBLAS.cmake
        mav_nonlinear_mpc/include/mav_nonlinear_mpc/nonlinear_mpc.h
        mav_nonlinear_mpc/include/mav_nonlinear_mpc/nonlinear_mpc_node.h
        mav_nonlinear_mpc/launch/mav_nonlinear_mpc.launch
        mav_nonlinear_mpc/launch/mav_nonlinear_mpc_sim.launch
        mav_nonlinear_mpc/resources/nonlinear_mpc_firefly.yaml
        mav_nonlinear_mpc/resources/nonlinear_mpc_hummingbird.yaml
        mav_nonlinear_mpc/resources/nonlinear_mpc_neo11.yaml
        mav_nonlinear_mpc/solver/qpoases/EXAMPLES/example1.cpp
        mav_nonlinear_mpc/solver/qpoases/EXAMPLES/example1b.cpp
        mav_nonlinear_mpc/solver/qpoases/INCLUDE/EXTRAS/SolutionAnalysis.hpp
        mav_nonlinear_mpc/solver/qpoases/INCLUDE/Bounds.hpp
        mav_nonlinear_mpc/solver/qpoases/INCLUDE/Constants.hpp
        mav_nonlinear_mpc/solver/qpoases/INCLUDE/Constraints.hpp
        mav_nonlinear_mpc/solver/qpoases/INCLUDE/CyclingManager.hpp
        mav_nonlinear_mpc/solver/qpoases/INCLUDE/Indexlist.hpp
        mav_nonlinear_mpc/solver/qpoases/INCLUDE/MessageHandling.hpp
        mav_nonlinear_mpc/solver/qpoases/INCLUDE/QProblem.hpp
        mav_nonlinear_mpc/solver/qpoases/INCLUDE/QProblemB.hpp
        mav_nonlinear_mpc/solver/qpoases/INCLUDE/SubjectTo.hpp
        mav_nonlinear_mpc/solver/qpoases/INCLUDE/Types.hpp
        mav_nonlinear_mpc/solver/qpoases/INCLUDE/Utils.hpp
        mav_nonlinear_mpc/solver/qpoases/SRC/EXTRAS/SolutionAnalysis.cpp
        mav_nonlinear_mpc/solver/qpoases/SRC/Bounds.cpp
        mav_nonlinear_mpc/solver/qpoases/SRC/Bounds.ipp
        mav_nonlinear_mpc/solver/qpoases/SRC/Constraints.cpp
        mav_nonlinear_mpc/solver/qpoases/SRC/Constraints.ipp
        mav_nonlinear_mpc/solver/qpoases/SRC/CyclingManager.cpp
        mav_nonlinear_mpc/solver/qpoases/SRC/CyclingManager.ipp
        mav_nonlinear_mpc/solver/qpoases/SRC/Indexlist.cpp
        mav_nonlinear_mpc/solver/qpoases/SRC/Indexlist.ipp
        mav_nonlinear_mpc/solver/qpoases/SRC/MessageHandling.cpp
        mav_nonlinear_mpc/solver/qpoases/SRC/MessageHandling.ipp
        mav_nonlinear_mpc/solver/qpoases/SRC/QProblem.cpp
        mav_nonlinear_mpc/solver/qpoases/SRC/QProblem.ipp
        mav_nonlinear_mpc/solver/qpoases/SRC/QProblemB.cpp
        mav_nonlinear_mpc/solver/qpoases/SRC/QProblemB.ipp
        mav_nonlinear_mpc/solver/qpoases/SRC/SubjectTo.cpp
        mav_nonlinear_mpc/solver/qpoases/SRC/SubjectTo.ipp
        mav_nonlinear_mpc/solver/qpoases/SRC/Utils.cpp
        mav_nonlinear_mpc/solver/qpoases/SRC/Utils.ipp
        mav_nonlinear_mpc/solver/qpoases/LICENSE.txt
        mav_nonlinear_mpc/solver/qpoases/README.txt
        mav_nonlinear_mpc/solver/qpoases/VERSIONS.txt
        mav_nonlinear_mpc/solver/acado_auxiliary_functions.c
        mav_nonlinear_mpc/solver/acado_auxiliary_functions.h
        mav_nonlinear_mpc/solver/acado_common.h
        mav_nonlinear_mpc/solver/acado_integrator.c
        mav_nonlinear_mpc/solver/acado_qpoases_interface.cpp
        mav_nonlinear_mpc/solver/acado_qpoases_interface.hpp
        mav_nonlinear_mpc/solver/acado_solver.c
        mav_nonlinear_mpc/solver/acado_solver_mex.c
        mav_nonlinear_mpc/solver/make_acado_solver.m
        mav_nonlinear_mpc/solver/Makefile
        mav_nonlinear_mpc/solver/nmpc_solver_setup.m
        mav_nonlinear_mpc/solver/test.c
        mav_nonlinear_mpc/solver_made_from_cpp/cmake/FindACADO.cmake
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/EXAMPLES/example1.cpp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/EXAMPLES/example1b.cpp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/INCLUDE/EXTRAS/SolutionAnalysis.hpp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/INCLUDE/Bounds.hpp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/INCLUDE/Constants.hpp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/INCLUDE/Constraints.hpp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/INCLUDE/CyclingManager.hpp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/INCLUDE/Indexlist.hpp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/INCLUDE/MessageHandling.hpp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/INCLUDE/QProblem.hpp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/INCLUDE/QProblemB.hpp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/INCLUDE/SubjectTo.hpp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/INCLUDE/Types.hpp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/INCLUDE/Utils.hpp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/SRC/EXTRAS/SolutionAnalysis.cpp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/SRC/Bounds.cpp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/SRC/Bounds.ipp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/SRC/Constraints.cpp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/SRC/Constraints.ipp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/SRC/CyclingManager.cpp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/SRC/CyclingManager.ipp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/SRC/Indexlist.cpp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/SRC/Indexlist.ipp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/SRC/MessageHandling.cpp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/SRC/MessageHandling.ipp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/SRC/QProblem.cpp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/SRC/QProblem.ipp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/SRC/QProblemB.cpp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/SRC/QProblemB.ipp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/SRC/SubjectTo.cpp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/SRC/SubjectTo.ipp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/SRC/Utils.cpp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/SRC/Utils.ipp
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/LICENSE.txt
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/README.txt
        mav_nonlinear_mpc/solver_made_from_cpp/qpoases/VERSIONS.txt
        mav_nonlinear_mpc/solver_made_from_cpp/CMakeLists.txt
        mav_nonlinear_mpc/solver_made_from_cpp/nmpc_solver_setup.cpp
        mav_nonlinear_mpc/solver_made_from_cpp/README.md
        mav_nonlinear_mpc/src/nonlinear_mpc.cc
        mav_nonlinear_mpc/src/nonlinear_mpc_node.cc
        mav_nonlinear_mpc/CMakeLists.txt
        mav_nonlinear_mpc/package.xml
        LICENSE
        README.md)

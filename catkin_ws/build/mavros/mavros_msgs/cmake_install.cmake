# Install script for directory: /home/work/catkin_ws/src/mavros/mavros_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/work/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavros_msgs/msg" TYPE FILE FILES
    "/home/work/catkin_ws/src/mavros/mavros_msgs/msg/ActuatorControl.msg"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/msg/Altitude.msg"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/msg/AttitudeTarget.msg"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/msg/BatteryStatus.msg"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/msg/CamIMUStamp.msg"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/msg/CommandCode.msg"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/msg/ExtendedState.msg"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/msg/FileEntry.msg"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/msg/GlobalPositionTarget.msg"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/msg/HilControls.msg"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/msg/HomePosition.msg"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/msg/ManualControl.msg"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/msg/Mavlink.msg"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/msg/OpticalFlowRad.msg"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/msg/OverrideRCIn.msg"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/msg/ParamValue.msg"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/msg/PositionTarget.msg"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/msg/RCIn.msg"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/msg/RCOut.msg"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/msg/RadioStatus.msg"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/msg/State.msg"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/msg/VFR_HUD.msg"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/msg/Vibration.msg"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/msg/Waypoint.msg"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/msg/WaypointList.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavros_msgs/srv" TYPE FILE FILES
    "/home/work/catkin_ws/src/mavros/mavros_msgs/srv/CommandBool.srv"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/srv/CommandHome.srv"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/srv/CommandInt.srv"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/srv/CommandLong.srv"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/srv/CommandTOL.srv"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/srv/CommandTriggerControl.srv"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/srv/FileChecksum.srv"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/srv/FileClose.srv"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/srv/FileList.srv"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/srv/FileMakeDir.srv"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/srv/FileOpen.srv"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/srv/FileRead.srv"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/srv/FileRemove.srv"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/srv/FileRemoveDir.srv"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/srv/FileRename.srv"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/srv/FileTruncate.srv"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/srv/FileWrite.srv"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/srv/ParamGet.srv"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/srv/ParamPull.srv"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/srv/ParamPush.srv"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/srv/ParamSet.srv"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/srv/SetMode.srv"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/srv/StreamRate.srv"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/srv/WaypointClear.srv"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/srv/WaypointPull.srv"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/srv/WaypointPush.srv"
    "/home/work/catkin_ws/src/mavros/mavros_msgs/srv/WaypointSetCurrent.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavros_msgs/cmake" TYPE FILE FILES "/home/work/catkin_ws/build/mavros/mavros_msgs/catkin_generated/installspace/mavros_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/work/catkin_ws/devel/include/mavros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/work/catkin_ws/devel/share/common-lisp/ros/mavros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/work/catkin_ws/devel/lib/python2.7/dist-packages/mavros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/work/catkin_ws/devel/lib/python2.7/dist-packages/mavros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/work/catkin_ws/build/mavros/mavros_msgs/catkin_generated/installspace/mavros_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavros_msgs/cmake" TYPE FILE FILES "/home/work/catkin_ws/build/mavros/mavros_msgs/catkin_generated/installspace/mavros_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavros_msgs/cmake" TYPE FILE FILES
    "/home/work/catkin_ws/build/mavros/mavros_msgs/catkin_generated/installspace/mavros_msgsConfig.cmake"
    "/home/work/catkin_ws/build/mavros/mavros_msgs/catkin_generated/installspace/mavros_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavros_msgs" TYPE FILE FILES "/home/work/catkin_ws/src/mavros/mavros_msgs/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mavros_msgs" TYPE DIRECTORY FILES "/home/work/catkin_ws/src/mavros/mavros_msgs/include/mavros_msgs/" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()


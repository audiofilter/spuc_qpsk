CMAKE_MINIMUM_REQUIRED(VERSION 2.8)
IF(NOT CMAKE_BUILD_TYPE)
  SET(CMAKE_BUILD_TYPE "DEBUG")
ENDIF()
PROJECT("spuc qpsk examples")
message("Project qpsk_examples")

# add various defines to get this to work by default
ADD_DEFINITIONS(" -fPIC -DSPUCBOOST -DNOFREQ -DNOTIME -DNOFREQC -DNORAND ")

INCLUDE_DIRECTORIES(".." "../spuclib/")
LINK_DIRECTORIES(${CMAKE_CURRENT_LIST_DIR}/../spuclib/build)

ADD_EXECUTABLE(qpsk qpsk_main.cpp)
TARGET_LINK_LIBRARIES(qpsk spuc spuc_filt spuc_types)

ADD_EXECUTABLE(qpsk_v qpsk_variable_main.cpp)
TARGET_LINK_LIBRARIES(qpsk_v spuc spuc_filt spuc_types)

set(EXECUTABLE_OUTPUT_PATH ..)

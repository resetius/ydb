# Generated by devtools/yamaker.

INCLUDE(${ARCADIA_ROOT}/build/platform/clang/arch.cmake)

LIBRARY(clang_rt.scudo_standalone${CLANG_RT_SUFFIX})

VERSION(14.0.6)

LICENSE(
    Apache-2.0 AND
    Apache-2.0 WITH LLVM-exception AND
    MIT AND
    NCSA
)

LICENSE_TEXTS(.yandex_meta/licenses.list.txt)

SUBSCRIBER(g:cpp-contrib)

ADDINCL(
    contrib/libs/clang14-rt/lib
    contrib/libs/clang14-rt/lib/scudo/standalone/include
)

NO_COMPILER_WARNINGS()

NO_UTIL()

NO_SANITIZE()

CFLAGS(
    -DGWP_ASAN_HOOKS
    -fcommon
    -fno-builtin
    -fno-exceptions
    -fno-lto
    -fno-omit-frame-pointer
    -fno-rtti
    -fno-stack-protector
    -fomit-frame-pointer
    -funwind-tables
    -fvisibility=hidden
)

SRCDIR(contrib/libs/clang14-rt/lib)

SRCS(
    gwp_asan/common.cpp
    gwp_asan/crash_handler.cpp
    gwp_asan/guarded_pool_allocator.cpp
    gwp_asan/optional/backtrace_linux_libc.cpp
    gwp_asan/optional/options_parser.cpp
    gwp_asan/optional/segv_handler_posix.cpp
    gwp_asan/platform_specific/common_posix.cpp
    gwp_asan/platform_specific/guarded_pool_allocator_posix.cpp
    gwp_asan/platform_specific/mutex_posix.cpp
    gwp_asan/platform_specific/utilities_posix.cpp
    gwp_asan/stack_trace_compressor.cpp
    scudo/standalone/checksum.cpp
    scudo/standalone/common.cpp
    scudo/standalone/crc32_hw.cpp
    scudo/standalone/flags.cpp
    scudo/standalone/flags_parser.cpp
    scudo/standalone/fuchsia.cpp
    scudo/standalone/linux.cpp
    scudo/standalone/release.cpp
    scudo/standalone/report.cpp
    scudo/standalone/string_utils.cpp
    scudo/standalone/wrappers_c.cpp
)

END()

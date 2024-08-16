# Generated by devtools/yamaker.

INCLUDE(${ARCADIA_ROOT}/build/platform/clang/arch.cmake)

LIBRARY(clang_rt.memprof${CLANG_RT_SUFFIX})

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
    contrib/libs/clang14-rt/include
    contrib/libs/clang14-rt/lib
)

NO_COMPILER_WARNINGS()

NO_UTIL()

NO_SANITIZE()

CFLAGS(
    -DHAVE_RPC_XDR_H=0
    -fcommon
    -fno-builtin
    -fno-exceptions
    -fno-lto
    -fno-rtti
    -fno-stack-protector
    -fomit-frame-pointer
    -funwind-tables
    -fvisibility=hidden
)

SRCDIR(contrib/libs/clang14-rt/lib)

SRCS(
    interception/interception_linux.cpp
    interception/interception_mac.cpp
    interception/interception_type_test.cpp
    interception/interception_win.cpp
    memprof/memprof_allocator.cpp
    memprof/memprof_descriptions.cpp
    memprof/memprof_flags.cpp
    memprof/memprof_interceptors.cpp
    memprof/memprof_interceptors_memintrinsics.cpp
    memprof/memprof_linux.cpp
    memprof/memprof_malloc_linux.cpp
    memprof/memprof_mibmap.cpp
    memprof/memprof_posix.cpp
    memprof/memprof_preinit.cpp
    memprof/memprof_rawprofile.cpp
    memprof/memprof_rtl.cpp
    memprof/memprof_shadow_setup.cpp
    memprof/memprof_stack.cpp
    memprof/memprof_stats.cpp
    memprof/memprof_thread.cpp
    sanitizer_common/sancov_flags.cpp
    sanitizer_common/sanitizer_allocator.cpp
    sanitizer_common/sanitizer_allocator_checks.cpp
    sanitizer_common/sanitizer_allocator_report.cpp
    sanitizer_common/sanitizer_chained_origin_depot.cpp
    sanitizer_common/sanitizer_common.cpp
    sanitizer_common/sanitizer_common_libcdep.cpp
    sanitizer_common/sanitizer_coverage_fuchsia.cpp
    sanitizer_common/sanitizer_coverage_libcdep_new.cpp
    sanitizer_common/sanitizer_coverage_win_sections.cpp
    sanitizer_common/sanitizer_deadlock_detector1.cpp
    sanitizer_common/sanitizer_deadlock_detector2.cpp
    sanitizer_common/sanitizer_errno.cpp
    sanitizer_common/sanitizer_file.cpp
    sanitizer_common/sanitizer_flag_parser.cpp
    sanitizer_common/sanitizer_flags.cpp
    sanitizer_common/sanitizer_fuchsia.cpp
    sanitizer_common/sanitizer_libc.cpp
    sanitizer_common/sanitizer_libignore.cpp
    sanitizer_common/sanitizer_linux.cpp
    sanitizer_common/sanitizer_linux_libcdep.cpp
    sanitizer_common/sanitizer_linux_s390.cpp
    sanitizer_common/sanitizer_mac.cpp
    sanitizer_common/sanitizer_mac_libcdep.cpp
    sanitizer_common/sanitizer_mutex.cpp
    sanitizer_common/sanitizer_netbsd.cpp
    sanitizer_common/sanitizer_platform_limits_freebsd.cpp
    sanitizer_common/sanitizer_platform_limits_linux.cpp
    sanitizer_common/sanitizer_platform_limits_netbsd.cpp
    sanitizer_common/sanitizer_platform_limits_posix.cpp
    sanitizer_common/sanitizer_platform_limits_solaris.cpp
    sanitizer_common/sanitizer_posix.cpp
    sanitizer_common/sanitizer_posix_libcdep.cpp
    sanitizer_common/sanitizer_printf.cpp
    sanitizer_common/sanitizer_procmaps_bsd.cpp
    sanitizer_common/sanitizer_procmaps_common.cpp
    sanitizer_common/sanitizer_procmaps_fuchsia.cpp
    sanitizer_common/sanitizer_procmaps_linux.cpp
    sanitizer_common/sanitizer_procmaps_mac.cpp
    sanitizer_common/sanitizer_procmaps_solaris.cpp
    sanitizer_common/sanitizer_solaris.cpp
    sanitizer_common/sanitizer_stack_store.cpp
    sanitizer_common/sanitizer_stackdepot.cpp
    sanitizer_common/sanitizer_stacktrace.cpp
    sanitizer_common/sanitizer_stacktrace_libcdep.cpp
    sanitizer_common/sanitizer_stacktrace_printer.cpp
    sanitizer_common/sanitizer_stacktrace_sparc.cpp
    sanitizer_common/sanitizer_stoptheworld_fuchsia.cpp
    sanitizer_common/sanitizer_stoptheworld_linux_libcdep.cpp
    sanitizer_common/sanitizer_stoptheworld_mac.cpp
    sanitizer_common/sanitizer_stoptheworld_netbsd_libcdep.cpp
    sanitizer_common/sanitizer_stoptheworld_win.cpp
    sanitizer_common/sanitizer_suppressions.cpp
    sanitizer_common/sanitizer_symbolizer.cpp
    sanitizer_common/sanitizer_symbolizer_libbacktrace.cpp
    sanitizer_common/sanitizer_symbolizer_libcdep.cpp
    sanitizer_common/sanitizer_symbolizer_mac.cpp
    sanitizer_common/sanitizer_symbolizer_markup.cpp
    sanitizer_common/sanitizer_symbolizer_posix_libcdep.cpp
    sanitizer_common/sanitizer_symbolizer_report.cpp
    sanitizer_common/sanitizer_symbolizer_win.cpp
    sanitizer_common/sanitizer_termination.cpp
    sanitizer_common/sanitizer_thread_registry.cpp
    sanitizer_common/sanitizer_tls_get_addr.cpp
    sanitizer_common/sanitizer_type_traits.cpp
    sanitizer_common/sanitizer_unwind_linux_libcdep.cpp
    sanitizer_common/sanitizer_unwind_win.cpp
    sanitizer_common/sanitizer_win.cpp
)

END()

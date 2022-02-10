# Generated by devtools/yamaker.

LIBRARY()

OWNER(
    orivej
    g:cpp-contrib
)

LICENSE(Apache-2.0 WITH LLVM-exception)

LICENSE_TEXTS(.yandex_meta/licenses.list.txt)

PEERDIR(
    contrib/libs/llvm12
)

ADDINCL(
    contrib/libs/llvm12/lib/Demangle
)

NO_COMPILER_WARNINGS()

NO_UTIL()

SRCS(
    Demangle.cpp
    ItaniumDemangle.cpp
    MicrosoftDemangle.cpp
    MicrosoftDemangleNodes.cpp
)

END()

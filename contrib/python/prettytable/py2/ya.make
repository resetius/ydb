# Generated by devtools/yamaker (pypi).

PY2_LIBRARY()

VERSION(1.0.1)

LICENSE(BSD-3-Clause)

PEERDIR(
    contrib/python/setuptools
    contrib/python/wcwidth
)

NO_LINT()

PY_SRCS(
    TOP_LEVEL
    prettytable.py
)

RESOURCE_FILES(
    PREFIX contrib/python/prettytable/py2/
    .dist-info/METADATA
    .dist-info/top_level.txt
)

END()

RECURSE_FOR_TESTS(
    tests
)

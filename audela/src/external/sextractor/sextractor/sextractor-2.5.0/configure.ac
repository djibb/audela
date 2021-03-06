# configure.in for SExtractor
# (C) E.Bertin 2002-2006
# Process this file with autoconf to produce a configure script.
# First, disable the annoying config.cache
define([AC_CACHE_LOAD],)
define([AC_CACHE_SAVE],)

# This is your standard Bertin source code...
AC_INIT(sextractor, 2.5.0, [bertin@iap.fr])
AC_CONFIG_SRCDIR(src/makeit.c)
AC_CONFIG_AUX_DIR(autoconf)
AM_CONFIG_HEADER(config.h)
AM_INIT_AUTOMAKE
date=`date +%Y-%m-%d`
date2=`date +"%a %b %d %Y"`
date3=`date +"%B %Y"`
AC_DEFINE_UNQUOTED(DATE, "$date", [Archive creation date])
AC_SUBST(PACKAGER, "Emmanuel Bertin")
AC_SUBST(DATE2, "$date2")
AC_SUBST(DATE3, "$date3")

# Include macros
sinclude(acx_prog_cc_optim.m4)

# Display pakage and version number
AC_MSG_RESULT([*********** Configuring:  $PACKAGE $VERSION ($date) **********])

# Initialize the list of compilers to consider
cclist="cc gcc"

# Backup and reset the input CFLAGS and LDFLAGS
mycflags="$CFLAGS"
CFLAGS=""
myldflags="$LDFLAGS"
LDFLAGS=""

# Provide special option for the Linux Intel C compiler
AC_MSG_CHECKING([for Linux Intel C compiler mode])
AC_ARG_ENABLE(icc,
	[AC_HELP_STRING([--enable-icc],
	[Enable special mode for compilation with the Intel compiler \
(off by default)])],
        use_icc="yes"
        cclist="icc $cclist"
	AC_MSG_RESULT([yes]),
        use_icc="no"
	AC_MSG_RESULT([no]))

# Provide special option for gprof profiling
AC_MSG_CHECKING([for gprof profiler mode])
AC_ARG_ENABLE(gprof,
	[AC_HELP_STRING([--enable-gprof],
	[Enable special mode for compilation with the gprof profiler \
(off by default)])],
        use_gprof="yes"
	AC_MSG_RESULT([yes]),
        use_gprof="no"
	AC_MSG_RESULT([no]))

# Enable static linking
AC_MSG_CHECKING([static linking])
AC_ARG_ENABLE(static,
	[AC_HELP_STRING([--enable-static],
	[Enable static linking \
(off by default)])],
        use_static="yes"
	AC_MSG_RESULT([yes]),
        use_static="no"
	AC_MSG_RESULT([no]))

# Checks for programs.
# GCC is chosen last because it is likely to yield less optimized code
AC_PROG_CC([$cclist])
# C Compiler: Check that it is ANSI C
AM_PROG_CC_STDC
# C Compiler: Check that it is POSIX-compliant
AC_ISC_POSIX
ACX_PROG_CC_OPTIM
AC_PROG_RANLIB
AC_PROG_INSTALL

# Checks for libraries.
AC_CHECK_LIB(m, sin)

# Checks for header files.
AC_HEADER_STDC
AC_CHECK_HEADERS([fcntl.h limits.h malloc.h stdlib.h string.h sys/mman.h sys/types.h unistd.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_C_CONST
AC_TYPE_OFF_T
AC_TYPE_SIZE_T
AC_STRUCT_TM
AC_TYPE_UID_T

# Checks for library functions.
AC_FUNC_ERROR_AT_LINE
AC_FUNC_MALLOC
AC_FUNC_MMAP
AC_TYPE_SIGNAL
AC_FUNC_STAT
AC_FUNC_STRFTIME
AC_CHECK_FUNCS([atexit getenv memcpy memmove memset mkdir munmap strstr])

# Check support for large files
AC_SYS_LARGEFILE
AC_FUNC_FSEEKO

########################### No multithreading yet! ###########################
#AC_DEFINE(USE_THREADS, 1, [Triggers multhreading])
AC_DEFINE_UNQUOTED(THREADS_NMAX, 1,[Maximum number of POSIX threads])

# href to the XSL style-sheet in preflist.h
CFLAGS="$CFLAGS -DXSL_URL=\\\"file://$datadir/${PACKAGE_NAME}/${PACKAGE_NAME}.xsl\\\""

# Special optimization options for the INTEL C compiler
if test $use_icc = "yes" -a $CC = "icc"; then
  CFLAGS="$CFLAGS -O3 -axiMKW -ipo -ipo_obj -unroll"
fi

# Link with gprof option
if test "$use_gprof" = "yes"; then
  if test "$use_icc" = "yes"; then
    CFLAGS="$CFLAGS -pq"
  else
    CFLAGS="-O3 -pg"
  fi
  use_static="no"
fi

if test "$use_static" = "yes"; then
  LDFLAGS="$LDFLAGS -static"
fi

# Override automatic CFLAGS and LDFLAGS with those of user
if test -n "$mycflags"; then
CFLAGS="$mycflags"
fi
if test -n "$myldflags"; then
LDFLAGS="$myldflags"
fi

# Display compiler and linker flags
AC_MSG_RESULT([I will compile using:  $CC $CFLAGS])
AC_MSG_RESULT([I will link using:     $CC $LDFLAGS $LIBS])

AC_CONFIG_FILES([Makefile man/Makefile src/Makefile src/fits/Makefile src/wcs/Makefile sextractor.spec sextractor-tpx.spec man/sex.1])
AC_OUTPUT

# generated automatically by aclocal 1.7.9 -*- Autoconf -*-

# Copyright (C) 1996, 1997, 1998, 1999, 2000, 2001, 2002
# Free Software Foundation, Inc.
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.

#------------------------------------------------------------------------
# SC_PATH_TCLCONFIG --
#
#	Locate the tclConfig.sh file and perform a sanity check on
#	the Tcl compile flags
#
# Arguments:
#	none
#
# Results:
#
#	Adds the following arguments to configure:
#		--with-tcl=...
#
#	Defines the following vars:
#		TCL_BIN_DIR	Full path to the directory containing
#				the tclConfig.sh file
#------------------------------------------------------------------------

AC_DEFUN(SC_PATH_TCLCONFIG, [
    #
    # Ok, lets find the tcl configuration
    # First, look for one uninstalled.
    # the alternative search directory is invoked by --with-tcl
    #

    if test x"${no_tcl}" = x ; then
	# we reset no_tcl in case something fails here
	no_tcl=true
	AC_ARG_WITH(tcl, [  --with-tcl              directory containing tcl configuration (tclConfig.sh)], with_tclconfig=${withval})
	AC_MSG_CHECKING([for Tcl configuration])
	AC_CACHE_VAL(ac_cv_c_tclconfig,[

	    # First check to see if --with-tcl was specified.
	    if test x"${with_tclconfig}" != x ; then
		if test -f "${with_tclconfig}/tclConfig.sh" ; then
		    ac_cv_c_tclconfig=`(cd ${with_tclconfig}; pwd)`
		else
		    AC_MSG_ERROR([${with_tclconfig} directory doesn't contain tclConfig.sh])
		fi
	    fi

	    # then check for a private Tcl installation
	    if test x"${ac_cv_c_tclconfig}" = x ; then
		for i in \
			../tcl \
			`ls -dr ../tcl[[8-9]].[[0-9]].[[0-9]]* 2>/dev/null` \
			`ls -dr ../tcl[[8-9]].[[0-9]] 2>/dev/null` \
			`ls -dr ../tcl[[8-9]].[[0-9]]* 2>/dev/null` \
			../../tcl \
			`ls -dr ../../tcl[[8-9]].[[0-9]].[[0-9]]* 2>/dev/null` \
			`ls -dr ../../tcl[[8-9]].[[0-9]] 2>/dev/null` \
			`ls -dr ../../tcl[[8-9]].[[0-9]]* 2>/dev/null` \
			../../../tcl \
			`ls -dr ../../../tcl[[8-9]].[[0-9]].[[0-9]]* 2>/dev/null` \
			`ls -dr ../../../tcl[[8-9]].[[0-9]] 2>/dev/null` \
			`ls -dr ../../../tcl[[8-9]].[[0-9]]* 2>/dev/null` ; do
		    if test -f "$i/unix/tclConfig.sh" ; then
			ac_cv_c_tclconfig=`(cd $i/unix; pwd)`
			break
		    fi
		done
	    fi

	    # check in a few common install locations
	    if test x"${ac_cv_c_tclconfig}" = x ; then
		for i in `ls -d ${libdir} 2>/dev/null` \
			`ls -d /usr/local/lib 2>/dev/null` \
			`ls -d /usr/contrib/lib 2>/dev/null` \
			`ls -d /usr/lib 2>/dev/null` \
			`ls -d /usr/lib/tcl[[8-9]].[[0-9]] 2>/dev/null` \
			; do
		    if test -f "$i/tclConfig.sh" ; then
			ac_cv_c_tclconfig=`(cd $i; pwd)`
			break
		    fi
		done
	    fi

	    # check in a few other private locations
	    if test x"${ac_cv_c_tclconfig}" = x ; then
		for i in \
			${srcdir}/../tcl \
			`ls -dr ${srcdir}/../tcl[[8-9]].[[0-9]].[[0-9]]* 2>/dev/null` \
			`ls -dr ${srcdir}/../tcl[[8-9]].[[0-9]] 2>/dev/null` \
			`ls -dr ${srcdir}/../tcl[[8-9]].[[0-9]]* 2>/dev/null` ; do
		    if test -f "$i/unix/tclConfig.sh" ; then
		    ac_cv_c_tclconfig=`(cd $i/unix; pwd)`
		    break
		fi
		done
	    fi
	])

	if test x"${ac_cv_c_tclconfig}" = x ; then
	    TCL_BIN_DIR="# no Tcl configs found"
	    AC_MSG_WARN(Can't find Tcl configuration definitions)
	    exit 0
	else
	    no_tcl=
	    TCL_BIN_DIR=${ac_cv_c_tclconfig}
	    AC_MSG_RESULT(found $TCL_BIN_DIR/tclConfig.sh)
	fi
    fi
])

#------------------------------------------------------------------------
# SC_PATH_TKCONFIG --
#
#	Locate the tkConfig.sh file
#
# Arguments:
#	none
#
# Results:
#
#	Adds the following arguments to configure:
#		--with-tk=...
#
#	Defines the following vars:
#		TK_BIN_DIR	Full path to the directory containing
#				the tkConfig.sh file
#------------------------------------------------------------------------

AC_DEFUN(SC_PATH_TKCONFIG, [
    #
    # Ok, lets find the tk configuration
    # First, look for one uninstalled.
    # the alternative search directory is invoked by --with-tk
    #

    if test x"${no_tk}" = x ; then
	# we reset no_tk in case something fails here
	no_tk=true
	AC_ARG_WITH(tk, [  --with-tk               directory containing tk configuration (tkConfig.sh)], with_tkconfig=${withval})
	AC_MSG_CHECKING([for Tk configuration])
	AC_CACHE_VAL(ac_cv_c_tkconfig,[

	    # First check to see if --with-tkconfig was specified.
	    if test x"${with_tkconfig}" != x ; then
		if test -f "${with_tkconfig}/tkConfig.sh" ; then
		    ac_cv_c_tkconfig=`(cd ${with_tkconfig}; pwd)`
		else
		    AC_MSG_ERROR([${with_tkconfig} directory doesn't contain tkConfig.sh])
		fi
	    fi

	    # then check for a private Tk library
	    if test x"${ac_cv_c_tkconfig}" = x ; then
		for i in \
			../tk \
			`ls -dr ../tk[[8-9]].[[0-9]].[[0-9]]* 2>/dev/null` \
			`ls -dr ../tk[[8-9]].[[0-9]] 2>/dev/null` \
			`ls -dr ../tk[[8-9]].[[0-9]]* 2>/dev/null` \
			../../tk \
			`ls -dr ../../tk[[8-9]].[[0-9]].[[0-9]]* 2>/dev/null` \
			`ls -dr ../../tk[[8-9]].[[0-9]] 2>/dev/null` \
			`ls -dr ../../tk[[8-9]].[[0-9]]* 2>/dev/null` \
			../../../tk \
			`ls -dr ../../../tk[[8-9]].[[0-9]].[[0-9]]* 2>/dev/null` \
			`ls -dr ../../../tk[[8-9]].[[0-9]] 2>/dev/null` \
			`ls -dr ../../../tk[[8-9]].[[0-9]]* 2>/dev/null` ; do
		    if test -f "$i/unix/tkConfig.sh" ; then
			ac_cv_c_tkconfig=`(cd $i/unix; pwd)`
			break
		    fi
		done
	    fi
	    # check in a few common install locations
	    if test x"${ac_cv_c_tkconfig}" = x ; then
		for i in `ls -d ${libdir} 2>/dev/null` \
			`ls -d /usr/local/lib 2>/dev/null` \
			`ls -d /usr/contrib/lib 2>/dev/null` \
			`ls -d /usr/lib 2>/dev/null` \
			`ls -d /usr/lib/tk[[8-9]].[[0-9]] 2>/dev/null` \
			; do
		    if test -f "$i/tkConfig.sh" ; then
			ac_cv_c_tkconfig=`(cd $i; pwd)`
			break
		    fi
		done
	    fi
	    # check in a few other private locations
	    if test x"${ac_cv_c_tkconfig}" = x ; then
		for i in \
			${srcdir}/../tk \
			`ls -dr ${srcdir}/../tk[[8-9]].[[0-9]].[[0-9]]* 2>/dev/null` \
			`ls -dr ${srcdir}/../tk[[8-9]].[[0-9]] 2>/dev/null` \
			`ls -dr ${srcdir}/../tk[[8-9]].[[0-9]]* 2>/dev/null` ; do
		    if test -f "$i/unix/tkConfig.sh" ; then
			ac_cv_c_tkconfig=`(cd $i/unix; pwd)`
			break
		    fi
		done
	    fi
	])
	if test x"${ac_cv_c_tkconfig}" = x ; then
	    TK_BIN_DIR="# no Tk configs found"
	    AC_MSG_WARN(Can't find Tk configuration definitions)
	    exit 0
	else
	    no_tk=
	    TK_BIN_DIR=${ac_cv_c_tkconfig}
	    AC_MSG_RESULT(found $TK_BIN_DIR/tkConfig.sh)
	fi
    fi

])

#------------------------------------------------------------------------
# SC_LOAD_TCLCONFIG --
#
#	Load the tclConfig.sh file
#
# Arguments:
#
#	Requires the following vars to be set:
#		TCL_BIN_DIR
#
# Results:
#
#	Subst the following vars:
#		TCL_BIN_DIR
#		TCL_SRC_DIR
#		TCL_LIB_FILE
#
#------------------------------------------------------------------------

AC_DEFUN(SC_LOAD_TCLCONFIG, [
    AC_MSG_CHECKING([for existence of $TCL_BIN_DIR/tclConfig.sh])

    if test -f "$TCL_BIN_DIR/tclConfig.sh" ; then
        AC_MSG_RESULT([loading])
	. $TCL_BIN_DIR/tclConfig.sh
    else
        AC_MSG_RESULT([file not found])
    fi

    #
    # If the TCL_BIN_DIR is the build directory (not the install directory),
    # then set the common variable name to the value of the build variables.
    # For example, the variable TCL_LIB_SPEC will be set to the value
    # of TCL_BUILD_LIB_SPEC. An extension should make use of TCL_LIB_SPEC
    # instead of TCL_BUILD_LIB_SPEC since it will work with both an
    # installed and uninstalled version of Tcl.
    #

    if test -f $TCL_BIN_DIR/Makefile ; then
        TCL_LIB_SPEC=${TCL_BUILD_LIB_SPEC}
        TCL_STUB_LIB_SPEC=${TCL_BUILD_STUB_LIB_SPEC}
        TCL_STUB_LIB_PATH=${TCL_BUILD_STUB_LIB_PATH}
    fi

    #
    # eval is required to do the TCL_DBGX substitution
    #

    eval "TCL_LIB_FILE=\"${TCL_LIB_FILE}\""
    eval "TCL_LIB_FLAG=\"${TCL_LIB_FLAG}\""
    eval "TCL_LIB_SPEC=\"${TCL_LIB_SPEC}\""

    eval "TCL_STUB_LIB_FILE=\"${TCL_STUB_LIB_FILE}\""
    eval "TCL_STUB_LIB_FLAG=\"${TCL_STUB_LIB_FLAG}\""
    eval "TCL_STUB_LIB_SPEC=\"${TCL_STUB_LIB_SPEC}\""

    AC_SUBST(TCL_VERSION)
    AC_SUBST(TCL_BIN_DIR)
    AC_SUBST(TCL_SRC_DIR)

    AC_SUBST(TCL_LIB_FILE)
    AC_SUBST(TCL_LIB_FLAG)
    AC_SUBST(TCL_LIB_SPEC)

    AC_SUBST(TCL_STUB_LIB_FILE)
    AC_SUBST(TCL_STUB_LIB_FLAG)
    AC_SUBST(TCL_STUB_LIB_SPEC)
])

#------------------------------------------------------------------------
# SC_LOAD_TKCONFIG --
#
#	Load the tkConfig.sh file
#
# Arguments:
#
#	Requires the following vars to be set:
#		TK_BIN_DIR
#
# Results:
#
#	Sets the following vars that should be in tkConfig.sh:
#		TK_BIN_DIR
#------------------------------------------------------------------------

AC_DEFUN(SC_LOAD_TKCONFIG, [
    AC_MSG_CHECKING([for existence of $TK_BIN_DIR/tkConfig.sh])

    if test -f "$TK_BIN_DIR/tkConfig.sh" ; then
        AC_MSG_RESULT([loading])
	. $TK_BIN_DIR/tkConfig.sh
    else
        AC_MSG_RESULT([could not find $TK_BIN_DIR/tkConfig.sh])
    fi

    AC_SUBST(TK_VERSION)
    AC_SUBST(TK_BIN_DIR)
    AC_SUBST(TK_SRC_DIR)
    AC_SUBST(TK_LIB_FILE)
])

#------------------------------------------------------------------------
# SC_ENABLE_SHARED --
#
#	Allows the building of shared libraries
#
# Arguments:
#	none
#
# Results:
#
#	Adds the following arguments to configure:
#		--enable-shared=yes|no
#
#	Defines the following vars:
#		STATIC_BUILD	Used for building import/export libraries
#				on Windows.
#
#	Sets the following vars:
#		SHARED_BUILD	Value of 1 or 0
#------------------------------------------------------------------------

AC_DEFUN(SC_ENABLE_SHARED, [
    AC_MSG_CHECKING([how to build libraries])
    AC_ARG_ENABLE(shared,
	[  --enable-shared         build and link with shared libraries [--enable-shared]],
	[tcl_ok=$enableval], [tcl_ok=yes])

    if test "${enable_shared+set}" = set; then
	enableval="$enable_shared"
	tcl_ok=$enableval
    else
	tcl_ok=yes
    fi

    if test "$tcl_ok" = "yes" ; then
	AC_MSG_RESULT([shared])
	SHARED_BUILD=1
    else
	AC_MSG_RESULT([static])
	SHARED_BUILD=0
	AC_DEFINE(STATIC_BUILD)
    fi
])

#------------------------------------------------------------------------
# SC_ENABLE_FRAMEWORK --
#
#	Allows the building of shared libraries into frameworks
#
# Arguments:
#	none
#
# Results:
#
#	Adds the following arguments to configure:
#		--enable-framework=yes|no
#
#	Sets the following vars:
#		FRAMEWORK_BUILD	Value of 1 or 0
#------------------------------------------------------------------------

AC_DEFUN(SC_ENABLE_FRAMEWORK, [
    AC_MSG_CHECKING([how to package libraries])
    AC_ARG_ENABLE(framework,
	[  --enable-framework      package shared libraries in MacOSX frameworks [--disable-framework]],
	[tcl_ok=$enableval], [tcl_ok=no])

    if test "${enable_framework+set}" = set; then
	enableval="$enable_framework"
	tcl_ok=$enableval
    else
	tcl_ok=no
    fi

    if test "$tcl_ok" = "yes" ; then
	AC_MSG_RESULT([framework])
	FRAMEWORK_BUILD=1
	if test "${SHARED_BUILD}" = "0" ; then
	    AC_MSG_WARN("Frameworks can only be built if --enable-shared is yes")
	    FRAMEWORK_BUILD=0
	fi
    else
	AC_MSG_RESULT([standard shared library])
	FRAMEWORK_BUILD=0
    fi
])

#------------------------------------------------------------------------
# SC_ENABLE_THREADS --
#
#	Specify if thread support should be enabled.  TCL_THREADS is
#	checked so that if you are compiling an extension against a
#	threaded core, your extension must be compiled threaded as well.
#
# Arguments:
#	none
#
# Results:
#
#	Adds the following arguments to configure:
#		--enable-threads
#
#	Sets the following vars:
#		THREADS_LIBS	Thread library(s)
#
#	Defines the following vars:
#		TCL_THREADS
#		_REENTRANT
#		_THREAD_SAFE
#
#------------------------------------------------------------------------

AC_DEFUN(SC_ENABLE_THREADS, [
    AC_MSG_CHECKING(for building with threads)
    AC_ARG_ENABLE(threads, [  --enable-threads        build with threads],
	[tcl_ok=$enableval], [tcl_ok=no])

    if test "$tcl_ok" = "yes" -o "${TCL_THREADS}" = 1; then
	if test "${TCL_THREADS}" = 1; then
	    AC_MSG_RESULT([yes (threaded core)])
	else
	    AC_MSG_RESULT([yes])
	fi
	TCL_THREADS=1
	AC_DEFINE(TCL_THREADS)
	# USE_THREAD_ALLOC tells us to try the special thread-based
	# allocator that significantly reduces lock contention
	AC_DEFINE(USE_THREAD_ALLOC)
	AC_DEFINE(_REENTRANT)
	AC_DEFINE(_THREAD_SAFE)
	AC_CHECK_LIB(pthread,pthread_mutex_init,tcl_ok=yes,tcl_ok=no)
	if test "$tcl_ok" = "no"; then
	    # Check a little harder for __pthread_mutex_init in the same
	    # library, as some systems hide it there until pthread.h is
	    # defined.  We could alternatively do an AC_TRY_COMPILE with
	    # pthread.h, but that will work with libpthread really doesn't
	    # exist, like AIX 4.2.  [Bug: 4359]
	    AC_CHECK_LIB(pthread,__pthread_mutex_init,tcl_ok=yes,tcl_ok=no)
	fi

	if test "$tcl_ok" = "yes"; then
	    # The space is needed
	    THREADS_LIBS=" -lpthread"
	else
	    AC_CHECK_LIB(pthreads,pthread_mutex_init,tcl_ok=yes,tcl_ok=no)
	    if test "$tcl_ok" = "yes"; then
		# The space is needed
		THREADS_LIBS=" -lpthreads"
	    else
		AC_CHECK_LIB(c,pthread_mutex_init,tcl_ok=yes,tcl_ok=no)
	    	if test "$tcl_ok" = "no"; then
		    AC_CHECK_LIB(c_r,pthread_mutex_init,tcl_ok=yes,tcl_ok=no)
		    if test "$tcl_ok" = "yes"; then
			# The space is needed
			THREADS_LIBS=" -pthread"
		    else
			TCL_THREADS=0
			AC_MSG_WARN("Don t know how to find pthread lib on your system - you must disable thread support or edit the LIBS in the Makefile...")
		    fi
	    	fi
	    fi
	fi

	# Does the pthread-implementation provide
	# 'pthread_attr_setstacksize' ?

	ac_saved_libs=$LIBS
	LIBS="$LIBS $THREADS_LIBS"
	AC_CHECK_FUNCS(pthread_attr_setstacksize)
	AC_CHECK_FUNCS(pthread_atfork)
	LIBS=$ac_saved_libs
	AC_CHECK_FUNCS(readdir_r)
    else
	TCL_THREADS=0
	AC_MSG_RESULT([no (default)])
    fi
    AC_SUBST(TCL_THREADS)
])

#------------------------------------------------------------------------
# SC_ENABLE_DEBUG --
#
#	Specify if debugging symbols should be used.
#
# Arguments:
#	none
#
#	Adds the following arguments to configure:
#		--enable-debug
#
#	Defines the following vars:
#		CFLAGS_DEFAULT	Sets to "-g -O0" if true (i.e. adding symbols and removing optimisation)
#		CFLAGS_DEFAULT	Sets to "-g" if symbols only
#		CFLAGS_DEFAULT	Sets to "-O2" otherwise
#
#------------------------------------------------------------------------

AC_DEFUN(SC_ENABLE_DEBUG, [
    AC_MSG_CHECKING([for debug options enabled])
    AC_ARG_ENABLE(debug, [  --enable-debug          build with debugging symbols and possibly no optimisation (yes, symbols or no(default))], [enable_debug=$enableval], [enable_debug=no])
    if test "$enable_debug" = "no"; then
		CFLAGS_DEFAULT='-O2 '
		LDFLAGS_DEFAULT=""
		AC_MSG_RESULT([no debug])
    elif test "$enable_debug" = "symbols"; then
		CFLAGS_DEFAULT='-g -O2 '
		LDFLAGS_DEFAULT=""
		AC_MSG_RESULT([symbols only])
	else
		CFLAGS_DEFAULT='-g -O0 '
		LDFLAGS_DEFAULT=""
		AC_MSG_RESULT([full debug])
    fi
    AC_SUBST(CFLAGS_DEFAULT)
    AC_SUBST(LDFLAGS_DEFAULT)
])

#------------------------------------------------------------------------
# SC_ENABLE_LANGINFO --
#
#	Allows use of modern nl_langinfo check for better l10n.
#	This is only relevant for Unix.
#
# Arguments:
#	none
#
# Results:
#
#	Adds the following arguments to configure:
#		--enable-langinfo=yes|no (default is yes)
#
#	Defines the following vars:
#		HAVE_LANGINFO	Triggers use of nl_langinfo if defined.
#
#------------------------------------------------------------------------

AC_DEFUN(SC_ENABLE_LANGINFO, [
    AC_ARG_ENABLE(langinfo,
	[  --enable-langinfo	  use nl_langinfo if possible to determine
			  encoding at startup, otherwise use old heuristic],
	[langinfo_ok=$enableval], [langinfo_ok=yes])

    HAVE_LANGINFO=0
    if test "$langinfo_ok" = "yes"; then
	if test "$langinfo_ok" = "yes"; then
	    AC_CHECK_HEADER(langinfo.h,[langinfo_ok=yes],[langinfo_ok=no])
	fi
    fi
    AC_MSG_CHECKING([whether to use nl_langinfo])
    if test "$langinfo_ok" = "yes"; then
	AC_TRY_COMPILE([#include <langinfo.h>],
		[nl_langinfo(CODESET);],[langinfo_ok=yes],[langinfo_ok=no])
	if test "$langinfo_ok" = "no"; then
	    langinfo_ok="no (could not compile with nl_langinfo)";
	fi
	if test "$langinfo_ok" = "yes"; then
	    AC_DEFINE(HAVE_LANGINFO)
	fi
    fi
    AC_MSG_RESULT([$langinfo_ok])
])

#--------------------------------------------------------------------
# SC_CONFIG_MANPAGES
#
#	Decide whether to use symlinks for linking the manpages and
#	whether to compress the manpages after installation.
#
# Arguments:
#	none
#
# Results:
#
#	Adds the following arguments to configure:
#		--enable-man-symlinks
#		--enable-man-compression=PROG
#
#	Defines the following variable:
#
#	MKLINKS_FLAGS -		The apropriate flags for mkLinks
#				according to the user's selection.
#
#--------------------------------------------------------------------
AC_DEFUN(SC_CONFIG_MANPAGES, [

	AC_MSG_CHECKING([whether to use symlinks for manpages])
	AC_ARG_ENABLE(man-symlinks,
		[  --enable-man-symlinks   use symlinks for the manpages],
		test "$enableval" != "no" && MKLINKS_FLAGS="$MKLINKS_FLAGS --symlinks",
		enableval="no")
	AC_MSG_RESULT([$enableval])

	AC_MSG_CHECKING([compression for manpages])
	AC_ARG_ENABLE(man-compression,
		[  --enable-man-compression=PROG
                          compress the manpages with PROG],
		test "$enableval" = "yes" && echo && AC_MSG_ERROR([missing argument to --enable-man-compression])
		test "$enableval" != "no" && MKLINKS_FLAGS="$MKLINKS_FLAGS --compress $enableval",
		enableval="no")
	AC_MSG_RESULT([$enableval])

	AC_SUBST(MKLINKS_FLAGS)
])

#--------------------------------------------------------------------
# SC_CONFIG_CFLAGS
#
#	Try to determine the proper flags to pass to the compiler
#	for building shared libraries and other such nonsense.
#
# Arguments:
#	none
#
# Results:
#
#	Defines and substitutes the following vars:
#
#       DL_OBJS -       Name of the object file that implements dynamic
#                       loading for Tcl on this system.
#       DL_LIBS -       Library file(s) to include in tclsh and other base
#                       applications in order for the "load" command to work.
#       LDFLAGS -      Flags to pass to the compiler when linking object
#                       files into an executable application binary such
#                       as tclsh.
#       LD_SEARCH_FLAGS-Flags to pass to ld, such as "-R /usr/local/tcl/lib",
#                       that tell the run-time dynamic linker where to look
#                       for shared libraries such as libtcl.so.  Depends on
#                       the variable LIB_RUNTIME_DIR in the Makefile. Could
#                       be the same as CC_SEARCH_FLAGS if ${CC} is used to link.
#       CC_SEARCH_FLAGS-Flags to pass to ${CC}, such as "-Wl,-rpath,/usr/local/tcl/lib",
#                       that tell the run-time dynamic linker where to look
#                       for shared libraries such as libtcl.so.  Depends on
#                       the variable LIB_RUNTIME_DIR in the Makefile.
#       MAKE_LIB -      Command to execute to build the a library;
#                       differs when building shared or static.
#       MAKE_STUB_LIB -
#                       Command to execute to build a stub library.
#       INSTALL_LIB -   Command to execute to install a library;
#                       differs when building shared or static.
#       INSTALL_STUB_LIB -
#                       Command to execute to install a stub library.
#       STLIB_LD -      Base command to use for combining object files
#                       into a static library.
#       SHLIB_CFLAGS -  Flags to pass to cc when compiling the components
#                       of a shared library (may request position-independent
#                       code, among other things).
#       SHLIB_LD -      Base command to use for combining object files
#                       into a shared library.
#       SHLIB_LD_FLAGS -Flags to pass when building a shared library. This
#                       differes from the SHLIB_CFLAGS as it is not used
#                       when building object files or executables.
#       SHLIB_LD_LIBS - Dependent libraries for the linker to scan when
#                       creating shared libraries.  This symbol typically
#                       goes at the end of the "ld" commands that build
#                       shared libraries. The value of the symbol is
#                       "${LIBS}" if all of the dependent libraries should
#                       be specified when creating a shared library.  If
#                       dependent libraries should not be specified (as on
#                       SunOS 4.x, where they cause the link to fail, or in
#                       general if Tcl and Tk aren't themselves shared
#                       libraries), then this symbol has an empty string
#                       as its value.
#       SHLIB_SUFFIX -  Suffix to use for the names of dynamically loadable
#                       extensions.  An empty string means we don't know how
#                       to use shared libraries on this platform.
# TCL_SHLIB_LD_EXTRAS - Additional element which are added to SHLIB_LD_LIBS
#  TK_SHLIB_LD_EXTRAS   for the build of Tcl and Tk, but not recorded in the
#                       tclConfig.sh, since they are only used for the build
#                       of Tcl and Tk.
#                       Examples: MacOS X records the library version and
#                       compatibility version in the shared library.  But
#                       of course the Tcl version of this is only used for Tcl.
#       LIB_SUFFIX -    Specifies everything that comes after the "libfoo"
#                       in a static or shared library name, using the $VERSION variable
#                       to put the version in the right place.  This is used
#                       by platforms that need non-standard library names.
#                       Examples:  ${VERSION}.so.1.1 on NetBSD, since it needs
#                       to have a version after the .so, and ${VERSION}.a
#                       on AIX, since a shared library needs to have
#                       a .a extension whereas shared objects for loadable
#                       extensions have a .so extension.  Defaults to
#                       ${VERSION}${SHLIB_SUFFIX}.
#       TCL_NEEDS_EXP_FILE -
#                       1 means that an export file is needed to link to a
#                       shared library.
#       TCL_EXP_FILE -  The name of the installed export / import file which
#                       should be used to link to the Tcl shared library.
#                       Empty if Tcl is unshared.
#       TCL_BUILD_EXP_FILE -
#                       The name of the built export / import file which
#                       should be used to link to the Tcl shared library.
#                       Empty if Tcl is unshared.
#	CFLAGS_DEBUG -
#			Flags used when running the compiler in debug mode
#	CFLAGS_OPTIMIZE -
#			Flags used when running the compiler in optimize mode
#	CFLAGS -	Additional CFLAGS added as necessary (usually 64-bit)
#
#--------------------------------------------------------------------

AC_DEFUN(SC_CONFIG_CFLAGS, [

    # Step 0.a: Enable 64 bit support?

    AC_MSG_CHECKING([if 64bit support is requested])
    AC_ARG_ENABLE(64bit,[  --enable-64bit          enable 64bit support (where applicable)],,enableval="no")

    if test "$enableval" = "yes"; then
	do64bit=yes
    else
	do64bit=no
    fi
    AC_MSG_RESULT($do64bit)

    # Step 0.b: Enable Solaris 64 bit VIS support?

    AC_MSG_CHECKING([if 64bit Sparc VIS support is requested])
    AC_ARG_ENABLE(64bit-vis,[  --enable-64bit-vis      enable 64bit Sparc VIS support],,enableval="no")

    if test "$enableval" = "yes"; then
	# Force 64bit on with VIS
	do64bit=yes
	do64bitVIS=yes
    else
	do64bitVIS=no
    fi
    AC_MSG_RESULT($do64bitVIS)

    # Step 1: set the variable "system" to hold the name and version number
    # for the system.  This can usually be done via the "uname" command, but
    # there are a few systems, like Next, where this doesn't work.

    AC_MSG_CHECKING([system version (for dynamic loading)])
    if test -f /usr/lib/NextStep/software_version; then
	system=NEXTSTEP-`awk '/3/,/3/' /usr/lib/NextStep/software_version`
    else
	system=`uname -s`-`uname -r`
	if test "$?" -ne 0 ; then
	    AC_MSG_RESULT([unknown (can't find uname command)])
	    system=unknown
	else
	    # Special check for weird MP-RAS system (uname returns weird
	    # results, and the version is kept in special file).

	    if test -r /etc/.relid -a "X`uname -n`" = "X`uname -s`" ; then
		system=MP-RAS-`awk '{print $3}' /etc/.relid'`
	    fi
	    if test "`uname -s`" = "AIX" ; then
		system=AIX-`uname -v`.`uname -r`
	    fi
	    AC_MSG_RESULT($system)
	fi
    fi

    # Step 2: check for existence of -ldl library.  This is needed because
    # Linux can use either -ldl or -ldld for dynamic loading.

    AC_CHECK_LIB(dl, dlopen, have_dl=yes, have_dl=no)

    # Require ranlib early so we can override it in special cases below.

    AC_REQUIRE([AC_PROG_RANLIB])

    # Step 3: set configuration options based on system name and version.

    do64bit_ok=no
    LDFLAGS_ORIG="$LDFLAGS"
    TCL_EXPORT_FILE_SUFFIX=""
    UNSHARED_LIB_SUFFIX=""
    TCL_TRIM_DOTS='`echo ${VERSION} | tr -d .`'
    ECHO_VERSION='`echo ${VERSION}`'
    TCL_LIB_VERSIONS_OK=ok
    CFLAGS_DEBUG=-g -O0
    CFLAGS_OPTIMIZE=-O2
    if test "$GCC" = "yes" ; then
	CFLAGS_WARNING="-Wall -Wno-implicit-int -fno-strict-aliasing"
    else
	CFLAGS_WARNING=""
    fi
    TCL_NEEDS_EXP_FILE=0
    TCL_BUILD_EXP_FILE=""
    TCL_EXP_FILE=""
dnl FIXME: Replace AC_CHECK_PROG with AC_CHECK_TOOL once cross compiling is fixed.
dnl AC_CHECK_TOOL(AR, ar)
    AC_CHECK_PROG(AR, ar, ar)
    if test "${AR}" = "" ; then
	AC_MSG_ERROR([Required archive tool 'ar' not found on PATH.])
    fi
    STLIB_LD='${AR} cr'
    LD_LIBRARY_PATH_VAR="LD_LIBRARY_PATH"
    PLAT_OBJS=""
    case $system in
	AIX-5.*)
	    if test "${TCL_THREADS}" = "1" -a "$GCC" != "yes" ; then
		# AIX requires the _r compiler when gcc isn't being used
		if test "${CC}" != "cc_r" ; then
		    CC=${CC}_r
		fi
		AC_MSG_RESULT(Using $CC for compiling with threads)
	    fi
	    LIBS="$LIBS -lc"
	    # AIX-5 uses ELF style dynamic libraries
	    SHLIB_CFLAGS=""
	    # Note: need the LIBS below, otherwise Tk won't find Tcl's
	    # symbols when dynamically loaded into tclsh.
	    SHLIB_LD_LIBS='${LIBS}'
	    SHLIB_SUFFIX=".so"

	    DL_OBJS="tclLoadDl.o"

	    LD_LIBRARY_PATH_VAR="LIBPATH"

	    # Check to enable 64-bit flags for compiler/linker
	    if test "$do64bit" = "yes" ; then
		if test "$GCC" = "yes" ; then
		    AC_MSG_WARN("64bit mode not supported with GCC on $system")
		else
		    do64bit_ok=yes
		    CFLAGS="$CFLAGS -q64"
		    LDFLAGS="$LDFLAGS -q64"
		    RANLIB="${RANLIB} -X64"
		    AR="${AR} -X64"
		    SHLIB_LD_FLAGS="-b64"
		fi
	    fi

	    if test "`uname -m`" = "ia64" ; then
		# AIX-5 uses ELF style dynamic libraries on IA-64, but not PPC
		SHLIB_LD="/usr/ccs/bin/ld -G -z text"
		# AIX-5 has dl* in libc.so
		DL_LIBS=""
		if test "$GCC" = "yes" ; then
		    CC_SEARCH_FLAGS='-Wl,-R,${LIB_RUNTIME_DIR}'
		else
		    CC_SEARCH_FLAGS='-R${LIB_RUNTIME_DIR}'
		fi
		LD_SEARCH_FLAGS='-R ${LIB_RUNTIME_DIR}'
	    else
		SHLIB_LD="${TCL_SRC_DIR}/unix/ldAix /bin/ld -bhalt:4 -bM:SRE -bE:lib.exp -H512 -T512 -bnoentry ${SHLIB_LD_FLAGS}"
		DL_LIBS="-ldl"
		CC_SEARCH_FLAGS='-L${LIB_RUNTIME_DIR}'
		LD_SEARCH_FLAGS=${CC_SEARCH_FLAGS}
		TCL_NEEDS_EXP_FILE=1
		TCL_EXPORT_FILE_SUFFIX='${VERSION}\$\{DBGX\}.exp'
	    fi
	    ;;
	AIX-*)
	    if test "${TCL_THREADS}" = "1" -a "$GCC" != "yes" ; then
		# AIX requires the _r compiler when gcc isn't being used
		if test "${CC}" != "cc_r" ; then
		    CC=${CC}_r
		fi
		AC_MSG_RESULT(Using $CC for compiling with threads)
	    fi
	    LIBS="$LIBS -lc"
	    SHLIB_CFLAGS=""
	    SHLIB_LD_LIBS='${LIBS}'
	    SHLIB_SUFFIX=".so"
	    DL_OBJS="tclLoadDl.o"
	    DL_LIBS="-ldl"
	    CC_SEARCH_FLAGS='-L${LIB_RUNTIME_DIR}'
	    LD_SEARCH_FLAGS=${CC_SEARCH_FLAGS}
	    LD_LIBRARY_PATH_VAR="LIBPATH"
	    TCL_NEEDS_EXP_FILE=1
	    TCL_EXPORT_FILE_SUFFIX='${VERSION}\$\{DBGX\}.exp'

	    # AIX v<=4.1 has some different flags than 4.2+
	    if test "$system" = "AIX-4.1" -o "`uname -v`" -lt "4" ; then
		LIBOBJS="$LIBOBJS tclLoadAix.o"
		DL_LIBS="-lld"
	    fi

	    # Check to enable 64-bit flags for compiler/linker
	    if test "$do64bit" = "yes" ; then
		if test "$GCC" = "yes" ; then
		    AC_MSG_WARN("64bit mode not supported with GCC on $system")
		else
		    do64bit_ok=yes
		    CFLAGS="$CFLAGS -q64"
		    LDFLAGS="$LDFLAGS -q64"
		    RANLIB="${RANLIB} -X64"
		    AR="${AR} -X64"
		    SHLIB_LD_FLAGS="-b64"
		fi
	    fi
	    SHLIB_LD="${TCL_SRC_DIR}/unix/ldAix /bin/ld -bhalt:4 -bM:SRE -bE:lib.exp -H512 -T512 -bnoentry ${SHLIB_LD_FLAGS}"

	    # On AIX <=v4 systems, libbsd.a has to be linked in to support
	    # non-blocking file IO.  This library has to be linked in after
	    # the MATH_LIBS or it breaks the pow() function.  The way to
	    # insure proper sequencing, is to add it to the tail of MATH_LIBS.
	    # This library also supplies gettimeofday.
	    #
	    # AIX does not have a timezone field in struct tm. When the AIX
	    # bsd library is used, the timezone global and the gettimeofday
	    # methods are to be avoided for timezone deduction instead, we
	    # deduce the timezone by comparing the localtime result on a
	    # known GMT value.

	    AC_CHECK_LIB(bsd, gettimeofday, libbsd=yes, libbsd=no)
	    if test $libbsd = yes; then
	    	MATH_LIBS="$MATH_LIBS -lbsd"
	    	AC_DEFINE(USE_DELTA_FOR_TZ)
	    fi
	    ;;
	BeOS*)
	    SHLIB_CFLAGS="-fPIC"
	    SHLIB_LD="${CC} -nostart"
	    SHLIB_LD_LIBS='${LIBS}'
	    SHLIB_SUFFIX=".so"
	    DL_OBJS="tclLoadDl.o"
	    DL_LIBS="-ldl"

	    #-----------------------------------------------------------
	    # Check for inet_ntoa in -lbind, for BeOS (which also needs
	    # -lsocket, even if the network functions are in -lnet which
	    # is always linked to, for compatibility.
	    #-----------------------------------------------------------
	    AC_CHECK_LIB(bind, inet_ntoa, [LIBS="$LIBS -lbind -lsocket"])
	    ;;
	BSD/OS-2.1*|BSD/OS-3*)
	    SHLIB_CFLAGS=""
	    SHLIB_LD="shlicc -r"
	    SHLIB_LD_LIBS='${LIBS}'
	    SHLIB_SUFFIX=".so"
	    DL_OBJS="tclLoadDl.o"
	    DL_LIBS="-ldl"
	    CC_SEARCH_FLAGS=""
	    LD_SEARCH_FLAGS=""
	    ;;
	BSD/OS-4.*)
	    SHLIB_CFLAGS="-export-dynamic -fPIC"
	    SHLIB_LD="cc -shared"
	    SHLIB_LD_LIBS='${LIBS}'
	    SHLIB_SUFFIX=".so"
	    DL_OBJS="tclLoadDl.o"
	    DL_LIBS="-ldl"
	    LDFLAGS="$LDFLAGS -export-dynamic"
	    CC_SEARCH_FLAGS=""
	    LD_SEARCH_FLAGS=""
	    ;;
	dgux*)
	    SHLIB_CFLAGS="-K PIC"
	    SHLIB_LD="cc -G"
	    SHLIB_LD_LIBS=""
	    SHLIB_SUFFIX=".so"
	    DL_OBJS="tclLoadDl.o"
	    DL_LIBS="-ldl"
	    CC_SEARCH_FLAGS=""
	    LD_SEARCH_FLAGS=""
	    ;;
	HP-UX-*.11.*)
	    # Use updated header definitions where possible
	    AC_DEFINE(_XOPEN_SOURCE)          # Use the XOPEN network library
	    AC_DEFINE(_XOPEN_SOURCE_EXTENDED) # Use the XOPEN network library
	    LIBS="$LIBS -lxnet"               # Use the XOPEN network library

	    SHLIB_SUFFIX=".sl"
	    AC_CHECK_LIB(dld, shl_load, tcl_ok=yes, tcl_ok=no)
	    if test "$tcl_ok" = yes; then
		SHLIB_CFLAGS="+z"
		SHLIB_LD="ld -b"
		SHLIB_LD_LIBS='${LIBS}'
		DL_OBJS="tclLoadShl.o"
		DL_LIBS="-ldld"
		LDFLAGS="$LDFLAGS -Wl,-E"
		CC_SEARCH_FLAGS='-Wl,+s,+b,${LIB_RUNTIME_DIR}:.'
		LD_SEARCH_FLAGS='+s +b ${LIB_RUNTIME_DIR}:.'
		LD_LIBRARY_PATH_VAR="SHLIB_PATH"
	    fi
	    if test "$GCC" = "yes" ; then
		SHLIB_LD="gcc -shared"
		SHLIB_LD_LIBS='${LIBS}'
		LD_SEARCH_FLAGS=''
		CC_SEARCH_FLAGS=''
	    fi

	    # Users may want PA-RISC 1.1/2.0 portable code - needs HP cc
	    #CFLAGS="$CFLAGS +DAportable"

	    # Check to enable 64-bit flags for compiler/linker
	    if test "$do64bit" = "yes" ; then
		if test "$GCC" = "yes" ; then
		    hpux_arch=`gcc -dumpmachine`
		    case $hpux_arch in
			hppa64*)
			    # 64-bit gcc in use.  Fix flags for GNU ld.
			    do64bit_ok=yes
			    SHLIB_LD="gcc -shared"
			    SHLIB_LD_LIBS='${LIBS}'
			    LD_SEARCH_FLAGS=''
			    CC_SEARCH_FLAGS=''
			    ;;
			*)
			    AC_MSG_WARN("64bit mode not supported with GCC on $system")
			    ;;
		    esac
		else
		    do64bit_ok=yes
		    CFLAGS="$CFLAGS +DD64"
		    LDFLAGS="$LDFLAGS +DD64"
		fi
	    fi
	    ;;
	HP-UX-*.08.*|HP-UX-*.09.*|HP-UX-*.10.*)
	    SHLIB_SUFFIX=".sl"
	    AC_CHECK_LIB(dld, shl_load, tcl_ok=yes, tcl_ok=no)
	    if test "$tcl_ok" = yes; then
		SHLIB_CFLAGS="+z"
		SHLIB_LD="ld -b"
		SHLIB_LD_LIBS=""
		DL_OBJS="tclLoadShl.o"
		DL_LIBS="-ldld"
		LDFLAGS="$LDFLAGS -Wl,-E"
		CC_SEARCH_FLAGS='-Wl,+s,+b,${LIB_RUNTIME_DIR}:.'
		LD_SEARCH_FLAGS='+s +b ${LIB_RUNTIME_DIR}:.'
		LD_LIBRARY_PATH_VAR="SHLIB_PATH"
	    fi
	    ;;
	IRIX-4.*)
	    SHLIB_CFLAGS="-G 0"
	    SHLIB_SUFFIX=".a"
	    SHLIB_LD="echo tclLdAout $CC \{$SHLIB_CFLAGS\} | `pwd`/tclsh -r -G 0"
	    SHLIB_LD_LIBS='${LIBS}'
	    DL_OBJS="tclLoadAout.o"
	    DL_LIBS=""
	    LDFLAGS="$LDFLAGS -Wl,-D,08000000"
	    CC_SEARCH_FLAGS='-L${LIB_RUNTIME_DIR}'
	    LD_SEARCH_FLAGS=${CC_SEARCH_FLAGS}
	    SHARED_LIB_SUFFIX='${VERSION}\$\{DBGX\}.a'
	    ;;
	IRIX-5.*)
	    SHLIB_CFLAGS=""
	    SHLIB_LD="ld -shared -rdata_shared"
	    SHLIB_LD_LIBS='${LIBS}'
	    SHLIB_SUFFIX=".so"
	    DL_OBJS="tclLoadDl.o"
	    DL_LIBS=""
	    CC_SEARCH_FLAGS='-Wl,-rpath,${LIB_RUNTIME_DIR}'
	    LD_SEARCH_FLAGS='-rpath ${LIB_RUNTIME_DIR}'
	    ;;
	IRIX-6.*)
	    SHLIB_CFLAGS=""
	    SHLIB_LD="ld -n32 -shared -rdata_shared"
	    SHLIB_LD_LIBS='${LIBS}'
	    SHLIB_SUFFIX=".so"
	    DL_OBJS="tclLoadDl.o"
	    DL_LIBS=""
	    CC_SEARCH_FLAGS='-Wl,-rpath,${LIB_RUNTIME_DIR}'
	    LD_SEARCH_FLAGS='-rpath ${LIB_RUNTIME_DIR}'
	    if test "$GCC" = "yes" ; then
		CFLAGS="$CFLAGS -mabi=n32"
		LDFLAGS="$LDFLAGS -mabi=n32"
	    else
		case $system in
		    IRIX-6.3)
			# Use to build 6.2 compatible binaries on 6.3.
			CFLAGS="$CFLAGS -n32 -D_OLD_TERMIOS"
			;;
		    *)
			CFLAGS="$CFLAGS -n32"
			;;
		esac
		LDFLAGS="$LDFLAGS -n32"
	    fi
	    ;;
	IRIX64-6.*)
	    SHLIB_CFLAGS=""
	    SHLIB_LD="ld -n32 -shared -rdata_shared"
	    SHLIB_LD_LIBS='${LIBS}'
	    SHLIB_SUFFIX=".so"
	    DL_OBJS="tclLoadDl.o"
	    DL_LIBS=""
	    CC_SEARCH_FLAGS='-Wl,-rpath,${LIB_RUNTIME_DIR}'
	    LD_SEARCH_FLAGS='-rpath ${LIB_RUNTIME_DIR}'

	    # Check to enable 64-bit flags for compiler/linker

	    if test "$do64bit" = "yes" ; then
	        if test "$GCC" = "yes" ; then
	            AC_MSG_WARN([64bit mode not supported by gcc])
	        else
	            do64bit_ok=yes
	            SHLIB_LD="ld -64 -shared -rdata_shared"
	            CFLAGS="$CFLAGS -64"
	            LDFLAGS="$LDFLAGS -64"
	        fi
	    fi
	    ;;
	Linux*)
	    SHLIB_CFLAGS="-fPIC"
	    SHLIB_LD_LIBS='${LIBS}'
	    SHLIB_SUFFIX=".so"

	    CFLAGS_OPTIMIZE=-O2
	    # egcs-2.91.66 on Redhat Linux 6.0 generates lots of warnings
	    # when you inline the string and math operations.  Turn this off to
	    # get rid of the warnings.
	    #CFLAGS_OPTIMIZE="${CFLAGS_OPTIMIZE} -D__NO_STRING_INLINES -D__NO_MATH_INLINES"

	    if test "$have_dl" = yes; then
		SHLIB_LD="${CC} -shared"
		DL_OBJS="tclLoadDl.o"
		DL_LIBS="-ldl"
		LDFLAGS="$LDFLAGS -Wl,--export-dynamic"
		CC_SEARCH_FLAGS='-Wl,-rpath,${LIB_RUNTIME_DIR}'
		LD_SEARCH_FLAGS=${CC_SEARCH_FLAGS}
	    else
		AC_CHECK_HEADER(dld.h, [
		    SHLIB_LD="ld -shared"
		    DL_OBJS="tclLoadDld.o"
		    DL_LIBS="-ldld"
		    CC_SEARCH_FLAGS=""
		    LD_SEARCH_FLAGS=""])
	    fi
	    if test "`uname -m`" = "alpha" ; then
		CFLAGS="$CFLAGS -mieee"
	    fi

	    # The combo of gcc + glibc has a bug related
	    # to inlining of functions like strtod(). The
	    # -fno-builtin flag should address this problem
	    # but it does not work. The -fno-inline flag
	    # is kind of overkill but it works.
	    # Disable inlining only when one of the
	    # files in compat/*.c is being linked in.
	    if test x"${LIBOBJS}" != x ; then
	        CFLAGS="$CFLAGS -fno-inline"
	    fi

	    # XIM peeking works under XFree86.
	    AC_DEFINE(PEEK_XCLOSEIM)

	    ;;
	GNU*)
	    SHLIB_CFLAGS="-fPIC"
	    SHLIB_LD_LIBS='${LIBS}'
	    SHLIB_SUFFIX=".so"

	    if test "$have_dl" = yes; then
		SHLIB_LD="${CC} -shared"
		DL_OBJS=""
		DL_LIBS="-ldl"
		LDFLAGS="$LDFLAGS -Wl,--export-dynamic"
		CC_SEARCH_FLAGS=""
		LD_SEARCH_FLAGS=""
	    else
		AC_CHECK_HEADER(dld.h, [
		    SHLIB_LD="ld -shared"
		    DL_OBJS=""
		    DL_LIBS="-ldld"
		    CC_SEARCH_FLAGS=""
		    LD_SEARCH_FLAGS=""])
	    fi
	    if test "`uname -m`" = "alpha" ; then
		CFLAGS="$CFLAGS -mieee"
	    fi
	    ;;
	MP-RAS-02*)
	    SHLIB_CFLAGS="-K PIC"
	    SHLIB_LD="cc -G"
	    SHLIB_LD_LIBS=""
	    SHLIB_SUFFIX=".so"
	    DL_OBJS="tclLoadDl.o"
	    DL_LIBS="-ldl"
	    CC_SEARCH_FLAGS=""
	    LD_SEARCH_FLAGS=""
	    ;;
	MP-RAS-*)
	    SHLIB_CFLAGS="-K PIC"
	    SHLIB_LD="cc -G"
	    SHLIB_LD_LIBS=""
	    SHLIB_SUFFIX=".so"
	    DL_OBJS="tclLoadDl.o"
	    DL_LIBS="-ldl"
	    LDFLAGS="$LDFLAGS -Wl,-Bexport"
	    CC_SEARCH_FLAGS=""
	    LD_SEARCH_FLAGS=""
	    ;;
	NetBSD-*|FreeBSD-[[1-2]].*)
	    # Not available on all versions:  check for include file.
	    AC_CHECK_HEADER(dlfcn.h, [
		# NetBSD/SPARC needs -fPIC, -fpic will not do.
		SHLIB_CFLAGS="-fPIC"
		SHLIB_LD="ld -Bshareable -x"
		SHLIB_LD_LIBS=""
		SHLIB_SUFFIX=".so"
		DL_OBJS="tclLoadDl.o"
		DL_LIBS=""
		CC_SEARCH_FLAGS='-Wl,-rpath,${LIB_RUNTIME_DIR}'
		LD_SEARCH_FLAGS='-rpath ${LIB_RUNTIME_DIR}'
		AC_MSG_CHECKING(for ELF)
		AC_EGREP_CPP(yes, [
#ifdef __ELF__
	yes
#endif
		],
		    AC_MSG_RESULT(yes)
		    SHARED_LIB_SUFFIX='${TCL_TRIM_DOTS}\$\{DBGX\}.so',
		    AC_MSG_RESULT(no)
		    SHARED_LIB_SUFFIX='${TCL_TRIM_DOTS}\$\{DBGX\}.so.1.0'
		)
	    ], [
		SHLIB_CFLAGS=""
		SHLIB_LD="echo tclLdAout $CC \{$SHLIB_CFLAGS\} | `pwd`/tclsh -r"
		SHLIB_LD_LIBS='${LIBS}'
		SHLIB_SUFFIX=".a"
		DL_OBJS="tclLoadAout.o"
		DL_LIBS=""
		CC_SEARCH_FLAGS='-L${LIB_RUNTIME_DIR}'
		LD_SEARCH_FLAGS=${CC_SEARCH_FLAGS}
		SHARED_LIB_SUFFIX='${TCL_TRIM_DOTS}\$\{DBGX\}.a'
	    ])

	    # FreeBSD doesn't handle version numbers with dots.

	    UNSHARED_LIB_SUFFIX='${TCL_TRIM_DOTS}\$\{DBGX\}.a'
	    TCL_LIB_VERSIONS_OK=nodots
	    ;;
	OpenBSD-*)
	    SHLIB_LD="${CC} -shared"
	    SHLIB_LD_LIBS='${LIBS}'
	    SHLIB_SUFFIX=".so"
	    DL_OBJS="tclLoadDl.o"
	    DL_LIBS=""
	    CC_SEARCH_FLAGS=""
	    LD_SEARCH_FLAGS=""
	    AC_MSG_CHECKING(for ELF)
	    AC_EGREP_CPP(yes, [
#ifdef __ELF__
	yes
#endif
	    ],
		[AC_MSG_RESULT(yes)
		SHARED_LIB_SUFFIX='${TCL_TRIM_DOTS}\$\{DBGX\}.so.1.0'],
		[AC_MSG_RESULT(no)
		SHARED_LIB_SUFFIX='${TCL_TRIM_DOTS}\$\{DBGX\}.so.1.0']
	    )

	    # OpenBSD doesn't do version numbers with dots.
	    UNSHARED_LIB_SUFFIX='${TCL_TRIM_DOTS}\$\{DBGX\}.a'
	    TCL_LIB_VERSIONS_OK=nodots
	    ;;
	FreeBSD-*)
	    # FreeBSD 3.* and greater have ELF.
	    SHLIB_CFLAGS="-fPIC"
	    SHLIB_LD="ld -Bshareable -x"
	    SHLIB_LD_LIBS='${LIBS}'
	    SHLIB_SUFFIX=".so"
	    DL_OBJS="tclLoadDl.o"
	    DL_LIBS=""
	    LDFLAGS="$LDFLAGS -export-dynamic"
	    CC_SEARCH_FLAGS='-Wl,-rpath,${LIB_RUNTIME_DIR}'
	    LD_SEARCH_FLAGS='-rpath ${LIB_RUNTIME_DIR}'
	    if test "${TCL_THREADS}" = "1" ; then
		# The -pthread needs to go in the CFLAGS, not LIBS
		LIBS=`echo $LIBS | sed s/-pthread//`
		CFLAGS="$CFLAGS -pthread"
	    	LDFLAGS="$LDFLAGS -pthread"
	    fi
	    case $system in
	    FreeBSD-3.*)
	    	# FreeBSD-3 doesn't handle version numbers with dots.
	    	UNSHARED_LIB_SUFFIX='${TCL_TRIM_DOTS}\$\{DBGX\}.a'
	    	SHARED_LIB_SUFFIX='${TCL_TRIM_DOTS}\$\{DBGX\}.so'
	    	TCL_LIB_VERSIONS_OK=nodots
		;;
	    esac
	    ;;
	Rhapsody-*|Darwin-*)
	    SHLIB_CFLAGS="-fno-common"
	    SHLIB_LD="cc -dynamiclib \${LDFLAGS}"
	    TCL_SHLIB_LD_EXTRAS="-compatibility_version ${TCL_VERSION} -current_version \${VERSION} -install_name \${DYLIB_INSTALL_DIR}/\${TCL_LIB_FILE} -prebind -seg1addr 0xa000000"
	    TK_SHLIB_LD_EXTRAS="-compatibility_version ${TK_VERSION} -current_version \${VERSION} -install_name \${DYLIB_INSTALL_DIR}/\${TK_LIB_FILE} -prebind -seg1addr 0xb000000"
	    SHLIB_LD_LIBS='${LIBS}'
	    SHLIB_SUFFIX=".dylib"
	    DL_OBJS="tclLoadDyld.o"
	    PLAT_OBJS="tclMacOSXBundle.o"
	    DL_LIBS=""
	    LDFLAGS="$LDFLAGS -prebind"
	    CC_SEARCH_FLAGS=""
	    LD_SEARCH_FLAGS=""
	    CFLAGS_OPTIMIZE="-Os"
	    LD_LIBRARY_PATH_VAR="DYLD_LIBRARY_PATH"
	    AC_DEFINE(MAC_OSX_TCL)
	    AC_DEFINE(HAVE_CFBUNDLE)
	    AC_DEFINE(USE_VFORK)
	    AC_DEFINE_UNQUOTED(TCL_DEFAULT_ENCODING,"utf-8")
	    LIBS="$LIBS -framework CoreFoundation"
	    ;;
	NEXTSTEP-*)
	    SHLIB_CFLAGS=""
	    SHLIB_LD="cc -nostdlib -r"
	    SHLIB_LD_LIBS=""
	    SHLIB_SUFFIX=".so"
	    DL_OBJS="tclLoadNext.o"
	    DL_LIBS=""
	    CC_SEARCH_FLAGS=""
	    LD_SEARCH_FLAGS=""
	    ;;
	OS/390-*)
	    CFLAGS_OPTIMIZE=""      # Optimizer is buggy
	    AC_DEFINE(_OE_SOCKETS)  # needed in sys/socket.h
	    ;;
	OSF1-1.0|OSF1-1.1|OSF1-1.2)
	    # OSF/1 1.[012] from OSF, and derivatives, including Paragon OSF/1
	    SHLIB_CFLAGS=""
	    # Hack: make package name same as library name
	    SHLIB_LD='ld -R -export $@:'
	    SHLIB_LD_LIBS=""
	    SHLIB_SUFFIX=".so"
	    DL_OBJS="tclLoadOSF.o"
	    DL_LIBS=""
	    CC_SEARCH_FLAGS=""
	    LD_SEARCH_FLAGS=""
	    ;;
	OSF1-1.*)
	    # OSF/1 1.3 from OSF using ELF, and derivatives, including AD2
	    SHLIB_CFLAGS="-fPIC"
	    if test "$SHARED_BUILD" = "1" ; then
	        SHLIB_LD="ld -shared"
	    else
	        SHLIB_LD="ld -non_shared"
	    fi
	    SHLIB_LD_LIBS=""
	    SHLIB_SUFFIX=".so"
	    DL_OBJS="tclLoadDl.o"
	    DL_LIBS=""
	    CC_SEARCH_FLAGS=""
	    LD_SEARCH_FLAGS=""
	    ;;
	OSF1-V*)
	    # Digital OSF/1
	    SHLIB_CFLAGS=""
	    if test "$SHARED_BUILD" = "1" ; then
	        SHLIB_LD='ld -shared -expect_unresolved "*"'
	    else
	        SHLIB_LD='ld -non_shared -expect_unresolved "*"'
	    fi
	    SHLIB_LD_LIBS=""
	    SHLIB_SUFFIX=".so"
	    DL_OBJS="tclLoadDl.o"
	    DL_LIBS=""
	    CC_SEARCH_FLAGS='-Wl,-rpath,${LIB_RUNTIME_DIR}'
	    LD_SEARCH_FLAGS='-rpath ${LIB_RUNTIME_DIR}'
	    if test "$GCC" = "yes" ; then
		CFLAGS="$CFLAGS -mieee"
            else
		CFLAGS="$CFLAGS -DHAVE_TZSET -std1 -ieee"
	    fi
	    # see pthread_intro(3) for pthread support on osf1, k.furukawa
	    if test "${TCL_THREADS}" = "1" ; then
		CFLAGS="$CFLAGS -DHAVE_PTHREAD_ATTR_SETSTACKSIZE"
		CFLAGS="$CFLAGS -DTCL_THREAD_STACK_MIN=PTHREAD_STACK_MIN*64"
		LIBS=`echo $LIBS | sed s/-lpthreads//`
		if test "$GCC" = "yes" ; then
		    LIBS="$LIBS -lpthread -lmach -lexc"
		else
		    CFLAGS="$CFLAGS -pthread"
		    LDFLAGS="$LDFLAGS -pthread"
		fi
	    fi

	    ;;
	QNX-6*)
	    # QNX RTP
	    # This may work for all QNX, but it was only reported for v6.
	    SHLIB_CFLAGS="-fPIC"
	    SHLIB_LD="ld -Bshareable -x"
	    SHLIB_LD_LIBS=""
	    SHLIB_SUFFIX=".so"
	    DL_OBJS="tclLoadDl.o"
	    # dlopen is in -lc on QNX
	    DL_LIBS=""
	    CC_SEARCH_FLAGS=""
	    LD_SEARCH_FLAGS=""
	    ;;
	RISCos-*)
	    SHLIB_CFLAGS="-G 0"
	    SHLIB_LD="echo tclLdAout $CC \{$SHLIB_CFLAGS\} | `pwd`/tclsh -r -G 0"
	    SHLIB_LD_LIBS='${LIBS}'
	    SHLIB_SUFFIX=".a"
	    DL_OBJS="tclLoadAout.o"
	    DL_LIBS=""
	    LDFLAGS="$LDFLAGS -Wl,-D,08000000"
	    CC_SEARCH_FLAGS='-L${LIB_RUNTIME_DIR}'
	    LD_SEARCH_FLAGS=${CC_SEARCH_FLAGS}
	    ;;
	SCO_SV-3.2*)
	    # Note, dlopen is available only on SCO 3.2.5 and greater. However,
	    # this test works, since "uname -s" was non-standard in 3.2.4 and
	    # below.
	    if test "$GCC" = "yes" ; then
	    	SHLIB_CFLAGS="-fPIC -melf"
	    	LDFLAGS="$LDFLAGS -melf -Wl,-Bexport"
	    else
	    	SHLIB_CFLAGS="-Kpic -belf"
	    	LDFLAGS="$LDFLAGS -belf -Wl,-Bexport"
	    fi
	    SHLIB_LD="ld -G"
	    SHLIB_LD_LIBS=""
	    SHLIB_SUFFIX=".so"
	    DL_OBJS="tclLoadDl.o"
	    DL_LIBS=""
	    CC_SEARCH_FLAGS=""
	    LD_SEARCH_FLAGS=""
	    ;;
	SINIX*5.4*)
	    SHLIB_CFLAGS="-K PIC"
	    SHLIB_LD="cc -G"
	    SHLIB_LD_LIBS=""
	    SHLIB_SUFFIX=".so"
	    DL_OBJS="tclLoadDl.o"
	    DL_LIBS="-ldl"
	    CC_SEARCH_FLAGS=""
	    LD_SEARCH_FLAGS=""
	    ;;
	SunOS-4*)
	    SHLIB_CFLAGS="-PIC"
	    SHLIB_LD="ld"
	    SHLIB_LD_LIBS=""
	    SHLIB_SUFFIX=".so"
	    DL_OBJS="tclLoadDl.o"
	    DL_LIBS="-ldl"
	    CC_SEARCH_FLAGS='-L${LIB_RUNTIME_DIR}'
	    LD_SEARCH_FLAGS=${CC_SEARCH_FLAGS}

	    # SunOS can't handle version numbers with dots in them in library
	    # specs, like -ltcl7.5, so use -ltcl75 instead.  Also, it
	    # requires an extra version number at the end of .so file names.
	    # So, the library has to have a name like libtcl75.so.1.0

	    SHARED_LIB_SUFFIX='${TCL_TRIM_DOTS}\$\{DBGX\}.so.1.0'
	    UNSHARED_LIB_SUFFIX='${TCL_TRIM_DOTS}\$\{DBGX\}.a'
	    TCL_LIB_VERSIONS_OK=nodots
	    ;;
	SunOS-5.[[0-6]]*)

	    # Note: If _REENTRANT isn't defined, then Solaris
	    # won't define thread-safe library routines.

	    AC_DEFINE(_REENTRANT)
	    AC_DEFINE(_POSIX_PTHREAD_SEMANTICS)

	    SHLIB_CFLAGS="-KPIC"

	    # Note: need the LIBS below, otherwise Tk won't find Tcl's
	    # symbols when dynamically loaded into tclsh.

	    SHLIB_LD_LIBS='${LIBS}'
	    SHLIB_SUFFIX=".so"
	    DL_OBJS="tclLoadDl.o"
	    DL_LIBS="-ldl"
	    if test "$GCC" = "yes" ; then
		SHLIB_LD="$CC -shared"
		CC_SEARCH_FLAGS='-Wl,-R,${LIB_RUNTIME_DIR}'
		LD_SEARCH_FLAGS=${CC_SEARCH_FLAGS}
	    else
		SHLIB_LD="/usr/ccs/bin/ld -G -z text"
		CC_SEARCH_FLAGS='-R ${LIB_RUNTIME_DIR}'
		LD_SEARCH_FLAGS=${CC_SEARCH_FLAGS}
	    fi
	    ;;
	SunOS-5*)

	    # Note: If _REENTRANT isn't defined, then Solaris
	    # won't define thread-safe library routines.

	    AC_DEFINE(_REENTRANT)
	    AC_DEFINE(_POSIX_PTHREAD_SEMANTICS)

	    SHLIB_CFLAGS="-KPIC"

	    # Check to enable 64-bit flags for compiler/linker
	    if test "$do64bit" = "yes" ; then
		arch=`isainfo`
		if test "$arch" = "sparcv9 sparc" ; then
			if test "$GCC" = "yes" ; then
			    AC_MSG_WARN("64bit mode not supported with GCC on $system")
			else
			    do64bit_ok=yes
			    if test "$do64bitVIS" = "yes" ; then
				CFLAGS="$CFLAGS -xarch=v9a"
			    	LDFLAGS="$LDFLAGS -xarch=v9a"
			    else
				CFLAGS="$CFLAGS -xarch=v9"
			    	LDFLAGS="$LDFLAGS -xarch=v9"
			    fi
			fi
		else
		    AC_MSG_WARN("64bit mode only supported sparcv9 system")
		fi
	    fi

	    # Note: need the LIBS below, otherwise Tk won't find Tcl's
	    # symbols when dynamically loaded into tclsh.

	    SHLIB_LD_LIBS='${LIBS}'
	    SHLIB_SUFFIX=".so"
	    DL_OBJS="tclLoadDl.o"
	    DL_LIBS="-ldl"
	    if test "$GCC" = "yes" ; then
		SHLIB_LD="$CC -shared"
		CC_SEARCH_FLAGS='-Wl,-R,${LIB_RUNTIME_DIR}'
		LD_SEARCH_FLAGS=${CC_SEARCH_FLAGS}
	    else
		SHLIB_LD="/usr/ccs/bin/ld -G -z text"
		CC_SEARCH_FLAGS='-Wl,-R,${LIB_RUNTIME_DIR}'
		LD_SEARCH_FLAGS='-R ${LIB_RUNTIME_DIR}'
	    fi
	    ;;
	ULTRIX-4.*)
	    SHLIB_CFLAGS="-G 0"
	    SHLIB_SUFFIX=".a"
	    SHLIB_LD="echo tclLdAout $CC \{$SHLIB_CFLAGS\} | `pwd`/tclsh -r -G 0"
	    SHLIB_LD_LIBS='${LIBS}'
	    DL_OBJS="tclLoadAout.o"
	    DL_LIBS=""
	    LDFLAGS="$LDFLAGS -Wl,-D,08000000"
	    CC_SEARCH_FLAGS='-L${LIB_RUNTIME_DIR}'
	    LD_SEARCH_FLAGS=${CC_SEARCH_FLAGS}
	    if test "$GCC" != "yes" ; then
		CFLAGS="$CFLAGS -DHAVE_TZSET -std1"
	    fi
	    ;;
	UNIX_SV* | UnixWare-5*)
	    SHLIB_CFLAGS="-KPIC"
	    SHLIB_LD="cc -G"
	    SHLIB_LD_LIBS=""
	    SHLIB_SUFFIX=".so"
	    DL_OBJS="tclLoadDl.o"
	    DL_LIBS="-ldl"
	    # Some UNIX_SV* systems (unixware 1.1.2 for example) have linkers
	    # that don't grok the -Bexport option.  Test that it does.
	    hold_ldflags=$LDFLAGS
	    AC_MSG_CHECKING(for ld accepts -Bexport flag)
	    LDFLAGS="$LDFLAGS -Wl,-Bexport"
	    AC_TRY_LINK(, [int i;], [found=yes],
			[LDFLAGS=$hold_ldflags found=no])
	    AC_MSG_RESULT($found)
	    CC_SEARCH_FLAGS=""
	    LD_SEARCH_FLAGS=""
	    ;;
    esac

    if test "$do64bit" = "yes" -a "$do64bit_ok" = "no" ; then
    AC_MSG_WARN("64bit support being disabled -- don\'t know magic for this platform")
    fi

    # Step 4: If pseudo-static linking is in use (see K. B. Kenny, "Dynamic
    # Loading for Tcl -- What Became of It?".  Proc. 2nd Tcl/Tk Workshop,
    # New Orleans, LA, Computerized Processes Unlimited, 1994), then we need
    # to determine which of several header files defines the a.out file
    # format (a.out.h, sys/exec.h, or sys/exec_aout.h).  At present, we
    # support only a file format that is more or less version-7-compatible.
    # In particular,
    #	- a.out files must begin with `struct exec'.
    #	- the N_TXTOFF on the `struct exec' must compute the seek address
    #	  of the text segment
    #	- The `struct exec' must contain a_magic, a_text, a_data, a_bss
    #	  and a_entry fields.
    # The following compilation should succeed if and only if either sys/exec.h
    # or a.out.h is usable for the purpose.
    #
    # Note that the modified COFF format used on MIPS Ultrix 4.x is usable; the
    # `struct exec' includes a second header that contains information that
    # duplicates the v7 fields that are needed.

    if test "x$DL_OBJS" = "xtclLoadAout.o" ; then
	AC_MSG_CHECKING(sys/exec.h)
	AC_TRY_COMPILE([#include <sys/exec.h>],[
	    struct exec foo;
	    unsigned long seek;
	    int flag;
#if defined(__mips) || defined(mips)
	    seek = N_TXTOFF (foo.ex_f, foo.ex_o);
#else
	    seek = N_TXTOFF (foo);
#endif
	    flag = (foo.a_magic == OMAGIC);
	    return foo.a_text + foo.a_data + foo.a_bss + foo.a_entry;
    ], tcl_ok=usable, tcl_ok=unusable)
	AC_MSG_RESULT($tcl_ok)
	if test $tcl_ok = usable; then
	    AC_DEFINE(USE_SYS_EXEC_H)
	else
	    AC_MSG_CHECKING(a.out.h)
	    AC_TRY_COMPILE([#include <a.out.h>],[
		struct exec foo;
		unsigned long seek;
		int flag;
#if defined(__mips) || defined(mips)
		seek = N_TXTOFF (foo.ex_f, foo.ex_o);
#else
		seek = N_TXTOFF (foo);
#endif
		flag = (foo.a_magic == OMAGIC);
		return foo.a_text + foo.a_data + foo.a_bss + foo.a_entry;
	    ], tcl_ok=usable, tcl_ok=unusable)
	    AC_MSG_RESULT($tcl_ok)
	    if test $tcl_ok = usable; then
		AC_DEFINE(USE_A_OUT_H)
	    else
		AC_MSG_CHECKING(sys/exec_aout.h)
		AC_TRY_COMPILE([#include <sys/exec_aout.h>],[
		    struct exec foo;
		    unsigned long seek;
		    int flag;
#if defined(__mips) || defined(mips)
		    seek = N_TXTOFF (foo.ex_f, foo.ex_o);
#else
		    seek = N_TXTOFF (foo);
#endif
		    flag = (foo.a_midmag == OMAGIC);
		    return foo.a_text + foo.a_data + foo.a_bss + foo.a_entry;
		], tcl_ok=usable, tcl_ok=unusable)
		AC_MSG_RESULT($tcl_ok)
		if test $tcl_ok = usable; then
		    AC_DEFINE(USE_SYS_EXEC_AOUT_H)
		else
		    DL_OBJS=""
		fi
	    fi
	fi
    fi

    # Step 5: disable dynamic loading if requested via a command-line switch.

    AC_ARG_ENABLE(load, [  --disable-load          disallow dynamic loading and "load" command],
	[tcl_ok=$enableval], [tcl_ok=yes])
    if test "$tcl_ok" = "no"; then
	DL_OBJS=""
    fi

    if test "x$DL_OBJS" != "x" ; then
	BUILD_DLTEST="\$(DLTEST_TARGETS)"
    else
	echo "Can't figure out how to do dynamic loading or shared libraries"
	echo "on this system."
	SHLIB_CFLAGS=""
	SHLIB_LD=""
	SHLIB_SUFFIX=""
	DL_OBJS="tclLoadNone.o"
	DL_LIBS=""
	LDFLAGS="$LDFLAGS_ORIG"
	CC_SEARCH_FLAGS=""
	LD_SEARCH_FLAGS=""
	BUILD_DLTEST=""
    fi

    # If we're running gcc, then change the C flags for compiling shared
    # libraries to the right flags for gcc, instead of those for the
    # standard manufacturer compiler.

    if test "$DL_OBJS" != "tclLoadNone.o" ; then
	if test "$GCC" = "yes" ; then
	    case $system in
		AIX-*)
		    ;;
		BSD/OS*)
		    ;;
		IRIX*)
		    ;;
		NetBSD-*|FreeBSD-*|OpenBSD-*)
		    ;;
		Rhapsody-*|Darwin-*)
		    ;;
		RISCos-*)
		    ;;
		SCO_SV-3.2*)
		    ;;
		ULTRIX-4.*)
		    ;;
		*)
		    SHLIB_CFLAGS="-fPIC"
		    ;;
	    esac
	fi
    fi

    if test "$SHARED_LIB_SUFFIX" = "" ; then
	SHARED_LIB_SUFFIX='${VERSION}\$\{DBGX\}${SHLIB_SUFFIX}'
    fi
    if test "$UNSHARED_LIB_SUFFIX" = "" ; then
	UNSHARED_LIB_SUFFIX='${VERSION}\$\{DBGX\}.a'
    fi

    if test "${SHARED_BUILD}" = "1" && test "${SHLIB_SUFFIX}" != "" ; then
        LIB_SUFFIX=${SHARED_LIB_SUFFIX}
        MAKE_LIB='${SHLIB_LD} -o [$]@ ${SHLIB_LD_FLAGS} ${OBJS} ${SHLIB_LD_LIBS} ${TCL_SHLIB_LD_EXTRAS} ${TK_SHLIB_LD_EXTRAS} ${LD_SEARCH_FLAGS}'
        INSTALL_LIB='$(INSTALL_LIBRARY) $(LIB_FILE) $(LIB_INSTALL_DIR)/$(LIB_FILE)'
    else
        LIB_SUFFIX=${UNSHARED_LIB_SUFFIX}

        if test "$RANLIB" = "" ; then
            MAKE_LIB='$(STLIB_LD) [$]@ ${OBJS}'
            INSTALL_LIB='$(INSTALL_LIBRARY) $(LIB_FILE) $(LIB_INSTALL_DIR)/$(LIB_FILE)'
        else
            MAKE_LIB='${STLIB_LD} [$]@ ${OBJS} ; ${RANLIB} [$]@'
            INSTALL_LIB='$(INSTALL_LIBRARY) $(LIB_FILE) $(LIB_INSTALL_DIR)/$(LIB_FILE) ; (cd $(LIB_INSTALL_DIR) ; $(RANLIB) $(LIB_FILE))'
        fi

dnl        Not at all clear what this was doing in Tcl's configure.in
dnl        or why it was needed was needed. In any event, this sort of
dnl        things needs to be done in the big loop above.
dnl        REMOVE THIS BLOCK LATER! (mdejong)
dnl        case $system in
dnl            BSD/OS*)
dnl                ;;
dnl            AIX-[[1-4]].*)
dnl                ;;
dnl            *)
dnl                SHLIB_LD_LIBS=""
dnl                ;;
dnl        esac
    fi


    # Stub lib does not depend on shared/static configuration
    if test "$RANLIB" = "" ; then
        MAKE_STUB_LIB='${STLIB_LD} [$]@ ${STUB_LIB_OBJS}'
        INSTALL_STUB_LIB='$(INSTALL_LIBRARY) $(STUB_LIB_FILE) $(LIB_INSTALL_DIR)/$(STUB_LIB_FILE)'
    else
        MAKE_STUB_LIB='${STLIB_LD} [$]@ ${STUB_LIB_OBJS} ; ${RANLIB} [$]@'
        INSTALL_STUB_LIB='$(INSTALL_LIBRARY) $(STUB_LIB_FILE) $(LIB_INSTALL_DIR)/$(STUB_LIB_FILE) ; (cd $(LIB_INSTALL_DIR) ; $(RANLIB) $(STUB_LIB_FILE))'
    fi


    AC_SUBST(DL_LIBS)

    AC_SUBST(DL_OBJS)
    AC_SUBST(PLAT_OBJS)
    AC_SUBST(CFLAGS)
    AC_SUBST(CFLAGS_DEBUG)
    AC_SUBST(CFLAGS_OPTIMIZE)
    AC_SUBST(CFLAGS_WARNING)

    AC_SUBST(LDFLAGS)
    AC_SUBST(LDFLAGS_DEBUG)
    AC_SUBST(LDFLAGS_OPTIMIZE)
    AC_SUBST(CC_SEARCH_FLAGS)
    AC_SUBST(LD_SEARCH_FLAGS)

    AC_SUBST(STLIB_LD)
    AC_SUBST(SHLIB_LD)
    AC_SUBST(TCL_SHLIB_LD_EXTRAS)
    AC_SUBST(TK_SHLIB_LD_EXTRAS)
    AC_SUBST(SHLIB_LD_FLAGS)
    AC_SUBST(SHLIB_LD_LIBS)
    AC_SUBST(SHLIB_CFLAGS)
    AC_SUBST(SHLIB_SUFFIX)

    AC_SUBST(MAKE_LIB)
    AC_SUBST(MAKE_STUB_LIB)
    AC_SUBST(INSTALL_LIB)
    AC_SUBST(INSTALL_STUB_LIB)
    AC_SUBST(RANLIB)
])

#--------------------------------------------------------------------
# SC_SERIAL_PORT
#
#	Determine which interface to use to talk to the serial port.
#	Note that #include lines must begin in leftmost column for
#	some compilers to recognize them as preprocessor directives,
#	and some build environments have stdin not pointing at a
#	pseudo-terminal (usually /dev/null instead.)
#
# Arguments:
#	none
#
# Results:
#
#	Defines only one of the following vars:
#		HAVE_SYS_MODEM_H
#		USE_TERMIOS
#		USE_TERMIO
#		USE_SGTTY
#
#--------------------------------------------------------------------

AC_DEFUN(SC_SERIAL_PORT, [
    AC_CHECK_HEADERS(sys/modem.h)
    AC_MSG_CHECKING([termios vs. termio vs. sgtty])
    AC_CACHE_VAL(tcl_cv_api_serial, [
    AC_TRY_RUN([
#include <termios.h>

int main() {
    struct termios t;
    if (tcgetattr(0, &t) == 0) {
	cfsetospeed(&t, 0);
	t.c_cflag |= PARENB | PARODD | CSIZE | CSTOPB;
	return 0;
    }
    return 1;
}], tcl_cv_api_serial=termios, tcl_cv_api_serial=no, tcl_cv_api_serial=no)
    if test $tcl_cv_api_serial = no ; then
	AC_TRY_RUN([
#include <termio.h>

int main() {
    struct termio t;
    if (ioctl(0, TCGETA, &t) == 0) {
	t.c_cflag |= CBAUD | PARENB | PARODD | CSIZE | CSTOPB;
	return 0;
    }
    return 1;
}], tcl_cv_api_serial=termio, tcl_cv_api_serial=no, tcl_cv_api_serial=no)
    fi
    if test $tcl_cv_api_serial = no ; then
	AC_TRY_RUN([
#include <sgtty.h>

int main() {
    struct sgttyb t;
    if (ioctl(0, TIOCGETP, &t) == 0) {
	t.sg_ospeed = 0;
	t.sg_flags |= ODDP | EVENP | RAW;
	return 0;
    }
    return 1;
}], tcl_cv_api_serial=sgtty, tcl_cv_api_serial=no, tcl_cv_api_serial=no)
    fi
    if test $tcl_cv_api_serial = no ; then
	AC_TRY_RUN([
#include <termios.h>
#include <errno.h>

int main() {
    struct termios t;
    if (tcgetattr(0, &t) == 0
	|| errno == ENOTTY || errno == ENXIO || errno == EINVAL) {
	cfsetospeed(&t, 0);
	t.c_cflag |= PARENB | PARODD | CSIZE | CSTOPB;
	return 0;
    }
    return 1;
}], tcl_cv_api_serial=termios, tcl_cv_api_serial=no, tcl_cv_api_serial=no)
    fi
    if test $tcl_cv_api_serial = no; then
	AC_TRY_RUN([
#include <termio.h>
#include <errno.h>

int main() {
    struct termio t;
    if (ioctl(0, TCGETA, &t) == 0
	|| errno == ENOTTY || errno == ENXIO || errno == EINVAL) {
	t.c_cflag |= CBAUD | PARENB | PARODD | CSIZE | CSTOPB;
	return 0;
    }
    return 1;
    }], tcl_cv_api_serial=termio, tcl_cv_api_serial=no, tcl_cv_api_serial=no)
    fi
    if test $tcl_cv_api_serial = no; then
	AC_TRY_RUN([
#include <sgtty.h>
#include <errno.h>

int main() {
    struct sgttyb t;
    if (ioctl(0, TIOCGETP, &t) == 0
	|| errno == ENOTTY || errno == ENXIO || errno == EINVAL) {
	t.sg_ospeed = 0;
	t.sg_flags |= ODDP | EVENP | RAW;
	return 0;
    }
    return 1;
}], tcl_cv_api_serial=sgtty, tcl_cv_api_serial=none, tcl_cv_api_serial=none)
    fi])
    case $tcl_cv_api_serial in
	termios) AC_DEFINE(USE_TERMIOS);;
	termio)  AC_DEFINE(USE_TERMIO);;
	sgtty)   AC_DEFINE(USE_SGTTY);;
    esac
    AC_MSG_RESULT($tcl_cv_api_serial)
])

#--------------------------------------------------------------------
# SC_MISSING_POSIX_HEADERS
#
#	Supply substitutes for missing POSIX header files.  Special
#	notes:
#	    - stdlib.h doesn't define strtol, strtoul, or
#	      strtod insome versions of SunOS
#	    - some versions of string.h don't declare procedures such
#	      as strstr
#
# Arguments:
#	none
#
# Results:
#
#	Defines some of the following vars:
#		NO_DIRENT_H
#		NO_ERRNO_H
#		NO_VALUES_H
#		HAVE_LIMITS_H or NO_LIMITS_H
#		NO_STDLIB_H
#		NO_STRING_H
#		NO_SYS_WAIT_H
#		NO_DLFCN_H
#		HAVE_UNISTD_H
#		HAVE_SYS_PARAM_H
#
#		HAVE_STRING_H ?
#
#--------------------------------------------------------------------

AC_DEFUN(SC_MISSING_POSIX_HEADERS, [
    AC_MSG_CHECKING(dirent.h)
    AC_TRY_LINK([#include <sys/types.h>
#include <dirent.h>], [
#ifndef _POSIX_SOURCE
#   ifdef __Lynx__
	/*
	 * Generate compilation error to make the test fail:  Lynx headers
	 * are only valid if really in the POSIX environment.
	 */

	missing_procedure();
#   endif
#endif
DIR *d;
struct dirent *entryPtr;
char *p;
d = opendir("foobar");
entryPtr = readdir(d);
p = entryPtr->d_name;
closedir(d);
], tcl_ok=yes, tcl_ok=no)

    if test $tcl_ok = no; then
	AC_DEFINE(NO_DIRENT_H)
    fi

    AC_MSG_RESULT($tcl_ok)
    AC_CHECK_HEADER(errno.h, , [AC_DEFINE(NO_ERRNO_H)])
    AC_CHECK_HEADER(float.h, , [AC_DEFINE(NO_FLOAT_H)])
    AC_CHECK_HEADER(values.h, , [AC_DEFINE(NO_VALUES_H)])
    AC_CHECK_HEADER(limits.h,
	[AC_DEFINE(HAVE_LIMITS_H)], [AC_DEFINE(NO_LIMITS_H)])
    AC_CHECK_HEADER(stdlib.h, tcl_ok=1, tcl_ok=0)
    AC_EGREP_HEADER(strtol, stdlib.h, , tcl_ok=0)
    AC_EGREP_HEADER(strtoul, stdlib.h, , tcl_ok=0)
    AC_EGREP_HEADER(strtod, stdlib.h, , tcl_ok=0)
    if test $tcl_ok = 0; then
	AC_DEFINE(NO_STDLIB_H)
    fi
    AC_CHECK_HEADER(string.h, tcl_ok=1, tcl_ok=0)
    AC_EGREP_HEADER(strstr, string.h, , tcl_ok=0)
    AC_EGREP_HEADER(strerror, string.h, , tcl_ok=0)

    # See also memmove check below for a place where NO_STRING_H can be
    # set and why.

    if test $tcl_ok = 0; then
	AC_DEFINE(NO_STRING_H)
    fi

    AC_CHECK_HEADER(sys/wait.h, , [AC_DEFINE(NO_SYS_WAIT_H)])
    AC_CHECK_HEADER(dlfcn.h, , [AC_DEFINE(NO_DLFCN_H)])

    # OS/390 lacks sys/param.h (and doesn't need it, by chance).

    AC_HAVE_HEADERS(unistd.h sys/param.h)

])

#--------------------------------------------------------------------
# SC_PATH_X
#
#	Locate the X11 header files and the X11 library archive.  Try
#	the ac_path_x macro first, but if it doesn't find the X stuff
#	(e.g. because there's no xmkmf program) then check through
#	a list of possible directories.  Under some conditions the
#	autoconf macro will return an include directory that contains
#	no include files, so double-check its result just to be safe.
#
# Arguments:
#	none
#
# Results:
#
#	Sets the the following vars:
#		XINCLUDES
#		XLIBSW
#
#--------------------------------------------------------------------

AC_DEFUN(SC_PATH_X, [
    AC_PATH_X
    not_really_there=""
    if test "$no_x" = ""; then
	if test "$x_includes" = ""; then
	    AC_TRY_CPP([#include <X11/XIntrinsic.h>], , not_really_there="yes")
	else
	    if test ! -r $x_includes/X11/Intrinsic.h; then
		not_really_there="yes"
	    fi
	fi
    fi
    if test "$no_x" = "yes" -o "$not_really_there" = "yes"; then
	AC_MSG_CHECKING(for X11 header files)
	found_xincludes="no"
	AC_TRY_CPP([#include <X11/Intrinsic.h>], found_xincludes="yes", found_xincludes="no")
	if test "$found_xincludes" = "no"; then
	    dirs="/usr/unsupported/include /usr/local/include /usr/X386/include /usr/X11R6/include /usr/X11R5/include /usr/include/X11R5 /usr/include/X11R4 /usr/openwin/include /usr/X11/include /usr/sww/include"
	    for i in $dirs ; do
		if test -r $i/X11/Intrinsic.h; then
		    AC_MSG_RESULT($i)
		    XINCLUDES=" -I$i"
		    found_xincludes="yes"
		    break
		fi
	    done
	fi
    else
	if test "$x_includes" != ""; then
	    XINCLUDES="-I$x_includes"
	    found_xincludes="yes"
	fi
    fi
    if test found_xincludes = "no"; then
	AC_MSG_RESULT(couldn't find any!)
    fi

    if test "$no_x" = yes; then
	AC_MSG_CHECKING(for X11 libraries)
	XLIBSW=nope
	dirs="/usr/unsupported/lib /usr/local/lib /usr/X386/lib /usr/X11R6/lib /usr/X11R5/lib /usr/lib/X11R5 /usr/lib/X11R4 /usr/openwin/lib /usr/X11/lib /usr/sww/X11/lib"
	for i in $dirs ; do
	    if test -r $i/libX11.a -o -r $i/libX11.so -o -r $i/libX11.sl; then
		AC_MSG_RESULT($i)
		XLIBSW="-L$i -lX11"
		x_libraries="$i"
		break
	    fi
	done
    else
	if test "$x_libraries" = ""; then
	    XLIBSW=-lX11
	else
	    XLIBSW="-L$x_libraries -lX11"
	fi
    fi
    if test "$XLIBSW" = nope ; then
	AC_CHECK_LIB(Xwindow, XCreateWindow, XLIBSW=-lXwindow)
    fi
    if test "$XLIBSW" = nope ; then
	AC_MSG_RESULT(couldn't find any!  Using -lX11.)
	XLIBSW=-lX11
    fi
])
#--------------------------------------------------------------------
# SC_BLOCKING_STYLE
#
#	The statements below check for systems where POSIX-style
#	non-blocking I/O (O_NONBLOCK) doesn't work or is unimplemented.
#	On these systems (mostly older ones), use the old BSD-style
#	FIONBIO approach instead.
#
# Arguments:
#	none
#
# Results:
#
#	Defines some of the following vars:
#		HAVE_SYS_IOCTL_H
#		HAVE_SYS_FILIO_H
#		USE_FIONBIO
#		O_NONBLOCK
#
#--------------------------------------------------------------------

AC_DEFUN(SC_BLOCKING_STYLE, [
    AC_CHECK_HEADERS(sys/ioctl.h)
    AC_CHECK_HEADERS(sys/filio.h)
    AC_MSG_CHECKING([FIONBIO vs. O_NONBLOCK for nonblocking I/O])
    if test -f /usr/lib/NextStep/software_version; then
	system=NEXTSTEP-`awk '/3/,/3/' /usr/lib/NextStep/software_version`
    else
	system=`uname -s`-`uname -r`
	if test "$?" -ne 0 ; then
	    system=unknown
	else
	    # Special check for weird MP-RAS system (uname returns weird
	    # results, and the version is kept in special file).

	    if test -r /etc/.relid -a "X`uname -n`" = "X`uname -s`" ; then
		system=MP-RAS-`awk '{print $3}' /etc/.relid'`
	    fi
	    if test "`uname -s`" = "AIX" ; then
		system=AIX-`uname -v`.`uname -r`
	    fi
	fi
    fi
    case $system in
	# There used to be code here to use FIONBIO under AIX.  However, it
	# was reported that FIONBIO doesn't work under AIX 3.2.5.  Since
	# using O_NONBLOCK seems fine under AIX 4.*, I removed the FIONBIO
	# code (JO, 5/31/97).

	OSF*)
	    AC_DEFINE(USE_FIONBIO)
	    AC_MSG_RESULT(FIONBIO)
	    ;;
	SunOS-4*)
	    AC_DEFINE(USE_FIONBIO)
	    AC_MSG_RESULT(FIONBIO)
	    ;;
	ULTRIX-4.*)
	    AC_DEFINE(USE_FIONBIO)
	    AC_MSG_RESULT(FIONBIO)
	    ;;
	*)
	    AC_MSG_RESULT(O_NONBLOCK)
	    ;;
    esac
])

#--------------------------------------------------------------------
# SC_TIME_HANLDER
#
#	Checks how the system deals with time.h, what time structures
#	are used on the system, and what fields the structures have.
#
# Arguments:
#	none
#
# Results:
#
#	Defines some of the following vars:
#		USE_DELTA_FOR_TZ
#		HAVE_TM_GMTOFF
#		HAVE_TM_TZADJ
#		HAVE_TIMEZONE_VAR
#
#--------------------------------------------------------------------

AC_DEFUN(SC_TIME_HANDLER, [
    AC_CHECK_HEADERS(sys/time.h)
    AC_HEADER_TIME
    AC_STRUCT_TIMEZONE

    AC_CHECK_FUNCS(gmtime_r localtime_r)

    AC_MSG_CHECKING([tm_tzadj in struct tm])
    AC_CACHE_VAL(tcl_cv_member_tm_tzadj,
	AC_TRY_COMPILE([#include <time.h>], [struct tm tm; tm.tm_tzadj;],
	    tcl_cv_member_tm_tzadj=yes, tcl_cv_member_tm_tzadj=no))
    AC_MSG_RESULT($tcl_cv_member_tm_tzadj)
    if test $tcl_cv_member_tm_tzadj = yes ; then
	AC_DEFINE(HAVE_TM_TZADJ)
    fi

    AC_MSG_CHECKING([tm_gmtoff in struct tm])
    AC_CACHE_VAL(tcl_cv_member_tm_gmtoff,
	AC_TRY_COMPILE([#include <time.h>], [struct tm tm; tm.tm_gmtoff;],
	    tcl_cv_member_tm_gmtoff=yes, tcl_cv_member_tm_gmtoff=no))
    AC_MSG_RESULT($tcl_cv_member_tm_gmtoff)
    if test $tcl_cv_member_tm_gmtoff = yes ; then
	AC_DEFINE(HAVE_TM_GMTOFF)
    fi

    #
    # Its important to include time.h in this check, as some systems
    # (like convex) have timezone functions, etc.
    #
    AC_MSG_CHECKING([long timezone variable])
    AC_CACHE_VAL(tcl_cv_var_timezone,
	AC_TRY_COMPILE([#include <time.h>],
	    [extern long timezone;
	    timezone += 1;
	    exit (0);],
	    tcl_cv_timezone_long=yes, tcl_cv_timezone_long=no))
    AC_MSG_RESULT($tcl_cv_timezone_long)
    if test $tcl_cv_timezone_long = yes ; then
	AC_DEFINE(HAVE_TIMEZONE_VAR)
    else
	#
	# On some systems (eg IRIX 6.2), timezone is a time_t and not a long.
	#
	AC_MSG_CHECKING([time_t timezone variable])
	AC_CACHE_VAL(tcl_cv_timezone_time,
	    AC_TRY_COMPILE([#include <time.h>],
		[extern time_t timezone;
		timezone += 1;
		exit (0);],
		tcl_cv_timezone_time=yes, tcl_cv_timezone_time=no))
	AC_MSG_RESULT($tcl_cv_timezone_time)
	if test $tcl_cv_timezone_time = yes ; then
	    AC_DEFINE(HAVE_TIMEZONE_VAR)
	fi
    fi
])

#--------------------------------------------------------------------
# SC_BUGGY_STRTOD
#
#	Under Solaris 2.4, strtod returns the wrong value for the
#	terminating character under some conditions.  Check for this
#	and if the problem exists use a substitute procedure
#	"fixstrtod" (provided by Tcl) that corrects the error.
#	Also, on Compaq's Tru64 Unix 5.0,
#	strtod(" ") returns 0.0 instead of a failure to convert.
#
# Arguments:
#	none
#
# Results:
#
#	Might defines some of the following vars:
#		strtod (=fixstrtod)
#
#--------------------------------------------------------------------

AC_DEFUN(SC_BUGGY_STRTOD, [
    AC_CHECK_FUNC(strtod, tcl_strtod=1, tcl_strtod=0)
    if test "$tcl_strtod" = 1; then
	AC_MSG_CHECKING([for Solaris2.4/Tru64 strtod bugs])
	AC_CACHE_VAL(tcl_cv_strtod_buggy,[
	    AC_TRY_RUN([
		extern double strtod();
		int main() {
		    char *infString="Inf", *nanString="NaN", *spaceString=" ";
		    char *term;
		    double value;
		    value = strtod(infString, &term);
		    if ((term != infString) && (term[-1] == 0)) {
			exit(1);
		    }
		    value = strtod(nanString, &term);
		    if ((term != nanString) && (term[-1] == 0)) {
			exit(1);
		    }
		    value = strtod(spaceString, &term);
		    if (term == (spaceString+1)) {
			exit(1);
		    }
		    exit(0);
		}], tcl_cv_strtod_buggy=1, tcl_cv_strtod_buggy=0, tcl_cv_strtod_buggy=0)])
	if test "$tcl_cv_strtod_buggy" = 1; then
	    AC_MSG_RESULT(ok)
	else
	    AC_MSG_RESULT(buggy)
	    LIBOBJS="$LIBOBJS fixstrtod.o"
	    AC_DEFINE(strtod, fixstrtod)
	fi
    fi
])

#--------------------------------------------------------------------
# SC_TCL_LINK_LIBS
#
#	Search for the libraries needed to link the Tcl shell.
#	Things like the math library (-lm) and socket stuff (-lsocket vs.
#	-lnsl) are dealt with here.
#
# Arguments:
#	Requires the following vars to be set in the Makefile:
#		DL_LIBS
#		LIBS
#		MATH_LIBS
#
# Results:
#
#	Subst's the following var:
#		TCL_LIBS
#		MATH_LIBS
#
#	Might append to the following vars:
#		LIBS
#
#	Might define the following vars:
#		HAVE_NET_ERRNO_H
#
#--------------------------------------------------------------------

AC_DEFUN(SC_TCL_LINK_LIBS, [
    #--------------------------------------------------------------------
    # On a few very rare systems, all of the libm.a stuff is
    # already in libc.a.  Set compiler flags accordingly.
    # Also, Linux requires the "ieee" library for math to work
    # right (and it must appear before "-lm").
    #--------------------------------------------------------------------

    AC_CHECK_FUNC(sin, MATH_LIBS="", MATH_LIBS="-lm")
    AC_CHECK_LIB(ieee, main, [MATH_LIBS="-lieee $MATH_LIBS"])

    #--------------------------------------------------------------------
    # Interactive UNIX requires -linet instead of -lsocket, plus it
    # needs net/errno.h to define the socket-related error codes.
    #--------------------------------------------------------------------

    AC_CHECK_LIB(inet, main, [LIBS="$LIBS -linet"])
    AC_CHECK_HEADER(net/errno.h, [AC_DEFINE(HAVE_NET_ERRNO_H)])

    #--------------------------------------------------------------------
    #	Check for the existence of the -lsocket and -lnsl libraries.
    #	The order here is important, so that they end up in the right
    #	order in the command line generated by make.  Here are some
    #	special considerations:
    #	1. Use "connect" and "accept" to check for -lsocket, and
    #	   "gethostbyname" to check for -lnsl.
    #	2. Use each function name only once:  can't redo a check because
    #	   autoconf caches the results of the last check and won't redo it.
    #	3. Use -lnsl and -lsocket only if they supply procedures that
    #	   aren't already present in the normal libraries.  This is because
    #	   IRIX 5.2 has libraries, but they aren't needed and they're
    #	   bogus:  they goof up name resolution if used.
    #	4. On some SVR4 systems, can't use -lsocket without -lnsl too.
    #	   To get around this problem, check for both libraries together
    #	   if -lsocket doesn't work by itself.
    #--------------------------------------------------------------------

    tcl_checkBoth=0
    AC_CHECK_FUNC(connect, tcl_checkSocket=0, tcl_checkSocket=1)
    if test "$tcl_checkSocket" = 1; then
	AC_CHECK_FUNC(setsockopt, , [AC_CHECK_LIB(socket, setsockopt,
	    LIBS="$LIBS -lsocket", tcl_checkBoth=1)])
    fi
    if test "$tcl_checkBoth" = 1; then
	tk_oldLibs=$LIBS
	LIBS="$LIBS -lsocket -lnsl"
	AC_CHECK_FUNC(accept, tcl_checkNsl=0, [LIBS=$tk_oldLibs])
    fi
    AC_CHECK_FUNC(gethostbyname, , [AC_CHECK_LIB(nsl, gethostbyname,
	    [LIBS="$LIBS -lnsl"])])

    # Don't perform the eval of the libraries here because DL_LIBS
    # won't be set until we call SC_CONFIG_CFLAGS

    TCL_LIBS='${DL_LIBS} ${LIBS} ${MATH_LIBS}'
    AC_SUBST(TCL_LIBS)
    AC_SUBST(MATH_LIBS)
])

#--------------------------------------------------------------------
# SC_TCL_EARLY_FLAGS
#
#	Check for what flags are needed to be passed so the correct OS
#	features are available.
#
# Arguments:
#	None
#
# Results:
#
#	Might define the following vars:
#		_ISOC99_SOURCE
#		_LARGEFILE64_SOURCE
#
#--------------------------------------------------------------------

AC_DEFUN(SC_TCL_EARLY_FLAG,[
    AC_CACHE_VAL([tcl_cv_flag_]translit($1,[A-Z],[a-z]),
	AC_TRY_COMPILE([$2], $3, [tcl_cv_flag_]translit($1,[A-Z],[a-z])=no,
	    AC_TRY_COMPILE([[#define ]$1[ 1
]$2], $3,
		[tcl_cv_flag_]translit($1,[A-Z],[a-z])=yes,
		[tcl_cv_flag_]translit($1,[A-Z],[a-z])=no)))
    if test ["x${tcl_cv_flag_]translit($1,[A-Z],[a-z])[}" = "xyes"] ; then
	AC_DEFINE($1)
	tcl_flags="$tcl_flags $1"
    fi])

AC_DEFUN(SC_TCL_EARLY_FLAGS,[
    AC_MSG_CHECKING([for required early compiler flags])
    tcl_flags=""
    SC_TCL_EARLY_FLAG(_ISOC99_SOURCE,[#include <stdlib.h>],
	[char *p = (char *)strtoll; char *q = (char *)strtoull;])
    SC_TCL_EARLY_FLAG(_LARGEFILE64_SOURCE,[#include <sys/stat.h>],
	[struct stat64 buf; int i = stat64("/", &buf);])
    if test "x${tcl_flags}" = "x" ; then
	AC_MSG_RESULT(none)
    else
	AC_MSG_RESULT(${tcl_flags})
    fi])

#--------------------------------------------------------------------
# SC_TCL_64BIT_FLAGS
#
#	Check for what is defined in the way of 64-bit features.
#
# Arguments:
#	None
#
# Results:
#
#	Might define the following vars:
#		TCL_WIDE_INT_IS_LONG
#		TCL_WIDE_INT_TYPE
#		HAVE_STRUCT_DIRENT64
#		HAVE_STRUCT_STAT64
#		HAVE_TYPE_OFF64_T
#
#--------------------------------------------------------------------

AC_DEFUN(SC_TCL_64BIT_FLAGS, [
    AC_MSG_CHECKING([for 64-bit integer type])
    AC_CACHE_VAL(tcl_cv_type_64bit,[
	tcl_cv_type_64bit=none
	# See if the compiler knows natively about __int64
	AC_TRY_COMPILE(,[__int64 value = (__int64) 0;],
	    tcl_type_64bit=__int64, tcl_type_64bit="long long")
	# See if we should use long anyway  Note that we substitute in the
	# type that is our current guess for a 64-bit type inside this check
	# program, so it should be modified only carefully...
        AC_TRY_COMPILE(,[switch (0) {
            case 1: case (sizeof(]${tcl_type_64bit}[)==sizeof(long)): ;
        }],tcl_cv_type_64bit=${tcl_type_64bit})])
    if test "${tcl_cv_type_64bit}" = none ; then
	AC_DEFINE(TCL_WIDE_INT_IS_LONG)
	AC_MSG_RESULT(using long)
    else
	AC_DEFINE_UNQUOTED(TCL_WIDE_INT_TYPE,${tcl_cv_type_64bit})
	AC_MSG_RESULT(${tcl_cv_type_64bit})

	# Now check for auxiliary declarations
	AC_MSG_CHECKING([for struct dirent64])
	AC_CACHE_VAL(tcl_cv_struct_dirent64,[
	    AC_TRY_COMPILE([#include <sys/types.h>
#include <sys/dirent.h>],[struct dirent64 p;],
		tcl_cv_struct_dirent64=yes,tcl_cv_struct_dirent64=no)])
	if test "x${tcl_cv_struct_dirent64}" = "xyes" ; then
	    AC_DEFINE(HAVE_STRUCT_DIRENT64)
	fi
	AC_MSG_RESULT(${tcl_cv_struct_dirent64})

	AC_MSG_CHECKING([for struct stat64])
	AC_CACHE_VAL(tcl_cv_struct_stat64,[
	    AC_TRY_COMPILE([#include <sys/stat.h>],[struct stat64 p;
],
		tcl_cv_struct_stat64=yes,tcl_cv_struct_stat64=no)])
	if test "x${tcl_cv_struct_stat64}" = "xyes" ; then
	    AC_DEFINE(HAVE_STRUCT_STAT64)
	fi
	AC_MSG_RESULT(${tcl_cv_struct_stat64})

	AC_MSG_CHECKING([for off64_t])
	AC_CACHE_VAL(tcl_cv_type_off64_t,[
	    AC_TRY_COMPILE([#include <sys/types.h>],[off64_t offset;
],
		tcl_cv_type_off64_t=yes,tcl_cv_type_off64_t=no)])
	if test "x${tcl_cv_type_off64_t}" = "xyes" ; then
	    AC_DEFINE(HAVE_TYPE_OFF64_T)
	fi
	AC_MSG_RESULT(${tcl_cv_type_off64_t})
    fi])

# Configure path for the GNU Scientific Library
# Christopher R. Gabriel <cgabriel@linux.it>, April 2000
# Modified by D. Marchais <denis.marchais@free.fr>, Feb 2005

AC_DEFUN(AM_PATH_GSL,
[
AC_ARG_WITH(gsl-prefix,[  --with-gsl-prefix=PFX   Prefix where GSL is installed (optional)],
            gsl_prefix="$withval", gsl_prefix="/usr")
AC_ARG_WITH(gsl-exec-prefix,[  --with-gsl-exec-prefix=PFX Exec prefix where GSL is installed (optional)],
            gsl_exec_prefix="$withval", gsl_exec_prefix="/usr")
AC_ARG_ENABLE(gsltest, [  --disable-gsltest       Do not try to compile and run a test GSL program],
		    , enable_gsltest=yes)

  if test "x${GSL_CONFIG}+set" != xset ; then
     if test "x$gsl_prefix" != x ; then
         GSL_CONFIG="$gsl_prefix/bin/gsl-config"
     fi
     if test "x$gsl_exec_prefix" != x ; then
        GSL_CONFIG="$gsl_exec_prefix/bin/gsl-config"
     fi
  fi

  AC_PATH_PROG(GSL_CONFIG, ${GSL_CONFIG}, no)
  min_gsl_version=ifelse([$1], ,0.2.5,$1)
  AC_MSG_CHECKING(for GSL - version >= $min_gsl_version)
  no_gsl=""
  if test "$GSL_CONFIG" = "no" ; then
    no_gsl=yes
  else
    GSL_CFLAGS=`$GSL_CONFIG --cflags`
    GSL_LIBS=`$GSL_CONFIG --libs`

    gsl_major_version=`$GSL_CONFIG --version | \
           sed 's/^\([[0-9]]*\).*/\1/'`
    if test "x${gsl_major_version}" = "x" ; then
       gsl_major_version=0
    fi

    gsl_minor_version=`$GSL_CONFIG --version | \
           sed 's/^\([[0-9]]*\)\.\{0,1\}\([[0-9]]*\).*/\2/'`
    if test "x${gsl_minor_version}" = "x" ; then
       gsl_minor_version=0
    fi

    gsl_micro_version=`$GSL_CONFIG --version | \
           sed 's/^\([[0-9]]*\)\.\{0,1\}\([[0-9]]*\)\.\{0,1\}\([[0-9]]*\).*/\3/'`
    if test "x${gsl_micro_version}" = "x" ; then
       gsl_micro_version=0
    fi

    if test "x$enable_gsltest" = "xyes" ; then
      ac_save_CFLAGS="$CFLAGS"
      ac_save_LIBS="$LIBS"
      CFLAGS="$CFLAGS $GSL_CFLAGS"
      LIBS="$LIBS $GSL_LIBS"

      rm -f conf.gsltest
      AC_TRY_RUN([
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char* my_strdup (const char *str);

char*
my_strdup (const char *str)
{
  char *new_str;

  if (str)
    {
      new_str = (char *)malloc ((strlen (str) + 1) * sizeof(char));
      strcpy (new_str, str);
    }
  else
    new_str = NULL;

  return new_str;
}

int main (void)
{
  int major = 0, minor = 0, micro = 0;
  int n;
  char *tmp_version;

  system ("touch conf.gsltest");

  /* HP/UX 9 (%@#!) writes to sscanf strings */
  tmp_version = my_strdup("$min_gsl_version");

  n = sscanf(tmp_version, "%d.%d.%d", &major, &minor, &micro) ;

  if (n != 2 && n != 3) {
     printf("%s, bad version string\n", "$min_gsl_version");
     exit(1);
   }

   if (($gsl_major_version > major) ||
      (($gsl_major_version == major) && ($gsl_minor_version > minor)) ||
      (($gsl_major_version == major) && ($gsl_minor_version == minor) && ($gsl_micro_version >= micro)))
    {
      exit(0);
    }
  else
    {
      printf("\n*** 'gsl-config --version' returned %d.%d.%d, but the minimum version\n", $gsl_major_version, $gsl_minor_version, $gsl_micro_version);
      printf("*** of GSL required is %d.%d.%d. If gsl-config is correct, then it is\n", major, minor, micro);
      printf("*** best to upgrade to the required version.\n");
      printf("*** If gsl-config was wrong, set the environment variable GSL_CONFIG\n");
      printf("*** to point to the correct copy of gsl-config, and remove the file\n");
      printf("*** config.cache before re-running configure\n");
      exit(1);
    }
}

],, no_gsl=yes,[echo $ac_n "cross compiling; assumed OK... $ac_c"])
       CFLAGS="$ac_save_CFLAGS"
       LIBS="$ac_save_LIBS"
     fi
  fi
  if test "x$no_gsl" = x ; then
     AC_MSG_RESULT(yes)
     ifelse([$2], , :, [$2])
  else
     AC_MSG_RESULT(no)
     if test "$GSL_CONFIG" = "no" ; then
       echo "*** The gsl-config script installed by GSL could not be found"
       echo "*** If GSL was installed in PREFIX, make sure PREFIX/bin is in"
       echo "*** your path, or set the GSL_CONFIG environment variable to the"
       echo "*** full path to gsl-config."
     else
       if test -f conf.gsltest ; then
        :
       else
          echo "*** Could not run GSL test program, checking why..."
          CFLAGS="$CFLAGS $GSL_CFLAGS"
          LIBS="$LIBS $GSL_LIBS"
          AC_TRY_LINK([
#include <stdio.h>
],      [ return 0; ],
        [ echo "*** The test program compiled, but did not run. This usually means"
          echo "*** that the run-time linker is not finding GSL or finding the wrong"
          echo "*** version of GSL. If it is not finding GSL, you'll need to set your"
          echo "*** LD_LIBRARY_PATH environment variable, or edit /etc/ld.so.conf to point"
          echo "*** to the installed location  Also, make sure you have run ldconfig if that"
          echo "*** is required on your system"
	  echo "***"
          echo "*** If you have an old version installed, it is best to remove it, although"
          echo "*** you may also be able to get things to work by modifying LD_LIBRARY_PATH"],
        [ echo "*** The test program failed to compile or link. See the file config.log for the"
          echo "*** exact error that occured. This usually means GSL was incorrectly installed"
          echo "*** or that you have moved GSL since it was installed. In the latter case, you"
          echo "*** may want to edit the gsl-config script: $GSL_CONFIG" ])
          CFLAGS="$ac_save_CFLAGS"
          LIBS="$ac_save_LIBS"
       fi
     fi
#     GSL_CFLAGS=""
#     GSL_LIBS=""
     ifelse([$3], , :, [$3])
  fi
  AC_SUBST(GSL_CFLAGS)
  AC_SUBST(GSL_LIBS)
  rm -f conf.gsltest
])


#
# Macros used to disable the anti stack smashing feature of GCC. Based on
# the macros of Tiago Sousa (mirage@kaotik.org, http://www.trl.ibm.com/projects/security/ssp)
#

AC_DEFUN([GCC_STACK_PROTECT_DISABLE_CC],[
  ssp_cc=yes
  if test "X$CC" != "X"; then
    AC_MSG_CHECKING([whether ${CC} accepts -fno-stack-protector])
    ssp_old_cflags="$CFLAGS"
    CFLAGS="$CFLAGS -fno-stack-protector"
    AC_LANG_PUSH([C])
    AC_TRY_COMPILE(,,, ssp_cc=no)
    AC_LANG_POP([C])
    echo $ssp_cc
    if test "X$ssp_cc" = "Xno"; then
      CFLAGS="$ssp_old_cflags"
    fi
  fi
])

AC_DEFUN([GCC_STACK_PROTECT_DISABLE_CXX],[
  ssp_cxx=yes
  if test "X$CXX" != "X"; then
    AC_MSG_CHECKING([whether ${CXX} accepts -fno-stack-protector])
    ssp_old_cxxflags="$CXXFLAGS"
    CXXFLAGS="$CXXFLAGS -fno-stack-protector"
    AC_LANG_PUSH([C++])
    AC_TRY_COMPILE(,,, ssp_cxx=no)
    AC_LANG_POP([C++])
    echo $ssp_cxx
    if test "X$ssp_cxx" = "Xno"; then
	CXXFLAGS="$ssp_old_cxxflags"
    fi
  fi
])

#include <stdio.h>
#include <errno.h>
#include <ctype.h>
#include <string.h>
#include <strings.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdarg.h>
#include <assert.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>
#ifdef HAVE_ALLOCA_H
#include <alloca.h>
#endif

#define RSTRING_NOT_MODIFIED 1

#ifndef native_int
  typedef intptr_t native_int;
#endif

#ifndef native_uint
  typedef uintptr_t native_uint;
#endif

#include "ruby.h"
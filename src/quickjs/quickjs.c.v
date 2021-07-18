module quickjs

#flag -Wno-array-bounds
#flag -Wno-format-truncation
#flag -D_GNU_SOURCE -DCONFIG_VERSION="2021-03-27"
#flag -DCONFIG_BIGNUM

#include "@VROOT/quickjs.c/quickjs.c"

struct C.JSRuntime{}
struct C.JSContext{}
struct C.JSValue{}

fn C.JS_NewRuntime() &C.JSRuntime

fn C.JS_NewContext(&C.JSRuntime) &C.JSContext

fn C.JS_Eval(&C.JSContext, &char, size_t, &char, int) C.JSValue

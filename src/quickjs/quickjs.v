module quickjs

// JSValue JS_Eval(JSContext *ctx, const char *input, size_t input_len, const char *filename, int eval_flags);

pub fn run(code string, filename string){
	//code = code + '\n\n\n;export{};' // enforce module
	rt := C.JS_NewRuntime()
	ctx := C.JS_NewContext(rt)
	val := C.JS_Eval(ctx, &char(code.str), size_t(code.len), &char(filename.str), 0)
	println('Return value:')
	println(val)
}

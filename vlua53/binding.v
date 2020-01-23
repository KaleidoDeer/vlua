module vlua53

//lua.h
[inline]
pub fn lua_absindex(L &C.lua_State, idx int) int {
	return C.lua_absindex(L, idx)
}

[inline]
pub fn lua_arith(L &C.lua_State, op int) {
	C.lua_arith(L, op)
}

[inline]
pub fn lua_atpanic(L &C.lua_State, panicf fn(&C.lua_State) int) voidptr {
	return C.lua_atpanic(L, panicf)
}

[inline]
pub fn lua_call(L &C.lua_State, nargs, nresults int) {
	C.lua_call(L, nargs, nresults)
}

[inline]
pub fn lua_callk(L &C.lua_State, nargs, nresults, ctx C.lua_KContext, k fn(&C.lua_State, int, C.lua_KContext) int) {
	C.lua_callk(L, nargs, nresults, ctx, k)
}

[inline]
pub fn lua_checkstack(L &C.lua_State, n int) int {
	return C.lua_checkstack(L, n)
}

[inline]
pub fn lua_close(L &C.lua_State) {
	C.lua_close(L)
}

[inline]
pub fn lua_compare(L &C.lua_State, index1, index2, op int) int {
	return C.lua_compare(L, index1, index2, op)
}

[inline]
pub fn lua_concat(L &C.lua_State, n int) {
	C.lua_concat(L, n)
}

[inline]
pub fn lua_copy(L &C.lua_State, fromidx, toidx int) {
	C.lua_copy(L, fromidx, toidx)
}

[inline]
pub fn lua_createtable(L &C.lua_State, narr, nrec int) {
	C.lua_createtable(L, narr, nrec)
}

[inline]
pub fn lua_dump(L &C.lua_State, writer fn(&C.lua_State, voidptr, size_t, voidptr) int, data voidptr, strip int) int {
	return C.lua_dump(L, writer, data, strip)
}

[inline]
pub fn lua_error(L &C.lua_State) int {
	return C.lua_error(L)
}

[inline]
pub fn lua_gc(L &C.lua_State, what, data int) int {
	return C.lua_gc(L, what, data)
}

[inline]
pub fn lua_getallocf(L &C.lua_State, ud &voidptr) voidptr {
	return C.lua_getallocf(L, ud)
}

[inline]
pub fn lua_getfield(L &C.lua_State, index int, k byteptr) int {
	return C.lua_getfield(L, index, k)
}

[inline]
pub fn lua_getextraspace(L &C.lua_State) voidptr {
	return C.lua_getextraspace(L)
}

[inline]
pub fn lua_getglobal(L &C.lua_State, name byteptr) int {
	return C.lua_getglobal(L, name)
}

[inline]
pub fn lua_geti(L &C.lua_State, index int, i i64) int {
	return C.lua_geti(L, index, i)
}

[inline]
pub fn lua_getmetatable(L &C.lua_State, index int) int {
	return C.lua_getmetatable(L, index)
}

[inline]
pub fn lua_gettable(L &C.lua_State, index int) int {
	return C.lua_gettable(L, index)
}

[inline]
pub fn lua_gettop(L &C.lua_State) int {
	return C.lua_gettop(L)
}

[inline]
pub fn lua_getuservalue(L &C.lua_State, index int) int {
	return C.lua_getuservalue(L, index)
}

[inline]
pub fn lua_insert(L &C.lua_State, index int) {
	C.lua_insert(L, index)
}

[inline]
pub fn lua_isboolean(L &C.lua_State, index int) int {
	return C.lua_isboolean(L, index)
}

[inline]
pub fn lua_iscfunction(L &C.lua_State, index int) int {
	return C.lua_iscfunction(L, index)
}

[inline]
pub fn lua_isfunction(L &C.lua_State, index int) int {
	return C.lua_isfunction(L, index)
}

[inline]
pub fn lua_isinteger(L &C.lua_State, index int) int {
	return C.lua_isinteger(L, index)
}

[inline]
pub fn lua_islightuserdata(L &C.lua_State, index int) int {
	return C.lua_islightuserdata(L, index)
}

[inline]
pub fn lua_isnil(L &C.lua_State, index int) int {
	return C.lua_isnil(L, index)
}

[inline]
pub fn lua_isnone(L &C.lua_State, index int) int {
	return C.lua_isnone(L, index)
}

[inline]
pub fn lua_isnoneornil(L &C.lua_State, index int) int {
	return C.lua_isnoneornil(L, index)
}

[inline]
pub fn lua_isnumber(L &C.lua_State, index int) int {
	return C.lua_isnumber(L, index)
}

[inline]
pub fn lua_isstring(L &C.lua_State, index int) int {
	return C.lua_isstring(L, index)
}

[inline]
pub fn lua_istable(L &C.lua_State, index int) int {
	return C.lua_istable(L, index)
}

[inline]
pub fn lua_isthread(L &C.lua_State, index int) int {
	return C.lua_isthread(L, index)
}

[inline]
pub fn lua_isuserdata(L &C.lua_State, index int) int {
	return C.lua_isuserdata(L, index)
}

[inline]
pub fn lua_isyieldable(L &C.lua_State) int {
	return C.lua_isyieldable(L)
}

[inline]
pub fn lua_len(L &C.lua_State, index int) {
	C.lua_len(L, index)
}

[inline]
pub fn lua_load(L &C.lua_State, reader fn(&C.lua_State, voidptr, u32, voidptr) int, data voidptr, chunkname, mode byteptr) int {
	return C.lua_load(L, reader, data, chunkname, mode)
}

[inline]
pub fn lua_newstate(f fn(voidptr, voidptr, u32, u32) voidptr, ud voidptr) &C.lua_State {
	return C.lua_newstate(f, ud)
}

[inline]
pub fn lua_newtable(L &C.lua_State) {
	C.lua_newtable(L)
}

[inline]
pub fn lua_newthread(L &C.lua_State) &C.lua_State {
	return C.lua_newthread(L)
}

[inline]
pub fn lua_newuserdata(L &C.lua_State, size size_t) voidptr {
	return C.lua_newuserdata(L, size)
}

[inline]
pub fn lua_next(L &C.lua_State, index int) int {
	return C.lua_next(L, index)
}

[inline]
pub fn lua_numbertointeger(n C.lua_Number, p &i64) int {
	return C.lua_numbertointeger(n, p)
}

[inline]
pub fn lua_pcall(L &C.lua_State, nargs, nresults, msgh int) int {
	return C.lua_pcall(L, nargs, nresults, msgh)
}

[inline]
pub fn lua_pcallk (L &C.lua_State, nargs, nresults, msgh int, ctx C.lua_KContext, k fn(&C.lua_State, int, C.lua_KContext) int) int {
	return C.lua_pcallk(L, nargs, nresults, msgh, ctx, k)
}

[inline]
pub fn lua_pop(L &C.lua_State, n int) {
	C.lua_pop(L, n)
}

[inline]
pub fn lua_pushboolean(L &C.lua_State, b int) {
	C.lua_pushboolean(L, b)
}

[inline]
pub fn lua_pushcclosure(L &C.lua_State, f fn(L &C.lua_State) int, n int) {
	C.lua_pushcclosure(L, f, n)
}

[inline]
pub fn lua_pushcfunction(L &C.lua_State, f fn(L &C.lua_State) int) {
	C.lua_pushcfunction(L, f)
}

//fn lua_pushfstring(L &C.lua_State, fmt byteptr) V is weird with variable arguments right now.

[inline]
pub fn lua_pushglobaltable(L &C.lua_State) {
	C.lua_pushglobaltable(L)
}

[inline]
pub fn lua_pushinteger(L &C.lua_State, n i64) {
	C.lua_pushinteger(L, n)
}

[inline]
pub fn lua_pushlightuserdata(L &C.lua_State, p voidptr) {
	C.lua_pushlightuserdata(L, p)
}
/*  Compiler error possibly a macro issue.
[inline]
pub fn lua_pushliteral(L &C.lua_State, s byteptr) byteptr {
	return C.lua_pushliteral(L, s)
}
*/
[inline]
pub fn lua_pushlstring(L &C.lua_State, s byteptr, len size_t) byteptr {
	return C.lua_pushlstring(L, s, len)
}

[inline]
pub fn lua_pushnil(L &C.lua_State) {
	C.lua_pushnil(L)
}

[inline]
pub fn lua_pushnumber(L &C.lua_State, n C.lua_Number) {
	C.lua_pushnumber(L, n)
}

[inline]
pub fn lua_pushstring(L &C.lua_State, s byteptr) byteptr {
	return C.lua_pushstring(L, s)
}

[inline]
pub fn lua_pushthread(L &C.lua_State) int {
	return C.lua_pushthread(L)
}

[inline]
pub fn lua_pushvalue(L &C.lua_State, index int) {
	C.lua_pushvalue(L, index)
}

[inline]
pub fn lua_pushvfstring(L &C.lua_State, fmt byteptr, argp voidptr /* va_list */) byteptr {
	return C.lua_pushvfstring(L, fmt, argp)
}

[inline]
pub fn lua_rawequal(L &C.lua_State, index1, index2 int) int {
	return C.lua_rawequal(L, index1, index2)
}

[inline]
pub fn lua_rawget(L &C.lua_State, index int) int {
	return C.lua_rawget(L, index)
}

[inlne]
pub fn lua_rawgeti(L &C.lua_State, index int, n i64) int {
	return C.lua_rawgeti(L, index, n)
}

[inline]
pub fn lua_rawgetp(L &C.lua_State, index int, p voidptr) int {
	return C.lua_rawgetp(L, index, p)
}

[inline]
pub fn lua_rawlen(L &C.lua_State, index int) size_t {
	return C.lua_rawlen(L, index)
}

[inline]
pub fn lua_rawset(L &C.lua_State, index int) {
	C.lua_rawset(L, index)
}

[inline]
pub fn lua_rawseti(L &C.lua_State, index int, i i64) {
	C.lua_rawseti(L, index, i)
}

[inline]
pub fn lua_rawsetp(L &C.lua_State, index int, p voidptr) {
	C.lua_rawsetp(L, index, p)
}

[inline]
pub fn lua_register(L &C.lua_State, name byteptr, f fn(L &C.lua_State) int) {
	C.lua_register(L, name, f)
}

[inline]
pub fn lua_remove(L &C.lua_State, index int) {
	C.lua_remove(L, index)
}

[inline]
pub fn lua_replace(L &C.lua_State, index int) {
	C.lua_replace(L, index)
}

[inline]
pub fn lua_resume(L &C.lua_State, from &C.lua_State, nargs int) int {
	return C.lua_resume(L, from, nargs)
}

[inline]
pub fn lua_rotate(L &C.lua_State, idx, n int) {
	C.lua_rotate(L, idx, n)
}

[inline]
pub fn lua_setallocf(L &C.lua_State, f fn(voidptr, voidptr, u32, u32) voidptr, ud voidptr) {
	C.lua_setallocf(L, f, ud)
}

[inline]
pub fn lua_setfield(L &C.lua_State, index int, k byteptr) {
	C.lua_setfield(L, index, k)
}

[inline]
pub fn lua_setglobal(L &C.lua_State, name byteptr) {
	C.lua_setglobal(L, name)
}

[inline]
pub fn lua_seti(L &C.lua_State, index int, n i64) {
	C.lua_seti(L, index, n)
}

[inline]
pub fn lua_setmetatable(L &C.lua_State, index int) {
	C.lua_setmetatable(L, index)
}

[inline]
pub fn lua_settable(L &C.lua_State, index int) {
	C.lua_settable(L, index)
}

[inline]
pub fn lua_settop(L &C.lua_State, index int) {
	C.lua_settop(L, index)
}

[inline]
pub fn lua_setuservalue(L &C.lua_State, index int) {
	C.lua_setuservalue(L, index)
}

[inline]
pub fn lua_status(L &C.lua_State) int {
	return C.lua_status(L)
}

[inline]
pub fn lua_stringtonumber(L &C.lua_State, s byteptr) size_t {
	return C.lua_stringtonumber(L, s)
}

[inline]
pub fn lua_toboolean(L &C.lua_State, index int) int {
	return C.lua_toboolean(L, index)
}

[inline]
pub fn lua_tocfunction(L &C.lua_State, index int) voidptr {
	return C.lua_tocfunction(L, index)
}

[inline]
pub fn lua_tointeger(L &C.lua_State, index int) i64 {
	return C.lua_tointeger(L, index)
}

[inline]
pub fn lua_tointegerx(L &C.lua_State, index int, isnum &int) i64 {
	return C.lua_tointegerx(L, index, isnum)
}

[inline]
pub fn lua_tolstring(L &C.lua_State, index int, len &size_t) byteptr {
	return C.lua_tolstring(L, index, len)
}

[inline]
pub fn lua_tonumber(L &C.lua_State, index int) C.lua_Number {
	return C.lua_tonumber(L, index)
}

[inline]
pub fn lua_tonumberx(L &C.lua_State, index int, isnum &int) C.lua_Number {
	return C.lua_tonumberx(L, index, isnum)
}

[inline]
pub fn lua_topointer(L &C.lua_State, index int) voidptr {
	return C.lua_topointer(L, index)
}

[inline]
pub fn lua_tostring(L &C.lua_State, index int) byteptr {
	return C.lua_tostring(L, index)
}

[inline]
pub fn lua_tothread(L &C.lua_State, index int) &C.lua_State {
	return C.lua_tothread(L, index)
}

[inline]
pub fn lua_touserdata(L &C.lua_State, index int) voidptr {
	return C.lua_touserdata(L, index)
}

[inline]
pub fn lua_type(L &C.lua_State, index int) int {
	return C.lua_type(L, index)
}

[inline]
pub fn lua_typename(L &C.lua_State, tp int) byteptr {
	return C.lua_typename(L, tp)
}

[inline]
pub fn lua_upvalueindex(i int) int {
	return C.lua_upvalueindex(i)
}
pub fn lua_version(L &C.lua_State) &C.lua_Number {
	return C.lua_version(L)
}

[inline]
pub fn lua_xmove(from &C.lua_State, to &C.lua_State, n int) {
	C.lua_xmove(from, to, n)
}

[inline]
pub fn lua_yield(L &C.lua_State, nresults int) int {
	return C.lua_yield(L, nresults)
}

[inline]
pub fn lua_yieldk(L &C.lua_State, nresults int, ctx C.lua_KContext, k fn(&C.lua_State, int, C.lua_KContext) int) int {
	return C.lua_yieldk(L, nresults, ctx, k)
}

[inline]
pub fn lua_gethook(L &C.lua_State) voidptr {
	return C.lua_gethook(L)
}

[inline]
pub fn lua_gethookcount(L &C.lua_State) int {
	return C.lua_gethookcount(L)
}

[inline]
pub fn lua_gethookmask(L &C.lua_State) int {
	return C.lua_gethookmask(L)
}

[inline]
pub fn lua_getinfo(L &C.lua_State, what byteptr, ar &C.lua_Debug) int {
	return C.lua_getinfo(L, what, ar)
}

[inline]
pub fn lua_getlocal(L &C.lua_State, ar &C.lua_Debug, n int) byteptr {
	return C.lua_getlocal(L, ar, n)
}

[inline]
pub fn lua_getstack(L &C.lua_State, level int, ar &C.lua_Debug) int {
	return C.lua_getstack(L, level, ar)
}

[inline]
pub fn lua_getupvalue(L &C.lua_State, funcindex, n int) byteptr {
	return C.lua_getupvalue(L, funcindex, n)
}

[inline]
pub fn lua_sethook(L &C.lua_State, f fn(&C.lua_State, &C.lua_Debug), mask, count int) {
	C.lua_sethook(L, f, mask, count)
}

[inline]
pub fn lua_setlocal(L &C.lua_State, ar &C.lua_Debug, n int) byteptr {
	return C.lua_setlocal(L, ar, n)
}

[inline]
pub fn lua_setupvalue(L &C.lua_State, funcindex, n int) byteptr {
	return C.lua_setupvalue(L, funcindex, n)
}

[inline]
pub fn lua_upvalueid(L &C.lua_State, funcindex, n int) voidptr {
	return C.lua_upvalueid(L, funcindex, n)
}

[inline]
pub fn lua_upvaluejoin(L &C.lua_State, funcindex1, n1, funcindex2, n2 int) {
	C.lua_upvaluejoin(L, funcindex1, n1, funcindex2, n2)
}

//lauxlib.h
[inline]
pub fn lual_addchar(B &C.luaL_Buffer, c byte) {
	C.luaL_addchar(B, c)
}

[inline]
pub fn lual_addlstring(B &C.luaL_Buffer, s byteptr, l size_t) {
	C.luaL_addlstring(B, s, l)
}

[inline]
pub fn lual_addsize(B &C.luaL_Buffer, n size_t) {
	C.luaL_addsize(B, n)
}

[inline]
pub fn lual_addstring(B &C.luaL_Buffer, s byteptr) {
	C.luaL_addstring(B, s)
}

[inline]
pub fn lual_addvalue(B &C.luaL_Buffer) {
	C.luaL_addvalue(B)
}

[inline]
pub fn lual_argcheck(L &C.lua_State, cond, arg int, extramsg byteptr) {
	C.luaL_argcheck(L, cond, arg, extramsg)
}

[inline]
pub fn lual_argerror(L &C.lua_State, arg int, extramsg byteptr) int {
	return C.luaL_argerror(L, arg, extramsg)
}

[inline]
pub fn lual_buffinit(L &C.lua_State, B &C.luaL_Buffer) {
	C.luaL_buffinit(L, B)
}

[inline]
pub fn lual_buffinitsize(L &C.lua_State, B &C.luaL_Buffer, sz size_t) byteptr {
	return C.luaL_buffinitsize(L, B, sz)
}

[inline]
pub fn lual_callmeta(L &C.lua_State, obj int, e byteptr) int {
	return C.luaL_callmeta(L, obj, e)
}

[inline]
pub fn lual_checkany(L &C.lua_State, arg int) {
	C.luaL_checkany(L, arg)
}

[inline]
pub fn lual_checkinteger(L &C.lua_State, arg int) i64 {
	return C.luaL_checkinteger(L, arg)
}

[inline]
pub fn lual_checklstring(L &C.lua_State, arg int, lt &size_t) byteptr {
	return C.luaL_checklstring(L, arg, lt)
}

[inline]
pub fn lual_checknumber(L &C.lua_State, arg int) C.lua_Number {
	return C.luaL_checknumber(L, arg)
}

[inline]
pub fn lual_checkoption(L &C.lua_State, arg int, def byteptr, lst byteptr) int {
	return C.luaL_checkoption(L, arg, def, lst)
}

[inline]
pub fn lual_checkstack(L &C.lua_State, sz int, msg byteptr) {
	C.luaL_checkstack(L, sz, msg)
}

[inline]
pub fn lual_checkstring(L &C.lua_State, arg int) byteptr {
	return C.luaL_checkstring(L, arg)
}

[inline]
pub fn lual_checktype(L &C.lua_State, arg, t int) {
	C.luaL_checktype(L, arg, t)
}

[inline]
pub fn lual_checkudata(L &C.lua_State, arg int, tname byteptr) voidptr {
	return C.luaL_checkudata(L, arg, tname)
}

[inline]
pub fn lual_checkversion(L &C.lua_State) {
	C.luaL_checkversion(L)
}

[inline]
pub fn lual_dofile(L &C.lua_State, filename byteptr) int {
	return C.luaL_dofile(L, filename)
}

[inline]
pub fn lual_dostring(L &C.lua_State, str byteptr) int {
	return C.luaL_dostring(L, str)
}

//fn lual_error(L &C.lua_State, fmt byteptr) int //V weird with variable arguments

[inline]
pub fn lual_execresult(L &C.lua_State, stat int) int {
	return C.luaL_execresult(L, stat)
}

[inline]
pub fn lual_fileresult(L &C.lua_State, stat int, fname byteptr) int {
	return C.luaL_fileresult(L, stat, fname)
}

[inline]
pub fn lual_getmetafield(L &C.lua_State, obj int, e byteptr) int {
	return C.luaL_getmetafield(L, obj, e)
}

[inline]
pub fn lual_getmetatable(L &C.lua_State, tname byteptr) int {
	return C.luaL_getmetatable(L, tname)
}

[inline]
pub fn lual_getsubtable(L &C.lua_State, idx int, fname byteptr) int {
	return C.luaL_getsubtable(L, idx, fname)
}

[inline]
pub fn lual_gsub(L &C.lua_State, s, p, r byteptr) byteptr {
	return C.luaL_gsub(L, s, p, r)
}

[inline]
pub fn lual_len(L &C.lua_State, index int) i64 {
	return C.luaL_len(L, index)
}

[inline]
pub fn lual_loadbuffer(L &C.lua_State, buff byteptr, sz size_t, name byteptr) int {
	return C.luaL_loadbuffer(L, buff, sz, name)
}

[inline]
pub fn lual_loadbufferx(L &C.lua_State, buff byteptr, sz size_t, name, mode byteptr) int {
	return C.luaL_loadbufferx(L, buff, sz, name, mode)
}

[inline]
pub fn lual_loadfile(L &C.lua_State, filename byteptr) int {
	return C.luaL_loadfile(L, filename)
}

[inline]
pub fn lual_loadfilex(L &C.lua_State, filename, mode byteptr) int {
	return C.luaL_loadfilex(L, filename, mode)
}

[inline]
pub fn lual_loadstring(L &C.lua_State, s byteptr) int {
	return C.luaL_loadstring(L, s)
}

[inline]
pub fn lual_newlib(L &C.lua_State, lt &C.luaL_Reg) {
	C.luaL_newlib(L, lt)
}
 
[inline]
pub fn lual_newlibtable(L &C.lua_State, lt &C.luaL_Reg) {
	C.luaL_newlibtable(L, lt)
}

[inline]
pub fn lual_newmetatable(L &C.lua_State, tname byteptr) int {
	return C.luaL_newmetatable(L, tname)
}

[inline]
pub fn lual_newstate() &C.lua_State {
	return C.luaL_newstate()
}

[inline]
pub fn lual_openlibs(L &C.lua_State) {
	C.luaL_openlibs(L)
}
//pub fn lual_opt(L &C.lua_State, arg, d int) int not sure about translation
/*
[inline]
pub fn lual_optinteger(L &C.lua_State, arg int, d i64) i64 {
	return C.luaL_optinteger(L, arg, d)
}
*/
[inline]
pub fn lual_optlstring(L &C.lua_State, arg int, d byteptr, lt &size_t) byteptr {
	return C.luaL_optlstring(L, arg, d, lt)
}

[inline]
pub fn lual_optnumber(L &C.lua_State, arg int, d C.lua_Number) C.lua_Number {
	return C.luaL_optnumber(L, arg, d)
}

[inline]
pub fn lual_optstring(L &C.lua_State, arg int, d byteptr) byteptr {
	return C.luaL_optstring(L, arg, d)
}

[inline]
pub fn lual_prepbuffer(B &C.luaL_Buffer) byteptr {
	return C.luaL_prepbuffer(B)
}

[inline]
pub fn lual_prepbuffsize(B &C.luaL_Buffer, sz size_t) byteptr {
	return C.luaL_prepbuffsize(B, sz)
}

[inline]
pub fn lual_pushresult(B &C.luaL_Buffer) {
	C.luaL_pushresult(B)
}

[inline]
pub fn lual_pushresultsize(B &C.luaL_Buffer, sz size_t) {
	C.luaL_pushresultsize(B, sz)
}

[inline]
pub fn lual_ref(L &C.lua_State, t int) int {
	return C.luaL_ref(L, t)
}

[inline]
pub fn lual_requiref(L &C.lua_State, modname byteptr, openf fn(L &C.lua_State), glb int) {
	C.luaL_requiref(L, modname, openf, glb)
}

[inline]
pub fn lual_setfuncs(L &C.lua_State, lt &C.luaL_Reg, nup int) {
	C.luaL_setfuncs(L, lt, nup)
}

[inline]
pub fn lual_setmetatable(L &C.lua_State, tname byteptr) {
	C.luaL_setmetatable(L, tname)
}

[inline]
pub fn lual_testudata(L &C.lua_State, arg int, tname byteptr) voidptr {
	return C.luaL_testudata(L, arg, tname)
}

[inline]
pub fn lual_tolstring(L &C.lua_State, idx int, len &size_t) byteptr {
	return C.luaL_tolstring(L, idx, len)
}

[inline]
pub fn lual_traceback(L &C.lua_State, L1 &C.lua_State, msg byteptr, level int) {
	C.luaL_traceback(L, L1, msg, level)
}

[inline]
pub fn lual_typename(L &C.lua_State, index int) byteptr {
	return C.luaL_typename(L, index)
}

[inline]
pub fn lual_unref(L &C.lua_State, t, ref int) {
	C.luaL_unref(L, t, ref)
}

[inline]
pub fn lual_where(L &C.lua_State, lvl int) {
	C.luaL_where(L, lvl)
}

//lualib.h
[inline]
pub fn luaopen_base(L &C.lua_State) int {
	return C.luaopen_base(L)
}

[inline]
pub fn luaopen_package(L &C.lua_State) int {
	return C.luaopen_package(L)
}

[inline]
pub fn luaopen_coroutine(L &C.lua_State) int {
	return C.luaopen_coroutine(L)
}

[inline]
pub fn luaopen_string(L &C.lua_State) int {
	return C.luaopen_string(L)
}

[inline]
pub fn luaopen_utf8(L &C.lua_State) int {
	return C.luaopen_utf8(L)
}

[inline]
pub fn luaopen_table(L &C.lua_State) int {
	return C.luaopen_table(L)
}

[inline]
pub fn luaopen_math(L &C.lua_State) int {
	return C.luaopen_math(L)
}

[inline]
pub fn luaopen_bit32(L &C.lua_State) int {
	return C.luaopen_bit32(L)
}

[inline]
pub fn luaopen_io(L &C.lua_State) int {
	return C.luaopen_io(L)
}

[inline]
pub fn luaopen_os(L &C.lua_State) int {
	return C.luaopen_os(L)
}

[inline]
pub fn luaopen_debug(L &C.lua_State) int {
	return C.luaopen_debug(L)
}
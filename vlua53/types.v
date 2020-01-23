module vlua53

//lua.h
pub const (
	LUA_MULTRET = -1

	LUA_OK = 0
	LUA_YIELD = 1
	LUA_ERRRUN = 2
	LUA_ERRSYNTAX = 3
	LUA_ERRMEM = 4
	LUA_ERRGCMM = 5
	LUA_ERRERR = 6

	LUA_TNONE = -1
	LUA_TNIL = 0
	LUA_TBOOLEAN = 1
	LUA_TLIGHTUSERDATA = 2
	LUA_TNUMBER = 3
	LUA_TSTRING = 4
	LUA_TTABLE = 5
	LUA_TFUNCTION = 6
	LUA_TUSERDATA = 7
	LUA_TTHREAD = 8
	LUA_NUMTAGS = 9

	LUA_OPADD = 0
	LUA_OPSUB = 1
	LUA_OPMUL = 2
	LUA_OPMOD = 3
	LUA_OPPOW = 4
	LUA_OPDIV = 5
	LUA_OPIDIV = 6
	LUA_OPBAND = 7
	LUA_OPBOR = 8
	LUA_OPBXOR = 9
	LUA_OPSHL = 10
	LUA_OPSHR = 11
	LUA_OPUNM = 12
	LUA_OPBNOT = 13

	LUA_OPEQ = 0
	LUA_OPLT = 1
	LUA_OPLE = 2

	LUA_GCSTOP = 0
	LUA_GCRESTART = 1
	LUA_GCCOLLECT = 2
	LUA_GCCOUNT = 3
	LUA_GCCOUNTB = 4
	LUA_GCSTEP = 5
	LUA_GCSETPAUSE = 6
	LUA_GCSETSTEPMUL = 7
	LUA_GCISRUNNING = 9

	LUA_HOOKCALL = 0
	LUA_HOOKRET = 1
	LUA_HOOKLINE = 2
	LUA_HOOKCOUNT = 3
	LUA_HOOKTAILRET = 4

	LUA_MASKCALL = 1 << LUA_HOOKCALL
	LUA_MASKRET = 1 << LUA_HOOKRET
	LUA_MASKLINE = 1 << LUA_HOOKLINE
	LUA_MASKCOUNT = 1 << LUA_HOOKCOUNT
)

struct C.lua_State
struct C.lua_Number
struct C.lua_Unsigned
struct C.lua_KContext
struct C.CallInfo

struct C.lua_Debug {
pub:
	event int
	name byteptr
	namewhat byteptr
	what byteptr
	source byteptr
	currentline int
	linedefined int
	lastlinedefined int
	nups byte
	nparams byte
	isvararg byte
	istailcall byte
	short_src [LUA_IDSIZE]byte
	i_ci &C.CallInfo
}

//lauxlib.h
struct C.luaL_Buffer {
pub:
	b byteptr
	size u32
	n u32
	initb [LUAL_BUFFERSIZE]byte
}

struct C.luaL_Reg {
pub:
	name byteptr
	func fn(&C.lua_State) int
}

struct C.luaL_Stream {
pub:
	f &voidptr
	func fn(&C.lua_State) int
}
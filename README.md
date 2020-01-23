# vlua
Lua bindings for the V programming language.

# What versions of Lua are supported?
Versions 5.1, 5.2, 5.3, and JIT 2 are planned, and initial work has been done, but 5.3 is the only one in a usable state. 5.3 may be the only supported versions until V makes C compatibility better. Right now there are unfavorable workarounds and issues.

# How much of the C API is supported?
99% of the API is there, but some aren't due to issues, mainly:
1. lua_pushfstring and luaL_error due to V not entirely handling variadic arguments well.
2. lua_pushliteral due to some kind of compiler issue.
3. luaL_opt due to not knowing how to implement it.

The rest of the API should work as intended, although there may be unencountered edge cases due to type conversions. eg. lua_Integer -> i64
###### This section only applies to vlib53 as the others are not suitable for use.

# How reliable is are the bindings?
V is a relatively new programming language thats still in its infancy. By extension these bindings may not always work as expected due to unforeseen behavior in the compiler, or an update to V changes how the bindings need to be written. I will continue to try and support these bindings as V evolves. Feel free to report any issues.

# Examples & Install
1. Download the source files and put which version you want into your V project folder.

2. Download the Lua binaries (or compile them yourself) and place them in a folder in your V project.

3. Now, you'll need to set compiler flags to link to your lua.h, lauxlib.h, lualib.h headers as well as your liblua.a library. This can be done with the `#flag` setting to specify the directories and what lib to link. You'll also need to include the headers. If you have ever used C, it'll be familiar. You only then need to import the version

4. Import the module via the module name (vlib51, vlib52, vlib53, vlibJIT20 for Lua 5.1, 5.2, 5.3, and JIT respectively) and you're good to go to start using the API like you would in C!
```v
module main 

import (
	vlua53 as lua
)


#flag -L ./Lua535 -l lua
#include "lua.h"
#include "lualib.h"
#include "lauxlib.h"

fn main() {
	mystate := lua.lual_newstate()
	lua.lual_openlibs(mystate)
	cmd := "print('Hello from Lua!')"
	result := lua.lual_dostring(mystate, cmd.str)
	if result == 1 {
		println("Lua code ran successfully!")
	}
}
```

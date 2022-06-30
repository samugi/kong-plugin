-- Configuration file for LuaCheck
-- see: https://luacheck.readthedocs.io/en/stable/
--
-- To run do: `luacheck .` from the repo

std             = "ngx_lua"
unused_args     = false
redefined       = false
max_line_length = false


globals = {
    "_KONG",
    "kong",
    "ngx.IS_CLI",
}


not_globals = {
    "string.len",
    "table.getn",
}


ignore = {
    "6.", -- ignore whitespace warnings
}


include_files = {
    "kong/**/*.lua",
    "*.rockspec",
    ".busted",
    ".luacheckrc",
}

exclude_files = {
    -- github actions ci files
    ".lua/**/*.lua",
    ".install/**/*.lua",
    ".luarocks/**/*.lua",
}


files["spec/**/*.lua"] = {
    std = "ngx_lua+busted",
}

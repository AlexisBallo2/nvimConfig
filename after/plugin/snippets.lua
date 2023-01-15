local ls = require("luasnip")
-- some shorthands...
local snip = ls.snippet
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node

local date = function() return {os.date('%Y-%m-%d')} end

local pySnip = 111 


ls.add_snippets(nil, {
    all = {
        snip({
            trig = "note",
            namr = "add note box",
            dscr = "add note box",
        }, {
			text({"> **_NOTE:_**    "}), insert(0)
        }),
    },
})
ls.add_snippets(nil, {
    all = {
        snip({
            trig = "mblock",
            namr = "add mathjax latex",
            dscr = "add mathjax latex",
        }, {
			text({"$$", ""}), text({""}), insert(0), text({"", "$$"})
        }),
    },
})

ls.add_snippets(nil, {
    all = {
        snip({
            trig = "mline",
            namr = "add mathjax latex",
            dscr = "add mathjax latex",
        }, {
			text({"$"}), text({""}), insert(0), text({ "$"})
        }),
    },
})

ls.add_snippets(nil, {
    all = {
        snip({
            trig = "python",
            namr = "pythonCodeBLock",
            dscr = "create a new markdown-python codeblock",
        }, {
			text({"```Python", ""}), text({""}), insert(0), text({"", "```"})
        }),
    },
})

ls.add_snippets(nil, {
    all = {
        snip({
            trig = "date",
            namr = "Date",
            dscr = "Date in the form of YYYY-MM-DD",
        }, {
            func(date, {}),
        }),
    },
})



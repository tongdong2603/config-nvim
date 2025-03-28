local ls = require("luasnip") -- Nạp LuaSnip
local s = ls.snippet -- Định nghĩa snippet
local t = ls.text_node -- Định nghĩa text node
local i = ls.insert_node -- Định nghĩa insert node
local rep = require("luasnip.extras").rep
-- Định nghĩa snippets cho TypeScript
ls.add_snippets("typescript", {
  -- Snippet functions
  s("tfn", { -- Trigger là "tfn"
    t("function "),
    i(1, "functionName"),
    t("("),
    i(2, "params"),
    t("): "),
    i(3, "void"),
    t({ " {", "\t" }),
    i(0), -- Vị trí cuối cùng
    t({ "", "}" }),
  }),

  -- Snippet arrow function
  s("tarr", { -- Trigger là "tarr"
    t("const "),
    i(1, "functionName"),
    t(" = ("),
    i(2, "params"),
    t("): "),
    i(3, "void"),
    t({ " => {", "\t" }),
    i(0), -- Vị trí cuối cùng
    t({ "", "};" }),
  }),

  -- snippet query command cqrs in nest
  s("tnquery", {
    t("export class "),
    i(1, "QueryName"),
    t({ "Query implements IQuery {", "\t" }),
    t({ "constructor () {}", "", "}", "", "" }),
    t("@QueryHandler("),
    rep(1),
    t({ "Query)", "" }),
    t("export class "),
    rep(1),
    t("Handler implements IQueryHandler<"),
    rep(1),
    t({ "Query> {", "\t" }),
    t({ "constructor() {}", "\t" }),
    t("async excute("),
    i(2, "params"),
    t(":"),
    rep(1),
    t("Query): "),
    i(3, "void"),
    t({ "{", "\t" }),
    i(0), -- Vị trí cuối cùng
    t({ "};", "" }),
    t("}"),
  }),

  -- snippet command command cqrs in nest
  s("tncommand", {
    t("export class "),
    i(1, "CommandName"),
    t({ "Command implements ICommand {", "\t" }),
    t({ "constructor () {}", "", "}", "", "" }),
    t("@CommandHandler("),
    rep(1),
    t({ "Command)", "" }),
    t("export class "),
    rep(1),
    t("Handler implements ICommandHandler<"),
    rep(1),
    t({ "Command> {", "\t" }),
    t({ "constructor() {}", "\t" }),
    t("async excute("),
    i(2, "params"),
    t(":"),
    rep(1),
    t("Command): "),
    i(3, "void"),
    t({ "{", "\t" }),
    i(0), -- Vị trí cuối cùng
    t({ "};", "" }),
    t("}"),
  }),
})

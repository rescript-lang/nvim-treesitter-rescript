if exists('g:loaded_nvim_treesitter_rescript')
  finish
endif

lua <<EOF
local plugin_dir = vim.fn.expand("<sfile>:p:h:h")
require"nvim-treesitter.parsers".get_parser_configs().rescript = {
  install_info = {
    -- point to local copy of the `tree-sitter-rescript` parser
    url = plugin_dir .. "/tree-sitter-rescript",
    files = {"src/parser.c", "src/scanner.c"}
  },
  filetype = "rescript",
}
EOF

let g:loaded_nvim_treesitter_rescript = 1

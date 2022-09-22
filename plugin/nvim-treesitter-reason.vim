if exists('g:loaded_nvim_treesitter_reason')
  finish
endif

lua <<EOF
local plugin_dir = vim.fn.expand("<sfile>:p:h:h")
require"nvim-treesitter.parsers".get_parser_configs().reason = {
  install_info = {
    -- point to local copy of the `tree-sitter-reason` parser
    url = plugin_dir .. "/tree-sitter-reason",
    files = {"src/parser.c", "src/scanner.c"}
  },
  filetype = "reason",
}
EOF

let g:loaded_nvim_treesitter_reason = 1

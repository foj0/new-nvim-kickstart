return {
  {
    'epwalsh/obsidian.nvim',
    version = '*', -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = 'markdown',
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    --   -- refer to `:h file-pattern` for more examples
    --   "BufReadPre path/to/my-vault/*.md",
    --   "BufNewFile path/to/my-vault/*.md",
    -- },
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
    },
    opts = {
      workspaces = {
        {
          name = 'myVault',
          path = '~/ObsidianVault',
        },
      },
    },
    picker = {
      name = 'telescope.nvim',
    },
    -- ui = { enabled = false }, -- To uncomment this need to turn on render-markdown.nvim
    -- Look at docs for more options
  },

  -- Pretty markdown
  {
    'MeanderingProgrammer/render-markdown.nvim',
    enabled = false, -- uncomment the ui line to enable
    opts = {},
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovoski/mini.nvim' },
  },
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    ft = { 'markdown' },
    build = function()
      vim.fn['mkdp#util#install']()
    end,
    config = function()
      vim.cmd [[do FileType]]
      vim.cmd [[
         function OpenMarkdownPreview (url)
            let cmd = "google-chrome-stable --new-window " . shellescape(a:url) . " &"
            silent call system(cmd)
         endfunction
      ]]
      vim.g.mkdp_browserfunc = 'OpenMarkdownPreview'
    end,
  },
}

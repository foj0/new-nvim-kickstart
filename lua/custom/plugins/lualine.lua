return {
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      -- local catppuccin = require 'lualine.themes.catppuccin'

      -- Set bg = '#32302f' only for section 'c' in each mode
      -- for _, mode in pairs(catppuccin) do
      --   if mode.c then
      --     mode.c.bg = '#32302f'
      --   end
      -- end

      require('lualine').setup {
        options = {
          -- theme auto to adapt to current colorscheme
          -- theme = catppuccin, --sonokai, onedark, gruvbox_dark, gruvbox_light, gruvbox, gruvbox-material, dracula, or auto to match any theme
          theme = auto,

          component_separators = { left = ')', right = '(' }, -- rounded separators
          section_separators = { left = '', right = '' }, -- rounded separators
        },
        -- Customize this to change what info shows up in lualine status bar
        sections = {
          -- Show file path, not just file name
          lualine_c = {
            { 'filename', path = 1 },
          },
        },
      }
    end,
  },
}

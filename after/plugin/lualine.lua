require('lualine').setup {
  options = {
    icons_enabled = true,
    thefilenameme = 'auto',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = {
      'branch',
    },
    lualine_c = {
      {
        'filename',
        path = 1,
        shorting_target = 50
      }
    },
    lualine_x = { {
      'filetype',
      colored = true,
      icon_only = true,
      icor = { 'X', align = 'right' },
    } },
    lualine_y = { {
      'diagnostics',
      colored = true,
      sections = { 'error', 'warn', 'info' },
      always_visible = true,
    } },
    lualine_z = { 'location' }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = { 'quickfix', 'fugitive', 'fzf' }
}

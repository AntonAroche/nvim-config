require('gitsigns').setup()

require('gitblame').setup {
  --Note how the `gitblame_` prefix is omitted in `setup`
  enabled = true,
  date_format = '%r',
}

-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- Autoclosing Tag
  { 'windwp/nvim-ts-autotag' },

  -- LazyGit
  {
    'kdheepak/lazygit.nvim',
    lazy = true,
    cmd = {
      'LazyGit',
      'LazyGitConfig',
      'LazyGitCurrentFile',
      'LazyGitFilter',
      'LazyGitFilterCurrentFile',
    },
    -- optional for floating window border decoration
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { '<leader>lg', '<cmd>LazyGit<cr>', desc = 'LazyGit' },
    },
  },

  -- Vim txmux navigation
  {
    'christoomey/vim-tmux-navigator',
    cmd = {
      'TmuxNavigateLeft',
      'TmuxNavigateDown',
      'TmuxNavigateUp',
      'TmuxNavigateRight',
      'TmuxNavigatePrevious',
    },
    keys = {
      { '<C-h>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
      { '<C-j>', '<cmd><C-U>TmuxNavigateDown<cr>' },
      { '<C-k>', '<cmd><C-U>TmuxNavigateUp<cr>' },
      { '<C-l>', '<cmd><C-U>TmuxNavigateRight<cr>' },
      { '<C-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },
    },
  },

  -- custom keybindings
  vim.api.nvim_set_keymap('n', '<M-j>', '<C-w>+', { noremap = true, desc = 'Increase window height' }),
  vim.api.nvim_set_keymap('n', '<M-k>', '<C-w>-', { noremap = true, desc = 'Decrease window height' }),
  vim.api.nvim_set_keymap('n', '<M-h>', '<C-w><', { noremap = true, desc = 'Decrease window width' }),
  vim.api.nvim_set_keymap('n', '<M-l>', '<C-w>>', { noremap = true, desc = 'Increase window width' }),
  vim.api.nvim_set_keymap('n', '<leader>h', ':sp<CR><C-w>j', { noremap = true, desc = 'Open [h]orizontal split' }),
  vim.api.nvim_set_keymap('n', '<leader>v', ':vsp<CR><C-w>l', { noremap = true, desc = 'Open [v]ertical split' }),
}

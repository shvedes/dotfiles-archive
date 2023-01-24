-- https://github.com/shvedes/dotfiles

require("nvim-tree").setup { -- BEGIN_DEFAULT_OPTS
      auto_reload_on_write = true,
      disable_netrw = false,
      hijack_cursor = false,
      hijack_netrw = true,
      hijack_unnamed_buffer_when_opening = false,
      ignore_buffer_on_setup = false,
      open_on_setup = true,
      sort_by = "name",
      root_dirs = {},
      prefer_startup_root = false,
      sync_root_with_cwd = false,
      reload_on_bufenter = false,
      respect_buf_cwd = false,
      view = {
        adaptive_size = true,
        centralize_selection = true,
        width = 40,
        hide_root_folder = false,
        preserve_window_proportions = false,
        number = true,
        mappings = {
          custom_only = false,
          list = {
          },
        },
      },
      renderer = {
        add_trailing = true,
        group_empty = false,
        highlight_git = true,
        full_name = true,
        highlight_opened_files = "none",
        root_folder_label = ":~:s?$?/..?",
        indent_width = 2,
      },
      update_focused_file = {
        enable = false,
        debounce_delay = 15,
        update_root = false,
        ignore_list = {},
      },
      ignore_ft_on_setup = {},
      system_open = {
        cmd = "",
        args = {},
      },
      actions = {
        open_file = {
          quit_on_open = true,
        },
        remove_file = {
          close_window = false,
        },
      },
    } 

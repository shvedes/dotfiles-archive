-- https://github.com/shvedes/dotfiles
-- packer section ----------------------------------------------------------------------------------------

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    
    use 'wbthomason/packer.nvim'


-- catppuccin theme --------------------------------------------------------------------------------------

    use { 
        'catppuccin/nvim',
        as = 'catppuccin'
    }

-- startup splashscreen ----------------------------------------------------------------------------------

    use {
        'goolord/alpha-nvim',
        
        -- dependencies for this plugin
        requires = { 'nvim-tree/nvim-web-devicons' },
    }

-- highlight colors --------------------------------------------------------------------------------------

    use {
        'brenoprata10/nvim-highlight-colors'
    }

-- auto pairs --------------------------------------------------------------------------------------------

    use {
        'jiangmiao/auto-pairs'
    }

-- comment blocks ----------------------------------------------------------------------------------------

    use {
        'numToStr/Comment.nvim',
        config = function()
        require('Comment').setup()
    end
    }

-- lualine -----------------------------------------------------------------------------------------------

        use {
            'nvim-lualine/lualine.nvim',
            
            -- dependencies for this plugin
            requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

-- buffers -----------------------------------------------------------------------------------------------

    -- use {
    --     'tamton-aquib/staline.nvim'
    -- }

    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

-- file explorer -----------------------------------------------------------------------------------------

    use {
        'nvim-tree/nvim-tree.lua',
  }

-- autocompletion ----------------------------------------------------------------------------------------

    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer', 
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'saadparwaiz1/cmp_luasnip',
            'L3MON4D3/LuaSnip'

        }

    }


-- telescope --------------------------------------------------------------------------------------------

    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      requires = { {'nvim-lua/plenary.nvim'} }
    }


-- markdowm files preview --------------------------------------------------------------------------------

    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

-- gruvbox theme ----------------------------------------------------------------------------------------

    use {
        "ellisonleao/gruvbox.nvim"
    }

-- git status --------------------------------------------------------------------------------------------

	use({ "lewis6991/gitsigns.nvim" })

-- one dark theme ----------------------------------------------------------------------------------------

    use 'navarasu/onedark.nvim'
-- nord theme --------------------------------------------------------------------------------------------

    use 'shaunsingh/nord.nvim'

-- end of the packer function ----------------------------------------------------------------------------


end)

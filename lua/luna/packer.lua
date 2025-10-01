-- Main stuff

  vim.cmd [[packadd packer.nvim]]
  
  return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

-- Moving between files

    use {
            'nvim-telescope/telescope.nvim', tag = '0.1.8',
            requires = { {'nvim-lua/plenary.nvim'} }
    }
  
    use "nvim-lua/plenary.nvim"
    use "theprimeagen/harpoon"

-- Code Assistance
    
    use "mbbill/undotree"
    use "tpope/vim-fugitive"
    use {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup {}
    end
    }
    use 'CRAG666/code_runner.nvim'
    use 'stevearc/conform.nvim'
    use{
       'mfussenegger/nvim-lint',
       event = {
          "BufReadPre",
          "BufNewFile",
       }
    }

-- Lsp
    
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }
    
-- Coloring

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use 'nvim-treesitter/playground'

    use({
            'bluz71/vim-nightfly-colors',
            as = 'nightlight',
            config = function()
                    vim.cmd('colorscheme nightfly')
            end
    })
  end)

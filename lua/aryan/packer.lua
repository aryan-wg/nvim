-- This file can be loaded by calling `lua require('plugins')` from your init.vim

--wf- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
  use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  })
  use { 'mhartington/formatter.nvim' }
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use({ "rose-pine/neovim", as = "rose-pine", config = function()
	vim.cmd('colorscheme rose-pine')
        end})
	use (
		'nvim-treesitter/nvim-treesitter',
		{run = ':TSUpdate'}
	 	)
	use('nvim-treesitter/playground')

	use("ThePrimeagen/harpoon")
  use "rafamadriz/friendly-snippets"
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			--- Uncomment the two plugins below if you want to manage the language servers from neovim
			{"neovim/nvim-lspconfig"},
			{"hrsh7th/cmp-buffer"},
			{"hrsh7th/cmp-path"},
			{"saadparwaiz1/cmp_luasnip"},
			{"hrsh7th/cmp-nvim-lua"},
			{"L3MON4D3/LuaSnip"},
			{"rafamadriz/friendly-snippets"},
			 {'williamboman/mason.nvim'},
			 {'williamboman/mason-lspconfig.nvim'},
             --auto close tags 
             {"windwp/nvim-ts-autotag"},
             --auto close brackets
             {"m4xshen/autoclose.nvim"},
             -- commenting
             {"JoosepAlviste/nvim-ts-context-commentstring"},
             {"numToStr/Comment.nvim"},
             -- intentation
             {"echasnovski/mini.indentscope"},
			-- LSP Support
      {"RRethy/vim-illuminate"},
      {"lewis6991/gitsigns.nvim"},
			{'neovim/nvim-lspconfig'},
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
      -- Code folding
		}
	}
    use({
	"Pocco81/auto-save.nvim",
	config = function()
		 require("auto-save").setup {
			-- your config goes here
			-- or just leave it empty :)
		 }
	end,
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end,
    -- fold unflod
  },
  use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  },
  use{
    "github/copilot.vim",
  }
})
end)

local function usePlugins(use)
    use { 
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end
    }

    use { "catppuccin/nvim", as = "catppuccin" }
    use { "nvim-treesitter/nvim-treesitter" }
    use { "neovim/nvim-lspconfig" }
    use {
      "nvim-telescope/telescope.nvim",
      tag = "0.1.0",
      requires = { {"nvim-lua/plenary.nvim"} }
    }

    use { "hrsh7th/nvim-cmp" }
end

return usePlugins

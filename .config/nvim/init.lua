vim.g.netrw_banner = 0
vim.g.mapleader = " "

local options = require("options")
local optionHandler = require("option_handler")

local errorString = optionHandler.applyOptions(options)

if errorString ~= "" then
    print(errorString)
end

local packerGetter = require("packer_getter")

local packerOk, packer, bootstrappedPacker = packerGetter()

local usePlugins = require("use_plugins")

if packerOk then
    packer.startup(function(use)
		-- packer is a plugin itself, so it can update itself
		use { 'wbthomason/packer.nvim' }

		usePlugins(use)

		if bootstrappedPacker then
			packer.sync()
		end
	end)
else
    print("Packer could not load!")
end

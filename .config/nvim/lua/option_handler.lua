local function applyValidOption(name, value)
    vim.o[name] = value
end

return {
    applyOptions = function(options)
	    local errorString = ""

	    for option, value in pairs(options) do
		    local success, err = pcall(applyValidOption, option, value)

		    if not success then
			    errorString = errorString..err
		    end
	    end

	    return errorString
    end
}

return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			theme = "hyper",
			config = {
				week_header = {
					enable = true,
				},
				shortcut = {
					{
						icon = " ",
						desc = "Menu",
						group = "@property",
						action = "Neotree left reveal toggle",
						key = "q",
					},
					{
						icon = " ",
						desc = "Search",
						group = "Label",
						action = "Telescope find_files",
						key = "s",
					},
					{
						icon = "󰊳 ",
						desc = "Text",
						group = "Number",
						action = "Telescope live grep",
						key = "t",
					},
					{
						icon = " ",
						desc = "Update",
						group = "Highlight",
						action = "Lazy update",
						key = "u",
					},
				},
			},
		})
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}

return {
	{
		"David-Kunz/gen.nvim",
		-- Custom Parameters (with defaults)
		enabled = true,
		config = function()
			local gen = require("gen")
			local protocol
			local url
			local port
			protocol, url = os.getenv("OLLAMA_API_URL"):match("(.*)://(.*)")
			host, port = url:match("(.*):(.*)")
			gen.setup({
				model = "llama3.2:3b-instruct-fp16", -- The default model to use.
				display_mode = "split", -- The display mode. Can be "float" or "split" or "horizontal-split".
				show_prompt = true, -- Shows the prompt submitted to Ollama. Can be true (3 lines) or "full".
				show_model = true, -- Displays which model you are using at the beginning of your chat session.
				no_auto_close = false, -- Never closes the window automatically.
				host = host, -- The host running the Ollama service.
				port = port, -- The port on which the Ollama service is listening.
			})
			gen.prompts.Summarize = {
				prompt = "Summarize and translate into Russian the following text:\n$text",
			}
			gen.prompts.Ask = {
				prompt = "Regarding the following text and give your answer in Russian, $input:\n$text",
			}
			gen.prompts.Translate = {
				prompt = "translate into Russian the following text:\n$text",
			}
			gen.prompts.Review_Code = {
				prompt = "Review the following code and make concise suggestions in Russian:\n```$filetype\n$text\n```",
			}
			gen.prompts.Test = {
				prompt = "Create OOP-based tests for this code\n$text",
			}
			vim.keymap.set({ "n", "v" }, "<leader>m", ":Gen<CR>")
			vim.keymap.set({ "n" }, "<leader>mm", function()
				gen.select_model()
			end)
		end,
	},
}

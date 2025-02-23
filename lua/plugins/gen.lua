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
			env = os.getenv("OLLAMA_API_URL")
			if env ~= nil then
				protocol, url = env:match("(.*)://(.*)")
				host, port = url:match("(.*):(.*)")
				gen.setup({
					model = "llama3.2:3b-instruct-fp16", -- The default model to use.
					display_mode = "split", -- The display mode. Can be "float" or "split" or "horizontal-split".
					show_prompt = true, -- Shows the prompt submitted to Ollama. Can be true (3 lines) or "full".
					show_model = true, -- Displays which model you are using at the beginning of your chat session.
					no_auto_close = true, -- Never closes the window automatically.
					host = host, -- The host running the Ollama service.
					port = port, -- The port on which the Ollama service is listening.
				})
				gen.prompts.Summarize = {
					prompt = "```$text```\nSummarize in Russian the text.",
				}
				gen.prompts.Ask = {
					prompt = "```$text```\nRegarding the text give in Russian your answer to this question ```$input```.",
				}
				gen.prompts.Translate = {
					prompt = "```$text```\nTranslate into Russian the text.",
				}
				gen.prompts.ReviewCode = {
					prompt = "```$filetype\n$text\n```Review in Russian the code.",
				}
				gen.prompts.ExplainCode = {
					prompt = "```$filetype\n$text\n```Explain the code in Russian.",
				}
				gen.prompts.TestAPI = {
					prompt = "```$filetype\n$text\n```Create functional tests using Python code with pytest and requests for test routers the code.",
				}
				gen.prompts.TestUnit = {
					prompt = "```$filetype\n$text\n```Create OOP-based tests with pytest for the code.",
				}
				gen.prompts.RewriteToPython = {
					prompt = "```$filetype\n$text\n```Rewrite the code to Python code.",
				}
				vim.keymap.set({ "n", "v" }, "<leader>m", ":Gen<CR>", { desc = "LLM Tasks" })
				vim.keymap.set({ "n" }, "<leader>mm", function()
					gen.select_model()
				end, { desc = "Choose LLM" })
			end
		end,
	},
}

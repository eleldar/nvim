return {
	"huggingface/llm.nvim",
	-- keys = { { '<c-j>', function() require('llm.completion').complete() end, mode = 'i', desc = 'complete' } },
	enabled = true,
	config = function()
		require("llm").setup({
			model = os.getenv("OPENAI_API_MODEL"),
			api_token = os.getenv("OPENAI_API_KEY"),
			url = os.getenv("OPENAI_API_HOST"),
			backend = "openai",
			request_body = {
				parameters = {
					temperature = 0.2,
					top_p = 0.95,
				},
			},
			accept_keymap = "<c-a>",
			dismiss_keymap = "<c-q>",
			tokenizer = nil,
			context_window = 1024,
			enable_suggestions_on_startup = true,
			enable_suggestions_on_files = "*",
			disable_url_path_completion = false,
		})
	end,
}

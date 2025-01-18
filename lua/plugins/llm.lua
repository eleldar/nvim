return {
	'huggingface/llm.nvim',
	-- keys = { { '<c-j>', function() require('llm.completion').complete() end, mode = 'i', desc = 'complete' } },
	enabled = false,
	config = function()
		require('llm').setup({
			api_token = nil,
			model = "codellama:7b",
			backend = "ollama",
			url = os.getenv('OLLAMA_API_URL'),
			tokens_to_clear = { "<EOT>" },
			request_body = {
				parameters = {
					temperature = 0.2,
					top_p = 0.95,
				},
			},
			fim = {
				enabled = true,
				prefix = "<PRE> ",
				middle = " <MID>",
				suffix = " <SUF>",
			},
			debounce_ms = 150,
			accept_keymap = "<c-a>",
			dismiss_keymap = "<c-q>",
			tls_skip_verify_insecure = false,
			lsp = {
				bin_path = nil,
				host = nil,
				port = nil,
				cmd_env = nil,
				version = "0.5.3",
			},
			tokenizer = nil,
			context_window = 1024,
			enable_suggestions_on_startup = true,
			enable_suggestions_on_files = "*",
			disable_url_path_completion = false
		})
	end
}

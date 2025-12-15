return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
	lazy = false,
    -- event = "BufRead",  -- optional lazy load
    config = function()
            local ok, configs = pcall(require, "nvim-treesitter.configs")
            if not ok or not configs then
                vim.notify("nvim-treesitter not available; skipping setup", vim.log.levels.WARN)
                return
            end
            configs.setup({
            ensure_installed = { "lua", "rust" },
            sync_install = false,
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}

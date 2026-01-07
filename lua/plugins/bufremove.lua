return {
	"echasnovski/mini.bufremove",
	version = false,
    config = function ()
        vim.keymap.set("n", "<leader>q", function ()
            require("mini.bufremove").delete(0, false)
        end, { desc = "Close buffer" })
    end
}

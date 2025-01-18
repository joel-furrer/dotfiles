return {
	"michaelrommel/nvim-silicon",
	lazy = true,
	cmd = "Silicon",
  config = function()
    require("nvim-silicon").setup({
      font = "MesloLGM Nerd Font=34;Noto Color Emoji=34"
    })
  end
}

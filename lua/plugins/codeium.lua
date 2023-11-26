return {
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
    config = function()
      vim.g.codeium_disable_bindings = 1
      vim.keymap.set("i", "<S-tab>", function()
        return vim.fn["codeium#Accept"]()
      end, { expr = true })
      -- codeium#CycleCompletions(1)
      -- codeium#CycleCompletions(-1)
      -- codeium#Clear()
      -- codieum#Complete()
    end,
  },
}

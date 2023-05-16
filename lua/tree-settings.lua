-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("neo-tree").setup({
  window = {
    mappings = {
      ["z"] = "noop",
      ["l"] = "noop"
    }
  },
  filesystem = {
    window = {
      mappings = {
        -- disable fuzzy finder
        ["/"] = "noop"
      }
    }
  },
  git_status = {
    window = {
      mappings = {
        -- disable git stuff, as it has commit and push kind of nonsense mapped to gg
        ["A"] = "noop",
        ["gu"] = "noop",
        ["ga"] = "noop",
        ["gr"] = "noop",
        ["gc"] = "noop",
        ["gp"] = "noop",
        ["gg"] = "noop",
      }
    }
  }
})

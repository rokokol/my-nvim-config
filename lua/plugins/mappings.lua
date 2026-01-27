return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    mappings = {
      n = {
        ["d"] = { '"_d', desc = "Delete without yanking" },
        ["D"] = { '"_D', desc = "Delete line without yanking" },
        ["s"] = { '"_s', desc = "Delete symbol without yanking" },
        ["<A-j>"] = { ":m .+1<CR>==", desc = "Move line down" },
        ["<A-k>"] = { ":m .-2<CR>==", desc = "Move line up" },
      },
      v = {
        ["d"] = { '"_d', desc = "Delete without yanking" },
        ["p"] = { '"_dP', desc = "Paste without losing current clipboard" },
        ["<A-j>"] = { ":m '>+1<CR>gv=gv", desc = "Move block down" },
        ["<A-k>"] = { ":m '<-2<CR>gv=gv", desc = "Move block up" },
      },
      -- termital mode
      t = {
        ["<Esc>"] = { [[<C-\><C-n>]], desc = "Exit terminal mode" },
      },
    },
    options = {
      opt = {
        -- To map rus & en layouts in operations modes
        langmap = "ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz",
      },
    },
  },
}

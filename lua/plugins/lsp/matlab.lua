---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    servers = {
      "matlab_ls",
    },
    config = {
      matlab_ls = {
        settings = {
          MATLAB = {
            indexWorkspace = true,
            showLog = true,
            single_file_support = true,
            installPath = "/home/rokokol/MATLAB2025a",
          },
        },
      },
    },
  },
}

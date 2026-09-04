return {
  "sonv/TexViewer",
  branch = "dev-api",
  ft = { "tex", "plaintex", "latex" },
  cmd = { "MathPreview", "MathPreviewStop", "MathPreviewRestart", "MathPreviewStatus" },
  -- All `opts` keys are optional; the defaults work for the standard case.
  opts = {
    -- Absolute path to the binary if it isn't on $PATH.
    -- cmd = "/usr/local/bin/mathpreview-cli",

    -- Set to false if you don't want :MathPreview to also open a browser tab.
    -- auto_open_browser = true,

    -- Use a CDN-hosted MathJax instead of the embedded bundle. nil = embedded.
    -- mathjax_url = "https://cdn.jsdelivr.net/npm/mathjax@4/tex-svg.js",

    -- Filetypes that trigger automatic buffer pushes on TextChanged.
    -- filetypes = { "tex", "plaintex", "latex" },

    -- Debounces (ms). The push debounce is the keystroke→render latency
    -- floor; the cursor debounce throttles forward-sync POSTs.
    -- debounce_ms = 40,
    -- cursor_debounce_ms = 80,

    -- Set sync = false to disable cursor/jump bidirectional sync entirely.
    -- sync = true,
  },
  config = function(_, opts)
    require("mathpreview").setup(opts)
  end,
}

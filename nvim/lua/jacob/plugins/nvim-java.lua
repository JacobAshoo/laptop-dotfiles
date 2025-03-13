return {
  "mfussenegger/nvim-jdtls",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    local mason_path_jdtls = vim.fn.stdpath("data") .. "/mason/packages/jdtls/plugins/"
    local mason_path_java_debug = vim.fn.stdpath("data") .. "/mason/packages/java-debug-adapter/extension/server/"

    local equinox
    for file in io.popen("ls " .. mason_path_jdtls):lines() do
      if string.find(file, "launcher_") then
        equinox = mason_path_jdtls .. file
        break
      end
    end

    local debug_jar
    for file in io.popen("ls " .. mason_path_java_debug):lines() do
      if string.find(file, "debug") then
        debug_jar = mason_path_java_debug .. file
        break
      end
    end

    local data_dir = vim.fn.getcwd() .. "_jdtls_data"
    local config_linux = vim.fn.stdpath("data") .. "/mason/packages/jdtls/config_linux"

    local config = {
      cmd = {
        "java",
        "-Declipse.application=org.eclipse.jdt.ls.core.id1",
        "-Dosgi.bundles.defaultStartLevel=4",
        "-Declipse.product=org.eclipse.jdt.ls.core.product",
        "-Dlog.protocol=true",
        "-Dlog.level=ALL",
        "-Xmx1g",
        "--add-modules=ALL-SYSTEM",
        "--add-opens", "java.base/java.util=ALL-UNNAMED",
        "--add-opens", "java.base/java.lang=ALL-UNNAMED",
        "-jar", equinox,
        "-configuration", config_linux,
        "-data", data_dir,
      },
      root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew" }),
      settings = { java = {} },
      init_options = {
        bundles = { vim.fn.glob(debug_jar, true) },
      },
    }

    vim.api.nvim_create_augroup("jdtls", { clear = true })
    vim.api.nvim_create_autocmd("BufReadPost", {
      group = "jdtls",
      pattern = "*.java",
      callback = function()
        require("jdtls").start_or_attach(config)
      end,
    })
  end,
}


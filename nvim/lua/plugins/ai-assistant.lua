return {
  {
    "github/copilot.vim",
    enabled = true,
    init = function()
      vim.g.copilot_filetypes = { markdown = true, DressingInput = false }
      vim.g.copilot_no_tab_map = true
    end,
    config = function()
      vim.cmd("Copilot disable")

      local keymap = vim.keymap

      keymap.set("i", "<C-Q>", "copilot#Accept('\\<CR>')", { expr = true, replace_keycodes = false })
      keymap.set("i", "<C-L>", "<Plug>(copilot-accept-word)")
      keymap.set("i", "<C-J>", "<Plug>(copilot-accept-line)")
    end,
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    enabled = true,
    branch = "canary",
    opts = {
      context = "buffer",
    },
    init = function()
      vim.keymap.set("n", "<leader>cc", ":CopilotChatToggle<CR>")
    end,
  },
  {
    "yetone/avante.nvim",
    enabled = false,
    dev = true,
    dir = os.getenv("CODING") .. "/Projects/Nvim Plugins/avante.nvim",
    event = "VeryLazy",
    build = "make BUILD_FROM_SOURCE=true luajit",
    opts = {
      provider = "copilot",
      copilot = {
        endpoint = "https://api.githubcopilot.com",
        model = "gpt-4o-2024-05-13",
        proxy = nil, -- [protocol://]host[:port] Use this proxy
        allow_insecure = false, -- Allow insecure server connections
        timeout = 30000, -- Timeout in milliseconds
        temperature = 0,
        max_tokens = 8192,
      },
    },
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
  },
  {
    "robitx/gp.nvim",
    enabled = true,
    config = function()
      local conf = {
        providers = {
          copilot = {
            endpoint = "https://api.githubcopilot.com/chat/completions",
            secret = {
              "bash",
              "-c",
              "cat ~/.config/github-copilot/apps.json | sed -e 's/.*oauth_token...//;s/\".*//'",
            },
          },
        },
        agents = {
          {
            provider = "copilot",
            name = "ChatCopilot",
            chat = true,
            command = false,
            -- string with model name or table with model name and parameters
            model = { model = "gpt-4o", temperature = 1.0, top_p = 1, n = 1 },
            -- system prompt (use this to specify the persona/role of the AI)
            system_prompt = "Responses should be short. Responses should be casual. Responses can have opinion. Don't provide code if not explicitly asked.",
          },
        },
        hooks = {
          Translator = function(gp, params)
            local chat_system_prompt = "You are a Translator, please translate between English and Chinese."
            gp.cmd.ChatNew(params, chat_system_prompt)

            -- -- you can also create a chat with a specific fixed agent like this:
            -- local agent = gp.get_chat_agent("ChatGPT4o")
            -- gp.cmd.ChatNew(params, chat_system_prompt, agent)
          end,
          -- example of adding command which writes unit tests for the selected code
          UnitTests = function(gp, params)
            local template = "I have the following code from {{filename}}:\n\n"
              .. "```{{filetype}}\n{{selection}}\n```\n\n"
              .. "Please respond by writing table driven unit tests for the code above."
            local agent = gp.get_command_agent()
            gp.Prompt(params, gp.Target.enew, agent, template)
          end,
          -- example of adding command which explains the selected code
          Explain = function(gp, params)
            local template = "I have the following code from {{filename}}:\n\n"
              .. "```{{filetype}}\n{{selection}}\n```\n\n"
              .. "Please respond by explaining the code above."
            local agent = gp.get_chat_agent()
            gp.Prompt(params, gp.Target.popup, agent, template)
          end,
          CodeReview = function(gp, params)
            local template = "I have the following code from {{filename}}:\n\n"
              .. "```{{filetype}}\n{{selection}}\n```\n\n"
              .. "Please analyze for code smells and suggest improvements."
            local agent = gp.get_chat_agent()
            gp.Prompt(params, gp.Target.enew("markdown"), agent, template)
          end,
        },
      }

      require("gp").setup(conf)
    end,
  },
}

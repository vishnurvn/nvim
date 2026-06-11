local function mode()
  local modes = {
    n = "NORMAL",
    i = "INSERT",
    v = "VISUAL",
    V = "V-LINE",
    ["\22"] = "V-BLOCK",
    c = "COMMAND",
    R = "REPLACE",
    t = "TERMINAL",
  }
  return modes[vim.fn.mode()] or vim.fn.mode()
end

local function filepath()
  local path = vim.fn.expand("%:~:.")
  if path == "" then
    return ""
  end
  return path
end

local function git_branch()
  local branch = vim.fn.system("git branch --show-current 2>/dev/null"):gsub("\n", "")
  if branch == "" then
    return ""
  end
  return " branch: " .. branch
end

local function modified()
  if vim.bo.modified then
    return "[+]"
  end
  if not vim.bo.modifiable then
    return "~"
  end
  return ""
end

function _G.statusline()
  return table.concat({
    "[",
    mode(),
    "]",
    git_branch(),
    " ",
    filepath(),
    " ",
    modified(),
  })
end

vim.o.statusline = "%!v:lua.statusline()"
vim.o.laststatus = 3

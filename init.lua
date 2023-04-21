-- packer plugins
if not pcall(require, 'plugins') then
  print("plugins errored")
end

-- generic settings
if not pcall(require, 'settings') then
  print("settings.lua errored")
end

-- generic keymaps
if not pcall(require, 'keymaps') then
  print("keymaps.lua errored")
end

-- plugin configs and keymaps
if not pcall(require, 'lsp-zero-settings') then
  print("lsp-zero-settings.lua errored")
end

if not pcall(require, 'telescope-settings') then
  print("telescope-settings.lua errored")
end

if not pcall(require, 'tree-settings') then
  print("tree-settings.lua errored")
end

if not pcall(require, 'null-ls-settings') then
  print("null-ls-settings.lua errored")
end

print("init.lua finished")

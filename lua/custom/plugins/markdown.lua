-- Must be registered before vim.pack.add so it also fires on the first install
vim.api.nvim_create_autocmd('PackChanged', {
  callback = function(ev)
    local data = ev.data
    if data.spec.name ~= 'markdown-preview.nvim' then return end
    if data.kind ~= 'install' and data.kind ~= 'update' then return end

    -- Download the prebuilt preview server into app/bin, so neither node nor yarn is needed
    local package_json = table.concat(vim.fn.readfile(vim.fs.joinpath(data.path, 'package.json')), '\n')
    local tag = 'v' .. vim.json.decode(package_json).version
    local result = vim.system({ './install.sh', tag }, { cwd = vim.fs.joinpath(data.path, 'app') }):wait()
    if result.code ~= 0 then
      local output = result.stderr ~= '' and result.stderr or result.stdout
      vim.notify(('Build failed for markdown-preview.nvim:\n%s'):format(output), vim.log.levels.ERROR)
    end
  end,
})

-- Print the preview URL, since there may be no browser available to open it
vim.g.mkdp_echo_preview_url = 1

vim.pack.add { 'https://github.com/iamcco/markdown-preview.nvim' }

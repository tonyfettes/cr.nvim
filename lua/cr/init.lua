local cr = {}

cr.put_new_lines_before = function ()
  local count = vim.api.nvim_eval('v:count1')
  local current_win = vim.api.nvim_get_current_win()
  local cursor_pos = vim.api.nvim_win_get_cursor(current_win)
  local newlines = {}
  for i = 1,count do
    newlines[i] = ''
  end
  vim.api.nvim_put(newlines, 'l', false, false)
  vim.api.nvim_win_set_cursor(current_win, { cursor_pos[1] + count, cursor_pos[2] })
end

cr.put_new_lines_after = function ()
  local count = vim.api.nvim_eval('v:count1')
  local current_win = vim.api.nvim_get_current_win()
  local cursor_pos = vim.api.nvim_win_get_cursor(current_win)
  local newlines = {}
  for i = 1,count do
    newlines[i] = ''
  end
  vim.api.nvim_put(newlines, 'l', true, false)
  vim.api.nvim_win_set_cursor(current_win, cursor_pos)
end

cr.jump_new_lines_before = function ()
  local count = vim.api.nvim_eval('v:count1')
  local current_win = vim.api.nvim_get_current_win()
  local cursor_pos = vim.api.nvim_win_get_cursor(current_win)
  local newlines = {}
  for i = 1,count do
    newlines[i] = ''
  end
  vim.api.nvim_put(newlines, 'l', false, false)
  vim.api.nvim_win_set_cursor(current_win, { cursor_pos[1], 0 })
end

cr.jump_new_lines_after = function ()
  local count = vim.api.nvim_eval('v:count1')
  local current_win = vim.api.nvim_get_current_win()
  local cursor_pos = vim.api.nvim_win_get_cursor(current_win)
  local newlines = {}
  for i = 1,count do
    newlines[i] = ''
  end
  vim.api.nvim_put(newlines, 'l', true, false)
  vim.api.nvim_win_set_cursor(current_win, { cursor_pos[1] + count, 0 })
end

return cr

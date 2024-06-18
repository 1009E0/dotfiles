Manager = {
  area = ui.Rect.default,
}

function Manager:layout(area)
  self.area = area

  return ui.Layout()
      :direction(ui.Layout.HORIZONTAL)
      :constraints({
        ui.Constraint.Ratio(MANAGER.ratio.parent, MANAGER.ratio.all),
        ui.Constraint.Ratio(MANAGER.ratio.current, MANAGER.ratio.all),
        ui.Constraint.Ratio(MANAGER.ratio.preview, MANAGER.ratio.all),
      })
      :split(area)
end

function Status:name()
  local h = cx.active.current.hovered
  if not h then
    return ui.Span("")
  end

  local linked = ""
  if h.link_to ~= nil then
    linked = " -> " .. tostring(h.link_to)
  end
  return ui.Span(" " .. h.name .. linked)
end

function Status:owner()
  local h = cx.active.current.hovered
  if h == nil or ya.target_family() ~= "unix" then
    return ui.Line {}
  end

  return ui.Line {
    ui.Span(ya.user_name(h.cha.uid) or tostring(h.cha.uid)):fg("magenta"),
    ui.Span(":"),
    ui.Span(ya.group_name(h.cha.gid) or tostring(h.cha.gid)):fg("magenta"),
    ui.Span(" "),
  }
end

function Status:render(area)
  self.area = area

  local left = ui.Line { self:mode(), self:size(), self:name() }
  local right = ui.Line { self:owner(), self:permissions(), self:percentage(), self:position() }
  return {
    ui.Paragraph(area, { left }),
    ui.Paragraph(area, { right }):align(ui.Paragraph.RIGHT),
    table.unpack(Progress:render(area, right:width())),
  }
end

function Manager:render(area)
  local chunks = self:layout(area)

  return ya.flat {
    -- Borders
    ui.Bar(chunks[1], ui.Bar.RIGHT):symbol(THEME.manager.border_symbol):style(THEME.manager.border_style),
    ui.Bar(chunks[3], ui.Bar.LEFT):symbol(THEME.manager.border_symbol):style(THEME.manager.border_style),

    -- Parent
    Parent:render(chunks[1]:padding(ui.Padding.x(1))),
    -- Current
    Current:render(chunks[2]),
    -- Preview
    Preview:render(chunks[3]:padding(ui.Padding.x(1))),
  }
end

return {
  entry = function()
    local h = cx.active.current.hovered
    if h and h.cha.is_dir then
      ya.manager_emit("enter", {})
      ya.manager_emit("paste", {})
      ya.manager_emit("leave", {})
    else
      ya.manager_emit("paste", {})
    end
  end,
}

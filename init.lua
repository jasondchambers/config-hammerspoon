hs.hotkey.bind({"cmd"}, "s", function()
    hs.application.launchOrFocus("Slack")
end)
  
hs.hotkey.bind({"cmd"}, "n", function()
    hs.application.launchOrFocus("Notion")
end)

hs.hotkey.bind({"cmd"}, "g", function()
    hs.execute("open 'https://github.com'")
end)

hs.hotkey.bind({"cmd"}, "return", function()
    hs.application.launchOrFocus("Alacritty")
end)

hs.hotkey.bind({"cmd"}, "e", function()
    hs.execute("open 'https://gmail.com'")
end)
  
hs.hotkey.bind({"cmd"}, "o", function()
    hs.application.launchOrFocus("Obsidian")
end)

  

  
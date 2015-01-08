if not term.isPocket or not peripherals.isPresent("back") then
  error()
else
local w,h = term.getSize()
local id = os.getComputerID()
local label = os.getComputerLabel()
term.setBackgroundColor(colors.white)
term.clear()
text = "Booting. Version: "..os.version()
term.setCursorPos(math.floow((w-#text)/2),math.floor(h/2))
term.setTextColor(colors.black)
term.write(text)
sleep(5)
code = math.getRandomNumber()
os.run({},"launch",nil)
end

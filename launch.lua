cPrint = function(t)
  w,_ = term.getSize()
  _,y = term.getCursorPos()
  x = math.floor((w-#t)/2)
  term.setCursorPos(x,y)
  print(t)
end
sItem = 1
while true do
  term.clear()
  term.setCursorPos(1,1)
  cPrint("[ID] "..os.getID.." Day "..os.day().." "..os.time())
  options = {"SMS","Shutdown","Notifications","Messages"}
  for i = 1,#options do
    v = options[i]
    if sItem == i then
      t = "[ "..v.." ]"
    else
      t = v
    end
    cPrint(t)
  end
  local _,key = os.pullEventRaw()
end

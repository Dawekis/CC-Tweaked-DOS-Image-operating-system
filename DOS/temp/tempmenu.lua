local cat = require(".../DOS.script.cat")
local menu_runing = 0
if fs.isDir("DOS/System/run") == true then
    menu_runing = 1
end
cat.Background.Set(1,1,51,19,colors.lightBlue,true)
cat.Text(2,8,colors.black,colors.lightBlue,"Please use the left mouse button to drag the icon to the you want position")
cat.Text(2,10,colors.black,colors.lightBlue,"After dragging with the left mouse button, the icon will automatically appear")
while menu_runing == 1 do
    local event,click,click_x,click_y = os.pullEvent("mouse_drag")
    cat.Background.Set(1,1,51,19,colors.lightBlue,true)
--menu title
    cat.Text(2,1,colors.orange,colors.black,"MainMenu - <2>")
--============mainmenu image==================--
--editmenu image
    cat.Text(51,1,colors.orange,colors.black,"+")
    cat.Text(1,10,colors.white,colors.black,"<")
    cat.Text(51,10,colors.white,colors.black,">")
--menu image
    paintutils.drawPixel(1,19,colors.lime)
--luatest is occupied
--monitoring event:mouse_darg
    if click_x <= 40 and click_x >= 2 and click_y <= 11 and click_y >= 2 and click == 1 then
        local myfileIcon = cat.Icon(click_x,click_y,"Icon.nfp")
        cat.Text(click_x + 2,click_y + 7,colors.black,colors.lightBlue,"test")
        local temp = io.open("DOS/temp/temp.txt","w");io.output(temp);io.write(click_x.."\n");io.write(click_y);io.close(temp)    elseif click == 2 then
        menu_runing = 0
    end
    sleep(0.01)
end
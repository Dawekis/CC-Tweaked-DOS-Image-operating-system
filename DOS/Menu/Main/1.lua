local cat = require(".../DOS.script.cat")
local menu_runing = 0
if fs.isDir("DOS/System/run") == true then
    menu_runing = 1
end
while menu_runing == 1 do
    
    cat.Background.Set(1,1,51,19,colors.lightBlue,true)
    cat.Text(2,1,colors.orange,colors.black,"MainMenu - <1>")
    --editmenu image
    cat.Text(51,1,colors.orange,colors.black,"+")
    --menu image
    paintutils.drawPixel(1,19,colors.lime)
    --myfile image
    local myfileIcon = cat.Icon(1,2,"DOS/Image/MyFile.nfp")
    cat.Text(3,8,colors.black,colors.lightBlue,"My File")
    --favorite image
    local FavoriteIcon = cat.Icon(1,11,"DOS/Image/Favorite.nfp")
    cat.Text(2,17,colors.black,colors.lightBlue,"Favorite")
    --cmd image
    local CmdIcon = cat.Icon(12,2,"DOS/Image/Cmd.nfp")
    cat.Text(16,8,colors.black,colors.lightBlue,"Cmd")
    --monitoring event:mouse_click
    local event,click,click_x,click_y = os.pullEvent("mouse_click")
    --myfile program
    cat.Button.Icon(myfileIcon,function ()
        shell.run("DOS/System//myfile")
    end,click_x,click_y,click)
    --favorite program
    cat.Button.Icon(FavoriteIcon,function ()
        shell.run("DOS/System/Favorite")
    end,click_x,click_y,click)
    --favorite program
    cat.Button.Icon(CmdIcon,function ()
        shell.run("DOS/System/Cmd")
    end,click_x,click_y,click)
    --menu program
    cat.Button.Set(1,19,1,1,function ()
        shell.run("DOS/System/menubutton")
    end,click_x,click_y,click)
    if fs.isDir("DOS/System/run") ~= true then
        menu_runing = 0
    end
end
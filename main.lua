-- Project: U-Move

local widget = require ("widget")
local composer = require ("composer")
display.setStatusBar( display.DefaultStatusBar )

-- Background design/display

local back = display.newImageRect("back.png", display.contentWidth, display.contentHeight)
back.x = display.contentCenterX
back.y = display.contentCenterY


local title = display.newText( "Enter email:", display.contentWidth, display.contentHeight, native.systemFont, 30 )
title:setFillColor( 0 )
title.x = display.contentCenterX
title.y = display.contentCenterY+20

local title = display.newText( "Enter password:", display.contentWidth, display.contentHeight, native.systemFont, 30 )
title:setFillColor( 0 )
title.x = display.contentCenterX
title.y = display.contentCenterY+105

-------------------------------------------------------------------------------
-- For login

function native.setKeyboardFocus( textField )
end
local function onUsername( event )
    if ( "began" == event.phase ) then
    elseif ( "submitted" == event.phase ) then
        native.setKeyboardFocus( passwordField )
    end
end

local function onPassword( event )
    if ( "submitted" == event.phase ) then
        native.setKeyboardFocus( nil )
    end
end

-- -- Username and password design/display

usernameField = native.newTextField(display.contentWidth, display.contentHeight, 200, 40)
usernameField.x = display.contentCenterX
usernameField.y = display.contentCenterY+60
usernameField.font = native.newFont( native.systemFontBold, 21 )
usernameField.text = ""
usernameField:setTextColor( 0 )
usernameField:addEventListener( "userInput", onUsername )

passwordField = native.newTextField(display.contentWidth, display.contentHeight, 200, 40)
passwordField.x = display.contentCenterX
passwordField.y = display.contentCenterY+150
passwordField.font = native.newFont( native.systemFontBold, 21 )
passwordField.text = ""
passwordField.isSecure = true
passwordField:setTextColor( 0 )
passwordField:addEventListener( "userInput", onPassword )

-------------------------------------------------------------------------------

local scene = composer.newScene()
local localGroup = display.newGroup()

local function onFirstView( event )
	composer.gotoScene( "menu" )
end


local tabButtons ={
	{defaultFile="login.png", overFile="login.png", width = 120, height = 100, onPress=onFirstView, selected=true},
  {defaultFile="signup.png", overFile="signup.png", width = 120, height = 100, onPress=onZeroView, selected },
}
local tabBar = widget.newTabBar{
	top = display.contentHeight - 40,
	buttons = tabButtons
}

-------------------------------------------------------------------------------
function scene:create( event )
    local sceneGroup = self.view
end

function scene:show( event )
	local sceneGroup = self.view
	local phase = event.phase

	if phase == "will" then
	elseif phase == "did" then
	end
end

function scene:hide( event )
	local sceneGroup = self.view
	local phase = event.phase

	if event.phase == "will" then
	elseif phase == "did" then
	end
end

function scene:destroy( event )
	local sceneGroup = self.view
end

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

return scene

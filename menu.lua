-----------------------------------------------------------------------------------------
--
-- menu.lua
--
-----------------------------------------------------------------------------------------

display.setStatusBar( display.DefaultStatusBar )

local widget = require "widget"
local composer = require "composer"
local scene = composer.newScene()

local function onZeroView( event )
	composer.gotoScene( "menu" )
end

local function onFirstView( event )
	composer.gotoScene( "profile" )
end

local function onSecondView( event )
	composer.gotoScene( "map" )
end

local function onThirdView( event )
	composer.gotoScene( "settings" )
end

local function onFourthView( event )
	composer.gotoScene( "ride" )
end

local tabButtons = {
	{ label="Profile", defaultFile="buttonp.png", overFile="buttonp-down.png", width = 65, height = 48, onPress=onFirstView, selected=true },
	{ label="Campus map", defaultFile="buttoncm.png", overFile="buttoncm-down.png", width = 65, height = 48, onPress=onSecondView},
	{ label="Settings", defaultFile="buttonsetting.png", overFile="buttonsetting-down.png", width = 65, height = 48, onPress=onThirdView},
	{ label="Ride", defaultFile="buttonr.png", overFile="buttonr-down.png", width = 65, height = 48, onPress=onFourthView},
}


local tabBar = widget.newTabBar{
	top = display.contentHeight - 10,
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

---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

--------------------------------------------------------------------------------

onFirstView()
return scene

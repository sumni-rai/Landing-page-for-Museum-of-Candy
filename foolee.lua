local composer = require( "composer" )
 
local scene = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 
 
 
 
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
 local bg
 local button
 local download
 local title
 local nextButton
local videoButton
local red
 local next
 local slideShow
 local widget=require("widget")
 local scrollView
 

 local videoButton, nextButton
 
local function myHandler(event)
transition.dissolve( red, download,5000,100)
end

 local function changeScene()
	composer.gotoScene("shop" ,{ effect = "fade", time = 200 })
 end
  local function changetoAbout()
 composer.gotoScene("about",{effect="fade", time=200})
 end

-- create()
function scene:create( event )
 
    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
  display.setStatusBar(display.HiddenStatusBar)
  
 bg=display.newRect(display.contentCenterX, display.contentCenterY, display.contentWidth, display.contentHeight)
 bg:setFillColor(1,1,1)
 sceneGroup:insert(bg)
 

 

 title=display.newImage("logo1.jpg",display.contentCenterX, display.contentCenterY/2)
 title:scale(0.6,0.6)
sceneGroup:insert(title)

title:addEventListener("tap", myHandler)
-- transition

 
download=display.newImage("us.jpg",display.contentCenterX, display.contentCenterY+95)
download:scale(0.1,0.1)
sceneGroup:insert(download)

videoButton = display.newImage("di.gif",display.contentCenterX, display.contentCenterY+95)
videoButton:scale(0.9,0.9)
sceneGroup:insert(videoButton)

red=display.newImage("download.jpg",display.contentCenterX, display.contentCenterY+95)
red:scale(0.72,0.72)
sceneGroup:insert(red)

transition.dissolve(videoButton, red, 10000,100)




--create button 


next= display.newText("Shop", display.contentCenterX+110, display.contentCenterY+200,bodona,12)
next:setFillColor(0.2,0.2,0.2)

sceneGroup:insert(next)
next:addEventListener("tap", changeScene)

--button
nextButton= display.newText("About Us", display.contentCenterX-110, display.contentCenterY+200,bodona,12)
nextButton:setFillColor(0.2,0.2,0.2)

sceneGroup:insert(nextButton)

nextButton:addEventListener("tap", changetoAbout)

end
 
 
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
 

    elseif ( phase == "did" ) then
	   

    end
end
 
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)
 
    elseif ( phase == "did" ) then
     -- Code here runs immediately after the scene goes entirely off screen

    end
end
 
 
-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view
 
end
 
 
-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------
 
return scene

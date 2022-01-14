local composer = require( "composer" )
 
local scene = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 
 local myText
 local textField
 local nextButton
 local bg
 local button
 local title
local logo
 
 local function changeScene()
	composer.gotoScene("shop" ,{ effect = "slideRight", time = 500 })
 end
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
 
  local function changeS()
	composer.gotoScene("foolee" ,{ effect = "fade", time = 300 })
 end
 
  local function changetoAbout()
 composer.gotoScene("about",{effect="fade", time=200})
 end
 
-- create()
function scene:create( event )
 
    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
 bg=display.newRect(display.contentCenterX, display.contentCenterY, display.contentWidth, display.contentHeight)
 bg:setFillColor(1,1,1)
 sceneGroup:insert(bg)
 
 display.setStatusBar(display.HiddenStatusBar)

  logo=display.newImage("logo1.jpg",display.contentCenterX, display.contentCenterY-180)
 logo:scale(0.37,0.37)
sceneGroup:insert(logo)

logo:addEventListener("tap", changeS)

--title
 title=display.newImage("3.jpg",display.contentCenterX, display.contentCenterY)
 title:scale(0.098,0.098)
sceneGroup:insert(title)

 myText= ("ASARFI RING")


options = {

text=myText,
x= display.contentCenterX,
y=display.contentCenterY+250,
width=200,
height=300,
font=bodona,
fontSize=16,
align="center"

}
 
 textField=display.newText(options)
 textField:setFillColor(0.2,0.2,0.2)
sceneGroup:insert(textField)

-- button 

next= display.newText("Shop", display.contentCenterX+100, display.contentCenterY+200,bodona,12)
next:setFillColor(0.2,0.2,0.2)

sceneGroup:insert(next)
next:addEventListener("tap", changeScene)

--button
button= display.newText("Home", display.contentCenterX-100, display.contentCenterY+200,bodona,12)
button:setFillColor(0.2,0.2,0.2)
sceneGroup:insert(button)


button:addEventListener("tap", changeS)

nextButton= display.newText("About Us", display.contentCenterX, display.contentCenterY+200,bodona,12)
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
        -- Code here runs when the scene is entirely on screen
 
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
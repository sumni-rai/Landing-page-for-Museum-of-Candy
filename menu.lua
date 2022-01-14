
 

module(..., package.seeall)

function new()

	local menuGroup = display.newGroup();
	
		local background = display.newImage("graphics/menu_background.png")
	
		local recipe1 = display.newImage("graphics/recipe1_button.png")
		recipe1:setReferencePoint(display.TopLeftReferencePoint);
		recipe1.x = 10; 
		recipe1.y = 15;
		recipe1.scene = "recipe1";
		
		local recipe2 = display.newImage("graphics/recipe2_button.png")
		recipe2:setReferencePoint(display.TopLeftReferencePoint);
		recipe2.x = 10; 
		recipe2.y = 120;
		recipe2.scene = "recipe2";
		
		local recipe3 = display.newImage("graphics/recipe3_button.png")
		recipe3:setReferencePoint(display.TopLeftReferencePoint);
		recipe3.x = 10; 
		recipe3.y = 225;
		recipe3.scene = "recipe3";
		
		local recipe4 = display.newImage("graphics/recipe4_button.png")
		recipe4:setReferencePoint(display.TopLeftReferencePoint);
		recipe4.x = 10; 
		recipe4.y = 330;
		recipe4.scene = "recipe4";
		
		menuGroup:insert(background);
		menuGroup:insert(recipe1);
		menuGroup:insert(recipe2);
		menuGroup:insert(recipe3);
		menuGroup:insert(recipe4);
	
		recipe1:addEventListener("touch", changeScene);
		recipe2:addEventListener("touch", changeScene);
		recipe3:addEventListener("touch", changeScene);
		recipe4:addEventListener("touch", changeScene);
		
	return menuGroup;

end

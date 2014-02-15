

display.setStatusBar(display.HiddenStatusBar)


local background = display.newImage("color.jpg", 480, 320) 
--background:setReferencePoint( display.CenterLeftReferencePoint )


local lotus = display.newImage("lotus.png") 
lotus.x = 250
lotus.y = 400

local goldfish = display.newImage("goldfish.png")
goldfish.x = 700
goldfish.y = 500


--create an array of text using a table called myText
local myText={
	[1]="Lotus",
	[2]="Goldfish",
	[3]="lake"
}

local colorText= myText[1] .. " " .. myText[2] .. " " .. myText[3]


local topic = display.newText("Try Your Symbol", 600, 100, "Calibri", 50)
topic: setFillColor(1,0.5,0.7)

--I combined the three words by creating a new variable called colorText
--use .. to combine strings
--local colorText= myText[1] .. " " .. myText[2] .. " " .. myText[3]

--randomly pick an integer between 1 and 3
--this number will be an index to locate the strings in the table myText
local textIndex=math.random(1,3) --inclusive



--Set up the image sheet for animation
local sheetData = {
	width = 131,
	height = 197,
	numFrames = 6,
	sheetContentWidth = 786,
	sheetContentHeight = 197 }

local mySheet = graphics.newImageSheet("mysheet.png", sheetData)

--set up the speed
local fishmove = {name = "normalRun", start=1, count = 6, time=1000}


local animation = display.newSprite( mySheet, fishmove )
animation.x = display.contentWidth/1.7
animation.y = display.contentHeight/1.5
animation:play()


--create a button
local widget = require( "widget" )

-- Function to handle button events
local function handleButtonEvent( event )

    if ( "began" == event.phase ) then
    local randomWord = display.newText (myText[textIndex], 250,200,"Calibri",50)
    randomWord:setTextColor(1,1,1)
    --if ("ended" == event.phase ) then


     end  -- print( "Button was pressed and released" )

    

end

local button1 = widget.newButton
{   
	x = 550,
	y = 200,
    width = 200,
    height = 100,
    defaultFile = "button.png",
    overFile = "buttonpressed.png",
    label = "Try it",
    labelColor = { default={1,1,1}, over={0,0,0}},
    font = "Calibri",
    fontSize = 40,
    onEvent = handleButtonEvent
}

--fuction: button: tap(event)








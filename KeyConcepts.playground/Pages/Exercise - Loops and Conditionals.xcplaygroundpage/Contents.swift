//: [Previous](@previous)
//: # Exercise - Loops and Conditionals
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Exercise
 
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image (the underlying image, not the planning grid):
 
 ![sloan-no-grid.png](sloan-no-grid.png "Sloan")
 ![sloan-with-grid.png](sloan-with-grid.png "Sloan")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * iteration (use of loops)
 * conditional (if statements)
 
 You can use the **Digital Color Meter** app (already installed on your Mac) to find specific colours as RGB (red-green-blue) codes.
 
 You [can use this site](http://www.workwithcolor.com/color-converter-01.htm) to convert colours to HSB to use with the Canvas class.
 
 Or, if you wish, you may use the color constants created below.
 
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLOR CONSTANTS
let deepOrange = Color(hue: 12, saturation: 78, brightness: 92, alpha: 100)
let lightBlue = Color(hue: 195, saturation: 63, brightness: 92, alpha: 100)
let neonGreen = Color(hue: 107, saturation: 61, brightness: 93, alpha: 100)

// HINT: Remember that all shapes have a fill and a border.
//       You can turn off the fill or border if desired.


// draw orange
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
canvas.fillColor = deepOrange
canvas.drawRectangle(at:Point(x:0, y:0), width: 400, height: 600, anchoredBy: AnchorPosition.bottomLeft, borderWidth: 0)

// draw blue line
// line width
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true

canvas.defaultLineWidth = 50

// loop
for x in stride(from:25, through: 350, by: 100) {
   canvas.lineColor = lightBlue
    
    // draw line
    
    canvas.drawLine(from: Point(x:x, y:0), to: Point(x:x, y:350))
    
}

// draw green line
// line width
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true

canvas.defaultLineWidth = 50

// loop
for x in stride(from:75, through: 400, by: 100) {
   canvas.lineColor = neonGreen

    
    // draw line
    
    canvas.drawLine(from: Point(x:x, y:75), to: Point(x:x, y:400))
    
}

canvas.textColor = Color.white
// type text Saturday
canvas.drawText(message: "Saturday", at: Point(x:17, y:575), size: 10, kerning: 0.0)


// type text december 19 1992
canvas.drawText(message: "december 19 1992", at: Point(x:17, y:560), size: 10, kerning: 0.0)

// type text 9 pm
canvas.drawText(message: "9 pm", at: Point(x:17, y:545), size: 10, kerning: 0.0)

// type text with
canvas.drawText(message: "with", at: Point(x:117, y:575), size: 10, kerning: 0.0)

// type text trush hermit
canvas.drawText(message: "trush hermit", at: Point(x:117, y:560), size: 10, kerning: 0.0)

// type text the quahogs
canvas.drawText(message: "the quahogs", at: Point(x:117, y:545), size: 10, kerning: 0.0)

// type text camaro's cafe
canvas.drawText(message: "camaro's cafe", at: Point(x:275, y:575), size: 10, kerning: 0.0)

// type text halifax
canvas.drawText(message: "halifax", at: Point(x:275, y:560), size: 10, kerning: 0.0)

// type text nova scotia
canvas.drawText(message: "nova scotia", at: Point(x:275, y:545), size: 10, kerning: 0.0)

// type text solgan
canvas.drawText(message: "solgan", at: Point(x:155, y:450), size: 72, kerning: 0.0)
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas


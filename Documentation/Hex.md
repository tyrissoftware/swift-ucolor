#  Hex

## Features

### Hexadecimal reading

This library is able to convert any given string containing an hexadecimal color code into
a specific color.

### UIKit SwiftUI and AppKit

Another interesting feature added to UColor is the ability to instantiate colors depending 
on the technology the project it runs on is using at that moment. As such, UColor can 
create colors taking into account if SwiftUI, UIKit or AppKit are present on the project 
when it is running.

## Initializers

Ucolor has 5 different initializers that can create a specific color from a string as long 
as it contains the hexadecimal information needed to describe that color. the initializers 
are the following:

UColor(hex3: String): Takes a 3 digit hexadecimal code to form a color.
UColor(hex4: String): Takes a 4 digit hexadecimal code to form a color
UColor(hex6: String): Takes a 6 digit hexadecimal code to form a color
UColor(hex8: String): Takes a 38 digit hexadecimal code to form a color
UColor(rgba: String): Takes any hexadecimal code to form a color and makes sure it contains 
a # symbol so it can later asign the raw value of the code to the right initializer before 
creating the color.

## Methods

### withOpacity

Ucolor → UColor

### hexString

This function takes a boolean as a parameter and returns a string with the value of the 
red, blue and green color properties. Depending on the boolean value it can also return the 
opacity of the color.

### clamped

This function is  called by the hexString function to help it compare the red, blue and 
green values of a color taking into account the range of the values it receives as a 
parameter.

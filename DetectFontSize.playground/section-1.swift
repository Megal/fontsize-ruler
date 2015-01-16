// Try different Font sizes and found one that fits
// by Megal

import UIKit

var str = "Hello, playground"

UIFont.familyNames()
UIFont.fontNamesForFamilyName("Helvetica Neue")
UIScreen.mainScreen().scale

let fonts = [ "HelveticaNeue-Bold", "HelveticaNeue" ]

for fontname in fonts {
	for i in  11..<72 {
		let fontsize: CGFloat = CGFloat(i);
		if let font = UIFont(name: fontname, size: fontsize) {
			println( "Font \(fontname)(\(i))  xHeight(2x) = \(2*font.xHeight);\t capHeight(2x) = \(2*font.capHeight)" );
		}
	}

}


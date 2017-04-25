// Try different Font sizes and found one that fits
// by Megal

import UIKit

var str = "Hello, playground"

UIFont.fontNames(forFamilyName: "Helvetica Neue")
UIScreen.main.scale

let fonts = [ "HelveticaNeue-Bold", "HelveticaNeue" ]

extension UIFont {

	var formattedSpecs: String {
		return "Font \(fontName)(\(pointSize))  xHeight(2x) = \(2 * xHeight);\t capHeight(2x) = \(2 * capHeight)"
	}
}

for fontname in fonts {
	for i in  11..<72 {
		let fontsize: CGFloat = CGFloat(i)
		if let font = UIFont(name: fontname, size: fontsize) {
			print( font.formattedSpecs )
		}
	}
}

(11..<72).map
	{ fontsize in
		return CGFloat(fontsize)
	}
	.map { fontsize in
		return UIFont.systemFont(ofSize: fontsize)
	}
	.forEach { font in
		print(font.formattedSpecs)
	}
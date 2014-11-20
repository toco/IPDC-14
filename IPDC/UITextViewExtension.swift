//
//  UITextViewExtension.swift
//  IPDC
//
//  Created by Tobias Conradi on 14.11.14.
//  Copyright (c) 2014 Tobias Conradi. All rights reserved.
//

import UIKit

extension UITextView {
	
	func frameOfTextRange(range:NSRange) -> CGRect {
		
		let beginning = self.beginningOfDocument;
		let start = self.positionFromPosition(beginning, offset: range.location)
		let end = self.positionFromPosition(start!, offset: range.length)
		let textRange = self.textRangeFromPosition(start, toPosition: end)
		
		let rect = self.firstRectForRange(textRange)
		return rect
	}
}

//
//  PopoverControllerDelegate.swift
//  IPDC
//
//  Created by Tobias Conradi on 14.11.14.
//  Copyright (c) 2014 Tobias Conradi. All rights reserved.
//

import UIKit

class PopoverControllerDelegate: NSObject, UIPopoverPresentationControllerDelegate  {
	
	let sourceTextView: UITextView
	let sourceTextRange: NSRange

	init(textView:UITextView, textRange:NSRange) {
		sourceTextView = textView
		sourceTextRange = textRange
	}
	
	func popoverPresentationController(popoverPresentationController: UIPopoverPresentationController, willRepositionPopoverToRect rect: UnsafeMutablePointer<CGRect>, inView view: AutoreleasingUnsafeMutablePointer<UIView?>) {
		let textRange = sourceTextRange
		let sourceView = sourceTextView
		let textRect = sourceView.frameOfTextRange(textRange)
		
		rect.memory = textRect
		view.memory = sourceView
	}

}

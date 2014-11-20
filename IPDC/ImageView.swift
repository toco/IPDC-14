//
//  ImageView.swift
//  IPDC
//
//  Created by Tobias Conradi on 10.11.14.
//  Copyright (c) 2014 Tobias Conradi. All rights reserved.
//

import UIKit

class ImageView: UIImageView {
	@IBOutlet var aspectRationConstraint: NSLayoutConstraint?
	override var image: UIImage? {
		set {
			super.image = image
			updateAspectRationConstraint()
		}
		get {
			return super.image
		}

	}

	override func awakeFromNib() {
		updateAspectRationConstraint()
	}

	func updateAspectRationConstraint() {
		if aspectRationConstraint != nil{
			removeConstraint(aspectRationConstraint!)
		}
		if image != nil {
			let aspectRatio = image!.size.width/image!.size.height
			addConstraint(NSLayoutConstraint(item: self, attribute: .Width, relatedBy: .Equal, toItem: self, attribute: .Height, multiplier: aspectRatio, constant: 0.0))
		}
	}

}

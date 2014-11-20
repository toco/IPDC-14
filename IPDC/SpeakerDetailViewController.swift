//
//  SpeakerDetailViewController.swift
//  IPDC
//
//  Created by Tobias Conradi on 03.11.14.
//  Copyright (c) 2014 Tobias Conradi. All rights reserved.
//

import UIKit

class SpeakerDetailViewController: UIViewController {
	
	@IBOutlet weak var textView: UITextView!
	@IBOutlet weak var imageView: UIImageView!
	
	var speaker: Speaker? {
		didSet {
			if isViewLoaded() {
				configureView()
			}
		}
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()
		configureView()
    }
	
	func configureView() {
		if let speaker = self.speaker {
			title = speaker.name
			textView.text = speaker.vita
			textView.textContainer.lineBreakMode = NSLineBreakMode.ByWordWrapping
			textView.layoutManager.hyphenationFactor = 0.0
			imageView.image = speaker.image
			updateExclusionPaths()
		}
	}
	
	func updateExclusionPaths() {
		let imageRect = imageView.frame
		let exclusionRect = textView.convertRect(imageRect, fromView: view)
		textView.textContainer.exclusionPaths = [UIBezierPath(rect: exclusionRect)]
	}
	
	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		updateExclusionPaths()
	}
	
	@IBAction func dismiss() {
		dismissViewControllerAnimated(true, completion: nil)
	}
}

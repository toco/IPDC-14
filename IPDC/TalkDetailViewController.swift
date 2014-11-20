//
//  TalkDetailViewController.swift
//  IPDC
//
//  Created by Tobias Conradi on 03.11.14.
//  Copyright (c) 2014 Tobias Conradi. All rights reserved.
//

import UIKit

class TalkDetailViewController: UIViewController, UITextViewDelegate {
	
	@IBOutlet weak var detailDescriptionTextView: UITextView!
	
	let speakerScheme = "showSpeaker"
	var nameToSpeaker = [String:Speaker]()
	var popoverDelegate: PopoverControllerDelegate?

	var talk: Talk? {
		didSet {
			if isViewLoaded() {
				configureView()
			}
		}
	}

	//MARK: std controller methods
	
	override func viewDidLoad() {
		super.viewDidLoad()
		configureView()
	}
	
	func configureView() {
		if let talk: Talk = self.talk {
		    title = talk.title
			
			var attributedString = NSMutableAttributedString(string:talk.abstract)
			if talk.speakers.count > 0 {
				attributedString.appendAttributedString(NSAttributedString(string:"\n\nSpeakers:\n\n"))
				for speaker in talk.speakers {
					nameToSpeaker[speaker.name] = speaker
					let attributes = [NSLinkAttributeName:NSURL(scheme:speakerScheme, host:speaker.name, path:"/")!]
					let speakerString = NSAttributedString(string:speaker.name, attributes: attributes)
					attributedString.appendAttributedString(speakerString)
					attributedString.appendAttributedString(NSAttributedString(string: "\n"))
				}
			}
			detailDescriptionTextView.attributedText = attributedString
		}
	}
	
	// MARK: Presentation
	
	func textView(textView: UITextView, shouldInteractWithURL URL: NSURL, inRange characterRange: NSRange) -> Bool {
		if URL.scheme == speakerScheme && URL.host != nil{
			if let speaker = nameToSpeaker[URL.host!] {
				presentSpeaker(speaker, fromTextRange: characterRange)
			}
			return false
		}
		return true
	}
	
	func presentSpeaker(speaker:Speaker,fromTextRange textRange:NSRange) {
		
		let speakerViewController = storyboard?.instantiateViewControllerWithIdentifier("speakerDetail") as SpeakerDetailViewController
		speakerViewController.speaker = speaker
		
		speakerViewController.modalPresentationStyle = .Popover
		let popover = speakerViewController.popoverPresentationController!
		let sourceView = detailDescriptionTextView
		popover.sourceRect = sourceView.frameOfTextRange(textRange)
		popover.sourceView = sourceView
		
		presentViewController(speakerViewController, animated: true, completion: nil)
	}
	
	
}



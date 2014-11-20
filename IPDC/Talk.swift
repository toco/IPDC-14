//
//  Talk.swift
//  IPDC
//
//  Created by Tobias Conradi on 03.11.14.
//  Copyright (c) 2014 Tobias Conradi. All rights reserved.
//

import UIKit

class Talk: NSObject {
	let title: String
	let abstract: String
	let startDate: NSDate
	let endDate: NSDate
	var speakers = [Speaker]()
	
	init(title: String, abstract: String, startDate: NSDate, endDate: NSDate) {
		self.title = title
		self.abstract = abstract
		self.startDate = startDate
		self.endDate = endDate
	}
}


var globalDateFormatter: NSDateFormatter = {
	let formatter = NSDateFormatter()
	formatter.timeStyle = .ShortStyle
	return formatter
}()

extension Talk {
	var speakerNames: String {
		get {
			let speakerName = speakers.first?.name ?? ""
			if speakers.count > 1 {
				return speakers[1..<speakers.count].reduce(speakerName, combine: { $0.stringByAppendingString(", ").stringByAppendingString($1.name)})
			}
			return speakerName
		}
	}
	var timeString: String {
		var start = globalDateFormatter.stringFromDate(self.startDate)
		var end = globalDateFormatter.stringFromDate(self.endDate)
		return "\(start) - \(end)";
	}
	
	
	func generateTimeString() -> String {
		var start = globalDateFormatter.stringFromDate(self.startDate)
		var end = globalDateFormatter.stringFromDate(self.endDate)
		return "\(start) - \(end)"
	}
}

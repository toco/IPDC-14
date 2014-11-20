//
//  TalkTableViewCell.swift
//  IPDC
//
//  Created by Tobias Conradi on 03.11.14.
//  Copyright (c) 2014 Tobias Conradi. All rights reserved.
//

import UIKit

class TalkTableViewCell: UITableViewCell {

	@IBOutlet var timeLabel: UILabel!
	
}



extension TalkTableViewCell {
	func configureWithTalk(talk:Talk) {
		textLabel?.text = talk.title
		detailTextLabel?.text = talk.speakerNames
		timeLabel.text = talk.timeString
	}
}

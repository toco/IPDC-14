//
//  Speaker.swift
//  IPDC
//
//  Created by Tobias Conradi on 03.11.14.
//  Copyright (c) 2014 Tobias Conradi. All rights reserved.
//

import UIKit

class Speaker: NSObject {
	let name: String
	let vita: String
	let imageName: String
	var image: UIImage? {
		get {
			return UIImage(named: self.imageName)
		}
	}
	var talks = [Talk]()
	init(name: String, vita: String, imageName: String) {
		self.name = name;
		self.vita = vita;
		self.imageName = imageName;
	}
}

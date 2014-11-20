//
//  TableViewDataSource.swift
//  IPDC
//
//  Created by Tobias Conradi on 03.11.14.
//  Copyright (c) 2014 Tobias Conradi. All rights reserved.
//

import UIKit

@IBDesignable class TableViewDataSource: NSObject, UITableViewDataSource {
	var objects = [AnyObject]()
	@IBInspectable var cellIdentifier: String = "Cell"
	
	var configureCellBlock: (cell: UITableViewCell, object:AnyObject, index:NSIndexPath) -> Void = {(_, _, _) in return}
	
	// MARK: - Table View
	
	func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		return 1
	}
	
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return objects.count
	}
	
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as UITableViewCell
		let object:AnyObject = objects[indexPath.row]
		configureCellBlock(cell: cell, object: object, index: indexPath)
		return cell
	}
}

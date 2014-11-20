//
//  MasterViewController.swift
//  IPDC
//
//  Created by Tobias Conradi on 03.11.14.
//  Copyright (c) 2014 Tobias Conradi. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

	var detailViewController: TalkDetailViewController? = nil
	var data = Data()
	
	@IBOutlet var dataSource :TableViewDataSource? = nil

	override func awakeFromNib() {
		super.awakeFromNib()
		self.clearsSelectionOnViewWillAppear = false
		if UIDevice.currentDevice().userInterfaceIdiom == .Pad {
		    self.preferredContentSize = CGSize(width: 320.0, height: 600.0)
		}
		
		dataSource?.objects = data.talks
		dataSource?.configureCellBlock = { (cell: UITableViewCell, object: AnyObject, index: NSIndexPath) in
			if let talkCell = cell as? TalkTableViewCell {
				if let talk = object as? Talk {
					talkCell.configureWithTalk(talk)
				}
			}
		}
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		
		if let split = self.splitViewController {
		    let controllers = split.viewControllers
		    self.detailViewController = controllers[controllers.count-1].topViewController as? TalkDetailViewController
		}
	}
	
	override func viewWillAppear(animated: Bool) {
		super.viewWillAppear(animated)
		if splitViewController != nil && splitViewController!.collapsed {
			if let indexPath = tableView.indexPathForSelectedRow() {
				tableView.deselectRowAtIndexPath(indexPath, animated: animated)
			}
		}
	}

	// MARK: - Segues

	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		if segue.identifier == "showDetail" {
		    if let indexPath = self.tableView.indexPathForSelectedRow() {
				let object: AnyObject? = dataSource?.objects[indexPath.row]
				
				if let controller = (segue.destinationViewController as UINavigationController).topViewController as? TalkDetailViewController {
					controller.talk = object as? Talk
				}
				
		    }
		}
	}

}


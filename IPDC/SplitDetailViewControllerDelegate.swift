//
//  SplitDetailViewControllerDelegate.swift
//  IPDC
//
//  Created by Tobias Conradi on 03.11.14.
//  Copyright (c) 2014 Tobias Conradi. All rights reserved.
//

import UIKit

class SplitDetailViewControllerDelegate: NSObject, UISplitViewControllerDelegate {
	
	func splitViewController(splitViewController: UISplitViewController, showDetailViewController vc: UIViewController, sender: AnyObject?) -> Bool {
		if vc is UINavigationController && (vc as UINavigationController).topViewController != nil {
			let controller = (vc as UINavigationController).topViewController
			
			controller.navigationItem.leftBarButtonItem = splitViewController.displayModeButtonItem()
			controller.navigationItem.leftItemsSupplementBackButton = true
		}
		return false // let the split view controller handle it
	}
	
	func splitViewController(splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController: UIViewController!, ontoPrimaryViewController primaryViewController: UIViewController!) -> Bool {
		if ((secondaryViewController as? UINavigationController)?.topViewController as? TalkDetailViewController)?.talk == nil {
			return true
		}
		return false
	}
}

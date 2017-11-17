//
//  ViewController.swift
//  FrameworkBundleSample
//
//  Created by Daniel Witurna on 16.11.17.
//  Copyright © 2017 mysugr. All rights reserved.
//

import UIKit
import AnyFramework

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		BundlePrinter.printBundle()
	}
	
}


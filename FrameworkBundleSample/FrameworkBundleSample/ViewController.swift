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
		
//		let nonGenericObject = SomeClass()
//		let genericObject = SomeGenericClass<String>()
//
//		let bundleForNonGenericClass = Bundle(for: type(of: nonGenericObject))
//		let bundleForGenericClass  = Bundle(for: type(of: genericObject))
//
//		print("Bundle (Non-Generic): \(bundleForNonGenericClass)")
//		print("Bundle (Generic): \(bundleForGenericClass)")
		
		BundlePrinter.printBundle()
	}
	
}


//
//  SomeClasses.swift
//  AnyFramework
//
//  Created by Daniel Witurna on 16.11.17.
//  Copyright © 2017 mysugr. All rights reserved.
//

import Foundation

private class SomeClass {
	public init(){}
}

private class SomeGenericClass<T> {
	public init(){}
}

public struct BundlePrinter {
	public static func printBundle() {
		let nonGenericObject = SomeClass()
		let genericObject = SomeGenericClass<String>()
		
		let bundleForNonGenericClass = Bundle(for: type(of: nonGenericObject))
		let bundleForGenericClass  = Bundle(for: type(of: genericObject))
		
		print("Bundle (Non-Generic): \(bundleForNonGenericClass)")
		print("Bundle (Generic): \(bundleForGenericClass)")
	}
}

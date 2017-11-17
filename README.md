# FrameworkBundleSample
While trying to find a bundle for a specific class surprising behavior was noticed. Generic classes aren't part of their framework bundle even if their definition and usage only happens in "private". 

## Code inside framework, called from App

```swift
import Foundation

private class SomeClass {
	init(){}
}

private class SomeGenericClass<T> {
	init(){}
}

public struct BundlePrinter {
	public static func printBundle() {
		let nonGenericObject = SomeClass()
		let genericObject = SomeGenericClass<String>()
		
		let bundleForNonGenericClass = Bundle(for: type(of: nonGenericObject))
		let bundleForGenericClass  = Bundle(for: type(of: genericObject))

		print("Bundle (Main): \(Bundle.main)")
		print("Bundle (Non-Generic): \(bundleForNonGenericClass)")
		print("Bundle (Generic): \(bundleForGenericClass)")
	}
}
```

Called from `ViewController` results in:
> Bundle (Main): NSBundle </var/containers/Bundle/Application/53653542-3B5D-462B-BBF0-161F2BD74DF5/**FrameworkBundleSample.app**> (loaded)

> Bundle (Non-Generic): NSBundle </var/containers/Bundle/Application/53653542-3B5D-462B-BBF0-161F2BD74DF5/**FrameworkBundleSample.app/Frameworks/AnyFramework.framework**> (loaded)

> Bundle (Generic): NSBundle </var/containers/Bundle/Application/53653542-3B5D-462B-BBF0-161F2BD74DF5/**FrameworkBundleSample.app/Frameworks**> (loaded)

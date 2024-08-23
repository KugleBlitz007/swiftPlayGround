import Cocoa

// Classes are better for instances because they don't move arround (stored in the heap) (ref types)

// All the data needed for some screen
class ScreenViewModel {
	
	let title: String //= ""
	private(set) var showButton: Bool //= false
	//Also private(set) means we can get the variable outside the function but we cannot set it
	
	// We don't need an init if we have put default values in the variables
	
	init(title: String, showButton: Bool){
		self.title = title
		self.showButton = showButton
	}
	
	// Destroy objects from memory
	deinit {
		// Structs do not have deinit
	}
	
	func hideButton(){
		showButton = false
	}
}

// For changing this, we just point the object, so we can use "let"
let viewModel: ScreenViewModel = ScreenViewModel(title: "Screen 1", showButton: true)
//viewModel.showButton = false we cannot use this because the variable is set

let value = viewModel.showButton

viewModel.hideButton()

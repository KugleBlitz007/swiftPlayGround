import Cocoa

/*
let myBill: Bool? = false // Now myBill can be nil or NULL xor true xor false


var myOtherBill: Bool? = nil

print(myOtherBill ?? false)


let newValue: Bool? = myOtherBill

// Here we are infering an Optional variable to an non optional one
// if there are no default value '??' there would be an error 'nil coalescing operator'
// getting the value of myOtherBill if nil make it default value
let newValue1: Bool = myOtherBill ?? false


print("New value : \(newValue1.description)") // Printing the newValue


var noobString: String? = "Hello, world!"

print(noobString ?? "LEARN FASTER") // If i didn't put the default value, it would print : Optional("Hello, world!")


// ---------------------------------------------------------------------


var userIsPremium: Bool? = nil

func checkUserPremium() -> Bool? {
	return userIsPremium
}

func checkUserPremiumAgain() -> Bool { // making sure we get a value
	return userIsPremium ?? false
}

let isPremium = checkUserPremium()


// If let
func checkUserPremiumAgainAgain() -> Bool {
	
	// If there is a value, let newValue equal to userIsPremium
	if let newValue = userIsPremium{
		// now newValue is not Optional
		print(newValue)
		return newValue
	}
	return false
}

// If let
func checkUserPremiumAgainAgain() -> Bool {
	
	// If there is a value, let userIsPremium be a non optional value
	if let userIsPremium{
		// now userIsPremium is not Optional
		print(userIsPremium)
		return userIsPremium
	}
	return false
}


// Guard
func checkUserPremiumAgainAgainAgain() -> Bool {
	
	// If there is no value enter the closure else don't
	guard let newValue = userIsPremium else{
		return false
	}
	return newValue
}

// Unwrapping an Optional means make it non-Optional
// We can either ?? or guard or if let

*/

// ---------------------------------------------------------------------

func exponent(number : Int) -> Int{
	guard number >= 1 else{
		return 1
	}
	return number * exponent(number: number - 1)
}

print(exponent(number: 4))


// ---------------------------------------------------------------------


var first: Bool? = true
var second: Bool? = false
var third: Bool? = nil

func checkIfAllThreeNotNilWithIf() -> Bool {
	
	if let first, let second, let third {
		// Checking if first AND second AND third are not nil
		// If yes then go here
		// We have unwrapped them
		return getTheValues(newFirst : first, newSecond : second, newThird : third)
	} else {
		// here third will be equal to nil
		return false
	}
}

func checkIfAllThreeNotNilWithGuard() -> Bool {
	
	guard let first, let second, let third else{
		// Checking if first AND second AND third are not nil
		// If yes then do not go here
		// We have unwrapped them with guard
		return false
		
	}
	return getTheValues(newFirst : first, newSecond : second, newThird : third)
}
			
func getTheValues(newFirst: Bool, newSecond: Bool, newThird: Bool) -> Bool{
	if newFirst && newSecond {
		return true
	}
		return false
}


print(checkIfAllThreeNotNilWithIf())
print(checkIfAllThreeNotNilWithGuard())


// Optional chaining

func getUsername() -> String? {
	return "Dummy"
}

func getTitle() -> String {
	return "Mr. "
}

func getUserData(){
	let username : String? = getUsername()
	
	// It will do it only if the username is not nil
	// No unwrapping
	let count = username?.count
	
	let title: String = getTitle()
	
	// I will always do it even if it is nil
	let count2 = title.count
}

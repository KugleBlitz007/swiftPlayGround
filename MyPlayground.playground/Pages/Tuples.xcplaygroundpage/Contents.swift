import Cocoa


var userName: String = "Hello"
var userIsPremium: Bool = false
var userIsNew: Bool = true

func getUserName() -> String {
	userName
}

func getUserIsPremium() -> Bool {
	userIsPremium
}

func getUserInfo() -> String {
	
	let name = getUserName()
	let isPremium = getUserIsPremium()
	
	return name
}

func getUserInfo2() -> (String, Bool) {
	
	let name = getUserName()
	let isPremium = getUserIsPremium()
	
	return (name, isPremium)
}

func getUserInfo3() -> (name: String, isPremium: Bool) {
	
	let name = getUserName()
	let isPremium = getUserIsPremium()
	
	return (name, isPremium)
}

var userData1: String = userName
var userData2: (String, Bool, Bool) = (userName, userIsPremium, userIsNew)

let info2 = getUserInfo3()
let name1 = info2.name // Accesssing the data inside the tuple just like in lists or we can use the function's parameters to access them

print(name1)

import Cocoa


var myItem = false

myItem = true

print(myItem)


func billShower() {
	print("Come")
}

func billEating(){
	billShower()
}

billEating()


func getUsername() -> String { // Return a string
	let username = "Bill" // This is private
	return username
}

var thisUserName = getUsername()
print(thisUserName)



// ------------------------------------------------------

func rizzler(){
	var userIsSkibidi = true
	var userIsBoomer = false
	
	let rizz = checkSkibidi(ifSkibidi : userIsSkibidi, ifBoomer : userIsBoomer) // This is how we pass data
	
	if rizz == true{
		print("Sigma Male")
	} else {
		print("L")
	}
}

func checkSkibidi(ifSkibidi : Bool, ifBoomer : Bool) -> Bool {
	if ifSkibidi{
		return true
	} else if ifBoomer {
		return false
	} else {
		return false
	}
}

rizzler()


// ---------------------------------------------------------------------


func doNothing() {
	// This return nothing
}

func guardDog(){
	var underDog = "Billie"
	
	guard underDog == "Bill" else{ // Making sure its true or else
		print("NO NO NO")
		return
	}
	print("YES YES YES")
}

guardDog()


// ---------------------------------------------------------------------


// Calculated variables are functions good for when no need to pass date into the functions

let number1 = 1
let number2 = 2

func calculateNumbers(value1 : Int, value2 : Int) -> Int {
	return value1 + value2
}

// let result1 = calculateNumbers()
let result2 = calculateNumbers(value1: number1, value2: number2)


// No passing here
var calculatedNumber: Int {
	return number1 + number2
}


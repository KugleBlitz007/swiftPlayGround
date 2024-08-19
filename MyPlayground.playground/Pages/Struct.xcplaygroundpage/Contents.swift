import Cocoa

// Struct are fast
// Stored in Stack (memory)
// They have value types
// Value types are copied & mutated


struct Quiz {
	let title: String
	let dateCreated: Date
	let isPremium: Bool?
	
	// Struct have an implicit init (The compiler innitialize the object it self
	
	/*
	 init(title: String, dateCreated: Date){
	 self.title = title
	 self.dateCreated = dateCreated
	 }
	 */
	
	/*
	// Have a default value for date, no need to precise
	init(tile: String, dateCreated: Date = .now){
		self.title = title
		self.dateCreated = dateCreated
	}
	 */
	
	init(title: String, dateCreated: Date?, isPremium: Bool?){
	self.title = title
		self.dateCreated = dateCreated ?? .now
	self.isPremium = isPremium
	}
	
}


let myObject: String = "Hello, World"

let myQuiz = Quiz(title: "Quiz 1", dateCreated: nil, isPremium: nil)

print(myQuiz)


//----------------------------------------------------


// Immutable struct = all 'let' constants = cannot mutate it
struct UserModel {
	let name:String
	let isPremium: Bool
}


var user1: UserModel = UserModel(name: "Nick", isPremium: false)

func markUserAsPremium(){
	print(user1)
	
	user1 = UserModel(name: user1.name, isPremium: true)
	print(user1)
}

markUserAsPremium()

//----------------------------------------------------

// mutable struct
struct UserModel2{
	let name: String
	var isPremium: Bool
}

var user2 = UserModel2(name: "Nick", isPremium: false)

func markUserAsPremium2(){
	print(user2)
	// This will mutate the struct
	user2.isPremium = true
	print(user2)
}

markUserAsPremium2()

//----------------------------------------------------

// immutable but we can change the data by using a function within
struct UserModel3{
	let name:String
	let isPremium: Bool
	
	func markUserAsPremium(newValue: Bool)->UserModel3{
		return UserModel3(name: name, isPremium: newValue)
	}
}

var user3: UserModel3 = UserModel3(name: "Nick", isPremium: false)
user3 = user3.markUserAsPremium(newValue: true)


//----------------------------------------------------

// Mutable

struct UserModel4 {
	let name:String
	private(set) var isPremium: Bool
	
	mutating func markUserAsPremium() { // cannot mutate just with func because the struct is getting copied and destroyed
		isPremium = true
	}
}

var user4: UserModel4 = UserModel4(name: "Nick", isPremium: false)

user4.markUserAsPremium()

print(user4.isPremium)

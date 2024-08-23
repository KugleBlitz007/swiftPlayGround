import Cocoa

// When we can make something private, we should

struct MovieModel {
	let title: String
	let genre: MovieGenre
	private(set) var isFavorite: Bool
	
	func updateFavoriteStatus(newValue: Bool) -> MovieModel{
		MovieModel(title: title, genre: genre, isFavorite: newValue)
	}
	
	mutating func updateFavoriteStatus2(newValue: Bool){
		isFavorite = newValue
	}
}

enum MovieGenre{
	case comedy, action, horror
}

class MovieManager{
	
	// When variables are public, they can be set and get from outside the function
	
	public var movie1 = MovieModel(title: "Bill", genre: .action, isFavorite: false)
	
	private var movie2 = MovieModel(title: "Koumba", genre: .comedy, isFavorite: false)
	
	private(set) var movie3 = MovieModel(title: "Mouss", genre: .horror, isFavorite: false)
	//get is public but set is private
}

// class, enum and struct are together


let manager = MovieManager() // initializing this will append all of the variables

//manager.movie1 = manager.movie1.updateFavoriteStatus(newValue: true)
manager.movie1.updateFavoriteStatus2(newValue: true)
print(manager.movie1)

//This is TOO PUBLIC bad programming
let movie1 = manager.movie1
manager.movie1 = manager.movie1.updateFavoriteStatus(newValue: true)

// This is inaccessible unless we use a function from the class
/*
let movie2 = manager.movie2
manager.movie2 = manager.movie2.updateFavoriteStatus(newValue: true)
*/

// We can get the data but we cannot set it outside the function unless we use a function from the app
let movie3 = manager.movie3
//manager.movie3 = manager.movie3.updateFavoriteStatus(newValue: true)

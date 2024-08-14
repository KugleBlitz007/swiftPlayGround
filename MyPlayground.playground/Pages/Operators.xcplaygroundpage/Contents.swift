import Cocoa

var likeCount: Double = 5 // We are mathing
var commentCount: Double = 0
var viewsCount: Double = 100
var userIsPremium = false
var userIsNew = true

likeCount += 1
likeCount -= 1
likeCount *= 5
likeCount /= 5

var equation = ((5 + likeCount) * 100) / 25

if equation <= 100 {
	"Bill is pooping" // This compiles because it doesn't damage the code
	print("Bill is finaly pooping")
}

if (likeCount + commentCount) > 100 || viewsCount > 99 {
	print("FAMOUS!!!")
} else {
	print("NOT FAMOUS")
}

if userIsPremium {
	print("No ads")
} else {
	print("ADS ADS ADS")
}

if userIsNew {
	print("Would you like to be premium? YES PAY 2000$")
	userIsPremium = true
} else {
	print("Nothing")
}

if userIsPremium {
	print("No ads")
} else {
	print("ADS ADS ADS")
}


print(likeCount)
print(equation)



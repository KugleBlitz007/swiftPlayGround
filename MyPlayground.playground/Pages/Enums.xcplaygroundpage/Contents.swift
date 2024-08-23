import Cocoa

// Enums is the same a Struct except we know all cases at runtime


struct CarModel {
	let brand: CarBrandOption
	let model: String
}
/*
var car1: CarModel = CarModel(brand: "Audi", model: "Q5")
var car2: CarModel = CarModel(brand: "Audi", model: "Turbo")
var car3: CarModel = CarModel(brand: "Lamborgini", model: "Aventador")
*/
// So Enums is like a list of allowed variables

struct CarBrand{
	let title: String
}

enum CarBrandOption { // We cannot mutate the Enums
	case Audi, Lamborgini
	
	var title:String {
		switch self{
		case .Audi:
			return "Audi"
		case .Lamborgini:
			return "Lamborgini"
		default :
			return "Default Bill"
		}
		/*
		if self == .Audi{
			return "Audi"
		}else if self == .Lamborgini{
			return "Lamborgini"
		}else {
			return "Default Bill"
		}
		 */
	}
}

/*
var brand1 = Carbrand(title:"Audi") // we do not know all of the brands
var brand2 = Carbrand(title:"Lamborgini")

var car1 = CarModel(brand: brand1 , model: "Q5"))
var car2 = CarModel(brand: brand1, model: "Turbo"))
var car3 = CarModel(brand: brand2, model: "Aventador"))
*/

var car1 = CarModel(brand: .Audi, model: "Q5")

var audiBrand: CarBrandOption = .Audi

print(audiBrand.title)


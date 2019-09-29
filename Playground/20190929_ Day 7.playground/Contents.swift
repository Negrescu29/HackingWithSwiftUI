import UIKit

// Using closures as parameters when they accept parameters

func travel (action: (String) -> Void) {
    print("I am getting ready to go")
    action("Vienna")
    print("I arrived")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}
print("")

func adresa (strada: (String) -> Void){
    print("5")
    strada("Ashfield Park")
    print("D15 W83F")
}

adresa {(place: String) in
    print("\(place)")
}



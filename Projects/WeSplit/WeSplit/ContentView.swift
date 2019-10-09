//
//  ContentView.swift
//  WeSplit
//
//  Created by Ion Negrescu on 09/10/2019.
//  Copyright © 2019 Ion Negrescu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Forms are scrolling lists of static controls like text and images, but can also include user interactive controls like text fields, toggle switches, buttons, and more.
        Form {
            Group{
                Text("This is a group in a form")
            }
            
            Group{
                Text("This is a second group in form")
            }
            
            Section {
                Text("This is a section number one")
            }
            
            Section {
                Text("This is a section number 2")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

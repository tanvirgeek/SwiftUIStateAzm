//
//  ContentView.swift
//  SwiftUIState
//
//  Created by MD Tanvir Alam on 7/9/20.
//  Copyright © 2020 MD Tanvir Alam. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var name = "John"
    //var girls = ["ifa", "Shuvo", "Rodoshi"]
    var body: some View {
        
//        NavigationView {
//            List(self.girls, id: \.self){ girl in
//                NavigationLink(destination: NavigationViewGirl(girl: girl)) {
//                    Text(girl)
//                }
//            }.navigationBarTitle("Checkout Girls Hotness Scale", displayMode: .inline)
//        }
        
        VStack {
            Text("Hello, \(name)")
            Button(action: {
                if(self.name == "John"){
                    self.name = "Tanvir"
                }else{
                    self.name = "John"
                }

            }) {
                Text("Change Name")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct NavigationViewGirl: View {
//    var girl : String
//    var body: some View {
//        VStack {
//
//            NavigationLink(destination: Text(girl)) {
//                Text(girl)
//            }
//
//            Text("Hotness: \(Int.random(in: 1...10))")
//        }
//    }
//}

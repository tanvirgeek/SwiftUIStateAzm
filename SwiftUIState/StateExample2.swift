//
//  StateExample2.swift
//  SwiftUIState
//
//  Created by MD Tanvir Alam on 7/9/20.
//  Copyright © 2020 MD Tanvir Alam. All rights reserved.
//

import SwiftUI

struct StateExample2: View {
    
    @State var girls = [Task]()
    private func addHotGirl(){
        self.girls.append(Task(name: "Ifa"))
    }
    var body: some View {
        List{
            
            Button(action: addHotGirl) {
                Text("Add Girl")
            }
            ForEach(girls){girl in
                Text("\(girl.name)")
            }
        }
    }
}

struct StateExample2_Previews: PreviewProvider {
    static var previews: some View {
        StateExample2()
    }
}

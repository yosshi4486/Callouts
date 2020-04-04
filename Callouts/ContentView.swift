//
//  ContentView.swift
//  Callouts
//
//  Created by yosshi4486 on 2020/03/29.
//  Copyright © 2020 RAISO. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Spacer()
            Text("Welcome")
            Spacer()
            Text("Guidance")
                .padding(.horizontal)
            Spacer()
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.locale, .init(identifier: "ja"))
    }
}

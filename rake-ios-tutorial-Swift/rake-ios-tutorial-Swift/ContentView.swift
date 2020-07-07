//
//  ContentView.swift
//  rake-ios-tutorial-Swift
//
//  Created by 1000731 on 2020/07/06.
//  Copyright © 2020 1000731. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var rake = Rake.sharedInstance()
    
    var body: some View {
        VStack(){
            Text("Rake iOS Swift Tutorial")
                .font(.title)
            
            Button(action: {
                do {
                   let shuttle = DiRakeClientTestIOsSentinelShuttle()
                   shuttle.ab_test_group("1")
                   
                    try self.rake?.track(shuttle.toDictionary())
                   
                   print("track")
               } catch let error {
                   print("\(error)")
               }
            }) {
                Text("TRACK")
                    .fontWeight(.heavy)
            }
            
            Button(action: {
                self.rake?.flush()
            }) {
                Text("FLUSH")
                    .fontWeight(.heavy)
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

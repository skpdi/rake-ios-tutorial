//
//  ContentView.swift
//  rake-ios-tutorial-SwiftUI
//
//  Created by 송혜영(Hyeyoung Song)/Data Infrastructure팀/SKP on 11/27/24.
//

import SwiftUI

struct ContentView: View {
    var rake = Rake.sharedInstance()
    
    var body: some View {
        VStack(){
            Text("Rake iOS SwiftUI Tutorial")
                .font(.title)
                .padding(30)
            
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
                    .frame(width: 225.0, height: 84.0, alignment: .center)
            }.buttonStyle(CustomButtonStyle())
                .padding(30)
            
            Button(action: {
                self.rake?.flush()
            }) {
                Text("FLUSH")
                    .fontWeight(.heavy)
                    .frame(width: 225.0, height: 84.0, alignment: .center)
            }.buttonStyle(CustomButtonStyle())
                .padding(30)
        }
    }
}

struct CustomButtonStyle: ButtonStyle {
    var color: Color = .blue
    
    public func makeBody(configuration: CustomButtonStyle.Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: 5).fill(color))
            .compositingGroup()
            .opacity(configuration.isPressed ? 0.5 : 1.0)
            .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

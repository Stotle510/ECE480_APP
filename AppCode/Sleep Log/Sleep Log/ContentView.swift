//
//  ContentView.swift
//  Sleep Log
//
//  Created by James on 10/7/21.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var admin_username: String = "loridasa"
    var admin_password: String = "arilor"
    
    var body: some View {
        NavigationView {
            VStack{
                Text("Successfully Logged In")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundColor(Color.blue)
                Spacer()
                NavigationLink(destination: HomePageView()) {
                    Text("Continue To Home Screen")
                        .padding()
                        .frame(width: 200.0, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.pink)
                        .cornerRadius(40)
                        .font(.title)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

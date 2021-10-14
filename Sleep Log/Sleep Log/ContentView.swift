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
                    .padding()
                    .frame(width: 500.0, height: 200.0)
                    .font(.largeTitle)
                    .foregroundColor(Color.blue)
                Spacer()
                NavigationLink(destination: HomePageView()            .navigationBarBackButtonHidden(true)
                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true)) {
                    Text("Continue To Home Screen")
                        .padding()
                        .frame(width: 200.0, height: 200.0)
                        .foregroundColor(.pink)
                        .cornerRadius(40)
                        .font(.title)
                }
            }
            .edgesIgnoringSafeArea([.top, .bottom])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

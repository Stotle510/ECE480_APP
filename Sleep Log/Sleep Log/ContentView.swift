//
//  ContentView.swift
//  Sleep Log
//
//  Created by James on 10/7/21.
//

import SwiftUI

struct ContentView: View {
    @State var email = ""
    @State var password = ""
    @State var showingAlert = false
    var body: some View {
        NavigationView {
            VStack(spacing: 15){
                Spacer()
                Spacer()
                Text("Log-In")
                    .font(.system(size: 65, weight: .bold))
                    .foregroundColor(.white)
                HStack{
                    Image(systemName: "envelope")
                        .foregroundColor(.gray)
                    TextField("Username", text: $email)
                }
                    .padding(.all, 20)
                    .background(Color.white)
                    .cornerRadius(8)
                    .padding(.horizontal, 20)
                HStack{
                    Image(systemName: "lock")
                        .foregroundColor(.gray)
                    SecureField("Password", text: $password)
                }
                    .padding(.all, 20)
                    .background(Color.white)
                    .cornerRadius(8)
                    .padding(.horizontal, 20)
                if email == "Patient" && password == "2000" {
                    NavigationLink(destination: HomePageView()         .navigationBarBackButtonHidden(true)
                        .navigationBarBackButtonHidden(true)
                        .navigationBarHidden(true)) {
                        Text("Continue To Home Screen")
                            .padding(.vertical, 20)
                            .frame(width: 370.0, height: 60.0)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                            .font(.title)
                    }
                }
                else {
                    if #available(iOS 15.0, *) {
                        Button("Continue To Home Screen") {
                            showingAlert = true
                        }.padding(.vertical, 20)
                            .frame(width: 370.0, height: 60.0)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                            .font(.title)
                        .alert("Log-In failed, please try again", isPresented: $showingAlert) {
                            Button("OK", role: .cancel) { }
                        }
                    }
                }
                Spacer()
                Spacer()
            }.background(
                Image("logbackground")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            ).edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

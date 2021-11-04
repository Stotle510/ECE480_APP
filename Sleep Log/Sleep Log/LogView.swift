//
//  LogView.swift
//  Sleep Log
//
//  Created by tranwitt on 10/13/21.
//

import SwiftUI

struct LogView: View {
    @State var nameChange: String = ""
    var body: some View {
        NavigationView {
            VStack{
                Image("profile").resizable().frame(width: 150, height:150)
                HStack(){
                    Text("ID: ")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundColor(.black)
                    Text("Patient")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundColor(.black)
                }
                HStack(){
                    Text("Password: ")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundColor(.black)
                    Text("****")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundColor(.black)
                }
                Spacer()
                Spacer()
                Spacer()
                Text("Change username?")
                    .font(.system(size: 15, weight: .bold))
                    .foregroundColor(.black)
                HStack(){
                    Text("               ")
                    TextField("Enter new unsername here", text: $nameChange)
                        .padding(.all, 10)
                        .background(Color.white)
                        .cornerRadius(8)
                        .padding(.horizontal, 20)
                }
                Spacer()
            }
        }
    }
}

struct LogView_Previews: PreviewProvider {
    static var previews: some View {
        LogView()
    }
}

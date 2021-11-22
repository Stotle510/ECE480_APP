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
                Button(action: {read_val()}, label: {
                    Text("Share Patient Data")
                        .padding(.vertical, 20)
                        .frame(width: 250.0, height: 75.0)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .font(.title)
                })
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

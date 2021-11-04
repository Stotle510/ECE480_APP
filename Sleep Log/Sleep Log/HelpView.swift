//
//  HelpView.swift
//  Sleep Log
//
//  Created by Hussain Atwain on 10/27/21.
//

import SwiftUI

struct HelpView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 15){
                Spacer()
                Spacer()
                Link(destination: URL(string:"https://youtu.be/EznyKH-qWZc")!) {
                    Text("INTRODUCTION VIDEO")
                        .padding(.vertical, 20)
                        .frame(width: 350.0, height: 60.0)
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .font(.title)
                }
                Spacer()
                Link(destination: URL(string:"https://youtu.be/EznyKH-qWZc")!) {
                    Text("HOW TO VIDEO")
                        .padding(.vertical, 20)
                        .frame(width: 260.0, height: 60.0)
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .font(.title)
                }
                Spacer()
                NavigationLink(destination: HomePageView()
                    .navigationBarBackButtonHidden(true)
                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true)) {
                    Text("BACK TO HOME")
                        .bold()
                        .padding(.vertical, 20)
                        .frame(width: 250.0, height: 60.0)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .font(.title)
                }
                Spacer()
                Spacer()
            }
           
            .edgesIgnoringSafeArea(.all)
        }
    }
}
    

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}



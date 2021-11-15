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
                    Text("Video: What Are Included in the Light Visor Package")
                        .padding(.vertical, 20)
                        .frame(width: 350.0, height: 125.0)
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .font(.title)
                }
                Spacer()
                Link(destination: URL(string:"https://youtu.be/RA3WqeS7sio")!) {
                    Text("Video: Instructions for Wearing the Light Visor")
                        .padding(.vertical, 20)
                        .frame(width: 350.0, height: 125.0)
                        .background(Color.purple)
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



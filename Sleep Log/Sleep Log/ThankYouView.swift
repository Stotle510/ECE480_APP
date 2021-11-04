//
//  ThankYouView.swift
//  Sleep Log
//
//  Created by Hussain Atwain on 10/28/21.
//

import SwiftUI

struct ThankYouView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationView {
            VStack(spacing: 15){
                Spacer()
                Image("check").resizable().frame(width: 100, height:100)
                Text("Thank You")
                    .font(.system(size: 65, weight: .bold))
                    .foregroundColor(.black)
                Text("Your response has been recored")
                    .font(.system(size: 25, weight: .bold))
                    .foregroundColor(.black)
                Text("Please click <back to return home")
                    .font(.system(size: 15, weight: .bold))
                    .foregroundColor(.green)
                Spacer()
                Spacer()
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ThankYouView_Previews: PreviewProvider {
    static var previews: some View {
        ThankYouView()
    }
}

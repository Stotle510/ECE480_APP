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
                Spacer()
                Text("Thank You")
                    .font(.system(size: 65, weight: .bold))
                    .foregroundColor(.black)
                Text("Your response has been recored")
                    .font(.system(size: 25, weight: .bold))
                    .foregroundColor(.black)
                NavigationLink(destination: HomePageView()          .navigationBarBackButtonHidden(true)
                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true)) {
                    Text("RETURN HOME")
                        .bold()
                        .padding(.vertical, 20)
                        .frame(width: 250.0, height: 60.0)
                        .background(Color.green)
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

struct ThankYouView_Previews: PreviewProvider {
    static var previews: some View {
        ThankYouView()
    }
}

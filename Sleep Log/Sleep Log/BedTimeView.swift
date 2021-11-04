//
//  BedTimeView.swift
//  Sleep Log
//
//  Created by Hussain Atwain on 10/27/21.
//


import SwiftUI

struct BedTimeView: View {
    @State var emptySting: String = ""
    @State var bedTime: String = ""
    @State var fatigueLevel: String = ""
    @State var sleeepinessLevel: String = ""
    var body: some View {
        NavigationView {
            VStack(spacing: 60){
                Spacer()
                TextField("", text: $emptySting)
                HStack{
                    Text("Bed Time:")
                        .font(.system(size: 22))
                        
                    TextField("Enter Time Here", text: $bedTime)
                        .padding(.all, 10)
                        .background(Color.white)
                        .cornerRadius(8)
                        .padding(.horizontal, 20)
                
                }.padding(.all)
                VStack{
                Text("In the last 24 hours, what was your average level of fatigue?")
                    .font(.system(size: 14))
                Text("Please enter a number from 0 to 10: 0 = no fatigue, 10 = worst fatigue")
                    .foregroundColor(.gray)
                    .font(.system(size: 14))
                TextField("Enter Number Here", text: $fatigueLevel)
                        .padding(.all, 10)
                        .background(Color.white)
                        .cornerRadius(8)
                        .padding(.horizontal, 20)
                    Divider()
                            .padding(.horizontal, 20)
                }
                Spacer()
                VStack{
                Text("During the day, what was your everage level of sleepiness?")
                    .font(.system(size: 14))
                Text("Please enter a number from 0 to 10: 0 = no fatigue, 10 = worst fatigue")
                    .foregroundColor(.gray)
                    .font(.system(size: 14))
                TextField("Enter Number Here", text: $sleeepinessLevel)
                        .padding(.all, 10)
                        .background(Color.white)
                        .cornerRadius(8)
                        .padding(.horizontal, 20)
                Divider()
                        .padding(.horizontal, 20)
                }
                NavigationLink(destination: ThankYouView()          .navigationBarBackButtonHidden(true)
                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true)) {
                    Text("SUBMIT")
                        .bold()
                        .padding(.vertical, 20)
                        .frame(width: 150.0, height: 60.0)
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


struct BedTimeView_Previews: PreviewProvider {
    static var previews: some View {
        BedTimeView()
    }
}


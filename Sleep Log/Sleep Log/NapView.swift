//
//  NapView.swift
//  Sleep Log
//
//  Created by Hussain Atwain on 10/14/21.
//

import SwiftUI

struct NapView: View {
    @State var emptySting: String = ""
    @State private var isExpanded = false
    @State private var selectedAns = "Select"
    @State var firstNapS: String = ""
    @State var firstNapE: String = ""
    @State var secondNapS: String = ""
    @State var secondNapE: String = ""
    @State var thirdNapS: String = ""
    @State var thirdNapE: String = ""
    var body: some View {
        NavigationView {
            VStack(spacing: 70){
                Spacer()
                TextField("", text: $emptySting)
                HStack{
                    Text("Did you nap during the day? ")
                        .padding(.horizontal, 20)
                        .font(.system(size: 14))
                    DropView()
                }
                VStack(spacing: 30){
                    HStack{
                    TextField("Start Time", text: $firstNapS)
                            .padding(.all, 10)
                            .background(Color.white)
                            .cornerRadius(8)
                            .padding(.horizontal, 20)
                    TextField("End Time", text: $firstNapE)
                            .padding(.all, 10)
                            .background(Color.white)
                            .cornerRadius(8)
                            .padding(.horizontal, 20)
                    Text("1st Nap")
                        .padding(.horizontal, 20)
                        .font(.system(size: 14))
                    }
                    HStack{
                    TextField("Start Time", text: $secondNapS)
                            .padding(.all, 10)
                            .background(Color.white)
                            .cornerRadius(8)
                            .padding(.horizontal, 20)
                    TextField("End Time", text: $secondNapE)
                            .padding(.all, 10)
                            .background(Color.white)
                            .cornerRadius(8)
                            .padding(.horizontal, 20)
                    Text("2nd Nap")
                        .padding(.horizontal, 20)
                        .font(.system(size: 14))
                    }
                    HStack{
                    TextField("Start Time", text: $thirdNapS)
                            .padding(.all, 10)
                            .background(Color.white)
                            .cornerRadius(8)
                            .padding(.horizontal, 20)
                    TextField("End Time", text: $thirdNapE)
                            .padding(.all, 10)
                            .background(Color.white)
                            .cornerRadius(8)
                            .padding(.horizontal, 20)
                    Text("3rd Nap")
                        .padding(.horizontal, 20)
                        .font(.system(size: 14))
                    }
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


struct NapView_Previews: PreviewProvider {
    static var previews: some View {
        NapView()
    }
}

struct DropView : View {
    
    @State var expand = false
    @State var selectAns = "Select"
    var body: some View{
        
        VStack(alignment: .leading, content:{
            HStack{
                Text(selectAns).fontWeight(.heavy)
                    .foregroundColor(.blue)
                Image(systemName: expand ? "up": "down").resizable().frame(width: 13, height: 6)
            }.onTapGesture {
                self.expand.toggle()
            }
            if expand{
                Button(action:{
                    selectAns = "Yes"
                    self.expand.toggle()
                }){
                    Text("Yes")
                        .foregroundColor(.blue)
                }.foregroundColor(.black)
                
                Button(action:{
                    selectAns = "No"
                    self.expand.toggle()
                }){
                    Text("No")
                        .foregroundColor(.blue)
                }.foregroundColor(.black)
            }
            
        })
    }
}

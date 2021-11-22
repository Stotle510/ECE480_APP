//
//  WakeUpView.swift
//  Sleep Log
//
//  Created by Hussain Atwain on 10/17/21.
//

import SwiftUI

struct WakeUpView: View {
    @State var emptySting: String = ""
    @State var wakeUpTime: String = ""
    @State private var isExpanded = false
    @State private var selectedAns1 = "Select"
    @State private var selectedAns2 = "Select"
    @State private var selectedAns3 = "Select"
    var body: some View {
        NavigationView {
            VStack(){
                Spacer()
                Spacer()
                HStack{
                    Text("Wake-Up Time: ")
                        .font(.system(size: 22))
                    TextField("Enter Time Here", text: $wakeUpTime)
                        .padding(.all, 10)
                        .background(Color.white)
                        .cornerRadius(8)
                        .padding(.horizontal, 20)
                
                }.padding(.all)
                VStack(alignment: .leading, spacing: 50){
                    HStack{
                        Text("I had difficulty falling asleep")
                            .padding(.horizontal, 15)
                            .font(.system(size: 14))
                        ExpandView()
                            .padding(.horizontal, 40)
                        
                    }
                    HStack{
                        Text("I kept waking up during the night")
                            .padding(.horizontal, 15)
                            .font(.system(size: 14))
                        ExpandView()
                            .padding(.horizontal, 11)
                    }
                    HStack{
                        Text("I woke up to early and couldn't go back to sleep")
                            .padding(.horizontal, 15)
                            .font(.system(size: 14))
                        ExpandView()
                            .padding(.horizontal,10)
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


struct ExpandView : View {
    
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
                    selectAns = "Not at all"
                    self.expand.toggle()
                }){
                    Text("Not at all")
                        .foregroundColor(.blue)
                }.foregroundColor(.black)
                
                Button(action:{
                    selectAns = "A little bit"
                    self.expand.toggle()
                }){
                    Text("A little bit")
                        .foregroundColor(.blue)
                }.foregroundColor(.black)
                Button(action:{
                    selectAns = "Somewhat"
                    self.expand.toggle()
                }){
                    Text("Somewhat")
                        .foregroundColor(.blue)
                }.foregroundColor(.black)
                
                Button(action:{
                    selectAns = "Quite a bit"
                    self.expand.toggle()
                }){
                    Text("Quite a bit")
                        .foregroundColor(.blue)
                }.foregroundColor(.black)
                Button(action:{
                    selectAns = "Very much"
                    self.expand.toggle()
                }){
                    Text("Very much")
                        .foregroundColor(.blue)
                }.foregroundColor(.black)
            }
            
        })
    }
}

struct WakeUpView_Previews: PreviewProvider {
    static var previews: some View {
        WakeUpView()
    }
}

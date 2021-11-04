//
//  HomePageView.swift
//  Sleep Log
//
//  Created by James on 10/7/21.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    Text(" ")
                        .padding(.all, 30.0)
                    
                    Text("My Daily Log:")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(Color.blue)
                    
                    Text(" ")
                        .padding(.all, 10.0)
                    
                    VStack{
                        HStack{
                            Button(action: {}, label: {NavigationLink(destination: WakeUpView()
                                .navigationBarBackButtonHidden(true)
                                .navigationBarBackButtonHidden(true)
                                .navigationBarHidden(true)){
                                Image("sun").resizable().frame(width: 100, height:100)
                                }
                            })
                            Text("  ")
                            Button(action: {}, label: {NavigationLink(destination: NapView().navigationBarBackButtonHidden(true)
                                .navigationBarBackButtonHidden(true)
                                .navigationBarHidden(true)){
                                Image("zzz").resizable().frame(width: 100, height:100)
                            }
                            })
                            Text("  ")
                            Button(action: {}, label: {NavigationLink(destination: BedTimeView().navigationBarBackButtonHidden(true)
                                .navigationBarBackButtonHidden(true)
                                .navigationBarHidden(true)){
                                Image("moon").resizable().frame(width: 100, height:100)
                            }
                            })
                        }
                        
                        HStack{
                            VStack{
                                Text("Wake Up")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                Text("Questions")
                                    .font(.title3)
                                    .fontWeight(.bold)
                            }
                            VStack{
                                Text("Nap")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                Text("Questions")
                                    .font(.title3)
                                    .fontWeight(.bold)
                            }
                            .frame(width: 140.0)
                            
                            VStack{
                                Text("BedTime")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                Text("Questions")
                                    .font(.title3)
                                    .fontWeight(.bold)
                            }
                        }
                        
                        Text(" ")
                            .padding(.all, 5.0)
                        
                        ZStack{
                            Button(action: {}, label: {
                                Image("button").resizable().frame(width:350, height:75)
                            })
                            NavigationLink(destination: Light_Vision_View()) {
                            Text("Start Light Vision Timer")
                                .font(.title2)
                                .fontWeight(.black)
                                .foregroundColor(Color.white)
                                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            }
                           
                        }
                        
                        Text(" ")
                            .padding(.all, 5.0)
                        
                        HStack{
                            Button(action: {}, label: {
                                Image("bell").resizable().frame(width: 100, height:100)
                            })
                            Text("  ")
                            Button(action: {}, label: {
                                NavigationLink(destination: LogView()){
                                    Image("info").resizable().frame(width: 100, height:100)
                                    }
                            })
                            Text("  ")
                            Button(action: {}, label: {
                                NavigationLink(destination: HelpView()
                                .navigationBarBackButtonHidden(true)
                                .navigationBarBackButtonHidden(true)
                                .navigationBarHidden(true)){
                                Image("question").resizable().frame(width: 100, height:100)
                                }
                            })
                        }
                        
                        HStack{
                            VStack{
                                //NotificationListView
                                Button(action: {}, label: {
                                    NavigationLink(destination: NotificationListView()) {
                                    
                                    
                                    Text("Set")
                                        .font(.title3)
                                        .fontWeight(.bold)
                                    Text("Reminders")
                                        .font(.title3)
                                        .fontWeight(.bold)
                                    }
                                })
                               
                                
                            }
                            
                            VStack{
                                Text("My Info")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                Text("")
                            }
                            .frame(width: 132.0)
                            VStack{
                                Text("Help")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                Text("                       ")
                            }
                        }
                    }
                    
                    
                    Text(" ")
                        .padding(.all, 10.0)
                    
                    ZStack{
                        Button(action: {}, label: {
                            NavigationLink(destination: ContentView()
                            .navigationBarBackButtonHidden(true)
                            .navigationBarBackButtonHidden(true)
                            .navigationBarHidden(true)){
                                Image("bluebutton").resizable().frame(width: 120, height:50)
                            }
                        })
                        Text("Log Out")
                            .font(.title2)
                            .fontWeight(.black)
                            .foregroundColor(Color.white)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    }
                }
            }

            .edgesIgnoringSafeArea([.top, .bottom])

            
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
            
    }
}


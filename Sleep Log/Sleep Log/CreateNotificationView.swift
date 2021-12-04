//  Reminder Functionality
//  CreateNotificationView.swift File
//  Created by James Haville from GitHub
//  https://github.com/jhaville/LocalNotificationsSampleApp
//  Modified by: Abdullah Alenezi - Hamad Alrashdi - Hussain Atwain


import SwiftUI

struct CreateNotificationView: View {
    @ObservedObject var notificationManager: NotificationManager
    @State private var title = "Light Vision Reminder"
    @State private var date = Date()
    @Binding var isPresented: Bool
    var body: some View {
        List {
            Section {
                VStack(spacing: 16) {
                    HStack {
                        TextField("Notification Title", text: $title)
                        Spacer()
                        DatePicker("", selection: $date, displayedComponents: [.hourAndMinute])
                    }
                    .padding(.vertical, 8)
                    .padding(.horizontal, 12)
                    .background(Color.white)
                    .cornerRadius(5)
                    
                    Button {
                        let dateComponents = Calendar.current.dateComponents([.hour, .minute], from: date)
                        guard let hour = dateComponents.hour, let minute = dateComponents.minute else { return }
                        notificationManager.createLocalNotification(title: title, hour: hour, minute: minute) { error in
                            if error == nil {
                                DispatchQueue.main.async {
                                    self.isPresented = false
                                }
                            }
                        }
                        
                        
                    /////////////
                        @State var minute_1 = minute + 10
                        if (minute_1 >= 60) {
                                
                        notificationManager.createLocalNotification(title: title + "1", hour: hour+1, minute: minute_1-60) { error in
                            if error == nil {
                                DispatchQueue.main.async {
                                    self.isPresented = false
                                }
                            }
                        }
                        }
                        else{
                            notificationManager.createLocalNotification(title: title + "1", hour: hour, minute: minute+10) { error in
                                if error == nil {
                                    DispatchQueue.main.async {
                                        self.isPresented = false
                                    }
                                }
                            }
                            
                            
                        }
                        
                        @State var minute_2 = minute_1 + 10
                        if (minute_2 >= 60) {
                                
                        notificationManager.createLocalNotification(title: title + "1", hour: hour+1, minute: minute_2-60) { error in
                            if error == nil {
                                DispatchQueue.main.async {
                                    self.isPresented = false
                                }
                            }
                        }
                        }
                        else{
                            notificationManager.createLocalNotification(title: title + "1", hour: hour, minute: minute+20) { error in
                                if error == nil {
                                    DispatchQueue.main.async {
                                        self.isPresented = false
                                    }
                                }
                            }
                            
                            
                        }
                        
                        
                        
                        
                        
                        //////
                    } label: {
                        Text("Create")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                            .contentShape(Rectangle())
                    }
                    .padding()
                    .background(Color(.systemGray5))
                    .cornerRadius(5)
                    .buttonStyle(PlainButtonStyle())
                }
                .listRowBackground(Color(.systemGroupedBackground))
            }
        }
        .listStyle(InsetGroupedListStyle())
        .onDisappear {
            notificationManager.reloadLocalNotifications()
        }
        .navigationTitle("Create")
        .navigationBarItems(trailing: Button {
            isPresented = false
        } label: {
            Image(systemName: "xmark")
                .imageScale(.large)
        })
    }
}

struct CreateNotificationView_Previews: PreviewProvider {
    static var previews: some View {
        CreateNotificationView(
            notificationManager: NotificationManager(),
            isPresented: .constant(false)
        )
    }
}


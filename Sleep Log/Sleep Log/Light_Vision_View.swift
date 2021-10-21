//
//  Light_Vision_Timer
//  MyTimer
//
//
import SwiftUI

struct Light_Vision_View: View {
    
    @StateObject var timerManager = TimerManager()
    
    let availableMinutes = Array(arrayLiteral: 30)
    
    @State var selectedPickerIndex = 0
    
    var body: some View {
       
        
        VStack {

            Text("Light Vision Timer")
                .font(.system(size:40, weight: .medium, design: .default))
                .foregroundColor(.blue)

                VStack {
                
                    Text(secondsToMinutesAndSeconds(seconds: timerManager.secondsLeft))
                        .font(.system(size: 80))
                        .padding(.top, 80)
                    Image(systemName: timerManager.timerMode == .running ? "pause.circle.fill" : "play.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                        .foregroundColor(.orange)
                        .onTapGesture(perform: {
                            if timerManager.timerMode == .initial {
                                timerManager.setTimerLength(minutes: availableMinutes[selectedPickerIndex]*60)
                            }
                            timerManager.timerMode == .running ? timerManager.pause() : timerManager.start()
                        })
                    if timerManager.timerMode == .paused {
                        Image(systemName: "gobackward")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .padding(.top, 40)
                            .onTapGesture(perform: {
                                timerManager.reset()
                            })
                    }
                   /* if timerManager.timerMode == .initial {
                        Picker(selection: $selectedPickerIndex, label: Text("")) {
                            ForEach(0 ..< availableMinutes.count) {
                                Text("\(self.availableMinutes[$0]) min")
                            }
                        }
                            .labelsHidden()
                    }*/
                    Spacer()
            }

        }
        
    }
}

struct Light_Vision_View_Previews: PreviewProvider {
    static var previews: some View {
        Light_Vision_View()
    }
}


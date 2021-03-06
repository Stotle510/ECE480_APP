//  Light Vision Timer
//  TimerManager.swift File
//  Created by BLCKBIRDS from GitHub
//  https://github.com/BLCKBIRDS/SwiftUIBasics_Resources
//  Modified by Abdullah Alenezi - Hamad Alrashdi


import SwiftUI

class TimerManager: ObservableObject {
    
    var timer = Timer()
    
    @Published var timerMode: TimerMode = .initial
    
    @Published var secondsLeft = UserDefaults.standard.integer(forKey: "timerLength")
    
    func start() {
        //////
        
        
        ///
        
        timerMode = .running
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { timer in
            if self.secondsLeft == 0 {
                self.reset()
            }
            self.secondsLeft -= 1
        })
    }
    
    func reset() {
        self.timerMode = .initial
        self.secondsLeft = UserDefaults.standard.integer(forKey: "timerLength")
        timer.invalidate()
    }
    
    func pause() {
        self.timerMode = .paused
        timer.invalidate()
    }
    
    func setTimerLength(minutes: Int) {
        let defaults = UserDefaults.standard
        defaults.setValue(minutes, forKey: "timerLength")
        secondsLeft = minutes
    }
}

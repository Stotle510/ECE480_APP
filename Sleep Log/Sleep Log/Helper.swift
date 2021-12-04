//  Light Vision Timer
//  Helper.swift File
//  Created by BLCKBIRDS from GitHub
//  https://github.com/BLCKBIRDS/SwiftUIBasics_Resources
//  Modified by Abdullah Alenezi - Hamad Alrashdi

import Foundation

enum TimerMode {
    case running
    case paused
    case initial
}

func secondsToMinutesAndSeconds (seconds : Int) -> String {
    let minutes = "\((seconds % 3600) / 60)"
    let seconds = "\((seconds % 3600) % 60)"
    let minuteStamp = minutes.count > 1 ? minutes : "0" + minutes
    let secondStamp = seconds.count > 1 ? seconds : "0" + seconds
    return "\(minuteStamp):\(secondStamp)"
}

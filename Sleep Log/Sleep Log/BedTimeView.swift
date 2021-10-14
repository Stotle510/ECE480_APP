//
//  BedTimeView.swift
//  Sleep Log
//
//  Created by Hussain Atwain on 10/14/21.
//

import SwiftUI

struct BedTimeView: View {
    var body: some View {
        BedTimeController()
    }
}

struct BedTimeView_Previews: PreviewProvider {
    static var previews: some View {
        BedTimeView()
    }
}

struct BedTimeController : UIViewControllerRepresentable{
    func makeUIViewController(context: UIViewControllerRepresentableContext<BedTimeController>) -> UIViewController {
        
        let storyboard = UIStoryboard(name: "BedTime", bundle: Bundle.main)
        let controller = storyboard.instantiateViewController(withIdentifier: "BedTime")
        return controller
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<BedTimeController>) {

    }
}

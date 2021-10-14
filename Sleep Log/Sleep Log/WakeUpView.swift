//
//  WakeUpView.swift
//  Sleep Log
//
//  Created by Hussain Atwain on 10/14/21.
//

import SwiftUI

struct WakeUpView: View {
    var body: some View {
        WakeUpController()
    }
}

struct WakeUpView_Previews: PreviewProvider {
    static var previews: some View {
        WakeUpView()
    }
}

struct WakeUpController : UIViewControllerRepresentable{
    func makeUIViewController(context: UIViewControllerRepresentableContext<WakeUpController>) -> UIViewController {
        
        let storyboard = UIStoryboard(name: "WakeUp", bundle: Bundle.main)
        let controller = storyboard.instantiateViewController(withIdentifier: "WakeUp")
        return controller
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<WakeUpController>) {

    }
}

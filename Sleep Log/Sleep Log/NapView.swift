//
//  NapView.swift
//  Sleep Log
//
//  Created by Hussain Atwain on 10/14/21.
//

import SwiftUI

struct NapView: View {
    var body: some View {
        NapController()
    }
}

struct NapView_Previews: PreviewProvider {
    static var previews: some View {
        NapView()
    }
}

struct NapController : UIViewControllerRepresentable{
    func makeUIViewController(context: UIViewControllerRepresentableContext<NapController>) -> UIViewController {
        
        let storyboard = UIStoryboard(name: "Nap", bundle: Bundle.main)
        let controller = storyboard.instantiateViewController(withIdentifier: "Nap")
        return controller
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NapController>) {

    }
}

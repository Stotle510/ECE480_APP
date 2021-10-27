//
//  HelpView.swift
//  Sleep Log
//
//  Created by Hussain Atwain on 10/27/21.
//

import SwiftUI

struct HelpView: View {
    var body: some View {
        HelpController()
    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}

struct HelpController : UIViewControllerRepresentable{
    func makeUIViewController(context: UIViewControllerRepresentableContext<HelpController>) -> UIViewController {
        
        let storyboard = UIStoryboard(name: "Help", bundle: Bundle.main)
        let controller = storyboard.instantiateViewController(withIdentifier: "Help")
        return controller
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<HelpController>) {

    }
}

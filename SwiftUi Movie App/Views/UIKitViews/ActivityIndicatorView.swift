//
//  ActivityIndicatorView.swift
//  SwiftUi Movie App
//
//  Created by bayraktar on 27.03.2023.
//

//when fecth data show visual feedback to user
import SwiftUI


struct ActivityIndicatorView: UIViewRepresentable {
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}

    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let view = UIActivityIndicatorView(style: .large)
        view.startAnimating()
        return view
    }
}
 


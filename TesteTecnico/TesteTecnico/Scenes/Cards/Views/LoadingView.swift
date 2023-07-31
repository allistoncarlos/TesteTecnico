//
//  LoadingView.swift
//  TesteTecnico
//
//  Created by Alliston Aleixo on 31/07/23.
//

import Foundation
import SwiftUI
import UIKit

struct LoadingView: UIViewRepresentable {

    typealias UIViewType = UIActivityIndicatorView

    let style: UIActivityIndicatorView.Style

    func makeUIView(context: UIViewRepresentableContext<LoadingView>) -> LoadingView.UIViewType {
        return UIActivityIndicatorView(style: style)
    }

    func updateUIView(_ uiView: LoadingView.UIViewType, context: UIViewRepresentableContext<LoadingView>) {
        uiView.startAnimating()
    }
}

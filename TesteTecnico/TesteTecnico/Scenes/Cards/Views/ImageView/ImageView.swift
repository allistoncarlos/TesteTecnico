//
//  ImageView.swift
//  TesteTecnico
//
//  Created by Alliston Aleixo on 31/07/23.
//

import Foundation
import SwiftUI

// MARK: - ImageView

struct ImageView: View {

    // MARK: Lifecycle

    init(urlString: String?) {
        imageViewModel = ImageViewModel(urlString: urlString)
    }

    // MARK: Internal

    var body: some View {
        Image(uiImage: imageViewModel.image ?? UIImage())
            .resizable()
            .aspectRatio(contentMode: .fit)
        
    }

    // MARK: Private

    @ObservedObject private var imageViewModel: ImageViewModel
}

// MARK: - ImageView_Previews

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(urlString: "https://developer.apple.com/news/images/og/swiftui-og.png")
    }
}

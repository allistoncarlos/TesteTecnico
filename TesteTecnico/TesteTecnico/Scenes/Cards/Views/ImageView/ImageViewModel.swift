//
//  ImageViewModel.swift
//  TesteTecnico
//
//  Created by Alliston Aleixo on 31/07/23.
//

import Foundation
import UIKit

class ImageViewModel: ObservableObject {

    // MARK: Lifecycle

    init(urlString: String?) {
        loadImage(urlString: urlString)
    }

    // MARK: Internal

    @Published var image: UIImage?

    // MARK: Private

    private var imageCache: NSCache<NSString, UIImage>?

    private func loadImage(urlString: String?) {
        guard let urlString = urlString else { return }

        if let imageFromCache = getImageFromCache(from: urlString) {
            image = imageFromCache
            return
        }

        loadImageFromURL(urlString: urlString)
    }

    private func loadImageFromURL(urlString: String) {
        guard let url = URL(string: urlString) else { return }

        URLSession.shared.dataTask(with: url) { data, response, error in
            guard error == nil else {
                print(error ?? "unknown error")
                return
            }

            guard let data = data else {
                print("No data found")
                return
            }

            DispatchQueue.main.async { [weak self] in
                guard let loadedImage = UIImage(data: data) else { return }
                self?.image = loadedImage
                self?.setImageCache(image: loadedImage, key: urlString)
            }
        }.resume()
    }

    private func setImageCache(image: UIImage, key: String) {
        imageCache?.setObject(image, forKey: key as NSString)
    }

    private func getImageFromCache(from key: String) -> UIImage? {
        return imageCache?.object(forKey: key as NSString) as? UIImage
    }
}

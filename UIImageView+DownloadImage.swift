//
//  UIImageView+DownloadImage.swift
//  StoreSearch
//
//  Created by Vladimir Soshin on 18.10.2023.
//

import UIKit

extension UIImageView {
    func loadImage(url: URL) -> URLSessionDownloadTask {
        let session = URLSession.shared
        let downloadTask = session.downloadTask(with: url) {[weak self] url, _, error in
            if error == nil, let url = url, let data = try? Data(contentsOf: url), let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    if let weakself = self {
                        weakself.image = image
                    }
                }
            }
        }
        downloadTask.resume()
        return downloadTask
    }
}

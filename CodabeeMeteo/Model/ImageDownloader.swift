//
//  ImageDownloader.swift
//  CodabeeMeteo
//
//  Created by Riad Korimbacus on 24/05/2018.
//  Copyright © 2018 Riad Korimbacus. All rights reserved.
//

import UIKit

class ImageDownloader {
    
    static let obtenir = ImageDownloader()
    
    func imageDepuis(_ string: String, imageView: UIImageView) {
        
        let baseUrl = "http://openweathermap.org/img/w/"
        let ext = ".png"
        if let url = URL(string: baseUrl + string + ext) {
            let session = URLSession.shared
            let task = session.dataTask(with: url, completionHandler: { (data, reponse, error) in
                guard data != nil, let image = UIImage(data: data!) else { return }
                DispatchQueue.main.async {
                    imageView.image = image
                }
            })
            task.resume()
        }
    }
    
}

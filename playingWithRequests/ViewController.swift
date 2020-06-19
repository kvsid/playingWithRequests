//
//  ViewController.swift
//  playingWithRequests
//
//  Created by Xenia Sidorova on 19.06.2020.
//  Copyright © 2020 Xenia Sidorova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageContainer: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let imageURL = URL(string: "https://www.jpl.nasa.gov/spaceimages/images/largesize/PIA05982_hires.jpg")!
        
        let task = URLSession.shared.dataTask(with: imageURL) {
            (data, response, error) in
            
            if error == nil {
                let loadedImage = UIImage(data: data!)
                self.imageContainer.image = loadedImage
            }
        }
        task.resume()
    }


}


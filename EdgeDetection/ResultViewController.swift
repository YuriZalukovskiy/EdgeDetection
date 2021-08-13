//
//  ResultViewController.swift
//  EdgeDetection
//
//  Created by Юрий Залуковский on 12.08.2021.
//

import UIKit
import GPUImage

class ResultViewController: UIViewController {
    
    @IBOutlet weak var upperRenderView: RenderView!
    @IBOutlet weak var lowerRenderView: RenderView!
    
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let filter = SobelEdgeDetection()
        let pictureInput = PictureInput(image: image!)
        
        pictureInput --> filter --> upperRenderView
        pictureInput --> filter --> lowerRenderView
        pictureInput.processImage(synchronously: true)
    }
}

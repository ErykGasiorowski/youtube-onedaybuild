//
//  ViewController.swift
//  youtube-onedaybuild
//
//  Created by Eryk Gasiorowski on 03/01/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var model = Model()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
    }


}


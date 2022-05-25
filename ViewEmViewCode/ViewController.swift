//
//  ViewController.swift
//  ViewEmViewCode
//
//  Created by user208023 on 5/25/22.
//

import UIKit

class ViewController: UIViewController {
    
    let homeView = HomeView(title: "Fourcamp")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        view = homeView
//        homeView.setup()
    }


}



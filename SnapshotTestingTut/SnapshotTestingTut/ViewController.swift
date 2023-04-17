//
//  ViewController.swift
//  SnapshotTestingTut
//
//  Created by Bonginkosi Tshabalala on 2023/04/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    var isDarkMode: Bool = false {
        didSet {
            view.backgroundColor = isDarkMode ? .black : .white
            helloLabel.textColor = isDarkMode ? .white : .black
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


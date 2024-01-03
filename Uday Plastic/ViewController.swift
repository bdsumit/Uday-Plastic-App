//
//  ViewController.swift
//  Uday Plastic
//
//  Created by bd01 on 02/01/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc = HomePageVC()
        self.navigationController?.pushViewController(vc, animated: true)
        
    }


}


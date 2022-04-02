//
//  ViewController.swift
//  Network
//
//  Created by joseph on 04/02/2022.
//  Copyright (c) 2022 joseph. All rights reserved.
//

import UIKit
import Network

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        NetworkService.CreateUser()
    }

}


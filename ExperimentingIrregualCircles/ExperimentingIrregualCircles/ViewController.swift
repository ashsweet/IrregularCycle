//
//  ViewController.swift
//  ExperimentingIrregualCircles
//
//  Created by cmajumb on 21/03/20.
//  Copyright © 2020 Prashant Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //     let startButton: UIButton = {
    //              let button = UIButton(type: .system)
    //              button.setTitle("Start animation", for: .normal)
    //              button.translatesAutoresizingMaskIntoConstraints = false
    //              return button
    //          }()
    let circleview = CircleView(frame: CGRect(x: 50, y: 200, width: 300, height: 300))
    override func viewDidLoad() {
        super.viewDidLoad()
        // view.addSubview(startButton)
        view.backgroundColor = .white
        //                startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //                startButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        //                startButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        //                startButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        // startButton.addTarget(self, action: #selector(startAnimation), for: .touchUpInside)
        
        view.addSubview(circleview)
        circleview.setNeedsDisplay()
        circleview.backgroundColor = .white
        
        // Do any additional setup after loading the view.
    }
    //       @objc func startAnimation() {
    //
    //            circleview.backgroundColor = .red
    //    }
}

//
//  ViewController.swift
//  ShapeShifter
//
//  Created by Frans Baud on 13/04/2018.
//  Copyright © 2018 iDevDesign. All rights reserved.
//

import UIKit
import SwiftHEXColors

class ViewController: UIViewController {

    let rectangleView = UIView()
    let button = UIButton()
    
    override func loadView() {
        super.loadView()
        
        view.backgroundColor = .white
        
        button.backgroundColor = .blue
        button.setTitle("Morph", for: .normal)
        view.addSubview(button)
        
        rectangleView.backgroundColor = .red
        view.addSubview(rectangleView)
        
        let randomWidth = randomInput(min: 0, max: 200)
        let randomHeight = randomInput(min: 0, max: 200)

        changeRectangleSize(width: randomWidth, height: randomHeight)
    }
//Layout
    
    //Button
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        let screenWidth = view.bounds.width
        let screenHeight = view.bounds.height
        
        button.frame = CGRect(x: screenWidth/2 - 120/2, y: screenHeight - 90, width: 120, height: 60 )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.addTarget(self, action: #selector(pressedMyButton), for: .touchUpInside)
    }
    
    @objc func pressedMyButton() {
        let randomWidth = randomInput(min: 0, max: 200)
        let randomHeight = randomInput(min: 0, max: 200)
        
        changeRectangleSize(width: randomWidth, height: randomHeight)
    }
    
    //Size it up that Rectangle
    func changeRectangleSize(width: CGFloat, height: CGFloat) {
        
        let screenWidth = view.bounds.width
        let screenHeight = view.bounds.height
        
        rectangleView.frame = CGRect(x: screenWidth/2 - width/2, y: screenHeight/2 - height/2, width: width, height: height)
    }

    func randomInput(min: CGFloat, max: CGFloat) -> CGFloat {
        return CGFloat(Float(arc4random()) / Float(UINT32_MAX)) * (max - min) + min
    }
}

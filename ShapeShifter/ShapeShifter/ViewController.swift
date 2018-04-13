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
    
    override func loadView() {
        super.loadView()
        
        view.backgroundColor = .white
        
        rectangleView.backgroundColor = .red
        view.addSubview(rectangleView)
        
        let randomWidth = randomInput(min: 0, max: 200)
        let randomHeight = randomInput(min: 0, max: 200)

        print(randomWidth)
        print(randomHeight)
        
        changeRectangleSize(width: randomWidth, height: randomHeight)
    }

    func changeRectangleSize(width: CGFloat, height: CGFloat) {
        
        let screenWidth = view.bounds.width
        let screenHeight = view.bounds.height
        
        rectangleView.frame = CGRect(x: screenWidth/2 - width/2, y: screenHeight/2 - height/2, width: width, height: height)
    }

    func randomInput(min: CGFloat, max: CGFloat) -> CGFloat {
        return CGFloat(Float(arc4random()) / Float(UINT32_MAX)) * (max - min) + min
    }
}

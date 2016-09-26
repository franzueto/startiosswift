//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Francisco Anzueto on 9/9/16.
//  Copyright © 2016 Francisco Anzueto. All rights reserved.
//

import UIKit

class RatingControl: UIView {

    // MARK: Initialization
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        button.backgroundColor = UIColor.redColor()
        
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(_:)), forControlEvents: .TouchDown)
        
        addSubview(button)
    }
    
    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: 240, height: 44)
    }
    
    func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👍")
    }
}

//
//  RainbowCircleButton.swift
//
//  Created by Vitaliy Musonov
//

import UIKit

class RainbowColorCircleButton: UIButton {

    var circle: CircleView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    override func prepareForInterfaceBuilder() {
        setupButton()
    }
    
    func setupButton() {
        self.setTitle("", for: .normal)
        
        // Make sure to adjust for the imageInsets (if they have been changed)
        let topInset = self.imageEdgeInsets.top
        let bottomInset = self.imageEdgeInsets.bottom
        let leftInset = self.imageEdgeInsets.left
        let rightInset = self.imageEdgeInsets.right
        
        circle = CircleView(frame: CGRect(x: 0 + rightInset,
                                          y: 0 + topInset,
                                          width: self.bounds.width - (leftInset + rightInset),
                                          height: self.bounds.height - (topInset + bottomInset)))
        circle.drawRainbowColorCircle()
        addSubview(circle)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // TODO:- Change the color of the button on touch
        super.touchesBegan(touches, with: event)
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        // TODO:- Change the color of the button on touch
        super.touchesEnded(touches, with: event)
    }

}

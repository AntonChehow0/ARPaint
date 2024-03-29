//
//  ColoredCircleButton.swift
//
//  Created by Vitaliy Musonov
//

import UIKit

@IBDesignable
class SingleColorCircleButton: UIButton {
    
    var circle: CircleView!
    
    @IBInspectable
    var circleColor: UIColor = .blue {
        didSet {
            circle.color = circleColor
        }
    }
    
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
        circle.drawSingleColorCircle()
        circle.color = circleColor
        addSubview(circle)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // TODO:- Make the button color darker 
        // Make the button white when touched
        super.touchesBegan(touches, with: event)
        circle.color = .white
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        circle.color = circleColor
    }

}

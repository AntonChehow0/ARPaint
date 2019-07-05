//
//  ScreenShotViewController.swift
//
//  Created by Vitaliy Musonov
//

import UIKit

class ScreenShotViewController: UIViewController {
    
    @IBOutlet weak var screenShotImageView: UIImageView!
    
    var screenShotImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screenShotImageView.image = screenShotImage
    }

    @IBAction func doneButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func activityButtonPressed(_ sender: Any) {
        let activityViewController = UIActivityViewController(activityItems: [screenShotImage], applicationActivities: nil)
        present(activityViewController, animated: true, completion: nil)
        // Dismiss the viewController after activity action is finished
        activityViewController.completionWithItemsHandler = { activity, success, items, error in
            self.dismiss(animated: true, completion: nil)
        }
    }
    
}

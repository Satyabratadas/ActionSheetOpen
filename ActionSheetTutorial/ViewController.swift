//
//  ViewController.swift
//  ActionSheetTutorial
//
//  Created by Satyabrata on 13/09/22.
//

import UIKit

class ViewController: UIViewController, UIActionSheetDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
//for action sheet open
    @IBAction func actionSheet(_ sender: UIButton) {
        let optionMenu = UIAlertController(title: nil, message: "Choose Option", preferredStyle: .actionSheet)

            let saveAction = UIAlertAction(title: "Save", style: .default, handler: {
                (alert: UIAlertAction!) -> Void in
                print("Saved")
                self.view.backgroundColor = UIColor(red: 200.0/255.0, green: 125.0/255.0, blue: 90.0/255.0, alpha: 1.0)
            })
            
            let deleteAction = UIAlertAction(title: "Delete", style: .default, handler: {
                (alert: UIAlertAction!) -> Void in
                print("Deleted")
                self.view.backgroundColor = UIColor(red: 123.0/255.0, green: 200.0/255.0, blue: 90.0/255.0, alpha: 1.0)
            })
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: {
                (alert: UIAlertAction!) -> Void in
                print("Cancelled")
            })
            optionMenu.addAction(deleteAction)
            optionMenu.addAction(saveAction)
            optionMenu.addAction(cancelAction)
        
        
//         let secondView:UIView = {
//            let view = UIView(frame: CGRect(x: 10,
//                                            y: 10,
//                                            width: 330,
//                                            height: 30))
//            view.backgroundColor = .purple
//            return view
//        }()
        
        //It's basically for ipad because ipad is crashed
        if let popoverPresentationController = optionMenu.popoverPresentationController {
            popoverPresentationController.sourceView = self.view
            popoverPresentationController.sourceRect = sender.frame
        }
//        self.present(optionMenu, animated: true, completion: nil)
        self.present(optionMenu, animated: true, completion: nil)
        
    }
   
    
    
}


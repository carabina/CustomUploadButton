//
//  ViewController.swift
//  CustomUploadButton
//
//  Created by anandvqb on 12/09/2016.
//  Copyright (c) 2016 anandvqb. All rights reserved.
//

import UIKit
import CustomUploadButton

class ViewController: UIViewController, CustomUploadButtonActionDelegate {
    
    let buttonWidth:CGFloat = 100
    let buttonHeight:CGFloat = 60
    var customUploadButton: CustomUploadButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let viewFrame = view.frame
        
        customUploadButton = CustomUploadButton(frame: CGRect(x:(viewFrame.width - buttonWidth)/2, y:(viewFrame.height - buttonHeight)/2, width:buttonWidth, height:buttonHeight))
        customUploadButton.delegate = self
        customUploadButton.setUpButton(title: "Upload")
        
        view.addSubview(customUploadButton)
    }
    
    public func buttonAction() {
        //Do stuff on button action here
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.customUploadButton.stopAnimation()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

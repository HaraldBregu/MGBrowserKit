//
//  ViewController.swift
//
//  Created by harald bregu on 11/03/2019.
//  Copyright © 2019 Dream Building Company. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import UIKit
import MGBrowserKit
import MGTemplateKit

class ViewController: UIViewController, MGBrowserControllerDelegate {
    var browser:MGBrowser!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let data = MGBrowserData(title: "Firebase", urlString: "https://firebase.google.com/")
        let design = MGBrowserDesign()
        design.navigationBarBackgroundColor = MGTemplate.NavigationBar.backgroundColor
        design.navigationBarTintColor = MGTemplate.NavigationBar.tintColor
        design.viewBackgroundColor = MGTemplate.View.backgroundColor
        design.leftBarButtonImage = UIImage(icon: .ionicons(.naviconRound), size: CGSize(width: 34, height: 34), textColor: .white)
        browser = MGBrowser(data: data, design: design)
        browser.controller.delegate = self
    }
    
    func didTapLeftBarButtonItem(controller: MGBrowserController) {
        controller.navigationController?.popViewController(animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        self.navigationController?.pushViewController(browser.controller, animated: true)
    }

}


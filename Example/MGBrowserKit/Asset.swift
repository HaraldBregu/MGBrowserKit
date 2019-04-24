// 
//  Asset.swift
//
//  Created by harald bregu on 18/04/2019.
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

import Foundation
import MGBrowserKit


class Asset {
    
}

extension Asset:BrowserAssetImpl {}

// MARK - MGBrowserAsset

protocol BrowserAssetImpl {
    static var assets:MGBrowserAsset { get }
}

extension BrowserAssetImpl {
    static var assets:MGBrowserAsset {
        return BrowserAsset(
            font: BrowserFont(
                primaryFont: UIFont()),
            image: BrowserImage(
                navigationItemMenu: #imageLiteral(resourceName: "menu")),
            color: BrowserColor(
                backgroundView: .black,
                navigationBar: .black,
                navigationBarTint: .white,
                toolBar: .black,
                toolBarTint: .white),
            string: BrowserString(
                title: "The Next Web",
                navigationTitle: "The Next Web"),
            data: BrowserData(url: "https://thenextweb.com/"))
    }
}

struct BrowserAsset: MGBrowserAsset {
    var font: MGBrowserFont
    var image: MGBrowserImage
    var color: MGBrowserColor
    var string: MGBrowserString
    var data: MGBrowserData
}

struct BrowserFont: MGBrowserFont {
    var primaryFont:UIFont
}

struct BrowserImage: MGBrowserImage {
    var navigationItemMenu:UIImage
}

struct BrowserColor: MGBrowserColor {
    var backgroundView:UIColor
    var navigationBar:UIColor
    var navigationBarTint:UIColor
    var toolBar:UIColor
    var toolBarTint:UIColor
}

struct BrowserString: MGBrowserString {
    var title:String
    var navigationTitle:String
}

struct BrowserData: MGBrowserData {
    var url: String
}

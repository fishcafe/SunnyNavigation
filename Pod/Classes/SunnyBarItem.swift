//
//  FishBarItem.swift
//Copyright (c) 2016 amaker <itamaker@gmail.com>
//
//Permission is hereby granted, free of charge, to any person obtaining a copy
//of this software and associated documentation files (the "Software"), to deal
//in the Software without restriction, including without limitation the rights
//to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//copies of the Software, and to permit persons to whom the Software is
//furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in
//all copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//THE SOFTWARE.

import Foundation
import UIKit

public extension UINavigationItem{
    
    @discardableResult
    public  func setItemWithTitle(_ title: String,
                                  textColor: UIColor,
                                  size: CGFloat,
                                  type:ItemType) -> SunnyNaviItem {
        let item = SunnyNaviItem.itemWithTitle(title, textColor: textColor, fontSize: size, itemType: type)
        item.setItemWithNavigationItem(self, type: type)
        return item
    }
    
    @discardableResult
    public func setItemWithImage(_ imageName: String,
                                 size: CGSize,
                                 type: ItemType) -> SunnyNaviItem {
        let item = SunnyNaviItem.itemWithImage(imageName,
                                               size: size,
                                               type: type)
        item.setItemWithNavigationItem(self, type: type)
        return item
    }
    
    @discardableResult
    public func setItemWithCustomView(_ customView : UIView, type : ItemType) -> SunnyNaviItem {
        let item = SunnyNaviItem.itemWithCustomeView(customView, type: type)
        item.setItemWithNavigationItem(self, type: type)
        
        return item
    }
    
    
    
    
}

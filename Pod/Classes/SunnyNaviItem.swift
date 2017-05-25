//
//  FishNaviItem.swift
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

public enum ItemType {
    case left,center,right
}

let Default_Offset:CGFloat =  10.0

let TitleViewSize = CGSize(width: 120, height: 40)//用NSString设置item时 item的尺寸
let LeftViewSize = CGSize(width: 50, height: 40)//用NSString设置item时 item的尺寸

open class SunnyNaviItem: NSObject {
    
    open var fixBarItem:UIBarButtonItem?
    open var contentBarItem:UIButton?
    open var items:NSMutableArray?
    open var itemType:ItemType!
    open var customView:UIView?
    open var isCustomView:Bool?
    
      func initCustomItemWithType(_ type : ItemType, size : CGSize) {
        self.isCustomView = false
        self.itemType = type
        self.items = NSMutableArray()
        self.contentBarItem = UIButton(type: .custom)
        self.contentBarItem?.frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        self.items?.add(self.contentBarItem!)
    }
    
    
      open static func itemWithTitle(_ title : String,
                                     textColor : UIColor,
                                     fontSize : CGFloat,
                                     itemType : ItemType) -> SunnyNaviItem{
        let item = SunnyNaviItem()
        if itemType == .center {
            item.initCustomItemWithType(itemType, size: TitleViewSize)
        } else {
            item.initCustomItemWithType(itemType, size: LeftViewSize)
        }
        item.setItemContetnWithType(itemType)
        item.contentBarItem?.setTitle(title, for: UIControlState())
        item.contentBarItem?.setTitleColor(textColor, for: UIControlState())
        item.contentBarItem?.titleLabel?.font = UIFont.systemFont(ofSize: fontSize)
        return item
    }
    
    open static func itemWithImage(_ itemWithImage : String,
                                   size : CGSize,
                                   type : ItemType) -> SunnyNaviItem{
        let  item = SunnyNaviItem()
        item.initCustomItemWithType(type, size: size)
        item.setItemContetnWithType(type)
        item.contentBarItem?.setImage(UIImage(named: itemWithImage) , for: UIControlState())
        return item
    }
    
    
    open static func itemWithCustomeView(_ customView : UIView,
                                         type : ItemType) -> SunnyNaviItem{
        let item = SunnyNaviItem()
        item.initCustomItemWithType(type, size: customView.frame.size)
        item.isCustomView = true
        item.customView = customView
        customView.frame = (item.contentBarItem?.bounds)!
        item.contentBarItem?.addSubview(customView)
        item.setItemContetnWithType(type)
        return item
    }
    
    
    open func addTarget(_ target : AnyObject,
                        selector : Selector,
                        event : UIControlEvents) {
        self.contentBarItem?.addTarget(target, action: selector, for: event)
    }
    
    /**
     *设置item偏移量
     *@param offSet 正值向左偏，负值向右偏
     */
   open func setOffset(_ offSet : CGFloat)  {
        if (self.isCustomView != nil) {
            var customViewFrame = self.customView?.frame
            customViewFrame?.origin.x = offSet
            self.customView?.frame = customViewFrame!
        }
        else{
            self.contentBarItem?.contentEdgeInsets = UIEdgeInsetsMake(0, offSet, 0, -offSet)
        }
        
        
    }
    
   open func setItemContetnWithType(_ type : ItemType){
        if type == .right {
            self.contentBarItem?.contentHorizontalAlignment = .right
            self.setOffset(Default_Offset)
        }else if type == .left{
            self.contentBarItem?.contentHorizontalAlignment = .left
            self.setOffset(Default_Offset)
        }
    }
    
    open func setItemWithNavigationItem(_ navigationItem: UINavigationItem, type : ItemType){
        if type == .center {
            navigationItem.titleView = self.contentBarItem
        } else if type == .left{
            navigationItem.setLeftBarButton(UIBarButtonItem(customView: self.contentBarItem! ), animated: false)
            
        } else if type == .right{
            navigationItem.setRightBarButton(UIBarButtonItem(customView: self.contentBarItem! ), animated: false)
        }
        
        
    }
    
    
    
    
    
    
}

//
//  FishBarItem.swift
//  FishBarItem
//
//  Created by amaker on 16/4/15.
//  Copyright © 2016年 CocoaPods. All rights reserved.
//

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

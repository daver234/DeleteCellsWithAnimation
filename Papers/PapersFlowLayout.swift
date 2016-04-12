//
//  PapersFlowLayout.swift
//  Papers
//
//  Created by Mic Pringle on 19/01/2015.
//  Copyright (c) 2015 Razeware LLC. All rights reserved.
//

import UIKit

class PapersFlowLayout: UICollectionViewFlowLayout {
  
  var appearingItemIndexPath: NSIndexPath?
    var disappearingItemsIndexPaths: [NSIndexPath]?
  
  override func initialLayoutAttributesForAppearingItemAtIndexPath(itemIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes? {
    let attributes = super.initialLayoutAttributesForAppearingItemAtIndexPath(itemIndexPath)
    if let indexPath = appearingItemIndexPath {
      if let attributes = attributes {
        if indexPath == itemIndexPath {
          let width = CGRectGetWidth(collectionView!.frame)
          attributes.alpha = 1.0
          attributes.center = CGPoint(x: CGRectGetWidth(collectionView!.frame) - 23.5, y: -24.5)
          attributes.transform = CGAffineTransformMakeScale(0.15, 0.15)
          attributes.zIndex = 99
        }
      }
    }
    return attributes
  }
  
    
    override func
        finalLayoutAttributesForDisappearingItemAtIndexPath(itemIndexPath:
        NSIndexPath) -> UICollectionViewLayoutAttributes? {
        let attributes = super.finalLayoutAttributesForDisappearingItemAtIndexPath(itemIndexPath)
        // 1
        if let indexPaths = disappearingItemsIndexPaths {
            // 2
            if let attributes = attributes {
                // 3
                if indexPaths.contains(itemIndexPath) {
                    // 4
                    attributes.alpha = 1.0
                    attributes.transform = CGAffineTransformMakeScale(0.1, 0.1)
                    // 5
                    attributes.zIndex = -1
                }
            }
        }
        return attributes
    }
}

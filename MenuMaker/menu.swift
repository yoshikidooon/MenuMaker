//
//  menu.swift
//  MenuMaker
//
//  Created by 藤田佳己 on 2020/05/21.
//  Copyright © 2020 Fujita Fujimon. All rights reserved.
//

import UIKit


class menu {
    
    var imageName: String!
    
    init(imageName: String) {
        
        self.imageName = imageName
        
    }
    
    func getImage() -> UIImage {
        return UIImage(named: imageName)!
    }
}

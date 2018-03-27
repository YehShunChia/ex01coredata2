//
//  Empoylee+CoreDataProperties.swift
//  ex01coredata
//
//  Created by megasilver on 2018/3/27.
//  Copyright © 2018年 com.megasilver. All rights reserved.
//
//

import Foundation
import CoreData


extension Empoylee {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Empoylee> {
        return NSFetchRequest<Empoylee>(entityName: "Empoylee")
    }

    @NSManaged public var address: String?
    @NSManaged public var age: Int16
    @NSManaged public var gid: Int64
    @NSManaged public var name: String?
    @NSManaged public var tel: String?

}

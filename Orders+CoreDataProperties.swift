//
//  Orders+CoreDataProperties.swift
//  ex01coredata
//
//  Created by megasilver on 2018/3/27.
//  Copyright © 2018年 com.megasilver. All rights reserved.
//
//

import Foundation
import CoreData


extension Orders {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Orders> {
        return NSFetchRequest<Orders>(entityName: "Orders")
    }

    @NSManaged public var gid: Int64
    @NSManaged public var orderdate: NSDate?
    @NSManaged public var title: String?
    @NSManaged public var orderitems: NSSet?

}

// MARK: Generated accessors for orderitems
extension Orders {

    @objc(addOrderitemsObject:)
    @NSManaged public func addToOrderitems(_ value: Items)

    @objc(removeOrderitemsObject:)
    @NSManaged public func removeFromOrderitems(_ value: Items)

    @objc(addOrderitems:)
    @NSManaged public func addToOrderitems(_ values: NSSet)

    @objc(removeOrderitems:)
    @NSManaged public func removeFromOrderitems(_ values: NSSet)

}

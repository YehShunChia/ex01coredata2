//
//  Student+CoreDataProperties.swift
//  ex01coredata
//
//  Created by megasilver on 2018/3/23.
//  Copyright © 2018年 com.megasilver. All rights reserved.
//
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }

    @NSManaged public var height: Double
    @NSManaged public var name: String?
    @NSManaged public var id: Int32

}

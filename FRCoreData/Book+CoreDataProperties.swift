//
//  Book+CoreDataProperties.swift
//  FRCoreData
//
//  Created by Parthiban M on 11/03/18.
//  Copyright © 2018 Parthiban M. All rights reserved.
//
//

import Foundation
import CoreData


extension Book {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Book> {
        return NSFetchRequest<Book>(entityName: "Book")
    }

    @NSManaged public var name: String?
    @NSManaged public var owner: Author

}

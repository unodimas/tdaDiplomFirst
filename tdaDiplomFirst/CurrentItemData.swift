import Foundation

var currentItem: NSDictionary = [:]

struct CurrentItem: Codable {

    let name, sortOrder, description, colorName, colorImageURL, mainImage, price: String?
//    let productImages: [ProductImages]?

    enum codingKeys: String, CodingKey{
        case name, sortOrder, description, colorName, colorImageURL, mainImage, price
    }
}






//struct Subcategory: Codable{
//    let id, iconImage, sortOrder, name, type: String?
//
//    enum codingKeys: String, CodingKey{
//        case id, iconImage, sortOrder, name, type
//    }
//}
//
//
//struct Catalog: Codable{
//
//    var item292: CatalogCategory
//    var item67: CatalogCategory
//    var item68: CatalogCategory
//    var item69: CatalogCategory
//    var item73: CatalogCategory
//    var item74: CatalogCategory
//    var item156: CatalogCategory
//    var item165: CatalogCategory
//    var item233: CatalogCategory
//    var item0: CatalogCategory
//
//    enum codingKeys: String, CodingKey{
//
//        case item292 = "292"
//        case item67 = "67"
//        case item68 = "68"
//        case item69 = "69"
//        case item73 = "73"
//        case item74 = "74"
//        case item156 = "156"
//        case item165 = "165"
//        case item233 = "233"
//        case item0 = "0"
//    }
//}
//
//struct CatalogCategory: Codable{
//
//    var name: String?
//    var sortOrder: String?
//    var image: String?
//    var iconImage: String
//    var iconImageActive: String
//    var subcategories: [Subcategory]
//
//    enum codingKeys: String, CodingKey{
//
//        case name = "name"
//        case sortOrder = "sortOrder"
//        case image = "image"
//        case iconImage = "iconImage"
//        case iconImageActive = "iconImageActive"
//        case subcategories
//    }
//}
//
//struct Subcategory: Codable{
//
//    var id: String
//    var iconImage: String
//    var sortOrder: String
//    var name: String
//    var type: String
//
//    enum codingKeys: String, CodingKey{
//
//        case id = "id"
//        case iconImage = "iconImage"
//        case sortOrder = "sortOrder"
//        case name = "name"
//        case type = "type"
//    }
//}

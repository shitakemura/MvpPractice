import Foundation

enum DatePickerItems: Int {
    case area = 0
    case school = 1
    
    var title: String {
        switch self {
        case .area:
            return Area.title
        case .school:
            return School.title
        }
    }
    
    var all: [Inputable] {
        switch self {
        case .area:      return Area.all
        case .school:    return School.all
        }
    }
}

protocol Inputable {
    var name: String { get }
    static var all: [Inputable] { get }
}

enum Area: Int, Inputable {
    case tokyo = 0
    case saitama = 1
    case kanagawa = 2
    
    static var title: String {
        return "Area"
    }
    
    var name: String {
        switch self {
        case .tokyo:    return "Tokyo"
        case .saitama:  return "Saitame"
        case .kanagawa: return "Kanagawa"
        }
    }
    
    static var all: [Inputable] {
        return [Area.tokyo, Area.saitama, Area.kanagawa]
    }
}

enum School: Int, Inputable {
    case primary = 0
    case junior = 1
    case high = 2
    
    static var title: String {
        return "School"
    }
    
    var name: String {
        switch self {
        case .primary:  return "Primary"
        case .junior:   return "Junior"
        case .high:     return "High"
        }
    }
    
    static var all: [Inputable] {
        return [School.primary, School.junior, School.high]
    }
}

//let index = 0
//let pickerItem = DatePickerItems.init(rawValue: 0)
//if let pickerItem = pickerItem {
//    print(pickerItem.title)
//    print(pickerItem.all.map({$0}))
//    pickerItem.all.forEach { item in
//        print(item.name)
//    }
//}


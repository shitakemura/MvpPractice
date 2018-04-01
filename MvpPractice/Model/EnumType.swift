import Foundation

struct InputPickerModel {
    let data: PickerData
    var selectedItemIndex: Int?
    
    init(data: PickerData) {
        self.data = data
    }
}

enum PickerData {
    case area
    case school
    
    var selfName: String {
        return "\(self)"
    }
    
    var title: String {
        switch self {
        case .area:
            return Area.title
        case .school:
            return School.title
        }
    }
    
    var items: [ItemType] {
        switch self {
        case .area:
            return Area.items
        case .school:
            return School.items
        }
    }
}

protocol ItemType {
    var selfName: String { get }
    var name: String { get }
}

extension ItemType {
    var selfName: String {
        return "\(self)"
    }
}

enum Area: ItemType {
    case tokyo
    case saitama
    case kanagawa
    
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
    
    static var items: [ItemType] {
        return [Area.tokyo, Area.saitama, Area.kanagawa]
    }
}

enum School: ItemType {
    case primary
    case junior
    case high
    
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
    
    static var items: [ItemType] {
        return [School.primary, School.junior, School.high]
    }
}

//let inputPickerModels = [InputPickerModel(data: .area), InputPickerModel(data: .school)]
//inputPickerModels.forEach { pickerModel in
//    print(" *** \(pickerModel.data.selfName) ***")
//    print(" --- \(pickerModel.data.title) ---")
//    pickerModel.data.items.forEach { item in
//        print(item.selfName)
//        print(item.name)
//    }
//}


import Foundation
import UIKit

final class SearchResultTableViewCellDataSource: NSObject {

    private let userItem: UserItem
    
    init(userItem: UserItem) {
        self.userItem = userItem
    }
    
    func setup(with pickerView: UIPickerView) {
        pickerView.dataSource = self
        pickerView.delegate = self
        pickerView.showsSelectionIndicator = true
    }
}

extension SearchResultTableViewCellDataSource: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return userItem.items.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 1
    }
}

extension SearchResultTableViewCellDataSource: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ""
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }
}

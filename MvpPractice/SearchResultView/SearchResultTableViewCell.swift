
import UIKit

class SearchResultTableViewCell: UITableViewCell {

    @IBOutlet weak var textField: UITextField!
    private let pickerView = UIPickerView()
    
    private var userItem: UserItem!
    private var dataSource: SearchResultTableViewCellDataSource!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setup(with userItem: UserItem) {
        textField.text = userItem.name
        dataSource = SearchResultTableViewCellDataSource(userItem: userItem)
        dataSource.setup(with: pickerView)
    }
}

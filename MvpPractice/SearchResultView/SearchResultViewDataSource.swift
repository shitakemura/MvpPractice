
import Foundation
import UIKit

final class SearchResultViewDataSource: NSObject {
    fileprivate let presenter: SearchResultPresenter
    
    init(presenter: SearchResultPresenter) {
        self.presenter = presenter
    }
    
    func setup(with tableView: UITableView) {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(SearchResultTableViewCell.self, forCellReuseIdentifier: SearchResultTableViewCell.className)
    }
}

extension SearchResultViewDataSource: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.numberOfItems
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SearchResultTableViewCell.className, for: indexPath) as? SearchResultTableViewCell else { return UITableViewCell() }
        let userItem = presenter.userItem(at: indexPath.row)
        cell.setup(with: userItem)
        return cell
    }
}

extension SearchResultViewDataSource: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.showUserItem(at: indexPath.row)
    }
}

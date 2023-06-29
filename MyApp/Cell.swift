//
//  Cell.swift
//  MyApp
//
//  Created by popov-va on 29.06.2023.
//

import UIKit

class Cell: UITableViewCell {
    
    static let reuseId = "cell"
    
    var iconCell : UIImageView {
        let icon = UIImageView()
        icon.image = UIImage(systemName: "add")
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }
    
    var titleCell : UILabel {
        let title = UILabel()
        title.font = UIFont.systemFont(ofSize: 25)
        title.tintColor = .red
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }
    
    var descriptionCell : UILabel {
        let title = UILabel()
        title.font = UIFont.systemFont(ofSize: 25)
        title.tintColor = .red
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addOnViewObjects() {
        self.addSubview(titleCell)
    }
    
    private func makeConstraintTitleCell() {
        NSLayoutConstraint.activate([
            titleCell.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            titleCell.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }
    
    func setupCell() {
        addOnViewObjects()
        makeConstraintTitleCell()
    }
}

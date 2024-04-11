//
//  LanguageViewCell.swift
//
//

import UIKit
import Airlance

public class LanguageViewCell: UITableViewCell {
    
    private lazy var languageLoader: UIActivityIndicatorView = {
        let view = UIActivityIndicatorView()
        view.color = UIColor(hex: "#0ea5e9")
        
        return view
    }()
    
    private lazy var languageTitle: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18)
        label.tintColor = .label
        label.numberOfLines = 0
        
        return label
    }()
    
    private lazy var languageOriginal: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        label.tintColor = .label
        label.numberOfLines = 0
        
        return label
    }()
    
    private lazy var languageActiveItem: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "checked")?.withRenderingMode(.alwaysTemplate).withTintColor(UIColor(hex: "#0ea5e9"))
        
        return view
    }()
    
    private lazy var selectedBackground = UIView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectedBackgroundView = selectedBackground
        selectionStyle = .none
        selectedBackgroundView = .none
        contentView.addSubviews(languageTitle, languageOriginal, languageLoader, languageActiveItem)
        
        languageTitle.constraints(top: contentView.topAnchor, leading: contentView.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 10, bottom: 0, right: 0))
        languageOriginal.constraints(top: languageTitle.bottomAnchor, leading: contentView.leadingAnchor, bottom: contentView.bottomAnchor, trailing: nil, padding: .init(top: 5, left: 10, bottom: 10, right: 0))
        languageActiveItem.constraints(top: nil, leading: nil, bottom: nil, trailing: contentView.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 10))
        languageLoader.constraints(top: nil, leading: nil, bottom: nil, trailing: contentView.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 10))
        
        languageActiveItem.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        languageLoader.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
    }
    
    func configure(language: Language) {
        languageActiveItem.isHidden = LanguageProvider.shared.currentLanguage != language.id
        languageTitle.text = language.name
        languageOriginal.text = language.original
    }
    
    public func animationShouldStart() {
        languageLoader.startAnimating()
    }
    
    public func animationShouldFinish() {
        languageLoader.stopAnimating()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

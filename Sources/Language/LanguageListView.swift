//
//  LanguageListView.swift
//
//

import UIKit

public class LanguageListView: UITableView {
    
    private(set) var viewModel: LanguageViewModel
    
    private let languageDataSource = LanguageDataSource()
    public var languageDelegate = LanguageViewDelegate()
    
    public init(viewModel: LanguageViewModel, frame: CGRect = .zero) {
        self.viewModel = viewModel
        super.init(frame: frame, style: .grouped)
        showsVerticalScrollIndicator = false
        register(cell: LanguageViewCell.self)
        delegate = languageDelegate
        dataSource = languageDataSource
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//
//  TextEditorUIView.swift
//  SparkTextEditor
//
//  Created by robin.lemaire on 19/07/2024.
//  Copyright © 2024 Adevinta. All rights reserved.
//

import UIKit
import SparkTheming
@_spi(SI_SPI) import SparkCommon

/// The UIKit version for the texteditor.
public final class TextEditorUIView: UIView {

    // MARK: - Components

    private lazy var contentStackView: UIStackView = {
        let stackView = UIStackView(
            arrangedSubviews:
                [
                    self.textLabel
                ])
        stackView.axis = .horizontal
        return stackView
    }()

    private var textLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello TextEditor"
        label.numberOfLines = 1
        label.lineBreakMode = .byTruncatingTail
        label.adjustsFontForContentSizeCategory = true
        label.setContentCompressionResistancePriority(.required,
                                                      for: .vertical)
        label.setContentCompressionResistancePriority(.required,
                                                      for: .horizontal)
        return label
    }()

    // MARK: - Public Properties

    /// The spark theme of the texteditor.
    public var theme: Theme {
        didSet {
            // TODO: If needed
        }
    }

    /// The intent of the texteditor.
    public var intent: TextEditorIntent {
        didSet {
            // TODO: If needed
        }
    }

    // MARK: - Private Properties

    // TODO: If needed

    // MARK: - Initialization

    /// Initialize a new texteditor view.
    /// - Parameters:
    ///   - theme: The spark theme of the texteditor.
    ///   - intent: The intent of the texteditor.
    public convenience init(
        theme: Theme,
        intent: TextEditorIntent
    ) {
        self.init(
            theme,
            intent: intent
        )
    }

    private init(
        _ theme: Theme,
        intent: TextEditorIntent
    ) {
        self.theme = theme
        self.intent = intent

        super.init(frame: .zero)

        self.setupView()
    }

    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }

    // MARK: - View setup

    private func setupView() {
        // Properties
        self.accessibilityIdentifier = TextEditorAccessibilityIdentifier.view

        // Add subview
        self.addSubview(self.contentStackView)

        // Setup constraints
        self.setupConstraints()

        // Setup publisher subcriptions
        self.setupSubscriptions()
    }

    // MARK: - Layout

    public override func layoutSubviews() {
        super.layoutSubviews()

        // TODO: If Needed
    }

    // MARK: - Constraints

    private func setupConstraints() {
        self.setupViewConstraints()
        self.setupContentStackViewConstraints()

        // TODO: If Needed
    }

    private func setupViewConstraints() {
        self.translatesAutoresizingMaskIntoConstraints = false

        // TODO: If Needed
    }

    private func setupContentStackViewConstraints() {
        self.contentStackView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            self.contentStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.contentStackView.topAnchor.constraint(equalTo: self.topAnchor),
            self.contentStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.contentStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }

    // MARK: - Subscribe

    /// Subscribe to the published properties on ViewModel.
    /// This method is internal because it can be overriden by the view that inherits from this class.
    internal func setupSubscriptions() {
        // TODO: If Needed
    }

    // MARK: - Trait Collection

    public override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)

        // TODO: If Needed
    }
}

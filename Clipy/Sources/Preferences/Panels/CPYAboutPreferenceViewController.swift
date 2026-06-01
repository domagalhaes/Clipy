//
//  CPYAboutPreferenceViewController.swift
//
//  Clipy
//  GitHub: https://github.com/clipy
//  HP: https://clipy-app.com
//
//  Created by Cline on 2026/05/24.
//
//  Copyright © 2015-2026 Clipy Project.
//

import Cocoa

final class CPYAboutPreferenceViewController: NSViewController {

    @IBOutlet private weak var versionTextField: NSTextField!

    override func loadView() {
        super.loadView()

         let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "Unknown"
         let build = Bundle.main.infoDictionary?["CFBundleVersion"] as? String ?? "Unknown"
         versionTextField.stringValue = "Version \(version) (\(build))"
    }

    @IBAction private func openWebsite(_ sender: Any) {
        if let url = URL(string: "https://clipy-app.com") {
            NSWorkspace.shared.open(url)
        }
    }

    @IBAction private func openGitHub(_ sender: Any) {
        if let url = URL(string: "https://github.com/domagalhaes/Clipy") {
            NSWorkspace.shared.open(url)
        }
    }
}

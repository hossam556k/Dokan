//
//  ViewController.swift
//  Dokan
//
//  Created by MacBook Pro on 08/11/2026.
//
import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        #if DEBUG
        // Temporary manual Crashlytics verification; excluded from Release builds.
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Test Crash", for: .normal)
        button.addTarget(self, action: #selector(crashButtonTapped(_:)), for: .touchUpInside)
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            button.heightAnchor.constraint(greaterThanOrEqualToConstant: 44)
        ])
        #endif
    }

    #if DEBUG
    @IBAction func crashButtonTapped(_ sender: AnyObject) {
        fatalError("Dokan manual Crashlytics test crash")
    }
    #endif
}

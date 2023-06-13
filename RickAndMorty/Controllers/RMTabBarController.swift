//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Emir Alkal on 13.06.2023.
//

import UIKit

final class RMTabBarController: UITabBarController {

    private let tabs: [(type: UIViewController.Type, title: String, imageName: String)] = [
        (RMCharacterController.self, "Characters", "person"),
        (RMLocationController.self, "Locations", "globe"),
        (RMEpisodeController.self, "Episodes", "tv"),
        (RMSettingsController.self, "Settings", "gear")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupViewControllers()
    }

    private func setupViewControllers() {
        setViewControllers(tabs.map { makeNavController($0.type, title: $0.title, imageName: $0.imageName) }, animated: false)
    }
    
    private func makeNavController<T: UIViewController>(_ type: T.Type, title: String, imageName: String) -> UINavigationController {
        let viewController = type.init()
        viewController.navigationItem.title = title
        viewController.view.backgroundColor = .systemBackground
        
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.tabBarItem.title = title
        navigationController.navigationBar.prefersLargeTitles = true
        navigationController.tabBarItem.image = .init(systemName: imageName)
        
        return navigationController
    }
}


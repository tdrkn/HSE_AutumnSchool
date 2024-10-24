//
//  StyleruTabBarController.swift
//  AutumnSchool24
//
//  Created by Emil Shpeklord on 08.10.2024.
//

// MARK: - НЕ ТРОГАЕМ

import UIKit

final class StyleruTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        UITabBar.appearance().barTintColor = .link
        tabBar.tintColor = .link
        tabBar.isTranslucent = false
        setupVCs()
        showRegistration()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    private func showRegistration() {
        DispatchQueue.main.async {
            let enterViewController = EnterViewController()
            enterViewController.modalPresentationStyle = .fullScreen
            self.present(enterViewController, animated: true)
        }
    }

    private func createViewController(for viewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
    }

    private func setupVCs() {
        viewControllers = [
            createViewController(
                for: AnimationsViewController(),
                title: "Animations",
                image: UIImage(systemName: "play.circle.fill") ?? UIImage()),
            createViewController(
                for: getNavController(for: ListCollectionViewController(), title: "List"),
                title: "List",
                image: UIImage(systemName: "table.fill") ?? UIImage())
        ]
    }
    
    private func getNavController(for viewController: UIViewController, title: String) -> UINavigationController {
        let navController = UINavigationController(rootViewController: viewController)
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithTransparentBackground()
        let attributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.styleruBold,
            .foregroundColor: UIColor.black
        ]
        appearance.shadowColor = .clear
        appearance.largeTitleTextAttributes = attributes
        navController.navigationBar.standardAppearance = appearance
        navController.navigationBar.scrollEdgeAppearance = appearance
        navController.navigationBar.compactAppearance = appearance
        
        navController.navigationBar.prefersLargeTitles = true
        viewController.navigationItem.title = title
        
        navController.viewControllers.first?.navigationItem.title = title
        return navController
    }
}


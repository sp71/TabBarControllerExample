//
//  TabBarController.swift
//  TabBarControllerExample
//
//  Created by Satinder Singh on 7/7/16.
//  Copyright © 2016 Satinder. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let downloadViewController = DownloadsViewController()
        downloadViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .Downloads, tag: 0)
        
        let bookmarkViewController = BookmarksViewController()
        bookmarkViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .Bookmarks, tag: 1)
        
        let favoritesViewControllers = FavoritesViewController()
        favoritesViewControllers.tabBarItem = UITabBarItem(tabBarSystemItem: .Favorites, tag: 2)
        
        let viewControllerList = [ downloadViewController, bookmarkViewController, favoritesViewControllers ]

        viewControllers = viewControllerList.map { UINavigationController(rootViewController: $0) }
    }

}

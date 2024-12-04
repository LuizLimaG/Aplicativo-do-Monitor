import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabBar()
    }
    
    private func configureTabBar() {
        let homeScreen = UINavigationController(rootViewController: HomeViewController())
        let scheduleScreen = UINavigationController(rootViewController: ScheduleViewController())
        let glpiScreen = UINavigationController(rootViewController: GLPIViewController())
        let guideScreen = UINavigationController(rootViewController: GuideViewController())
        let settingsScreen = UINavigationController(rootViewController: SettingsViewController())
        self.setViewControllers([homeScreen,
                                scheduleScreen,
                                glpiScreen,
                                guideScreen,
                                settingsScreen],
                                animated: true)
        
        tabBar.isTranslucent = false
        
        guard let items = tabBar.items else {return}
        
        items[0].title = "Registro"
        items[0].image = UIImage(systemName: "square.stack.3d.up.fill")
        
        items[1].title = "Horários"
        items[1].image = UIImage(systemName: "calendar")
        
        items[2].title = "GLPI"
        items[2].image = UIImage(systemName: "headphones")
        
        items[3].title = "Manual"
        items[3].image = UIImage(systemName: "book.closed.fill")
        
        items[4].title = "Config."
        items[4].image = UIImage(systemName: "gearshape.fill")
        
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.backgroundColor = UIColor(named: "tabBarBackgroundColor")
        
        tabBarAppearance.stackedLayoutAppearance.normal.iconColor = UIColor(named: "tabBarOptionNormal")
        tabBarAppearance.stackedLayoutAppearance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(named: "tabBarOptionNormal") ?? UIColor.black]
        tabBarAppearance.stackedLayoutAppearance.selected.iconColor = UIColor(named: "tabBarOptionSelected")
        tabBarAppearance.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(named: "tabBarOptionSelected") ?? UIColor.black]
        
        tabBar.standardAppearance = tabBarAppearance
        if #available(iOS 15.0, *) {
            self.tabBar.scrollEdgeAppearance = tabBarAppearance
        }
    }
}

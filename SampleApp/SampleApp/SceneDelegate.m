#import "SceneDelegate.h"
#import "ViewController.h"

@interface SceneDelegate ()<UITabBarControllerDelegate>

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    
    
//        self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds] ];
//
//        UITabBarController *tabbarController = [[UITabBarController alloc] init];
//
//        UIViewController *controller1 = [[UIViewController alloc] init];
//        controller1.view.backgroundColor = [UIColor redColor];
//
//        UIViewController *controller2 = [[UIViewController alloc] init];
//        controller2.view.backgroundColor = [UIColor yellowColor];
//
//
//        UIViewController *controller3 = [[UIViewController alloc] init];
//        controller3.view.backgroundColor = [UIColor greenColor];
//
//
//        UIViewController *controller4 = [[UIViewController alloc] init];
//        controller4.view.backgroundColor = [UIColor lightGrayColor];
//
//        [tabbarController setViewControllers:@[controller1,controller2,controller3,controller4]];
//
//        self.window.rootViewController = tabbarController;
//        [self.window makeKeyAndVisible];
    
    
    self.window = [[UIWindow alloc] initWithWindowScene:(UIWindowScene *)scene];
    UITabBarController *tabbarController = [[UITabBarController alloc] init];
    
    // lesson 10 :
    ViewController *viewController = [[ViewController alloc] init];


//    UIViewController *controller1 = [[UIViewController alloc] init];
    viewController.view.backgroundColor = [UIColor whiteColor];
    viewController.tabBarItem.title = @"经济";
    
//    UIViewController *controller1 = [[UIViewController alloc] init];
//    controller1.view.backgroundColor = [UIColor redColor];
//    controller1.tabBarItem.title = @"经济";

    UIViewController *controller2 = [[UIViewController alloc] init];
    controller2.view.backgroundColor = [UIColor greenColor];
    controller2.tabBarItem.title = @"政治";

    UIViewController *controller3 = [[UIViewController alloc] init];
    controller3.view.backgroundColor = [UIColor blueColor];
    controller3.tabBarItem.title = @"科技";

    UIViewController *controller4 = [[UIViewController alloc] init];
    controller4.view.backgroundColor = [UIColor yellowColor];
    controller4.tabBarItem.title = @"文化";

//    [tabbarController setViewControllers:@[controller1, controller2, controller3, controller4]];
    [tabbarController setViewControllers:@[viewController, controller2, controller3, controller4]];
    
    tabbarController.delegate = self;
    

    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:tabbarController];
    
    self.window.rootViewController = navigationController;
    [self.window makeKeyAndVisible];

}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    NSLog(@"did select");
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end

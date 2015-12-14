//
//  MainViewController.m
//  模板TabBar
//
//  Created by xinxibin on 15/10/21.
//  Copyright © 2015年 xinxibin. All rights reserved.
//

#import "MainViewController.h"
#import "DemoViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self config];
}

- (void)config{
    
    DemoViewController * vc1 = [[DemoViewController alloc]init];
    UINavigationController * vc1Nav = [[UINavigationController alloc]initWithRootViewController:vc1];
    
    DemoViewController * vc2 = [[DemoViewController alloc]init];
    UINavigationController * vc2Nav = [[UINavigationController alloc]initWithRootViewController:vc2];
    
    DemoViewController * vc3 = [[DemoViewController alloc]init];
    UINavigationController * vc3Nav = [[UINavigationController alloc]initWithRootViewController:vc3];
    
    DemoViewController * vc4 = [[DemoViewController alloc]init];
    UINavigationController * vc4Nav = [[UINavigationController alloc]initWithRootViewController:vc4];
    
    
    NSArray * VCARRAY = @[vc1Nav,vc2Nav,vc3Nav,vc4Nav];
    [self setViewControllers:VCARRAY animated:YES];
    UITabBar * tabBar1 = self.tabBar;
    // 3.设置控制器属性f
    [self setupChildViewController:vc1 title:@"首页" imageName:@"tab_shouye_baitian" selectedImageName:@"tab_shouye_baitian_hit" tabBar:tabBar1 index:0];
    
    [self setupChildViewController:vc2 title:@"论坛" imageName:@"tab_luntan_baitian" selectedImageName:@"tab_luntan_baitian_hit" tabBar:tabBar1 index:1];
    
    [self setupChildViewController:vc3 title:@"降价" imageName:@"tab_zhaoche_baitian" selectedImageName:@"tab_zhaoche_baitian_hit" tabBar:tabBar1 index:2];
    
    [self setupChildViewController:vc4 title:@"个人" imageName:@"tab_jiangjia_baitian" selectedImageName:@"tab_jiangjia_baitian_hit" tabBar:tabBar1 index:3];

    
    // 改变UITabBarItem字体颜色
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor colorWithRed:(43)/255.0f green:(177)/255.0f blue:(223)/255.0f alpha:1.0f] ,NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];

}

- (void)setupChildViewController:(UIViewController*)childVC
                           title:(NSString *)title
                       imageName:(NSString*)imageName
               selectedImageName:(NSString*)selectedImageName
                          tabBar:(UITabBar*)tabBar
                           index:(NSUInteger)index {
    
    childVC.title = title;
    UITabBarItem * item = [tabBar.items objectAtIndex:index];
    UIImage * image = [UIImage imageNamed:imageName];
    UIImage * selectedImage = [UIImage imageNamed:selectedImageName];
    
    [item setImage:[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [item setSelectedImage:[selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

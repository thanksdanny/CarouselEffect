//
//  HomeViewController.m
//  CarouselEffect
//
//  Created by Danny Ho on 3/1/16.
//  Copyright © 2016 thanksdanny. All rights reserved.
//

/*
 1/ 隐藏statusbar
 2/ 设置数据源
 3/ 调整UI
 
 */

#import "HomeViewController.h"
#import "InterestCollectionViewCell.h"

@interface HomeViewController () <UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;


@end

@implementation HomeViewController
- (NSArray *)data {
    return [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"IntrestList" ofType:@"plist"]];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [[self data] count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    InterestCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"InterestCell" forIndexPath:indexPath];
    cell.featuredImageView.image = [UIImage imageNamed:[[self data][indexPath.row] objectForKey:@"featuredImage"]];
    cell.interestTitleLabel.text = [NSString stringWithFormat:@"%@", [[self data][indexPath.row] objectForKey:@"title"]];
    
    return cell;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.collectionView.dataSource = self;
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

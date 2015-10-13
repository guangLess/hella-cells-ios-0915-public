//
//  FISHellaMasterTableViewController.m
//  
//
//  Created by Guang on 10/13/15.
//
//

#import "FISHellaMasterTableViewController.h"
#import "FISHellaDetailViewController.h"

@interface FISHellaMasterTableViewController ()

@end

@implementation FISHellaMasterTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.accessibilityIdentifier = @"Table"; // for testing 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"numberCell"forIndexPath:indexPath];
    
    
    cell.textLabel.text = [NSString stringWithFormat:@"%lu",indexPath.row];
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    FISHellaDetailViewController * dvc = segue.destinationViewController;
    NSIndexPath * indexNumber = self.tableView.indexPathForSelectedRow;
    dvc.bigNumberLable = [NSString stringWithFormat:@"%lu",indexNumber.row];

}

@end

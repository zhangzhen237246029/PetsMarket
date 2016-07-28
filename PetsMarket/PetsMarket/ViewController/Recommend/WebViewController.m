//
//  WebViewController.m
//  PetsMarket
//
//  Created by tarena46 on 16/7/27.
//  Copyright © 2016年 IOS1604GroupA. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()<UIWebViewDelegate>
@property(nonatomic)UIWebView *WebView;
@end

@implementation WebViewController


- (instancetype)initWithURL:(NSURL *)url
{
    self = [super init];
    if (self) {
        _url = url;
    }
    return self;
}



- (void)viewDidLoad {
    [super viewDidLoad];

    _WebView = [UIWebView new];
    _WebView.delegate = self;
    [self.view addSubview:_WebView];
    [_WebView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(0);
    }];
    
    [_WebView loadRequest:[NSURLRequest requestWithURL:_url]];



}
-(void)webViewDidStartLoad:(UIWebView *)webView{
    [self.view showHUD];
    
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    
    [self.view hideHUD];
}

-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    //    [self.view showWarning:@"加载失败"];
    [self.view showWarning:error.localizedDescription];
    
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

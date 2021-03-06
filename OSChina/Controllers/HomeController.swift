/**
 * Copyright (C) 2015 JianyingLi
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import UIKit

class HomeController: BaseTabBarController {
    
    var newsController     : NewsController?        // 资讯
    var postController     : PostController?        // 问答
    var tweetController    : TweetController?       // 动弹
    var discoveryController: DiscoveryController?   // 发现
    var myController       : MyController?          // 我的

    override func viewDidLoad() {
        super.viewDidLoad()
        self.newsController      = NewsController()
        self.postController      = PostController()
        self.tweetController     = TweetController()
        self.discoveryController = DiscoveryController()
        self.myController        = MyController()
        
        // 增加Tab
        self.addTab("TAB_NEWS".localized     , icon: "ic_tab_news"     , controller: self.newsController)
        self.addTab("TAB_POST".localized , icon: "ic_tab_post" , controller: self.postController)
        self.addTab("TAB_TWEET".localized    , icon: "ic_tab_tweet"    , controller: self.tweetController)
        self.addTab("TAB_DISCOVERY".localized, icon: "ic_tab_discovery", controller: self.discoveryController)
        self.addTab("TAB_MY".localized       , icon: "ic_tab_my"       , controller: self.myController)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        if (User.isLogged()) {
            // 显示未读消息数
            let noticeCount: Int = Notice.current()!.count()
            self.myController!.tabBarItem.badgeValue = noticeCount > 0 ? "\(noticeCount)" : nil
        } else {
            self.myController!.tabBarItem.badgeValue = nil
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

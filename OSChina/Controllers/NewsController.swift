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
import XLPagerTabStrip

class NewsController: XLButtonBarPagerTabStripViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "TITLE_NEWS".localized
        self.buttonBarView.backgroundColor = UIColor.grayColor()
        self.buttonBarView.selectedBar.backgroundColor=UIColor.blackColor()
        self.view.addSubview(self.buttonBarView);

        buttonBarView.registerNib(UINib(nibName: "NavTabButtonCell", bundle: nil), forCellWithReuseIdentifier: "Cell")
    }

    override func childViewControllersForPagerTabStripViewController(pagerTabStripViewController: XLPagerTabStripViewController!) -> [AnyObject]! {
        let viewCOntroller1 = NewsListController()
        let viewCOntroller2 = NewsListController()
        let viewCOntroller3 = NewsListController()
        return [viewCOntroller1,viewCOntroller2,viewCOntroller3]
    }
}

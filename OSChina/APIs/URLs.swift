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

struct URLs {
    static let baseURL: String = "http://www.oschina.net"
    // user
    static let LOGIN: String = baseURL + "/action/api/login_validate"
    static let USER_NOTICE: String = baseURL + "/action/api/user_notice"
    // news
    static let NEWS_LIST: String = baseURL + "/action/api/news_list"
    // post
    static let POST_LIST:String = baseURL + "/action/api/post_list"
    // tweet
    static let TWEET_LIST: String = baseURL + "/action/api/tweet_list"
    // message
    static let MESSAGE_LIST: String = baseURL + "/action/api/message_list"
    // event
    static let EVENT_LIST: String = baseURL + "/action/api/event_list"
    // blog
    static let BLOG_LIST: String = baseURL + "/action/api/blog_list"
}
//
//  StoryBrain.swift
//  Destini-ios14
//
//  Created by 程式猿 on 2021/2/24.
//

import Foundation


struct StoryBrain {
    
    var storyNumber = 0
    
    let stories = [
        Story(
            title: "你想成為程式設計師嗎？",
            choice1: "不想！", choice1Destination: 2,
            choice2: "我想！！", choice2Destination: 1
        ),
        Story(
            title: "你想成為前端網站設計師嗎？",
            choice1: "有點想", choice1Destination: 2,
            choice2: "我美術不太好", choice2Destination: 3
        ),
        Story(
            title: "為什麼呢？寫程式很香啊。",
            choice1: "打電動比較香", choice1Destination: 5,
            choice2: "我數學不好", choice2Destination: 4
        ),
        Story(
            title: "那你先回家買台 ipad 跟 apple pencile 練習吧",
            choice1: "回", choice1Destination: 0,
            choice2: "家", choice2Destination: 0
        ),
        Story(
            title: "哪你先回家學數學吧",
            choice1: "回", choice1Destination: 0,
            choice2: "家", choice2Destination: 0
        ),
        Story(
            title: "好吧你可以回家了",
            choice1: "回", choice1Destination: 0,
            choice2: "家", choice2Destination: 0
        )
    ]
    
    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String) {
        
        let currentStory = stories[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2 {
            storyNumber = currentStory.choice2Destination
        }
    }
    
}

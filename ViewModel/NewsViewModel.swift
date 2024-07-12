//
//  NewsViewModel.swift
//  news
//
//  Created by Muhammed Safa Ozdemir on 12.07.2024.
//

import Foundation

struct NewsTableViewModel {
    
    let newsList : [News]
    
    
    func numberOfRowsInSection () -> Int {
        return self.newsList.count
    }
    
    func newsAtIndexPath (index:Int) -> NewsViewModel {
        let news = self.newsList[index]
        return NewsViewModel(news: news)
    }
    
}

struct NewsViewModel {
    
    let news : News
    
    var title : String {
        return self.news.title
    }
    
    var story : String {
        return self.news.story
    }
    
    
}

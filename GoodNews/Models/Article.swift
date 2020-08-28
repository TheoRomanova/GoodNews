//
//  Article.swift
//  GoodNews
//
//  Created by Theodora on 8/28/20.
//  Copyright © 2020 Feodora Andryieuskaya. All rights reserved.
//

import Foundation

struct ArticlesList: Decodable {
    let articles: [Article]
}

extension ArticlesList {
    
    static var all: Resource<ArticlesList> = {
        let url = URL(string:"https://newsapi.org/v2/top-headlines?country=us&apiKey=705e236c5855460bb094293ec34ce93f" )!
        return Resource(url: url)
    }()
}

struct Article: Decodable {
    let title: String
    let description: String?
}


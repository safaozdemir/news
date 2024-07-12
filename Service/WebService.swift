//
//  WebService.swift
//  news
//
//  Created by Muhammed Safa Ozdemir on 12.07.2024.
//

import Foundation


struct WebService {
    
    func fetchNews(url : URL , completion : @escaping ([News]?) -> () ) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            }else if let data = data {
                 let newsArray = try? JSONDecoder().decode([News].self, from: data)
                
                if let newsArray = newsArray {
                    completion(newsArray)
                }
            }
        }.resume()
        
    }
    
}

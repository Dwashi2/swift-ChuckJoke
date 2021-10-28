//
//  JokeController.swift
//  ChuckJoke
//
//  Created by Daniel Washington Ignacio on 27/10/21.
//

import Foundation
import Alamofire


class JokeInfoController{
    
    var arrayJokeInfo: [JokeInfo] = []

    func getJoke(completion: @escaping (Bool, Error?) -> Void){
        
        AF.request("https://api.chucknorris.io/jokes/random").responseJSON { response in
            if response.response?.statusCode == 200 {
                if let data = response.data {
                    do {
                        
                        let result = try JSONDecoder().decode(JokeInfo.self, from: data)
                        print("ASDASDASDA")
                        //self.arrayJokeInfo = result
                        self.arrayJokeInfo.append(result)
                        print(self.arrayJokeInfo)
                        completion(true, nil)
                    }catch{
                        completion(false,error)
                    }
                }else{
                    print("deu error")
                }
                
            }
            
        }
        
    }

}

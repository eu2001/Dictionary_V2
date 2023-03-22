//
//  NetworkManager.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/20/23.
//

import Foundation
import Combine

class NetworkingManager {
    enum NetworkingError: LocalizedError {
        case badURLResponse
        case unknow
        
        var errorDescription: String? {
            switch self {
            case .badURLResponse: return "Bad response frim URL"
            case .unknow: return "Unkown Error occured"
            }
        }
    }

    static func download(url:URL) -> AnyPublisher<Data, any Error> {
       return  URLSession.shared.dataTaskPublisher(for: url)
            .subscribe(on: DispatchQueue.global(qos: .default))
            .tryMap({
                try handleURLReponse(output: $0)})
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
    
    static func handleURLReponse(output: URLSession.DataTaskPublisher.Output) throws -> Data {
        guard let response = output.response as? HTTPURLResponse, response.statusCode >= 200 && response.statusCode < 300 else { throw NetworkingError.badURLResponse}
        return output.data
    }
    
    static func handleCompletion(completion: Subscribers.Completion<Error>){
        switch completion {
        case .finished :
            break
        case .failure(let error):
            print(error.localizedDescription)
        }
    }
}

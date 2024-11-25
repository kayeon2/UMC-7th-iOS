//
//  APIClient.swift
//  UMC-iOS-Workbook
//
//  Created by 선가연 on 11/26/24.
//

import Foundation
import Alamofire

final class APIClient {
    
    static let shared = APIClient()
    private let session: Session
    
    private init() {
        guard let kakaoKey = ProcessInfo.processInfo.environment["KAKAO_API_KEY"] else {
            fatalError("KAKAO_API_KEY is not set in the environment variables.")
        }
        let interceptor = AuthorizationInterceptor(kakaoKey: kakaoKey)
        self.session = Session(interceptor: interceptor)
    }
    
    public func request<T: Codable>(
        _ url: String,
        method: HTTPMethod,
        parameters: Parameters? = nil,
        completion: @escaping (Result<T, Error>) -> Void) {
            session.request(url, method: method, parameters: parameters)
                .validate()
                .responseDecodable(of: T.self) { response in
                    switch response.result {
                    case .success(let value):
                        completion(.success(value))
                    case .failure(let error):
                        completion(.failure(error))
                    }
                }
        }
}

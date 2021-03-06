//
// JourneyVector.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class JourneyVector: JSONEncodable {

    public var from: String?
    public var to: String?
    public var via: String?
    public var uri: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["from"] = self.from
        nillableDictionary["to"] = self.to
        nillableDictionary["via"] = self.via
        nillableDictionary["uri"] = self.uri

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

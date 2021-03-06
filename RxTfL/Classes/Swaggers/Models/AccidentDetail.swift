//
// AccidentDetail.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class AccidentDetail: JSONEncodable {

    public var id: Int32?
    public var lat: Double?
    public var lon: Double?
    public var location: String?
    public var date: Date?
    public var severity: String?
    public var borough: String?
    public var casualties: [Casualty]?
    public var vehicles: [Vehicle]?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["lat"] = self.lat
        nillableDictionary["lon"] = self.lon
        nillableDictionary["location"] = self.location
        nillableDictionary["date"] = self.date?.encodeToJSON()
        nillableDictionary["severity"] = self.severity
        nillableDictionary["borough"] = self.borough
        nillableDictionary["casualties"] = self.casualties?.encodeToJSON()
        nillableDictionary["vehicles"] = self.vehicles?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

//
// LineStatus.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class LineStatus: JSONEncodable {

    public var id: Int32?
    public var lineId: String?
    public var statusSeverity: Int32?
    public var statusSeverityDescription: String?
    public var reason: String?
    public var created: Date?
    public var modified: Date?
    public var validityPeriods: [ValidityPeriod]?
    public var disruption: Disruption?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["lineId"] = self.lineId
        nillableDictionary["statusSeverity"] = self.statusSeverity?.encodeToJSON()
        nillableDictionary["statusSeverityDescription"] = self.statusSeverityDescription
        nillableDictionary["reason"] = self.reason
        nillableDictionary["created"] = self.created?.encodeToJSON()
        nillableDictionary["modified"] = self.modified?.encodeToJSON()
        nillableDictionary["validityPeriods"] = self.validityPeriods?.encodeToJSON()
        nillableDictionary["disruption"] = self.disruption?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

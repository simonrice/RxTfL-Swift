//
// Street.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class Street: JSONEncodable {

    /** Street name */
    public var name: String?
    /** Type of road closure. Some example values:              Open &#x3D; road is open, not blocked, not closed, not restricted. It maybe that the disruption has been moved out of the carriageway.              Partial Closure &#x3D; road is partially blocked, closed or restricted.               Full Closure &#x3D; road is fully blocked or closed. */
    public var closure: String?
    /** The direction of the disruption on the street. Some example values:              All Directions              All Approaches              Clockwise              Anti-Clockwise              Northbound              Eastbound              Southbound              Westbound              Both Directions */
    public var directions: String?
    /** Geographic description of the sections of this street that are affected. */
    public var segments: [StreetSegment]?
    /** The ID from the source system of the disruption that this street belongs to. */
    public var sourceSystemId: Int64?
    /** The key of the source system of the disruption that this street belongs to. */
    public var sourceSystemKey: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["name"] = self.name
        nillableDictionary["closure"] = self.closure
        nillableDictionary["directions"] = self.directions
        nillableDictionary["segments"] = self.segments?.encodeToJSON()
        nillableDictionary["sourceSystemId"] = self.sourceSystemId?.encodeToJSON()
        nillableDictionary["sourceSystemKey"] = self.sourceSystemKey

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

import Vapor
import FluentPostgreSQL
//import FluentMySQL

final class Acronym: Codable {
    var id: Int?
    var short: String
    var long: String
    
    init(short: String, long: String) {
        self.short = short
        self.long = long
    }
}

extension Acronym: PostgreSQLModel {}
//extension Acronym: MySQLModel {}
extension Acronym: Migration {}
extension Acronym: Content {}
extension Acronym: Parameter {}

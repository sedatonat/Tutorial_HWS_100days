import Cocoa



let employee = [
    "name": "Taylor",
    "job": "Singer"
]
print(employee["name", default: "Unknown"])
print(employee["job", default: "Unknown"])
print(employee["Sedat", default: "Unknown"])


enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}
var day = Weekday.monday
day = .friday

import Antlr4
import Foundation

do {
    let driver = Driver()
    try driver.run(args: CommandLine.arguments)
} catch let e {
    print(e)
    exit(-1)
}

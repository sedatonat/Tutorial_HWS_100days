import Cocoa

func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

print(showWelcome())

print("----------------------------")

func showWelcome2() {
    print("""
    Welcome to my app!
    By default This prints out a conversion
    chart from centimeters to inches, but you
    can also set a custom range if you want.
    """)
}

print(showWelcome2())

print("----------------------------")


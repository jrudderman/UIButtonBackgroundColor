# UIButtonBackgroundColor

Set the background color of any `UIButton`.

## Instructions

1. Download

    From the root directory of your project's Git repository, run:

        git submodule add git@github.com:acani/UIButtonBackgroundColor.git Libraries/UIButtonBackgroundColor

2. Install

    From Finder, drag the newly created directory to your project's project navigator in Xcode.

    Uncheck "Copy items if needed," select "Create groups," and uncheck all targets.

    In Xcode, remove the reference to `UIButtonBackgroundColor/.gitignore`.

    Add `UIButtonBackgroundColor.swift` to your target.

3. Use

        myButton.setBackgroundColor(UIColor.blueColor(), forState: .Normal)

Released under the [Unlicense][3].


[3]: http://unlicense.org

# Pocket Calculator Kata

The aim of this kata is to implement (most of) the features of the [Casio SL-1100TV][calculator] 10-digit calculator with "stylish & cool design". There aren't too many features, but there are many traps in the edge cases.

The UI for the calculator is the keyboard - your implementation must respond to button presses - and the display - your implementation must update a display. All test cases are expressed as a sequence of button presses and an expected display state. You must recreate the display _exactly_, and this makes some of the features much harder to get right.

This kata involves very little maths. The challenge is in simulating the internals of the calculator in a sane way while recreating the behaviour exactly. You should aim to have as little duplication of logic as possible.

The tests are all provided in the Gherkin syntax used by [Cucumber][cucumber], [SpecFlow][specflow], etc. You may write your solution in any language and test framework you like. Feel free to translate the examples to NUnit, RSpec, Python's unittest, or anything else you prefer. The examples are very simple.

## Order hints

Some are features are simpler than others, and some can be split up. Some depend on others, while some are independent. Here is one order you might approach the features, but you can do them any way you choose.

* Pocket calculator (turn on)
* Entering integers
* Integer maths
* Clear
* Changing operation
* Memory
* Entering decimals
* Decimal maths
* Backspace

A more masochistic way to start the kata would be to do as much of the entering and editing, including backspace, first. After this though, the rest should be easy.

I've tagged the examples to give an indication of which features you need for each, where there are cross-cutting concerns (eg decimals).

## Contact

This kata was designed by [Ash Moran][ashmoran] of [PatchSpace Ltd][patchspace]. If you like it or you've found problems with it, please drop me a line at [ash.moran@patchspace.co.uk](mailto:ash.moran@patchspace.co.uk). If you have a published solution I can link to it so others can see.

[calculator]: http://www.casio.co.uk/products/calculators/pocket-calculators/Product/SL-1100TV-BU-S-EH/
[cucumber]: http://cukes.info/
[specflow]: http://www.specflow.org/specflownew/
[ashmoran]: http://www.linkedin.com/in/ashmoran
[patchspace]: http://www.patchspace.co.uk/

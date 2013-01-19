# Pocket Calculator Kata

The aim of this kata is to implement (most of) the features of the [Casio SL-1100TV][calculator] 10-digit calculator with "stylish & cool design". There aren't too many features, but there are many traps for the unwary.

The UI for the calculator is the keyboard - your implementation must respond to button presses - and the display - your implementation must update a display. All test cases are expressed as a sequence of button presses and an expected display state. You must recreate the display _exactly_, and this makes some of the features much harder to get right.

This kata involves very little maths. The challenge is in simulating the internals of the calculator in as sane a way as possible while recreating the behaviour exactly. You should aim to:

* name any components you design in a self-explanatory way
* have as little duplication as is reasonable
* keep any conditional logic as simple as possible

The tests are all provided in the Gherkin syntax used by [Cucumber][cucumber], [SpecFlow][specflow], etc. You may write your solution in any language and test framework you like. Feel free to translate the examples to NUnit, RSpec, Python's unittest, or anything else you prefer. The examples are very simple.

If you'd like to have one of the calculators handy, you can get them from [Amazon][amazon] for not much money. Some colours are cheaper than others. I had more than one WTF?! moment designing this kata, and it can be entertaining to see how a real device works.

## Order hints

Some are features are simpler than others, and some can be split up. Some depend on others, while some are independent. Here is one order you might approach the features, but you can do them any way you choose.

* Pocket calculator (turn on)
* Entering integers
* Integer maths
* Square root
* Entering negative integers
* Clear
* Changing operation
* Memory
* Entering decimals
* Decimal maths
* Entering negative decimals
* Backspace

A more masochistic way to start the kata would be to do as much of the entering and editing, including backspace, first. After this though, the rest should be easy.

I've tagged the examples to give an indication of which features you need for each, where there are cross-cutting concerns (eg decimals). These aren't exact though - let me know if you find any interesting dependencies I missed.

## Contact

This kata was designed by [Ash Moran][ashmoran] of [PatchSpace Ltd][patchspace]. If you like it or you've found problems with it, please drop me a line at [ash.moran@patchspace.co.uk](mailto:ash.moran@patchspace.co.uk). If you have a published solution I can link to it so others can see.

[calculator]: http://www.casio.co.uk/products/calculators/pocket-calculators/Product/SL-1100TV-BU-S-EH/
[cucumber]: http://cukes.info/
[specflow]: http://www.specflow.org/specflownew/
[amazon]: http://www.amazon.co.uk/gp/product/B0014S9YZO/
[ashmoran]: http://www.linkedin.com/in/ashmoran
[patchspace]: http://www.patchspace.co.uk/

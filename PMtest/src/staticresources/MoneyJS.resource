var value = accounting.unformat(someNumber); // clean up number (eg. user input)
var target = "GBP"; // or some user input
var convertedValue = fx(value).from("USD").to(target);

accounting.formatMoney(convertedValue, {
	symbol: target,
	format: "%v %s"
}); // eg. "53,180.08 GBP"
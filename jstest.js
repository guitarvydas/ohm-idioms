function jstest () {
return (function (a) {
return (function (b) {
return (function (c) {
return (a + (b + c));
});
});
})
}
console.log (jstest()(3)(4)(5));

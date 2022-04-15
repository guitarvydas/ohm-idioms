
// function parseTreeToString (a) {
//     console.log (`ptts 0 ${a}`);
//     if (Array.isArray (a)) {
// 	console.log (`ptts 1`);
// 	var r = "";
// 	a.forEach (x => { r = r + parseTreeToString (x) });
// 	console.log (` ptts r=${r}`);
// 	return '[' +  parseTreeToString (r) + ']';
//     } else {
// 	console.log (`ptts 2 ${a}`);
// 	return a.toString ();
//     }
// }

function parseTreeToString (a) {
    if (Array.isArray (a)) {
	var r = "";
	a.forEach (x => { r = r + parseTreeToString (x) + ' '});
	return '[' +  parseTreeToString (r.trim ()) + ']';
    } else {
	return a.toString ();
    }
}

console.log (parseTreeToString ('v'));
var z = [ 'x' , 'y' ];
console.log (parseTreeToString (z));
var y = [ 'a' , ['d', 'e', 'f'], 'c'];
console.log (parseTreeToString (y));

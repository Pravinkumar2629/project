/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function(){
$('#aadhaarNumber').blur(function(){
   var num = $('#aadhaarNumber').val();
   $('#ButtonRegister').attr('disabled',false);
   $('#errorMsg').html("");
    if(!checkUID(num)){
        $('#ButtonRegister').attr('disabled','disabled');
        $('#errorMsg').html(" **Invalid aadhar number");
    }
});    
});

   
function checkUID(uid) {
/*e.preventDefault();*/

/*console.log(uid);*/
if (uid.length !== 12) {
return false;
}

var Verhoeff = {
"d": [[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
[1, 2, 3, 4, 0, 6, 7, 8, 9, 5],
[2, 3, 4, 0, 1, 7, 8, 9, 5, 6],
[3, 4, 0, 1, 2, 8, 9, 5, 6, 7],
[4, 0, 1, 2, 3, 9, 5, 6, 7, 8],
[5, 9, 8, 7, 6, 0, 4, 3, 2, 1],
[6, 5, 9, 8, 7, 1, 0, 4, 3, 2],
[7, 6, 5, 9, 8, 2, 1, 0, 4, 3],
[8, 7, 6, 5, 9, 3, 2, 1, 0, 4],
[9, 8, 7, 6, 5, 4, 3, 2, 1, 0]],
"p": [[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
[1, 5, 7, 6, 2, 8, 3, 0, 9, 4],
[5, 8, 0, 3, 7, 9, 6, 1, 4, 2],
[8, 9, 1, 6, 0, 4, 3, 5, 2, 7],
[9, 4, 5, 3, 1, 2, 6, 8, 7, 0],
[4, 2, 8, 6, 5, 7, 3, 9, 0, 1],
[2, 7, 9, 3, 8, 0, 6, 4, 1, 5],
[7, 0, 4, 6, 9, 1, 3, 2, 5, 8]],
"j": [0, 4, 3, 2, 1, 5, 6, 7, 8, 9],
"check": function (str) {
var c = 0;
str.replace(/\D+/g, "").split("").reverse().join("").replace(/[\d]/g, function (u, i) {
c = Verhoeff.d[c][Verhoeff.p[i % 8][parseInt(u, 10)]];
});
return c;

},
"get": function (str) {

var c = 0;
str.replace(/\D+/g, "").split("").reverse().join("").replace(/[\d]/g, function (u, i) {
c = Verhoeff.d[c][Verhoeff.p[(i + 1) % 8][parseInt(u, 10)]];
});
return Verhoeff.j[c];
}
};

String.prototype.verhoeffCheck = (function () {
var d = [[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
[1, 2, 3, 4, 0, 6, 7, 8, 9, 5],
[2, 3, 4, 0, 1, 7, 8, 9, 5, 6],
[3, 4, 0, 1, 2, 8, 9, 5, 6, 7],
[4, 0, 1, 2, 3, 9, 5, 6, 7, 8],
[5, 9, 8, 7, 6, 0, 4, 3, 2, 1],
[6, 5, 9, 8, 7, 1, 0, 4, 3, 2],
[7, 6, 5, 9, 8, 2, 1, 0, 4, 3],
[8, 7, 6, 5, 9, 3, 2, 1, 0, 4],
[9, 8, 7, 6, 5, 4, 3, 2, 1, 0]];
var p = [[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
[1, 5, 7, 6, 2, 8, 3, 0, 9, 4],
[5, 8, 0, 3, 7, 9, 6, 1, 4, 2],
[8, 9, 1, 6, 0, 4, 3, 5, 2, 7],
[9, 4, 5, 3, 1, 2, 6, 8, 7, 0],
[4, 2, 8, 6, 5, 7, 3, 9, 0, 1],
[2, 7, 9, 3, 8, 0, 6, 4, 1, 5],
[7, 0, 4, 6, 9, 1, 3, 2, 5, 8]];

return function () {
var c = 0;
this.replace(/\D+/g, "").split("").reverse().join("").replace(/[\d]/g, function (u, i) {
c = d[c][p[i % 8][parseInt(u, 10)]];
});
return (c === 0);
};
})();

if (Verhoeff['check'](uid) === 0) {
/*return true;*/
return true;
} else {
/*return false;*/
return false;
}
}
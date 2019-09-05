

function rgbToHexString(red, green, blue) {
    var str = "#";

    // convert red
    if(red < 16) str += '0';
    str += red.toString(16);

    // convert green
    if (green < 16) str+='0';
    str += green.toString(16);

    // convert blue
    if (blue < 16) str+='0';
    str += blue.toString(16);

    // return result
    return str;
}


/** In den folgenden Funktionen werden die übergebenen Farbwerte temporär
  * in die Hilfsvariable "helper" gespeichert. Wenn die Markierung "compflag"
  * mit true übergeben wird, wird der Hilfswert von 255 abgezogen um mit dem
  * Komplementär weiter zu arbeiten, ist "compflag" false, wird mit dem Orignal-
  * Farbwert weiter gearbeitet.
  *
  **/
function setRInHexString(red, hexString, compflag) {
    var str = "#";
    var helper = red;
    if (compflag)helper=255-helper;
    // convert red
    if(helper < 16) str += '0';
    str += helper.toString(16);

    // add rest of old string
    str += hexString.substring(3);

    // return result
    return str;
}
function setGInHexString(green, hexString, compflag){
    var str = "#";
    str += hexString.substring(1,3);
    var helper = green;
    if (compflag)helper=255-helper;
    if (helper < 16) str+= '0';
    str += helper.toString(16);
    str += hexString.substring(5);
    return str;
}
function setBInHexString(blue, hexString, compflag){
    var str="#";
    str += hexString.substring(1,5);
    var helper = blue;
    if (compflag)helper = 255-helper;
    if (helper < 16)str+='0';
    str+=helper.toString(16);
    return str;
}


import QtQuick 2.4

import "colorHelper.js" as ColorHelper

ColorCoachMainForm {

    colorHexViewSelectedColor.colorHexString: "#000000"
    colorHexViewSelectedColor_comp.colorHexString: "#000000"

    // reacting on changes in RGB-Chooser
    // NEU
    rgbChooser.onRedChanged: {
        colorHexViewSelectedColor.colorHexString = ColorHelper.setRInHexString(rgbChooser.red, colorHexViewSelectedColor.colorHexString,false);
        colorHexViewSelectedColor_comp.colorHexString = ColorHelper.setRInHexString(rgbChooser.red, colorHexViewSelectedColor_comp.colorHexString,true);
    }
    rgbChooser.onBlueChanged: {
        colorHexViewSelectedColor.colorHexString = ColorHelper.setBInHexString(rgbChooser.blue, colorHexViewSelectedColor.colorHexString,false);
        colorHexViewSelectedColor_comp.colorHexString = ColorHelper.setBInHexString(rgbChooser.blue, colorHexViewSelectedColor_comp.colorHexString, true);
    }
    rgbChooser.onGreenChanged: {
        colorHexViewSelectedColor.colorHexString = ColorHelper.setGInHexString(rgbChooser.green, colorHexViewSelectedColor.colorHexString,false);
        colorHexViewSelectedColor_comp.colorHexString = ColorHelper.setGInHexString(rgbChooser.green, colorHexViewSelectedColor_comp.colorHexString, true);
    }
    rgbChooser_comp.onGreenChanged: {
        colorHexViewSelectedColor_comp.colorHexString = ColorHelper.setGInHexString(rgbChooser_comp.green, colorHexViewSelectedColor_comp.colorHexString,false);
        colorHexViewSelectedColor.colorHexString = ColorHelper.setGInHexString(rgbChooser_comp.green, colorHexViewSelectedColor.colorHexString,true);
    }
    rgbChooser_comp.onBlueChanged: {
        colorHexViewSelectedColor_comp.colorHexString = ColorHelper.setBInHexString(rgbChooser_comp.blue, colorHexViewSelectedColor_comp.colorHexString,false);
        colorHexViewSelectedColor.colorHexString = ColorHelper.setBInHexString(rgbChooser_comp.blue, colorHexViewSelectedColor.colorHexString, true);
    }
    rgbChooser_comp.onRedChanged: {
        colorHexViewSelectedColor_comp.colorHexString = ColorHelper.setRInHexString(rgbChooser_comp.red, colorHexViewSelectedColor_comp.colorHexString,false);
        colorHexViewSelectedColor.colorHexString = ColorHelper.setRInHexString(rgbChooser_comp.red, colorHexViewSelectedColor.colorHexString, true);
    }


    // reacting on changes in ColorHexView
    colorHexViewSelectedColor.onColorHexStringChanged: {
        if(colorHexViewSelectedColor.colorHexString.length != 7 || colorHexViewSelectedColor.colorHexString[0] != '#') return;

        var r = parseInt(colorHexViewSelectedColor.colorHexString.substring(1,3) , 16);
        if(r >= 0 && r <= 255) rgbChooser.red = r;

        // TODO: green, blue
        var g = parseInt(colorHexViewSelectedColor.colorHexString.substring(3,5),16);
        if (g >= 0 && g <= 255) rgbChooser.green = g;

        var b = parseInt(colorHexViewSelectedColor.colorHexString.substring(5,7),16);
        if (b >= 0 && b <= 255) rgbChooser.blue = b;
    }
    colorHexViewSelectedColor_comp.onColorHexStringChanged: {
        if(colorHexViewSelectedColor_comp.colorHexString.length != 7 || colorHexViewSelectedColor_comp.colorHexString[0] != '#') return;

        var r = parseInt(colorHexViewSelectedColor_comp.colorHexString.substring(1,3) , 16);
        if(r >= 0 && r <= 255) rgbChooser_comp.red = r;

        // TODO: green, blue
        var g = parseInt(colorHexViewSelectedColor_comp.colorHexString.substring(3,5),16);
        if (g >= 0 && g <= 255) rgbChooser_comp.green = g;

        var b = parseInt(colorHexViewSelectedColor_comp.colorHexString.substring(5,7),16);
        if (b >= 0 && b <= 255) rgbChooser_comp.blue = b;

    }

}


#!/bin/bash

c=(red blue green yellow orange brown cyan khakhi)
i=0
for name in signin signup servicesignup resetpassword forgotusername captcha navigation express; do
    rm $name.properties
    rm $name-dev.properties
    rm $name-hackday.properties
    rm $name-test.properties

    touch $name.properties
    touch $name-dev.properties
    touch $name-hackday.properties
    touch $name-test.properties

    echo -e "$name.name=$name\n$name.colour=${c[i]}\ncommon.globalColour=red" > $name.properties
    echo -e "$name.name=$name-dev\n$name.colour=${c[i]}\ncommon.globalColour=red" > $name-dev.properties
    echo -e "$name.name=$name-hackday\n$name.colour=${c[i]}\ncommon.globalColour=red" > $name-hackday.properties
    echo -e  "$name.name=$name-test\n$name.colour=${c[i]}\ncommon.globalColour=red" > $name-test.properties

    let "i++"

done


//checking user input of amount 
function CheckAmount(sender) {
    if (!isNaN(sender.value)) {
        if (sender.value > 25000)
            sender.value = 25000;
        if (sender.value < 0)
            sender.value = 0;
    } else {
        sender.value = 0;
    }

}

// checking user input of months
function CheckMonths(sender) {
    if (!isNaN(sender.value)) {
        if (sender.value > 120)
            sender.value = 120;
        if (sender.value < 0)
            sender.value = 0;
    } else {
        sender.value = 0;
    }
}

// checking user input of APR 
function CheckAPR(sender) {
    if (!isNaN(sender.value)) {
        if (sender.value > 100)
            sender.value = 100;
        if (sender.value < 0)
            sender.value = 0;
    } else {
        sender.value = 0;
    }
}
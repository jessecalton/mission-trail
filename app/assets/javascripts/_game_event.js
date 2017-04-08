var game = new Phaser.Game(1200, 800, Phaser.CANVAS, 'phaser-example', {preload: preload, create: create });

console.log(gon.gametext)

// gon.gametext
// gon.gameimage
// gon.fomo
// gon.battery
// gon.time
// gon.money
// gon.option1
// gon.option2
// gon.option3
// gon.option4


var content = [
    gon.gametext

];

var line = [];

var wordIndex = 0;
var lineIndex = 0;

var wordDelay = 120;
var lineDelay = 400;


function preload(){
    game.load.image('image', gon.gameimage)
    game.load.image('button', "assets/button.png" )

}


function create() {
    if (gon.option1 != null){
    option1Button = game.add.button(200, 750, 'button', option1Click, this)

    option1_text = game.add.text(240, 760, "option1", { font: "20px Arial", fill: "#FFA500" })
    }

    if (gon.option2 != null){
    option2Button = game.add.button(400, 750, 'button', option2Click, this)
    option2_text = game.add.text(440, 760, "option2", { font: "20px Arial", fill: "#FFA500" })
}
if (gon.option3 != null){
    option3Button = game.add.button(600, 750, 'button', option1Click, this)
    option3_text = game.add.text(640, 760, "option3", { font: "20px Arial", fill: "#FFA500" })
}

if (gon.option4 != null){
    option4Button = game.add.button(800, 750, 'button', option2Click, this)
    option4_text = game.add.text(840, 760, "option4", { font: "20px Arial", fill: "#FFA500" })
}

    couple = game.add.sprite(300, 0, 'image')

    fomo = game.add.text(0, 20, "FOMO:" + gon.fomo, { font: "15px Arial", fill: "#19de65" })

    battery = game.add.text(0, 40, "Battery life:" + gon.battery, { font: "15px Arial", fill: "#19de65" })

    time = game.add.text(0, 60, "Time:" + gon.time, { font: "15px Arial", fill: "#19de65" })

    money = game.add.text(0, 80, "Money:" + gon.money, { font: "15px Arial", fill: "#19de65" })

    text = game.add.text(30, 550, '', { font: "15px Arial", fill: "#19de65" });

    nextLine();


}

function option1Click() {
window.location.href = gon.option1route
}

function option2Click() {
window.location.href = "https://yahoo.com";
}

function option3Click() {
window.location.href = "https://google.com";
}

function option4Click() {
window.location.href = "https://google.com";
}

function nextLine() {

    if (lineIndex === content.length)
    {
        //  We're finished
        return;
    }

    //  Split the current line on spaces, so one word per array element
    line = content[lineIndex].split(' ');

    //  Reset the word index to zero (the first word in the line)
    wordIndex = 0;

    //  Call the 'nextWord' function once for each word in the line (line.length)
    game.time.events.repeat(wordDelay, line.length, nextWord, this);

    //  Advance to the next line
    lineIndex++;

}

function nextWord() {

    //  Add the next word onto the text string, followed by a space
    text.text = text.text.concat(line[wordIndex] + " ");

    //  Advance the word index to the next word in the line
    wordIndex++;

    //  Last word?
    if (wordIndex === line.length)
    {
        //  Add a carriage return
        text.text = text.text.concat("\n");

        //  Get the next line after the lineDelay amount of ms has elapsed
        game.time.events.add(lineDelay, nextLine, this);
    }

}

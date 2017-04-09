var game = new Phaser.Game(800, 600, Phaser.CANVAS, 'phaser-example', {preload: preload, create: create });
console.log(gon.option1route)
console.log(gon.gametext)
// these are for the menu bar
// gon.gametext
// gon.name
// gon.gameimage
// gon.fomo
// gon.battery
// gon.time
// gon.money

// these are for the options
// gon.option1
// gon.option2
// gon.option3
// gon.option4
// gon.result
// gon.option1route
// gon.option2route
// gon.option3route
// gon.option4route


var content = [
    gon.gametext

];

var line = [];

var wordIndex = 0;
var lineIndex = 0;

var wordDelay = 120;
var lineDelay = 400;


function preload(){
    game.load.spritesheet('smiles', 'assets/spritesheet.png', 170, 50, 2);

    game.load.spritesheet('player_walk', 'assets/walk.png', 44, 60, 2);

    game.load.image('image', gon.gameimage)
<<<<<<< HEAD
    game.load.image('button', "assets/button.png" )
    game.load.image('bar', "assets/bar.png")
=======
    game.load.image('button', "/assets/button.png" )
>>>>>>> 80f2c50a0f99ea3ff0b114c6e352a059461f6c5e

}


function create() {

    // smiles = game.add.sprite(10, 360, 'smiles', 10);
    // smiles.scale.set(1);
    // smiles.smoothed = false;
    // anim = smiles.animations.add('walk');
    bar = game.add.sprite(1000, 0, 'bar')

    player_walk = game.add.sprite(120, 50, 'player_walk', 5);
    player_walk.scale.set(1);
    player_walk.smoothed = false;
    anim = player_walk.animations.add('walk');
    anim.play(10, true);

    gameimage = game.add.sprite(300, 130, 'image')

    username = game.add.text(0, 0, "Name:" + gon.username, { font: "15px Arial", fill: "#19de65" })

    fomo = game.add.text(0, 20, "FOMO:" + gon.fomo, { font: "15px Arial", fill: "#19de65" })

    battery = game.add.text(0, 60, "Battery life: " + gon.battery, { font: "15px Arial", fill: "#19de65" })

    time = game.add.text(0, 80, "Time: " + gon.time, { font: "15px Arial", fill: "#19de65" })

    money = game.add.text(0, 100, "Money: " + gon.money, { font: "15px Arial", fill: "#19de65" })

    text = game.add.text(30, 550, '', { font: "15px Arial", fill: "#19de65" });

    nextLine();


}

function resultClick() {
window.location.href = gon.option1route
}

function option1Click() {
window.location.href = gon.option2route
}

function option2Click() {
window.location.href = gon.option2route;
}

function option3Click() {
window.location.href = gon.option2route;
}

function option4Click() {
window.location.href = gon.option2route;
}

function nextLine() {

    if (lineIndex === content.length)
    {
        return;
    }
    line = content[lineIndex].split(' ');
    wordIndex = 0;
    game.time.events.repeat(wordDelay, line.length, nextWord, this);
    lineIndex++;

}

function nextWord() {

    text.text = text.text.concat(line[wordIndex] + " ");

    wordIndex++;

    if (wordIndex === line.length)
    {

        text.text = text.text.concat("\n");

        game.time.events.add(lineDelay, nextLine, this);
    }

}

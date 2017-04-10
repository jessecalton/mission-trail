var game = new Phaser.Game(1400, 800, Phaser.CANVAS, 'phaser-example', {preload: preload, create: create });
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

var content = [
    gon.gametext

];

var line = [];

var wordIndex = 0;
var lineIndex = 0;

var wordDelay = 120;
var lineDelay = 400;


function preload(){

    game.load.spritesheet('smiles', '/assets/spritesheet.png', 170, 50, 2);

    game.load.spritesheet('player_walk', '/assets/walk.png', 44, 60, 2);

    game.load.image('image', gon.gameimage)

    game.load.image('bar', '/assets/bar.png')

}


function create() {

    if (gon.gametext == "Mission Trail") {
        if (gon.time <= 15) {
            bar = game.add.sprite(150, 0, 'bar')
        }
        else {
            bar = game.add.sprite(gon.time*10, 0, 'bar')
        }
    player_walk = game.add.sprite(120, 50, 'player_walk', 5);
    player_walk.scale.set(1);
    player_walk.smoothed = false;
    anim = player_walk.animations.add('walk');
    anim.play(10, true);
    }
    else {
    gameimage = game.add.sprite(300, 130, 'image')

    }
    if (gon.username != undefined) {
    username = game.add.text(0, 10, "Name: " + gon.username, { font: "15px Press Start 2P", fill: "white" });
    fomo = game.add.text(0, 35, "FOMO: " + gon.fomo, { font: "15px Press Start 2P", fill: "white" });
    battery = game.add.text(0, 60, "Battery life: " + gon.battery, { font: "15px Press Start 2P", fill: "white" });
    time = game.add.text(0, 85, "Time: " + gon.time, { font: "15px Press Start 2P", fill: "white" });
    money = game.add.text(0, 110, "Money: " + gon.money, { font: "15px Press Start 2P", fill: "white" });
    }

    text = game.add.text(30, 550, '', { font: "30px Arial", fill: "#19de65" });
    nextLine();


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

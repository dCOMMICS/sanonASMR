

const canvas = document.getElementById("canvas");
const canvasContext = canvas.getContext("2d");

const pacmanFrames = document.getElementById("animations");

const ghostFrames = document.getElementById("ghost");

let createRec = (x,y,width,height,color) =>{
canvasContext.fillStyle = color;
canvasContext.fillRect(x,y, width,height);
};

// mapp area coded
let map
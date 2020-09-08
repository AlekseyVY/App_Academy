!function(e){var t={};function o(n){if(t[n])return t[n].exports;var r=t[n]={i:n,l:!1,exports:{}};return e[n].call(r.exports,r,r.exports,o),r.l=!0,r.exports}o.m=e,o.c=t,o.d=function(e,t,n){o.o(e,t)||Object.defineProperty(e,t,{enumerable:!0,get:n})},o.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},o.t=function(e,t){if(1&t&&(e=o(e)),8&t)return e;if(4&t&&"object"==typeof e&&e&&e.__esModule)return e;var n=Object.create(null);if(o.r(n),Object.defineProperty(n,"default",{enumerable:!0,value:e}),2&t&&"string"!=typeof e)for(var r in e)o.d(n,r,function(t){return e[t]}.bind(null,r));return n},o.n=function(e){var t=e&&e.__esModule?function(){return e.default}:function(){return e};return o.d(t,"a",t),t},o.o=function(e,t){return Object.prototype.hasOwnProperty.call(e,t)},o.p="",o(o.s=0)}([function(e,t,o){const n=o(1),r=o(2);$(()=>{const e=$(".hanoi"),t=new n;new r(t,e)})},function(e,t){e.exports=class{constructor(){this.towers=[[3,2,1],[],[]]}isValidMove(e,t){const o=this.towers[e],n=this.towers[t];if(0===o.length)return!1;if(0==n.length)return!0;return o[o.length-1]<n[n.length-1]}isWon(){return 3==this.towers[2].length||3==this.towers[1].length}move(e,t){return!!this.isValidMove(e,t)&&(this.towers[t].push(this.towers[e].pop()),!0)}print(){console.log(JSON.stringify(this.towers))}promptMove(e,t){this.print(),e.question("Enter a starting tower: ",o=>{const n=parseInt(o);e.question("Enter an ending tower: ",e=>{const o=parseInt(e);t(n,o)})})}run(e,t){this.promptMove(e,(o,n)=>{this.move(o,n)||console.log("Invalid move!"),this.isWon()?(this.print(),console.log("You win!"),t()):this.run(e,t)})}}},function(e,t){class o{constructor(e,t){this.HanoiGame=e,self.HanoiGame=this.HanoiGame,this.$el=t,this.setupTowers.bind(this),this.render.bind(this),this.moveTower.bind(this),this.setupTowers(),this.moveTower()}setupTowers(){console.log(self.HanoiGame),$(this.$el).append('<ul class="hanoiContainer"></ul>');for(let e=0;e<3;e++)$(".hanoiContainer").append(`<li class="${e}"></li>`);for(let e=0;e<self.HanoiGame.towers.length;e++)for(let t=0;t<self.HanoiGame.towers[e].length;t++){let o=$("."+e);$(o).append(`<h1>${t+1}</h1>`)}}render(){}moveTower(){}}o.prototype.render=function(){$(".hanoiContainer").empty(),console.log(this),setupTowers()},o.prototype.moveTower=function(){console.log(this.HanoiGame);const e=this.HanoiGame,t=this.render;let o=[];$("li").click((function(n){if(o.push($(n.currentTarget).attr("class")),console.log(o),2===o.length){e.move(Number(o[0]),Number(o[1])),o=[],t();for(let t=0;t<e.towers.length;t++)for(let o=0;o<e.towers[t].length;o++){let e=$("."+t);$(e).append(`<h1>${o+1}</h1>`)}}}))},e.exports=o}]);
/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./src/index.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./src/asteroid.js":
/*!*************************!*\
  !*** ./src/asteroid.js ***!
  \*************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

eval("const MovingObject = __webpack_require__(/*! ./moving_object */ \"./src/moving_object.js\");\nconst Util = __webpack_require__(/*! ./utils */ \"./src/utils.js\")\n\n\nclass Asteroid extends MovingObject{\n    constructor(pos){\n        super({\n            pos,\n            vel: Util.randomVec(5),\n            radius: 30,\n            color: '#00FF00'\n        })\n    }\n}\n\n// Util.inherits(Asteroid, MovingObject)\n\n\nmodule.exports = Asteroid;\n\n//# sourceURL=webpack:///./src/asteroid.js?");

/***/ }),

/***/ "./src/game.js":
/*!*********************!*\
  !*** ./src/game.js ***!
  \*********************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

eval("const Asteroid = __webpack_require__(/*! ./asteroid */ \"./src/asteroid.js\")\n\n\nclass Game  {\n    constructor(num){\n        this.DIM_X = 800\n        this.DIM_Y = 800\n        this.NUM_ASTEROIDS = []\n        this.addAsteroids(num)\n    }\n}\n\nGame.prototype.addAsteroids = function(num){\n    for(let i = 0; i < num; i++){\n        let posX = Math.floor(Math.random() * this.DIM_X)\n        let posY = Math.floor(Math.random() * this.DIM_Y)\n        this.NUM_ASTEROIDS.push(new Asteroid({pos: [posX, posY]}))\n    }\n}\n\nGame.prototype.draw = function(ctx){\n    ctx.clearRect(0, 0, 800, 800);\n    this.NUM_ASTEROIDS.forEach((asteroid) => {\n        asteroid.draw(ctx)\n    })\n}\n\nGame.prototype.moveObjects = function(){\n    this.NUM_ASTEROIDS.forEach((asteroid) => {\n        asteroid.move()\n    })\n}\n\nmodule.exports = Game;\n\n//# sourceURL=webpack:///./src/game.js?");

/***/ }),

/***/ "./src/game_view.js":
/*!**************************!*\
  !*** ./src/game_view.js ***!
  \**************************/
/*! no static exports found */
/***/ (function(module, exports) {

eval("\n\n\nclass GameView {\n    constructor(Game, ctx){\n        this.Game = Game\n        this.ctx = ctx\n    }\n}\n// this function starts the ball rolling\nGameView.prototype.start = function(){\n    setInterval(() => {\n        this.Game.draw(this.ctx)\n    }, 100)\n    setInterval(() => {\n        this.Game.moveObjects()\n    }, 100)\n}\n\n\nmodule.exports = GameView;\n\n//# sourceURL=webpack:///./src/game_view.js?");

/***/ }),

/***/ "./src/index.js":
/*!**********************!*\
  !*** ./src/index.js ***!
  \**********************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

eval("const Util = __webpack_require__(/*! ./utils */ \"./src/utils.js\")\nconst Game = __webpack_require__(/*! ./game */ \"./src/game.js\")\nconst GameView = __webpack_require__(/*! ./game_view */ \"./src/game_view.js\")\n\n\n\nconst movObj = function(){\n    let doc = document.getElementById('game-canvas')\n    let g = new Game(10)\n    let ctx = doc.getContext('2d')\n    const gView = new GameView(g, ctx)\n    gView.start()\n}\n\nif (document.readyState === 'loading') {\n    document.addEventListener('DOMContentLoaded', movObj)\n\n} else {\n    movObj()\n}\n\n//# sourceURL=webpack:///./src/index.js?");

/***/ }),

/***/ "./src/moving_object.js":
/*!******************************!*\
  !*** ./src/moving_object.js ***!
  \******************************/
/*! no static exports found */
/***/ (function(module, exports) {

eval("class MovingObject {\n    constructor(obj){\n        this.pos = obj.pos.pos\n        this.vel = obj.vel\n        this.radius = obj.radius\n        this.color = obj.color\n    }\n}\n// draw function that takes ctx and draw shape on canvas\nMovingObject.prototype.draw = function(ctx){\n    let circle = new Path2D()\n    circle.arc(this.pos[0], this.pos[1], this.radius, 0, 2 * Math.PI)\n    ctx.fillStyle = this.color\n    ctx.fill(circle)\n}\n\nMovingObject.prototype.move = function(){\n    this.pos[0] += this.vel[0]\n    this.pos[1] += this.vel[1]\n}\n\n\nmodule.exports = MovingObject\n\n//# sourceURL=webpack:///./src/moving_object.js?");

/***/ }),

/***/ "./src/utils.js":
/*!**********************!*\
  !*** ./src/utils.js ***!
  \**********************/
/*! no static exports found */
/***/ (function(module, exports) {

eval("\nconst Util = {\n    // inheritance binding func\n    inherits(childClass, parentClass){\n        let Surrogate = function () { }\n        Surrogate.prototype = parentClass.prototype\n        childClass.prototype = new Surrogate()\n        childClass.prototype.constructor = childClass\n    }, \n    // random vector generator\n    randomVec(length) {\n        const deg = 2 * Math.PI * Math.random();\n        return Util.scale([Math.sin(deg), Math.cos(deg)], length);\n    },\n    // Scale the length of a vector by the given amount.\n    scale(vec, m) {\n        return [vec[0] * m, vec[1] * m];\n    }\n}\n\nmodule.exports = Util\n\n//# sourceURL=webpack:///./src/utils.js?");

/***/ })

/******/ });
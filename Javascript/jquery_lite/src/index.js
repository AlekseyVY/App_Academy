let DOMNodeCollection = require('./dom_node_collection')


window.$l = function(arg){
    let data = document.querySelectorAll(arg)
    let dataArr = Object.values(data)


    let DOMNodeCollection = new DOMNodeCollection(dataArr)
}

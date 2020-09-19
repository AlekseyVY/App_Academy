import { Store } from './store'

// let state = {
//     user: "Andy",
//     role: "Instructor"
// };

// const action = {
//     type: "change role",
//     newRole: "Student"
// };

// const roleReducer = (oldRole = null, action) => {
//     if (action.type === "change role") {
//         return action.newRole;
//     } else {
//         return oldRole;
//     }
// };

const reducersObject = {
    users: reducerForUsers,
    roles: reducerForRoles,
    bananas: reducerForBananas,
    entities: reducerForEntities
}



let combineReducers = function(reducersObject){
    
}
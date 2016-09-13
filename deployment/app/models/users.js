module.exports = {
  authenticate: function (username, password) {
    if (username == password) {
        return true;
    } else {
        return false;
    }
  }
};	


var users = require('../..//app/models/users');

describe("users", function() {
  it("authenticate is success.", function() {
    expect(users.authenticate("user", "user")).toBeTruthy();
  });

});

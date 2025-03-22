exports.register = function () {
    this.loginfo("Loaded OK response plugin");
};

exports.hook_data = function (next, connection) {
    connection.transaction.parse_body = true;
    next();
};

exports.hook_queue = function (next, connection) {
    this.loginfo("Received an email, responding with OK.");
    return next(OK, "OK");
};
const mysrdemo = function (srv) {
    srv.on("myfoobar", function (req, res) {
        return "Hello World" + req.data.msg;
    })
};
module.exports = mysrdemo;

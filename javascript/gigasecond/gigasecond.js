var Gigasecond = function (date) {
  this.startDate = date;
  this.date = function () {
    return new Date(this.startDate.getTime() + 1000000000000);
  };
};

module.exports = Gigasecond;

function fn() {
  var env = karate.env;
  karate.log("karate.env:", env);

  var config = {
    baseUrl: "https://automationexercise.com/api",
  };

  return config;
}

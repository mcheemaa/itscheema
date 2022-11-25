const { defineConfig } = require("@vue/cli-service");
module.exports = defineConfig({
  transpileDependencies: true,
});
module.exports = {
  outputDir: "../public",
  indexPath: "../app/views/general/index.html.erb"
};

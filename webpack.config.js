const path = require("path");
const MiniCssExtractPlugin = require("mini-css-extract-plugin");
const FixStyleOnlyEntriesPlugin = require("webpack-fix-style-only-entries");

const jsConfig = {
  mode: "development",
  entry: {
    app: "./app/assets/js/script.js",
  },
  output: {
    path: path.resolve(__dirname, "./app/assets/dist/js"),
    filename: "[name].js",
  },
  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        use: {
          loader: "babel-loader",
          options: {
            presets: ["@babel/preset-env"],
          },
        },
      },
    ],
  },
};

const tsConfig = {
  mode: "development",
  entry: {
    ts: "./app/assets/typescript/typescript.ts",
  },
  output: {
    path: path.resolve(__dirname, "./app/assets/dist/ts"),
    filename: "[name].js",
  },
  module: {
    rules: [
      {
        test: /\.ts$/,
        exclude: /node_modules/,
        use: "ts-loader",
      },
    ],
  },
};

const scssConfig = {
  mode: "development",
  entry: {
    style: "./app/assets/sass/style.scss",
  },
  output: {
    path: path.resolve(__dirname, "./app/assets/dist/css"),
  },
  module: {
    rules: [
      {
        test: /\.s[ac]ss$/i,
        use: [MiniCssExtractPlugin.loader, "css-loader", "sass-loader"],
      },
    ],
  },
  plugins: [
    new MiniCssExtractPlugin({
      filename: "[name].css",
    }),
    new FixStyleOnlyEntriesPlugin(),
  ],
};

module.exports = [jsConfig, tsConfig, scssConfig];

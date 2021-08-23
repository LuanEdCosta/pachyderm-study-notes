const fs = require("fs");
const path = require("path");

const fileContent = fs.readFileSync(
  path.resolve(process.cwd(), "pfs", "data", "text.txt"),
  { encoding: "utf-8" }
);

const newFileContent = fileContent.replace(new RegExp("#", "g"), "");

fs.writeFileSync(
  path.resolve(process.cwd(), "pfs", "out", "modified.txt"),
  newFileContent
);

const fs = require("fs");
const path = require("path");

const fileContent = fs.readFileSync(
  path.resolve(process.cwd(), "pfs", "clean", "modified.txt"),
  { encoding: "utf-8" }
);

fs.writeFileSync(
  path.resolve(process.cwd(), "pfs", "out", "markdown.md"),
  fileContent
);

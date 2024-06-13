const express = require("express");
const app = express();

const PORT = process.env.PORT || 8000;

app.get("/", (req, res) => {
  return res.json({ message: "Hey, I am in container" });
});

app.listen(PORT, () => console.log(`SERVER Started on PORT:${PORT}`));

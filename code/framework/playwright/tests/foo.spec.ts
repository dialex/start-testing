const { webkit } = require("playwright");

(async () => {
  const browser = await webkit.launch();
  const page = await browser.newPage();
  await page.goto("http://whatsmyuseragent.org/");
  await page.screenshot({ path: `results/example.png` });
  await browser.close();
})();

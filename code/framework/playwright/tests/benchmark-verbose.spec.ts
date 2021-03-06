const { chromium } = require("playwright");

const AMAZON_HOME = "https://amazon.com/";

describe("Amazon", function () {
  // ########### SETUP ###########
  beforeAll(async () => {
    browser = await chromium.launch();
  });
  afterAll(async () => {
    await browser.close();
  });
  beforeEach(async () => {
    context = await browser.newContext();
    page = await context.newPage();
  });
  afterEach(async () => {
    await context.close();
    await page.close();
  });
  // #############################

  test("should be online", async () => {
    await page.goto(AMAZON_HOME);
    expect(page).not.toBeNull();
  });

  test("should be online", async () => {
    await page.goto(AMAZON_HOME);
    expect(page).not.toBeNull();
  });

  test("should be online", async () => {
    await page.goto(AMAZON_HOME);
    expect(page).not.toBeNull();
  });

  test("should be online", async () => {
    await page.goto(AMAZON_HOME);
    expect(page).not.toBeNull();
  });

  test("should be online", async () => {
    await page.goto(AMAZON_HOME);
    expect(page).not.toBeNull();
  });

  test("should be online", async () => {
    await page.goto(AMAZON_HOME);
    expect(page).not.toBeNull();
  });
});

//8s to run 6 tests

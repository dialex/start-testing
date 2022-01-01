const { chromium } = require("playwright");
const { test, expect } = require("@playwright/test");

const AMAZON_HOME = "https://amazon.com/";

test.describe("Amazon", function () {
  let browser, page, context;

  test.beforeAll(async () => {
    browser = await chromium.launch();
    context = await browser.newContext();
    page = await context.newPage();
  });

  test.afterAll(async () => {
    await browser.close();
  });

  test("should be online", async () => {
    await page.goto(AMAZON_HOME);
    expect(page).not.toBeNull();
  });

  test("should render the UI", async () => {
    await page.goto(AMAZON_HOME);
    await expect(page).toHaveTitle(/Amazon.+/);
    await expect(page.locator("#twotabsearchtextbox")).toBeVisible();
    await expect(page.locator("#nav-search-dropdown-card")).toHaveText(/Departments/); // ! only worked with regex
    await expect(page.locator("#nav-tools")).toHaveText(/Cart/);
  });
});

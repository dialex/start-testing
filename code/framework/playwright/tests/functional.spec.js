const { chromium } = require("playwright");
const { test, expect } = require("@playwright/test");

const AMAZON_HOME = "https://amazon.com/";

test.describe("Users on Amazon store", function () {
  const searchTerm = "Explore It testing";
  const searchFull = "Explore It!: Reduce Risk and Increase Confidence with Exploratory Testing";

  let browser, page, context;

  test.beforeAll(async () => {
    browser = await chromium.launch();
    context = await browser.newContext();
    page = await context.newPage();
  });

  test.afterAll(async () => {
    await browser.close();
  });

  test("should search for product", async () => {
    // ARRANGE
    await page.goto(AMAZON_HOME);

    // ACT
    await page.fill('[aria-label="Search"]', searchTerm);
    await page.keyboard.press("Enter");
    await page.waitForNavigation(); // without it I get "page.$$: Protocol error: Cannot find context with specified id"

    // ASSERT
    const results = await page.$$('div[data-component-type="s-search-result"]');
    await expect(results.length).toBeGreaterThan(0);
    const firstResult = await results[0].innerText();
    await expect(firstResult).toContain("Reduce Risk and Increase Confidence");
    await expect(firstResult).toContain("by Elisabeth Hendrickson");
  });

  test("add item to cart", async () => {
    // ARRANGE
    await page.goto(AMAZON_HOME);
    await page.fill('[aria-label="Search"]', searchTerm);
    await page.keyboard.press("Enter");
    await page.waitForNavigation();

    // ACT
    await page.click(`text=${searchFull}`);
    await expect(page.locator("#add-to-cart-button")).toBeVisible();
    await page.click("#add-to-cart-button");

    // ASSERT
    await expect(page).toHaveSelector("text=1 Cart");
  });
});

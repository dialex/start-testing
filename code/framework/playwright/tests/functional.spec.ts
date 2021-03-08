const AMAZON_HOME = "https://amazon.com/";

describe("Users on Amazon store", function () {
  const searchTerm = "Explore It testing";
  const searchFull =
    "Explore It!: Reduce Risk and Increase Confidence with Exploratory Testing";

  it("should search for product", async () => {
    // ARRANGE
    await page.goto(AMAZON_HOME);

    // ACT
    await page.fill('[aria-label="Search"]', searchTerm);
    await page.keyboard.press("Enter");
    await page.waitForNavigation();

    // ASSERT
    const results = await page.$$('div[data-component-type="s-search-result"]');
    expect(results.length).toBeGreaterThan(0);
    const firstResult = await results[0].innerText();
    expect(firstResult).toContain("Reduce Risk and Increase Confidence");
    expect(firstResult).toContain("by Elisabeth Hendrickson");
  });

  it("add item to cart", async () => {
    // ARRANGE
    await page.goto(AMAZON_HOME);
    await page.fill('[aria-label="Search"]', searchTerm);
    await page.keyboard.press("Enter");
    await page.waitForNavigation();

    // ACT
    await page.click(`text=${searchFull}`);
    await page.click("text=Add to Cart");

    // ASSERT
    await expect(page).toHaveSelector("text=1 Cart");
  });
});

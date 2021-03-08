const AMAZON_HOME = "https://amazon.com/";

describe("Users on Amazon store", function () {
  const searchTerm = "Explore It";

  it("should search for product", async () => {
    // ARRANGE
    const searchTermEncoded = searchTerm.replace(/ /g, "+");
    await page.goto(AMAZON_HOME);

    // ACT
    await page.fill('[aria-label="Search"]', searchTerm);
    await page.keyboard.press("Enter");
    await page.waitForSelector('div[data-component-type="s-search-result"]');

    // ASSERT
    const results = await page.$$('div[data-component-type="s-search-result"]');
    expect(results.length).toBeGreaterThan(0);
    const firstResult = await results[0].innerText();
    expect(firstResult).toContain("Reduce Risk and Increase Confidence");
    expect(firstResult).toContain("by Elisabeth Hendrickson");
  });

  it.skip("add item to cart", async () => {
    //TODO
  });
});

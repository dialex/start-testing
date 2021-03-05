const AMAZON_HOME = "https://amazon.com/";

describe("Amazon", function () {
  it("should be online", async () => {
    await page.goto(AMAZON_HOME);
    expect(page).not.toBeNull();
  });

  it("should render the UI", async () => {
    await page.goto(AMAZON_HOME);
    expect(await page.title()).toContain("Amazon");
    await expect(page).toHaveSelector("#twotabsearchtextbox");
    await expect(page).toHaveText("Departments");
    await expect(page).toHaveText("Cart");
  });
});

//8s to run 6 tests

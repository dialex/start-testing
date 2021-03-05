const AMAZON_HOME = "https://amazon.com/";

describe("Amazon", function () {
  test("should be online", async () => {
    await page.goto(AMAZON_HOME);
    expect(page).not.toBeNull();
    expect(await page.title()).toContain("Amazon");
  });

  test("should be online", async () => {
    await page.goto(AMAZON_HOME);
    expect(page).not.toBeNull();
    expect(await page.title()).toContain("Amazon");
  });

  test("should be online", async () => {
    await page.goto(AMAZON_HOME);
    expect(page).not.toBeNull();
    expect(await page.title()).toContain("Amazon");
  });

  test("should be online", async () => {
    await page.goto(AMAZON_HOME);
    expect(page).not.toBeNull();
    expect(await page.title()).toContain("Amazon");
  });

  test("should be online", async () => {
    await page.goto(AMAZON_HOME);
    expect(page).not.toBeNull();
    expect(await page.title()).toContain("Amazon");
  });

  test("should be online", async () => {
    await page.goto(AMAZON_HOME);
    expect(page).not.toBeNull();
    expect(await page.title()).toContain("Amazon");
  });
});

//12.5s to run 6 tests

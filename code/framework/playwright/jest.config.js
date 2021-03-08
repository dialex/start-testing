module.exports = {
  preset: "jest-playwright-preset",
  testEnvironmentOptions: {
    "jest-playwright": {
      browsers: ["chromium", "firefox", "webkit"],
      // browsers: ["firefox"],
      exitOnPageError: false,
      launchOptions: {
        // headless: false,
      },
    },
  },
};

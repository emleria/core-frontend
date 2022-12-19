export default defineNuxtConfig({
  devServer: {
    port: parseInt(process.env.PORT) || 3000,
  },
  modules: [
    // ...
    [
      "@pinia/nuxt",
      {
        autoImports: ["defineStore"],
      },
    ],
  ],
  css: ["~/assets/css/main.css"],
  postcss: {
    plugins: {
      tailwindcss: {},
      autoprefixer: {},
    },
  },
});

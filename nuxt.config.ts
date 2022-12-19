export default defineNuxtConfig({
  devServer: {
    port: parseInt(process.env.PORT) || 3000,
  },
  css: ["~/assets/css/main.css"],
  postcss: {
    plugins: {
      tailwindcss: {},
      autoprefixer: {},
    },
  },
});

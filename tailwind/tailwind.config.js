module.exports = {
  purge: ["../elm/src/Main.elm", "../html/index.html"],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      fontSize: {
        "count-mobile": "5rem",
        "count-desktop": "10rem",
        "massive-mobile": "10rem",
        "massive-desktop": "25rem",
      },
    },
    fontFamily: {
      massive: "Londrina Solid",
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
};

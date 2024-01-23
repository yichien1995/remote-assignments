function avg(data) {
  let totalPrice = data.products
    .map((product) => product.price)
    .reduce((sum, acc) => sum + acc);
  return totalPrice / data.size;
}

console.log(
  avg({
    size: 3,
    products: [
      { name: "Product 1", price: 100 },
      { name: "Product 2", price: 700 },
      { name: "Product 3", price: 250 },
    ],
  })
); // print average price = 350

import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  Product(this.title, this.description);
}

void main() {
  runApp(
    MaterialApp(
        title: '导航数据的传递和接收',
        home: ProductList(
            products:
                List.generate(20, (i) => Product('商品$i', '这是一个商品，编号为$i')))),
  );
}

class ProductList extends StatelessWidget {
  final List<Product> products;

  ProductList({
    Key key,
    @required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('商品列表')),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(products[index].title),
              onTap: () {
                _navigate2Detail(context, products, index);
              },
            );
          },
        ));
  }

  _navigate2Detail(BuildContext context, products, index) async {
    final res = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ProductDetail(product: products[index])));
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('${res}')));
  }
}

class ProductDetail extends StatelessWidget {
  final Product product;
  const ProductDetail({Key key, @required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${product.title}详情'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Text('${product.description}'),
          RaisedButton(
              onPressed: () {
                Navigator.pop(context, '213712381293');
              },
              child: Text('返回！'))
        ],
      )),
    );
  }
}

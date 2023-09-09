import 'package:flutter/material.dart';

import 'compra_page.dart';

class ListPage extends StatefulWidget {
  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<dynamic> data = [
    {
      "id": 1,
      "nome": "Lápis",
      "preco": "5,00"
    },
    {
      "id": 2,
      "nome": "Borracha",
      "preco": "5,00"
    },
    {
      "id": 1,
      "nome": "Caneta",
      "preco": "15,00"
    },
    {
      "id": 1,
      "nome": "Régua",
      "preco": "15,00"
    },
    {
      "id": 1,
      "nome": "Tesoura",
      "preco": "10,00"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LISTA DE PRODUTOS',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('LISTA DE PRODUTOS'),
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            final item = data[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CompraPage(produto: item),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['nome'],
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          item['preco'],
                          style: const TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
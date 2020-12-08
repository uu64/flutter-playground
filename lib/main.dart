// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      home: RandomWords(),
    );
  }
}
class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  String _label = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: Center(
        child: Text('$_label'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _reload,
        label: Text('Reload'),
        icon: Text('\u{1F37A}'),
      ),
    );
  }

  void _reload() {
    final _wordPair = WordPair.random();
    setState(() {
      _label = _wordPair.asPascalCase;
    });
  }
}

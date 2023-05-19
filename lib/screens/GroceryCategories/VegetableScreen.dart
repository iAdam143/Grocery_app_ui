import 'package:flutter/material.dart';
import 'package:grocery_app_ui/CustomComponenets/SearchBar.dart';
import '../../CustomComponenets/CustomGridView.dart';
import '../../lists/listData.dart';

class VegetablesScreen extends StatefulWidget {
  @override
  _VegetablesScreenState createState() => _VegetablesScreenState();
}

class _VegetablesScreenState extends State<VegetablesScreen> {
  bool _showSearchBar = false;
  final _searchFocusNode = FocusNode();

  void _toggleSearchBar() {
    setState(() {
      _showSearchBar = !_showSearchBar;
      if (_showSearchBar) {
        FocusScope.of(context).requestFocus(_searchFocusNode);
      } else {
        _searchFocusNode.unfocus();
      }
    });
  }

  @override
  void dispose() {
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_showSearchBar) {
          setState(() {
            _showSearchBar = false;
            _searchFocusNode.unfocus();
          });
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              buildAppBar2(context),
              Expanded(
                child: buildCustomGridView(
                  context,
                  itemImages,
                  itemTitles,
                  priceperkg,
                  description,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar2(BuildContext context) {
    final double searchBarHeight = _showSearchBar
        ? MediaQuery.of(context).size.height * 0.1
        : kToolbarHeight;

    return AppBar(
      leading: _showSearchBar
          ? null
          : IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.black,
                size: 12,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
      backgroundColor: Colors.white,
      elevation: 0,
      flexibleSpace: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: searchBarHeight,
            child: _showSearchBar ? Search_Bar() : const SizedBox(),
          ),
        ],
      ),
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: _showSearchBar
          ? null
          : const Text(
              'Vegetables 🌽',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'DM Sans',
                height: 1,
              ),
            ),
      actions: _showSearchBar
          ? null
          : [
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 24,
                ),
                onPressed: _toggleSearchBar,
              ),
            ],
    );
  }
}

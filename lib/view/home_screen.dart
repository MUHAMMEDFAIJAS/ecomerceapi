import 'package:flutter/material.dart';
import 'package:machinetest/model/model.dart';
import 'package:machinetest/service/home_service.dart';
import 'package:carousel_slider/carousel_slider.dart'; 

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Model? modelData; 
  bool isLoading = true; 

  @override
  void initState() {
    super.initState();
    fetchData(); 
  }

  void fetchData() async {
    ApiService apiService =
        ApiService(); 
    Model? data = await apiService.fetchData(); 
    setState(() {
      modelData = data; 
      isLoading = false; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator()) 
          : modelData == null
              ? Center(child: Text('Failed to load data')) 
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 250,
                        width: double.infinity,
                        child: Image.network(
                          "https://swan.alisonsnewdemo.online/images/banner/1695716382_1_sH4k9mEPpOeGBInBvUUc9G2X3tXUhPE41ZH3Vp5B.webp",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Our Products',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        height:
                            200, 
                        child: modelData!.ourProducts != null &&
                                modelData!.ourProducts!.isNotEmpty
                            ? SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children:
                                      modelData!.ourProducts!.map((product) {
                                    return Card(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 8),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            product.image != null &&
                                                    product.image!.isNotEmpty
                                                ? Image.network(
                                                    "https://swan.alisonsnewdemo.online/images/product/${product.image ?? ""}",
                                                    width: 100,
                                                    height: 100,
                                                    fit: BoxFit.cover,
                                                  )
                                                : Container(
                                                    width: 20,
                                                    height: 20,
                                                    color: Colors.grey,
                                                  ),
                                            SizedBox(height: 5),
                                            Text(
                                              product.name ?? 'No Name',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              '\$${product.price ?? 'No Price'}',
                                              style: TextStyle(
                                                  color: Colors.green),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              )
                            : Center(child: Text('No Products Available')),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Carousel Products',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      CarouselSlider(
                        options: CarouselOptions(
                          height: 200,
                          autoPlay: true,
                          enlargeCenterPage: true,
                        ),
                        items: modelData!.suggestedProducts!.map((product) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Card(
                                margin: EdgeInsets.symmetric(horizontal: 8),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      product.image != null &&
                                              product.image!.isNotEmpty
                                          ? Image.network(
                                              "https://swan.alisonsnewdemo.online/images/product/${product.image ?? ""}",
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            )
                                          : Container(
                                              width: 20,
                                              height: 20,
                                              color: Colors.grey,
                                            ),
                                      SizedBox(height: 5),
                                      Text(
                                        product.name ?? 'No Name',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
    );
  }
}

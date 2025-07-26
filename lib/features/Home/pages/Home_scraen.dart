import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/Values/AppStrings%20.dart';
import 'package:flutter_application_2/features/Home/widgets/Icons.dart';
import 'package:flutter_application_2/features/Home/widgets/Product_card.dart';
import 'package:flutter_application_2/features/Home/widgets/nav_buttombar.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback onToggleTheme;
  const HomeScreen({super.key, required this.onToggleTheme});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final iconColor = theme.iconTheme.color;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              decoration: BoxDecoration(
                color: theme.appBarTheme.backgroundColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage(
                          "lib/assets/images/ant1.jpg",
                        ),
                      ),
                      IconButton(
                        onPressed: widget.onToggleTheme,
                        icon: const Icon(Icons.brightness_6),
                        color: iconColor,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(AppStrings.helloUser, style: theme.textTheme.titleLarge),
                  const SizedBox(height: 4),
                  Text(
                    AppStrings.greetingQuestion,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.textTheme.bodyMedium?.color?.withOpacity(
                        0.7,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      hintText: AppStrings.searchHint,
                      prefixIcon: const Icon(Icons.search),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),
            SizedBox(
              height: 60,
              child: Center(
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            categories[index]['icon'],
                            size: 30,
                            color: iconColor,
                          ),
                          SizedBox(height: 4),
                          Text(
                            categories[index]['label'].toString(),
                            style: theme.textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),

            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  ProductItem(
                    title: AppStrings.productName,
                    image: "lib/assets/images/image.png",
                  ),
                  SizedBox(height: 12),
                  ProductItem(
                    title: AppStrings.productName,
                    image: "lib/assets/images/ant2.jpg",
                  ),
                  SizedBox(height: 12),
                  ProductItem(
                    title: AppStrings.productName,
                    image: "lib/assets/images/ant1.jpg",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: selectedIndex,
        onItemTapped: onItemTapped,
      ),
    );
  }
}

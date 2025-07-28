import 'package:flutter/material.dart';

void main() {
  runApp(RecyclingApp());
}

class RecyclingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RecycleGuide Pro',
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
        fontFamily: 'Roboto',
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF2E7D32),
          foregroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<WasteCategory> categories = [
    WasteCategory(
      name: 'Plastic',
      icon: Icons.local_drink,
      color: Color(0xFF1976D2),
      gradient: [Color(0xFF1976D2), Color(0xFF42A5F5)],
      description: 'Bottles, containers, packaging',
      items: ['Water bottles', 'Food containers', 'Shopping bags', 'Packaging film'],
      disposalSteps: [
        'Remove all caps and lids',
        'Rinse containers to remove food residue',
        'Check recycling number (1-7) on bottom',
        'Sort by plastic type if required',
        'Place in designated recycling bin'
      ],
      tips: [
        'Look for the recycling symbol with numbers 1-7',
        'Clean containers work best for recycling',
        'Remove labels when possible',
        'Avoid putting plastic bags in regular recycling bins'
      ],
      centers: [
        'EcoCenter Downtown - 0.8 km',
        'Green Recycling Hub - 1.2 km',
        'City Waste Center - 2.1 km'
      ]
    ),
    WasteCategory(
      name: 'Paper',
      icon: Icons.description,
      color: Color(0xFFE65100),
      gradient: [Color(0xFFE65100), Color(0xFFFF9800)],
      description: 'Newspapers, cardboard, office paper',
      items: ['Newspapers', 'Magazines', 'Cardboard boxes', 'Office paper'],
      disposalSteps: [
        'Remove any plastic wrapping or tape',
        'Flatten cardboard boxes',
        'Keep paper dry and clean',
        'Separate different paper types',
        'Place in paper recycling bin'
      ],
      tips: [
        'Wet or soiled paper cannot be recycled',
        'Remove staples and paper clips when possible',
        'Shredded paper goes in clear bags',
        'Pizza boxes with grease stains go to compost'
      ],
      centers: [
        'Paper Recovery Solutions - 1.1 km',
        'Green Recycling Hub - 1.2 km',
        'Municipal Recycling Center - 1.9 km'
      ]
    ),
    WasteCategory(
      name: 'Glass',
      icon: Icons.wine_bar,
      color: Color(0xFF388E3C),
      gradient: [Color(0xFF388E3C), Color(0xFF66BB6A)],
      description: 'Bottles, jars, containers',
      items: ['Wine bottles', 'Beer bottles', 'Food jars', 'Glass containers'],
      disposalSteps: [
        'Remove caps, corks, and lids',
        'Rinse to remove food residue',
        'Sort by color if required (clear, brown, green)',
        'Handle carefully to avoid breakage',
        'Place in glass recycling container'
      ],
      tips: [
        'Broken glass should be wrapped safely',
        'Different colored glass may need separate bins',
        'Labels usually don\'t need to be removed',
        'Avoid mixing with ceramic or crystal items'
      ],
      centers: [
        'Glass Recovery Center - 1.5 km',
        'EcoCenter Downtown - 0.8 km',
        'Specialty Glass Recycling - 3.2 km'
      ]
    ),
    WasteCategory(
      name: 'Metal',
      icon: Icons.build_circle,
      color: Color(0xFF616161),
      gradient: [Color(0xFF616161), Color(0xFF9E9E9E)],
      description: 'Cans, foil, scrap metal',
      items: ['Aluminum cans', 'Steel cans', 'Aluminum foil', 'Metal lids'],
      disposalSteps: [
        'Rinse cans and containers',
        'Remove paper labels if possible',
        'Crush cans to save space',
        'Separate aluminum from steel if required',
        'Place in metal recycling bin'
      ],
      tips: [
        'Magnets can help identify steel vs aluminum',
        'Aluminum foil should be clean and balled up',
        'Paint cans need special disposal',
        'Small metal items can be put in steel cans'
      ],
      centers: [
        'Metal Recovery Solutions - 2.1 km',
        'Scrap Metal Center - 2.8 km',
        'City Waste Center - 2.1 km'
      ]
    ),
    WasteCategory(
      name: 'Electronics',
      icon: Icons.smartphone,
      color: Color(0xFF7B1FA2),
      gradient: [Color(0xFF7B1FA2), Color(0xFFBA68C8)],
      description: 'Phones, computers, batteries',
      items: ['Smartphones', 'Laptops', 'Batteries', 'Cables', 'Small appliances'],
      disposalSteps: [
        'Backup and wipe personal data',
        'Remove batteries if possible',
        'Find certified e-waste recycler',
        'Check for manufacturer take-back programs',
        'Never put in regular trash'
      ],
      tips: [
        'Many retailers offer trade-in programs',
        'Data destruction services available',
        'Batteries require special handling',
        'Some items contain valuable materials'
      ],
      centers: [
        'TechRecycle Pro - 1.7 km',
        'E-Waste Solutions - 2.3 km',
        'Best Buy Recycling - 1.9 km'
      ]
    ),
    WasteCategory(
      name: 'Organic',
      icon: Icons.eco,
      color: Color(0xFF795548),
      gradient: [Color(0xFF795548), Color(0xFFA1887F)],
      description: 'Food waste, garden trimmings',
      items: ['Food scraps', 'Yard waste', 'Coffee grounds', 'Eggshells'],
      disposalSteps: [
        'Separate from non-organic materials',
        'Use compostable bags if required',
        'Include yard trimmings and leaves',
        'Avoid meat and dairy in home compost',
        'Place in organic waste bin'
      ],
      tips: [
        'Composting reduces methane emissions',
        'Creates nutrient-rich soil amendment',
        'Check local guidelines for accepted items',
        'Consider home composting for gardens'
      ],
      centers: [
        'Community Composting - 1.3 km',
        'Green Waste Facility - 2.5 km',
        'Municipal Compost Center - 1.8 km'
      ]
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text('RecycleGuide Pro', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Color(0xFF2E7D32),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(24, 20, 24, 30),
            decoration: BoxDecoration(
              color: Color(0xFF2E7D32),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Smart Recycling Guide',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Select a category to learn proper disposal methods',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.85,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryDetailScreen(category: category),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: category.gradient,
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: category.color.withOpacity(0.3),
                            blurRadius: 12,
                            offset: Offset(0, 6),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              category.icon,
                              size: 48,
                              color: Colors.white,
                            ),
                            SizedBox(height: 12),
                            Text(
                              category.name,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              category.description,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryDetailScreen extends StatelessWidget {
  final WasteCategory category;

  CategoryDetailScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text(category.name),
        backgroundColor: category.color,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: category.gradient),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
              ),
              child: Column(
                children: [
                  Icon(category.icon, size: 80, color: Colors.white),
                  SizedBox(height: 16),
                  Text(
                    category.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    category.description,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSection('Common Items', category.items, Icons.list_alt),
                  SizedBox(height: 24),
                  _buildSection('Disposal Steps', category.disposalSteps, Icons.assignment_turned_in),
                  SizedBox(height: 24),
                  _buildSection('Pro Tips', category.tips, Icons.lightbulb_outline),
                  SizedBox(height: 24),
                  _buildSection('Nearby Centers', category.centers, Icons.location_on),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<String> items, IconData icon) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: category.color, size: 24),
                SizedBox(width: 12),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            ...items.asMap().entries.map((entry) {
              int index = entry.key;
              String item = entry.value;
              return Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: category.color.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          '${index + 1}',
                          style: TextStyle(
                            color: category.color,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        item,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700],
                          height: 1.4,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}

class WasteCategory {
  final String name;
  final IconData icon;
  final Color color;
  final List<Color> gradient;
  final String description;
  final List<String> items;
  final List<String> disposalSteps;
  final List<String> tips;
  final List<String> centers;

  WasteCategory({
    required this.name,
    required this.icon,
    required this.color,
    required this.gradient,
    required this.description,
    required this.items,
    required this.disposalSteps,
    required this.tips,
    required this.centers,
  });
}
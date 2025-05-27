import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.arrow_back),
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Section
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey[800],
                    child: Icon(Icons.person, size: 40, color: Colors.white),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'andaz kumar',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'member since Dec, 2020',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.edit, color: Colors.grey),
                ],
              ),
              SizedBox(height: 10),
              // CRED Garage Button
              Container(
                height: 80,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(Icons.directions_car, color: Colors.white),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'get to know your vehicles, inside out',
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'CRED garage',
                              style: TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                            Icon(Icons.arrow_forward, color: Colors.grey),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              // Credit Score Section
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: 'credit score • '),
                      TextSpan(
                        text: 'REFRESH AVAILABLE',
                        style: TextStyle(color: Colors.green),
                      ),
                    ],
                  ),
                ),

                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('757', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Icon(Icons.arrow_forward, color: Colors.grey),
                  ],
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text('lifetime cashback'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('₹3', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Icon(Icons.arrow_forward, color: Colors.grey),
                  ],
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text('bank balance'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('check', style: TextStyle(fontSize: 18, color: Colors.grey)),
                    Icon(Icons.arrow_forward, color: Colors.grey),
                  ],
                ),
              ),
              SizedBox(height: 16),
              // Rewards & Benefits Section
              Text(
                'YOUR REWARDS & BENEFITS',
                style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text('cashback balance'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('₹0', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Icon(Icons.arrow_forward, color: Colors.grey),
                  ],
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text('coins'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('26,46,583', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Icon(Icons.arrow_forward, color: Colors.grey),
                  ],
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text('win up to Rs 1000'),
                subtitle: Text('refer and earn', style: TextStyle(color: Colors.grey, fontSize: 14)),
                trailing: Icon(Icons.arrow_forward, color: Colors.grey),
              ),
              SizedBox(height: 16),
              // Transactions & Support Section
              Text(
                'TRANSACTIONS & SUPPORT',
                style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text('all transactions'),
                trailing: Icon(Icons.arrow_forward, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  int activeIndex = 0;// Initially set as active
  bool isTapped1 = false;
  bool isTapped2 = false;
  bool isTapped3 = false;
  bool isTapped4 = false;

  @override
  void initState() {
    super.initState();
    // Set the initial index of the first breadcrumb
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFF00ADC9),
                    radius: 25.0,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Morning,',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'John Doe',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.shopping_cart,
                    color: Color(0xFF00ADC9),
                  ),
                  SizedBox(width: 10.0),
                  Icon(
                    Icons.notifications,
                    color: Color(0xFF00ADC9),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Container(
                width: 335.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Color(0xFF00ADC9),
                    width: 1.0,
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search...',
                    hintStyle: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.grey,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Special offers',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF00ADC9),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Container(
                width: 335.0,
                height: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFF99DEE9),
                ),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          width: 20.0,
                          height: 10.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF00ADC9),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        SizedBox(width: 5.0),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          width: 10.0,
                          height: 10.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        SizedBox(width: 5.0),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          width: 10.0,
                          height: 10.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              // categories1
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF00ADC9),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.desktop_mac,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'Fashion',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF00ADC9),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.electrical_services,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'Electronics',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF00ADC9),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.gamepad,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'Gaming',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF00ADC9),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.car_rental,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'Vehicles',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              // categories2
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF00ADC9),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.local_mall,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'Beauty',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF00ADC9),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.business_center,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'Office',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF00ADC9),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.weekend,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'Furniture',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF00ADC9),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.medical_services,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'Medicine',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              // categories3
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF00ADC9),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.shopping_bag,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'Shoes',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF00ADC9),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'Jewelry',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF00ADC9),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.toys,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'Toys',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF00ADC9),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.kitchen,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'Kitchen',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //Most popular
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Most popular',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF00ADC9),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              //most popular horizontal scroll
              SizedBox(height: 20.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    // Active container with the text "All"
                    InkWell(
                      onTap: () {
                        setState(() {
                          activeIndex = 0; // Set the tapped container as active
                        });
                      },
                      child: Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                          color: activeIndex == 0 ? Color(0xFF00ADC9) : Colors.transparent,
                          borderRadius: BorderRadius.circular(40),
                          border: activeIndex == 0 ? null : Border.all(color: Color(0xFF00ADC9), width: 1.5),
                        ),
                        child: Center(
                          child: Text(
                            'All',
                            style: TextStyle(
                              color: activeIndex == 0 ? Colors.white : Color(0xFF00ADC9),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 10), // Spacing between containers

                    // Inactive container with the text "Fashion"
                    InkWell(
                      onTap: () {
                        setState(() {
                          activeIndex = 1; // Set the tapped container as active
                        });
                      },
                      child: Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                          color: activeIndex == 1 ? Color(0xFF00ADC9) : Colors.transparent,
                          borderRadius: BorderRadius.circular(40),
                          border: activeIndex == 1 ? null : Border.all(color: Color(0xFF00ADC9), width: 1.5),
                        ),
                        child: Center(
                          child: Text(
                            'Fashion',
                            style: TextStyle(
                              color: activeIndex == 1 ? Colors.white : Color(0xFF00ADC9),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 10), // Spacing between containers

                    // Inactive container with the text "Gaming"
                    InkWell(
                      onTap: () {
                        setState(() {
                          activeIndex = 2; // Set the tapped container as active
                        });
                      },
                      child: Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                          color: activeIndex == 2 ? Color(0xFF00ADC9) : Colors.transparent,
                          borderRadius: BorderRadius.circular(40),
                          border: activeIndex == 2 ? null : Border.all(color: Color(0xFF00ADC9), width: 1.5),
                        ),
                        child: Center(
                          child: Text(
                            'Gaming',
                            style: TextStyle(
                              color: activeIndex == 2 ? Colors.white : Color(0xFF00ADC9),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 10), // Spacing between containers

                    // Inactive container with the text "Vehicles"
                    InkWell(
                      onTap: () {
                        setState(() {
                          activeIndex = 3; // Set the tapped container as active
                        });
                      },
                      child: Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                          color: activeIndex == 3 ? Color(0xFF00ADC9) : Colors.transparent,
                          borderRadius: BorderRadius.circular(40),
                          border: activeIndex == 3 ? null : Border.all(color: Color(0xFF00ADC9), width: 1.5),
                        ),
                        child: Center(
                          child: Text(
                            'Vehicles',
                            style: TextStyle(
                              color: activeIndex == 3 ? Colors.white : Color(0xFF00ADC9),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 10), // Spacing between containers

                    // Inactive container with the text "Electronics"
                    InkWell(
                      onTap: () {
                        setState(() {
                          activeIndex = 4; // Set the tapped container as active
                        });
                      },
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(40),
                          border: activeIndex == 4 ? null : Border.all(color: Color(0xFF00ADC9), width: 1.5),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Center(
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                'Electronics',
                                style: TextStyle(
                                  color: activeIndex == 4 ? Colors.white : Color(0xFF00ADC9),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Container 6
                    SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                        setState(() {
                          activeIndex = 5; // Set the tapped container as active
                        });
                      },
                      child: Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                          color: activeIndex == 5 ? Color(0xFF00ADC9) : Colors.transparent,
                          borderRadius: BorderRadius.circular(40),
                          border: activeIndex == 5 ? null : Border.all(color: Color(0xFF00ADC9), width: 1.5),
                        ),
                        child: Center(
                          child: Text(
                            'Beauty',
                            style: TextStyle(
                              color: activeIndex == 5 ? Colors.white : Color(0xFF00ADC9),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 10),

// Container 7
                    InkWell(
                      onTap: () {
                        setState(() {
                          activeIndex = 6; // Set the tapped container as active
                        });
                      },
                      child: Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                          color: activeIndex == 6 ? Color(0xFF00ADC9) : Colors.transparent,
                          borderRadius: BorderRadius.circular(40),
                          border: activeIndex == 6 ? null : Border.all(color: Color(0xFF00ADC9), width: 1.5),
                        ),
                        child: Center(
                          child: Text(
                            'Office',
                            style: TextStyle(
                              color: activeIndex == 6 ? Colors.white : Color(0xFF00ADC9),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 10),

// Container 8
                    InkWell(
                      onTap: () {
                        setState(() {
                          activeIndex = 7; // Set the tapped container as active
                        });
                      },
                      child: Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                          color: activeIndex == 7 ? Color(0xFF00ADC9) : Colors.transparent,
                          borderRadius: BorderRadius.circular(40),
                          border: activeIndex == 7 ? null : Border.all(color: Color(0xFF00ADC9), width: 1.5),
                        ),
                        child: Center(
                          child: Text(
                            'Medicine',
                            style: TextStyle(
                              color: activeIndex == 7 ? Colors.white : Color(0xFF00ADC9),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 10),

// Container 9
                    InkWell(
                      onTap: () {
                        setState(() {
                          activeIndex = 8; // Set the tapped container as active
                        });
                      },
                      child: Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                          color: activeIndex == 8 ? Color(0xFF00ADC9) : Colors.transparent,
                          borderRadius: BorderRadius.circular(40),
                          border: activeIndex == 8 ? null : Border.all(color: Color(0xFF00ADC9), width: 1.5),
                        ),
                        child: Center(
                          child: Text(
                            'Furniture',
                            style: TextStyle(
                              color: activeIndex == 8 ? Colors.white : Color(0xFF00ADC9),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 10),

// Container 10
                    InkWell(
                      onTap: () {
                        setState(() {
                          activeIndex = 9; // Set the tapped container as active
                        });
                      },
                      child: Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                          color: activeIndex == 9 ? Color(0xFF00ADC9) : Colors.transparent,
                          borderRadius: BorderRadius.circular(40),
                          border: activeIndex == 9 ? null : Border.all(color: Color(0xFF00ADC9), width: 1.5),
                        ),
                        child: Center(
                          child: Text(
                            'Shoes',
                            style: TextStyle(
                              color: activeIndex == 9 ? Colors.white : Color(0xFF00ADC9),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 10),

// Container 11
                    InkWell(
                      onTap: () {
                        setState(() {
                          activeIndex = 10; // Set the tapped container as active
                        });
                      },
                      child: Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                          color: activeIndex == 10 ? Color(0xFF00ADC9) : Colors.transparent,
                          borderRadius: BorderRadius.circular(40),
                          border: activeIndex == 10 ? null : Border.all(color: Color(0xFF00ADC9), width: 1.5),
                        ),
                        child: Center(
                          child: Text(
                            'Jewelry',
                            style: TextStyle(
                              color: activeIndex == 10 ? Colors.white : Color(0xFF00ADC9),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 10),

// Container 12
                    InkWell(
                      onTap: () {
                        setState(() {
                          activeIndex = 11; // Set the tapped container as active
                        });
                      },
                      child: Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                          color: activeIndex == 11 ? Color(0xFF00ADC9) : Colors.transparent,
                          borderRadius: BorderRadius.circular(40),
                          border: activeIndex == 11 ? null : Border.all(color: Color(0xFF00ADC9), width: 1.5),
                        ),
                        child: Center(
                          child: Text(
                            'Toys',
                            style: TextStyle(
                              color: activeIndex == 11 ? Colors.white : Color(0xFF00ADC9),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 10),

// Container 13
                    InkWell(
                      onTap: () {
                        setState(() {
                          activeIndex = 12; // Set the tapped container as active
                        });
                      },
                      child: Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                          color: activeIndex == 12 ? Color(0xFF00ADC9) : Colors.transparent,
                          borderRadius: BorderRadius.circular(40),
                          border: activeIndex == 12 ? null : Border.all(color: Color(0xFF00ADC9), width: 1.5),
                        ),
                        child: Center(
                          child: Text(
                            'Kitchen',
                            style: TextStyle(
                              color: activeIndex == 12 ? Colors.white : Color(0xFF00ADC9),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

// Most Popular Image Containers
              SizedBox(height: 20),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 160,
                                height: 166,
                                decoration: BoxDecoration(
                                  color: Color(0xFF99DEE9),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text("Image Container"),
                                ),
                              ),
                              Positioned(
                                top: 10,
                                right: 10,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      // Toggle the tapped state
                                      isTapped1 = !isTapped1;
                                    });
                                  },
                                  child: Icon(
                                    Icons.favorite,
                                    color: isTapped1 ? Colors.red : Colors.white,
                                    size: 24,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Shoes",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Ksh 3,500",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 160,
                                height: 166,
                                decoration: BoxDecoration(
                                  color: Color(0xFF99DEE9),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text("Image Container"),
                                ),
                              ),
                              Positioned(
                                top: 10,
                                right: 10,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      // Toggle the tapped state
                                      isTapped2 = !isTapped2;
                                    });
                                  },
                                  child: Icon(
                                    Icons.favorite,
                                    color: isTapped2 ? Colors.red : Colors.white,
                                    size: 24,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Shoes",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Ksh 3,500",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 160,
                                height: 166,
                                decoration: BoxDecoration(
                                  color: Color(0xFF99DEE9),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text("Image Container"),
                                ),
                              ),
                              Positioned(
                                top: 10,
                                right: 10,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      // Toggle the tapped state
                                      isTapped3 = !isTapped3;
                                    });
                                  },
                                  child: Icon(
                                    Icons.favorite,
                                    color: isTapped3 ? Colors.red : Colors.white,
                                    size: 24,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Shoes",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Ksh 3,500",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 160,
                                height: 166,
                                decoration: BoxDecoration(
                                  color: Color(0xFF99DEE9),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text("Image Container"),
                                ),
                              ),
                              Positioned(
                                top: 10,
                                right: 10,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      // Toggle the tapped state
                                      isTapped4 = !isTapped4;
                                    });
                                  },
                                  child: Icon(
                                    Icons.favorite,
                                    color: isTapped4 ? Colors.red : Colors.white,
                                    size: 24,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Shoes",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Ksh 3,500",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Ad Banner
              SizedBox(height: 20),
              Container(
                width: 370,
                height: 170,
                decoration: BoxDecoration(
                  color: Color(0xFF99DEE9),
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Advertising Image",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              //Shops Row
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shops',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF00ADC9),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
// Recommended shops horizontal scroll
              SizedBox(height: 20.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    // Container 1
                    InkWell(
                      onTap: () {
                        setState(() {
                          activeIndex = 0; // Set the tapped container as active
                        });
                      },
                      child: Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                          color: activeIndex == 0 ? Color(0xFF00ADC9) : Colors.transparent,
                          borderRadius: BorderRadius.circular(40),
                          border: activeIndex == 0 ? null : Border.all(color: Color(0xFF00ADC9), width: 1.5),
                        ),
                        child: Center(
                          child: Text(
                            'adidas',
                            style: TextStyle(
                              color: activeIndex == 0 ? Colors.white : Color(0xFF00ADC9),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 10), // Spacing between containers

                    // Container 2
                    InkWell(
                      onTap: () {
                        setState(() {
                          activeIndex = 1; // Set the tapped container as active
                        });
                      },
                      child: Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                          color: activeIndex == 1 ? Color(0xFF00ADC9) : Colors.transparent,
                          borderRadius: BorderRadius.circular(40),
                          border: activeIndex == 1 ? null : Border.all(color: Color(0xFF00ADC9), width: 1.5),
                        ),
                        child: Center(
                          child: Text(
                            'nike',
                            style: TextStyle(
                              color: activeIndex == 1 ? Colors.white : Color(0xFF00ADC9),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 10),

                    // Container 3
                    InkWell(
                      onTap: () {
                        setState(() {
                          activeIndex = 2; // Set the tapped container as active
                        });
                      },
                      child: Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                          color: activeIndex == 2 ? Color(0xFF00ADC9) : Colors.transparent,
                          borderRadius: BorderRadius.circular(40),
                          border: activeIndex == 2 ? null : Border.all(color: Color(0xFF00ADC9), width: 1.5),
                        ),
                        child: Center(
                          child: Text(
                            'puma',
                            style: TextStyle(
                              color: activeIndex == 2 ? Colors.white : Color(0xFF00ADC9),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 10),

                    // Container 4
                    InkWell(
                      onTap: () {
                        setState(() {
                          activeIndex = 3; // Set the tapped container as active
                        });
                      },
                      child: Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                          color: activeIndex == 3 ? Color(0xFF00ADC9) : Colors.transparent,
                          borderRadius: BorderRadius.circular(40),
                          border: activeIndex == 3 ? null : Border.all(color: Color(0xFF00ADC9), width: 1.5),
                        ),
                        child: Center(
                          child: Text(
                            'uniqlo',
                            style: TextStyle(
                              color: activeIndex == 3 ? Colors.white : Color(0xFF00ADC9),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 10),

                    // Container 5
                    InkWell(
                      onTap: () {
                        setState(() {
                          activeIndex = 4; // Set the tapped container as active
                        });
                      },
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(40),
                          border: activeIndex == 4 ? null : Border.all(color: Color(0xFF00ADC9), width: 1.5),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Center(
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                'miniso',
                                style: TextStyle(
                                  color: activeIndex == 4 ? Colors.white : Color(0xFF00ADC9),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

// Recommended shops
              SizedBox(height: 20),

              SingleChildScrollView(
                padding: EdgeInsets.only(bottom: 40),
                scrollDirection: Axis.horizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only( top: 16, bottom: 8),
                      child: Text(
                        "Recommended Shops",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 160,
                                    height: 166,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF99DEE9),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text("Image Container"),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    right: 10,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          // Toggle the tapped state
                                          isTapped1 = !isTapped1;
                                        });
                                      },
                                      child: Icon(
                                        Icons.favorite,
                                        color: isTapped1 ? Colors.red : Colors.white,
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Nike",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "Store Rating: 4.5/5",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 160,
                                    height: 166,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF99DEE9),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text("Image Container"),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    right: 10,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          // Toggle the tapped state
                                          isTapped2 = !isTapped2;
                                        });
                                      },
                                      child: Icon(
                                        Icons.favorite,
                                        color: isTapped2 ? Colors.red : Colors.white,
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Adidas",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "Store Rating: 4.5/5",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 160,
                                    height: 166,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF99DEE9),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text("Image Container"),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    right: 10,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          // Toggle the tapped state
                                          isTapped3 = !isTapped3;
                                        });
                                      },
                                      child: Icon(
                                        Icons.favorite,
                                        color: isTapped3 ? Colors.red : Colors.white,
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Puma",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "Store Rating: 4.5/5",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 160,
                                    height: 166,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF99DEE9),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text("Image Container"),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    right: 10,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          // Toggle the tapped state
                                          isTapped4 = !isTapped4;
                                        });
                                      },
                                      child: Icon(
                                        Icons.favorite,
                                        color: isTapped4 ? Colors.red : Colors.white,
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Under Armour",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "Store Rating: 4.5/5",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Color(0xFF00ADC9),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedLabelStyle: TextStyle(
          fontFamily: 'Poppins',
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: 'Poppins',
        ),
      ),

    );
  }
}













//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class RegisterSPage extends StatelessWidget {
  const RegisterSPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/shops/shopreg.jpeg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Color.fromARGB(186, 42, 48, 40), BlendMode.darken),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  height: 250,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60)),
                    color: Color.fromARGB(225, 7, 7, 7),
                    gradient: RadialGradient(colors: [
                      Color.fromARGB(113, 56, 54, 54),
                      Color.fromARGB(221, 128, 121, 121),
                      Color.fromARGB(255, 81, 76, 76),
                      Color.fromARGB(239, 8, 8, 8)
                    ], center: Alignment(0.0, -1.6), focalRadius: 6.0),
                  ),
                  child: Center(
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.bottomLeft,
                          padding: const EdgeInsets.only(top: 5, left: 10),
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          height: 90,
                          width: 350,
                          child: Image.asset('assets/images/logon.png'),
                        ),
                        // ignore: avoid_unnecessary_containers
                        Container(
                          margin: const EdgeInsets.only(top: 8),
                          child: const Text(
                            'Welcome !',
                            style: TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontSize: 23.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        // ignore: avoid_unnecessary_containers
                        Container(
                          margin: const EdgeInsets.only(top: 4),
                          child: const Text(
                            'Create your virtual shop',
                            style: TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.white,
                              //height: 0.00001,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const MyRequestSForm(),
              ],
            ),
          ),
          bottomNavigationBar: GNav(
            backgroundColor: const Color.fromARGB(152, 0, 0, 0),
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: const Color.fromARGB(107, 98, 100, 98),
            padding: const EdgeInsets.all(13),
            tabMargin: const EdgeInsets.all(10),
            onTabChange: (index) {},
            tabs: const [
              GButton(
                icon: Icons.home_outlined,
                iconSize: 35,
                text: 'Home',
              ),
              GButton(
                icon: Icons.place_outlined,
                iconSize: 35,
                text: 'Location',
              ),
              // GButton(
              //   icon: Icons.favorite_border_outlined,
              //   text: 'Likes',
              // ),
              GButton(
                icon: Icons.settings_outlined,
                iconSize: 35,
                text: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyRequestSForm extends StatefulWidget {
  const MyRequestSForm({super.key});

  @override
  State<MyRequestSForm> createState() => _MyRequestSFormState();
}

class _MyRequestSFormState extends State<MyRequestSForm> {
  final _formKey = GlobalKey<FormState>();
  // ignore: non_constant_identifier_names
  final TextEditingController _Textcontroller = TextEditingController();
  // ignore: non_constant_identifier_names
  final TextEditingController _TextcontrollerR = TextEditingController();

  // show the password or not
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    var textStyle = const TextStyle(fontSize: 18, color: Colors.white);
    return Form(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color:
                        const Color.fromARGB(255, 56, 78, 56).withOpacity(0.9),
                    borderRadius: const BorderRadius.all(Radius.circular(60)),
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter shop name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      // filled: true,
                      // fillColor: const Color.fromARGB(255, 119, 158, 119)
                      //     .withOpacity(0.9),
                      contentPadding:
                          const EdgeInsets.only(top: 13, bottom: 13),
                      border: InputBorder.none,
                      // enabledBorder: OutlineInputBorder(
                      //   borderSide: const BorderSide(
                      //       width: 1, color: Color.fromARGB(255, 241, 245, 237)),
                      //   borderRadius: BorderRadius.circular(60),
                      //),
                      hintText: 'Shop Name',
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.only(right: 0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white),
                          ),
                          child: const Icon(
                            Icons.person_outline_rounded,
                            color: Color.fromARGB(255, 1, 71, 38),
                            size: 40,
                          ),
                        ),
                      ),
                      hintStyle:
                          const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color:
                        const Color.fromARGB(255, 56, 78, 56).withOpacity(0.9),
                    borderRadius: const BorderRadius.all(Radius.circular(60)),
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      // filled: true,
                      // fillColor: const Color.fromARGB(255, 119, 158, 119)
                      //     .withOpacity(0.9),
                      contentPadding:
                          const EdgeInsets.only(top: 13, bottom: 13),
                      border: InputBorder.none,
                      // enabledBorder: OutlineInputBorder(
                      //   borderSide: const BorderSide(
                      //       width: 1, color: Color.fromARGB(255, 241, 245, 237)),
                      //   borderRadius: BorderRadius.circular(60),
                      //),
                      hintText: 'Shop Email',
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.only(right: 0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white),
                          ),
                          child: const Icon(
                            Icons.email_outlined,
                            color: Color.fromARGB(255, 1, 71, 38),
                            size: 40,
                          ),
                        ),
                      ),
                      hintStyle: textStyle,
                    ),
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color:
                        const Color.fromARGB(255, 56, 78, 56).withOpacity(0.9),
                    borderRadius: const BorderRadius.all(Radius.circular(60)),
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your NIC';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      // filled: true,
                      // fillColor: const Color.fromARGB(255, 119, 158, 119)
                      //     .withOpacity(0.9),
                      contentPadding:
                          const EdgeInsets.only(top: 13, bottom: 13),
                      border: InputBorder.none,
                      // enabledBorder: OutlineInputBorder(
                      //   borderSide: const BorderSide(
                      //       width: 1, color: Color.fromARGB(255, 241, 245, 237)),
                      //   borderRadius: BorderRadius.circular(60),
                      //),
                      hintText: "Shop Owner's NIC",
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.only(right: 0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white),
                          ),
                          child: const Icon(
                            Icons.add_card_outlined,
                            color: Color.fromARGB(255, 1, 71, 38),
                            size: 40,
                          ),
                        ),
                      ),
                      hintStyle: textStyle,
                    ),
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color:
                        const Color.fromARGB(255, 56, 78, 56).withOpacity(0.9),
                    borderRadius: const BorderRadius.all(Radius.circular(60)),
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter contact number';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      // filled: true,
                      // fillColor: const Color.fromARGB(255, 119, 158, 119)
                      //     .withOpacity(0.9),
                      contentPadding:
                          const EdgeInsets.only(top: 13, bottom: 13),
                      border: InputBorder.none,
                      // enabledBorder: OutlineInputBorder(
                      //   borderSide: const BorderSide(
                      //       width: 1, color: Color.fromARGB(255, 241, 245, 237)),
                      //   borderRadius: BorderRadius.circular(60),
                      //),
                      hintText: 'Contact Number',
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.only(right: 0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white),
                          ),
                          child: const Icon(
                            Icons.contact_phone_outlined,
                            color: Color.fromARGB(255, 1, 71, 38),
                            size: 40,
                          ),
                        ),
                      ),
                      hintStyle: textStyle,
                    ),
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color:
                        const Color.fromARGB(255, 56, 78, 56).withOpacity(0.9),
                    borderRadius: const BorderRadius.all(Radius.circular(60)),
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please attach clear shop photo';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      // filled: true,
                      // fillColor: const Color.fromARGB(255, 119, 158, 119)
                      //     .withOpacity(0.9),
                      contentPadding:
                          const EdgeInsets.only(top: 13, bottom: 13),
                      border: InputBorder.none,
                      // enabledBorder: OutlineInputBorder(
                      //   borderSide: const BorderSide(
                      //       width: 1, color: Color.fromARGB(255, 241, 245, 237)),
                      //   borderRadius: BorderRadius.circular(60),
                      //),
                      hintText: 'Shop Photo',
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.only(right: 0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white),
                          ),
                          child: const Icon(
                            Icons.image_outlined,
                            color: Color.fromARGB(255, 1, 71, 38),
                            size: 40,
                          ),
                        ),
                      ),
                      hintStyle: textStyle,
                    ),
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color:
                        const Color.fromARGB(255, 56, 78, 56).withOpacity(0.9),
                    borderRadius: const BorderRadius.all(Radius.circular(60)),
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please give details about your shop';
                      }
                      return null;
                    },
                    controller: _Textcontroller,
                    minLines: 1,
                    maxLines: 5,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      // filled: true,
                      // fillColor: const Color.fromARGB(255, 119, 158, 119)
                      //     .withOpacity(0.9),
                      contentPadding:
                          const EdgeInsets.only(top: 13, bottom: 13),
                      border: InputBorder.none,
                      // enabledBorder: OutlineInputBorder(
                      //   borderSide: const BorderSide(
                      //       width: 1, color: Color.fromARGB(255, 241, 245, 237)),
                      //   borderRadius: BorderRadius.circular(60),
                      //),
                      hintText: 'Shop Description',
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.only(right: 0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white),
                          ),
                          child: const Icon(
                            Icons.shop_2_outlined,
                            color: Color.fromARGB(255, 1, 71, 38),
                            size: 40,
                          ),
                        ),
                      ),
                      hintStyle: textStyle,
                    ),
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                    //keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color:
                        const Color.fromARGB(255, 56, 78, 56).withOpacity(0.9),
                    borderRadius: const BorderRadius.all(Radius.circular(60)),
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the shop address';
                      }
                      return null;
                    },
                    controller: _TextcontrollerR,
                    minLines: 1,
                    maxLines: 3,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      // filled: true,
                      // fillColor: const Color.fromARGB(255, 119, 158, 119)
                      //     .withOpacity(0.9),
                      contentPadding:
                          const EdgeInsets.only(top: 13, bottom: 13),
                      border: InputBorder.none,
                      // enabledBorder: OutlineInputBorder(
                      //   borderSide: const BorderSide(
                      //       width: 1, color: Color.fromARGB(255, 241, 245, 237)),
                      //   borderRadius: BorderRadius.circular(60),
                      //),
                      hintText: 'Shop Address',
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.only(right: 0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white),
                          ),
                          child: const Icon(
                            Icons.place_outlined,
                            color: Color.fromARGB(255, 1, 71, 38),
                            size: 40,
                          ),
                        ),
                      ),
                      hintStyle: textStyle,
                    ),
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                    //keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.done,
                    // ignore: sort_child_properties_last
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color:
                        const Color.fromARGB(255, 56, 78, 56).withOpacity(0.9),
                    borderRadius: const BorderRadius.all(Radius.circular(60)),
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  child: TextFormField(
                    obscureText: _isObscure,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a valid password';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      // filled: true,
                      // fillColor: const Color.fromARGB(255, 119, 158, 119)
                      //     .withOpacity(0.9),
                      contentPadding:
                          const EdgeInsets.only(top: 13, bottom: 13),
                      border: InputBorder.none,
                      // enabledBorder: OutlineInputBorder(
                      //   borderSide: const BorderSide(
                      //       width: 1, color: Color.fromARGB(255, 241, 245, 237)),
                      //   borderRadius: BorderRadius.circular(60),
                      //),
                      hintText: 'Create Password',
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.only(right: 0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white),
                          ),
                          child: const Icon(
                            Icons.lock_outline,
                            color: Color.fromARGB(255, 1, 71, 38),
                            size: 40,
                          ),
                        ),
                      ),
                      hintStyle: textStyle,
                      suffixIcon: IconButton(
                          icon: Icon(_isObscure
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          }),
                    ),
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                    textInputAction: TextInputAction.done,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color:
                        const Color.fromARGB(255, 56, 78, 56).withOpacity(0.9),
                    borderRadius: const BorderRadius.all(Radius.circular(60)),
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  child: TextFormField(
                    obscureText: _isObscure,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please re enter password';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      // filled: true,
                      // fillColor: const Color.fromARGB(255, 119, 158, 119)
                      //     .withOpacity(0.9),
                      contentPadding:
                          const EdgeInsets.only(top: 13, bottom: 13),
                      border: InputBorder.none,
                      // enabledBorder: OutlineInputBorder(
                      //   borderSide: const BorderSide(
                      //       width: 1, color: Color.fromARGB(255, 241, 245, 237)),
                      //   borderRadius: BorderRadius.circular(60),
                      //),
                      hintText: 'Re Enter Password',
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.only(right: 0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white),
                          ),
                          child: const Icon(
                            Icons.lock_outline,
                            color: Color.fromARGB(255, 1, 71, 38),
                            size: 40,
                          ),
                        ),
                      ),
                      hintStyle: textStyle,
                      suffixIcon: IconButton(
                          icon: Icon(_isObscure
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          }),
                    ),
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                    textInputAction: TextInputAction.done,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 200,
                    //borderRadius; BorderRadius.circular(80.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 94, 158, 98),
                            Color.fromARGB(255, 69, 132, 71),
                            Color.fromARGB(255, 5, 69, 42)
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      color: Colors.green,
                      //borderRadius; BorderRadius.circular(80.0),
                    ),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shadowColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0)),
                        ),
                      ),
                      onPressed: () {
                        // Validate returns true if the form is valid, or false otherwise.
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(vertical: 7),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 41),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const <Widget>[
                              Text(
                                'Register',
                                style: TextStyle(
                                    fontSize: 23, color: Colors.white),
                              ),
                              Icon(
                                Icons.arrow_circle_right_outlined,
                                color: Color.fromARGB(255, 235, 241, 237),
                              ),
                            ],
                          ),
                        ),
                        //icon: Icon(Icons.arrow_circle_down_outlined),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

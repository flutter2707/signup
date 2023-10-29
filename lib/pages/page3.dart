import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  TextEditingController controller = TextEditingController();
  bool tap = false;
  bool tap1 = false;
  String text = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child: Column(children: [
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          SizedBox(width: 25,),
                          Text(
                            'Hello',
                            style: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 25,),
                        text.isEmpty ? const Text(
                          'Again!',
                          style: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.w900,
                              color: Colors.blue),
                        ) : const Text(''),
                      ],
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          SizedBox(width: 25,),
                          Text('''Welcome back you’ve
been missed''',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400

                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 60,),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      SizedBox(width: 25,),
                      Image(image: AssetImage('assets/image/img_4.png'),width: 80,height: 21,)
                    ],
                  )),
              Container(
                height: 48,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.deepPurple,width: 2)
                ),
                child:  const TextField(
                  keyboardType: TextInputType.text,
                  cursorHeight: 25,
                  style: TextStyle(
                    fontSize: 18
                  ),
                ),
              ),
              const SizedBox(height: 40,),
              const Row(children: [
                SizedBox(width: 25,),
                Image(image: AssetImage('assets/image/img_5.png'),width: 80,height: 21,)
              ],),
              Container(
                height: 48,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2,color: Colors.deepPurple)
                ),
                child: TextField(
                  onChanged: (value) {
                    text = value;
                  },
                  obscureText: !tap1,
                  keyboardType: TextInputType.number,
                  cursorHeight: 25,
                  restorationId: text,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          tap1 ? tap1 = false : tap1 = true;
                        });
                      },
                      icon: tap1 ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off)
                    )
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Row(
                  children: [
                    const SizedBox(width: 5,),
                    Checkbox(
                        value: tap,
                        onChanged: (value) {
                          setState(() {
                            tap = value ?? false;
                          });
                        },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(color: Colors.deepPurple,width: 2,)
                      ),
                      activeColor: Colors.blue,
                    ),
                    const Text('Remember me',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),),
                    const SizedBox(width: 42,),
                    TextButton(onPressed: () {

                    }, child: const Text('Forgot the password',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.blue
                    ),))
                  ],
                ),
              ),
              const SizedBox(height: 25,),
              Container(
                height: 48,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue
                ),
                child: TextButton(
                  onPressed: () {

                  },
                  child: const Center(
                    child: Text('Login',style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                      color: Colors.white
                    )),
                  ),
                ),
              ),
              const SizedBox(height: 25,),
              const Center(
                child: Text('or continue with',style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700
                ),),
              ),
              const SizedBox(height: 30,),
              Container(
                height: 48,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 15,),
                    Container(
                      height: 48,
                      width: 174,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black12,
                      ),
                      child:  Center(
                        child: TextButton(
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Image(image: AssetImage('assets/image/img_6.png')),
                              SizedBox(width: 10,),
                              Text('Facebook',style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black54
                              ))
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 30,),
                    Container(
                      height: 48,
                      width: 174,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10
                        ),
                        color: Colors.black12
                      ),
                      child:  Center(
                        child: TextButton(
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Image(image: AssetImage('assets/image/img_7.png')),
                              SizedBox(width: 10,),
                              Text('Google',style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black54
                              ))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                height: 48,
                width: 380,
                color: Colors.white,
                child: const Align(
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      SizedBox(width: 45,),
                      Text('don`t have an account?',style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black54,
                        fontSize: 17
                      )),
                      Text('Sign Up',style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w700,
                        fontSize: 17
                      ),)
                    ],
                  ),
                ),
              )
            ])),
          ]
      ),
    ));
  }
}
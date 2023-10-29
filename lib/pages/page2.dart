import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:signup/pages/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  PageController controller = PageController();
  int len = 3;
  int position = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 790,
            width: 428,
            color: Colors.white,
            child: PageView(
                physics: const BouncingScrollPhysics(),
                controller: controller,
                scrollDirection: Axis.horizontal,
                onPageChanged: (int value) {
                  setState(() {
                    position = value;
                    controller.animateToPage(
                      position = value,
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                    );
                  });
                },
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/image/img_1.png',
                        height: 584,
                        width: 428,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Center(
                        child: Text(
                          '''Lorem Ipsum is simply 
dummy''',
                          maxLines: 5,
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.w900),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Center(
                        child: Text(
                          '''Lorem Ipsum is simply dummy text of 
the printing and typesetting industry.''',
                          maxLines: 5,
                          style: TextStyle(
                            fontSize: 19.5,
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/image/img_2.png',
                          height: 584, width: 428, fit: BoxFit.fill),
                      const SizedBox(
                        height: 10,
                      ),
                      const Center(
                        child: Text(
                          '''Lorem Ipsum is simply 
dummy''',
                          maxLines: 5,
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.w900),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Center(
                        child: Text(
                          '''Lorem Ipsum is simply dummy text of 
the printing and typesetting industry.''',
                          maxLines: 5,
                          style: TextStyle(
                            fontSize: 19.5,
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/image/img_3.png',
                          height: 584, width: 428, fit: BoxFit.fill),
                      const SizedBox(
                        height: 10,
                      ),
                      const Center(
                        child: Text(
                          '''Lorem Ipsum is simply 
dummy''',
                          maxLines: 5,
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.w900),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Center(
                        child: Text(
                          '''Lorem Ipsum is simply dummy text of 
the printing and typesetting industry.''',
                          maxLines: 5,
                          style: TextStyle(
                            fontSize: 19.5,
                          ),
                        ),
                      )
                    ],
                  ),
                ]),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              DotsIndicator(
                dotsCount: len,
                position: position,
                onTap: (position) {

                },
                axis: Axis.horizontal,
                decorator: const DotsDecorator(
                    color: Colors.black26,
                    activeColor: Colors.blue,
                    activeSize: Size(15, 15)),
              ),
              const SizedBox(
                width: 120,
              ),
              SizedBox(
                height: 35,
                width: 70,
                child: position > 0 ? TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back',
                    style: TextStyle(color: Colors.black26,
                    fontSize: 18,
                    fontWeight: FontWeight.w900
                    )),
              ) : const SizedBox(),
              ),
              const SizedBox(
                width: 5,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 45,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(7)
                  ),
                  child: position == 2
                      ? TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Page3(),
                                ),
                            );
                          },
                          child: const Text('Get started',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16)),
                        )
                      : TextButton(
                          onPressed: () {},
                          child: const Text('Next',
                              style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 16)
                          ),
                        ),
                ),
              ),
              SizedBox(width: 5,)
            ],
          )
        ],
      ),
    );
  }
}
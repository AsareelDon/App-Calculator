import 'package:flutter/material.dart';

class Home_Window extends StatefulWidget {
  const Home_Window({Key? key}) : super(key: key);

  @override
  State<Home_Window> createState() => _homeWindow();
}
class _homeWindow extends State<Home_Window> {

  var input_operator = '';
  var value = '0';

  inputNUM(input) {
    setState(() {
      value == '0' ? value=input.toString() : value += input.toString();
    });
  }

  onClicked(operator) {
    setState(() {
      if (input_operator != '') {
        calculation();
        value += operator.toString();
        input_operator = operator;
      } else {
        value += operator.toString();
        input_operator = operator;
      }
    });
  }

  calculation() {
    var data = value.split(input_operator);

    var number1 = data[0];
    var number2 = data[1];

    setState(() {
      switch(input_operator) {
        case '*':
          value = (double.parse(number1) * double.parse(number2)).toStringAsFixed(1);
          break;
        case '/':
          value = (double.parse(number1) / double.parse(number2)).toStringAsFixed(1);
          break;
        case '-':
          value = (double.parse(number1) - double.parse(number2)).toStringAsFixed(1);
          break;
        case '+':
          value = (double.parse(number1) + double.parse(number2)).toStringAsFixed(1);
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double screenSize = 205;

    return Scaffold(
      body: Container(
        height: size.height,
        child: Column(
          children: [
            Container(
                color: Colors.white,
                height: screenSize,
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(value,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 70
                      ),
                    ),
                  ],
                )
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: const Divider(color: Colors.black, height: 10),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [

                      Expanded(
                        child: MaterialButton(
                          height: 85,
                          color: Colors.blue,
                          onPressed: () {
                            setState(() {
                              value = '0';
                              input_operator = '';
                            });
                          },
                          child:  const Text("CE",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          height: 85,
                          color: Colors.blue,
                          onPressed: () {
                            onClicked('+');
                          },
                          child:  const Text("+",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          height: 85,
                          color: Colors.blue,
                          onPressed: () {
                            onClicked('/');
                          },
                          child:  const Text("/",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: MaterialButton(
                          height: 85,
                          color: Colors.grey,
                          onPressed: () {
                            inputNUM(7);
                          },
                          child:  const Text("7",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          height: 85,
                          color: Colors.grey,
                          onPressed: () {
                            inputNUM(8);
                          },
                          child:  const Text("8",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          height: 85,
                          color: Colors.grey,
                          onPressed: () {
                            inputNUM(9);
                          },
                          child:  const Text("9",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          height: 85,
                          color: Colors.blue,
                          onPressed: () {
                            onClicked('*');
                          },
                          child:  const Text("*",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: MaterialButton(
                          height: 85,
                          color: Colors.grey,
                          onPressed: () {
                            inputNUM(4);
                          },
                          child:  const Text("4",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          height: 85,
                          color: Colors.grey,
                          onPressed: () {
                            inputNUM(5);
                          },
                          child:  const Text("5",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          height: 85,
                          color: Colors.grey,
                          onPressed: () {
                            inputNUM(6);
                          },
                          child:  const Text("6",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          height: 85,
                          color: Colors.blue,
                          onPressed: () {
                            onClicked('-');
                          },
                          child:  const Text("-",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: MaterialButton(
                          height: 85,
                          color: Colors.grey,
                          onPressed: () {
                            inputNUM(1);
                          },
                          child:  const Text("1",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          height: 85,
                          color: Colors.grey,
                          onPressed: () {
                            inputNUM(2);
                          },
                          child:  const Text("2",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          height: 85,
                          color: Colors.grey,
                          onPressed: () {
                            inputNUM(3);
                          },
                          child:  const Text("3",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          height: 85,
                          color: Colors.blue,
                          onPressed: () {
                            onClicked('.');
                          },
                          child:  const Text(".",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
              Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    height: 85,
                    color: Colors.grey,
                    onPressed: () {
                      inputNUM(0);
                    },
                    child:  const Text("0",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    height: 85,
                    color: Colors.blue,
                    onPressed: () {
                      calculation();
                    },
                    child:  const Text("=",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30
                      ),
                    ),
                  ),
                ),
              ],
              ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
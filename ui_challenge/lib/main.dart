import 'package:flutter/material.dart';
import 'package:ui_challenge/widgets/button.dart';
import 'package:ui_challenge/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "Hey Selena",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Welcome Back",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Total Balance",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              const Text(
                "\$ 5 193 284",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                    text: "Transfer",
                    backgroundColor: Colors.amber,
                    textColor: Colors.black,
                  ),
                  Button(
                    text: "Request",
                    backgroundColor: Color(0xFF1F2123),
                    textColor: Colors.white,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "Walltes",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const CurrencyCard(
                name: "Euro",
                code: "EUR",
                amount: "6 428",
                icon: Icons.euro_rounded,
                isInverted: false,
              ),
              Transform.translate(
                offset: const Offset(
                  0,
                  -30,
                ),
                child: const CurrencyCard(
                  name: "Bitcoin",
                  code: "BTC",
                  amount: "15",
                  icon: Icons.currency_bitcoin,
                  isInverted: true,
                ),
              ),
              Transform.translate(
                offset: const Offset(0, -60),
                child: const CurrencyCard(
                  name: "Dollar",
                  code: "USD",
                  amount: "15 892",
                  icon: Icons.attach_money_rounded,
                  isInverted: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

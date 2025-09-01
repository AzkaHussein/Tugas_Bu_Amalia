import 'package:flutter/material.dart';

class MyAzka extends StatelessWidget {
  const MyAzka({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            // Bagian Header
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("OVO", style: TextStyle(color: Colors.purple, fontSize: 40.0, fontWeight: FontWeight.bold),),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.local_offer, color: Colors.white),
                        SizedBox(width: 5),
                        Text("Promo", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Bagian Saldo
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(90, 23, 197, 1.0)
                  ,
                  
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("OVO Cash", style: TextStyle(color: Colors.white)),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text("Total Saldo  ", style: TextStyle(color: Colors.white)),
                        Icon(Icons.remove_red_eye, color: Colors.white, size: 15),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Rp. 1.000.000",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            children: [
                              Icon(Icons.card_giftcard,
                                  color: Colors.white, size: 16),
                              SizedBox(width: 4),
                              Text(
                                "50.000 points",
                                style: TextStyle(color: Colors.white, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),

                    // Menu Topup, Transfer, Tarik Tunai, Histori
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        MenuIcon(title: "Topup", icon: Icons.add),
                        MenuIcon(title: "Transfer", icon: Icons.send),
                        MenuIcon(title: "Tarik Tunai", icon: Icons.money),
                        MenuIcon(title: "Histori", icon: Icons.history),
                      ],
                    ),
                  ],
                ),
              ),
            ),

           // Bagian Icon Tambahan (PLN, Pulsa, dll)
Expanded(
  child: Container(
    padding: EdgeInsets.symmetric(vertical: 28),
    decoration: BoxDecoration(
      color: Colors.grey.shade200,
      boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 6,
                offset: const Offset(2, 4))],
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
      ),
    ),
    child: SingleChildScrollView( // buat scrolll
      child: Column(
        
        children: [
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: const [
              ExtraMenuIcon(title: "PLN", icon: Icons.flash_on),
              ExtraMenuIcon(title: "Pulsa", icon: Icons.phone_android),
              ExtraMenuIcon(title: "Peduli Lindungi", icon: Icons.favorite),
              ExtraMenuIcon(title: "Invest", icon: Icons.show_chart),
              ExtraMenuIcon(title: "Angsuran Kredit", icon: Icons.credit_card),
              ExtraMenuIcon(title: "Internet & TV", icon: Icons.tv),
              ExtraMenuIcon(title: "Proteksi", icon: Icons.shield),
              ExtraMenuIcon(title: "Lainnya", icon: Icons.more_horiz, ),
            ],
          ),

          SizedBox(height: 20),

           ClipRRect(
            borderRadius: BorderRadius.circular(12), 
            child: Image.asset('asset/azka.jpg', 
              fit: BoxFit.cover,
            ),
          ),
          
          
        ],
      ),
    ),
  ),
),


          ],
        ),
      ),
    );
  }
}


class MenuIcon extends StatelessWidget {
  final String title;
  final IconData icon;

  const MenuIcon({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.purple,
          child: Icon(icon, color: Colors.white),
        ),
        SizedBox(height: 5),
        Text(title, style: TextStyle(color: Colors.white)),
      ],
    );
  }
}

class ExtraMenuIcon extends StatelessWidget {
  final String title;
  final IconData icon;

  const ExtraMenuIcon({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.purple.shade50,
          child: Icon(icon, color: Colors.purple),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
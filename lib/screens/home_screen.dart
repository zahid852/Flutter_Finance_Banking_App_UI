import 'package:finance_banking_app/dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            padding: const EdgeInsets.only(left: 20),
            iconSize: 28,
            icon: const Icon(
              IconlyLight.notification,
              color: Colors.grey,
            )),
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: Container(
            height: 56,
            margin:
                const EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                  tileMode: TileMode.mirror,
                  colors: [Colors.blue[400]!, Colors.blue[600]!],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
            child: ConfirmationSlider(
              sliderButtonContent: const Icon(
                Icons.chevron_right,
                color: Colors.blue,
              ),
              onConfirmation: () {},
              width: MediaQuery.of(context).size.width - 32,
              height: 56,
              backgroundColor: Colors.transparent,
              shadow: const BoxShadow(color: Colors.transparent),
              foregroundColor: Colors.white,
              foregroundShape: BorderRadius.circular(8),
              text: 'Slide for payment',
              textStyle: GoogleFonts.nunito(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          )),
      body: Container(
          height: double.infinity,
          child: ListView(children: [
            //card section
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 8, bottom: 16),
              child: Text(
                'Hi, Zahid!',
                style: GoogleFonts.nunito(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 188,
              child: ListView.builder(
                itemCount: dummy_data.card_section_list.length,
                padding: const EdgeInsets.only(
                    left: 16, right: 8, bottom: 2, top: 2),
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 12),
                    height: double.infinity,
                    width: 280,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 0.1,
                            blurRadius: 2,
                            offset: Offset(1, 1)),
                      ],
                      color: dummy_data.card_section_list[index].card_color,
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 16,
                          top: 12,
                          child: Image.asset(
                            dummy_data.card_section_list[index].imagePath,
                            height: 22,
                            width: 33,
                          ),
                        ),
                        Positioned(
                          right: 16,
                          top: 12,
                          child: Text(
                              dummy_data.card_section_list[index].card_name,
                              style: GoogleFonts.nunito(
                                  color: dummy_data
                                      .card_section_list[index].smallTextColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12)),
                        ),
                        Positioned(
                          left: 16,
                          top: 60,
                          child: Text('Your Balance',
                              style: GoogleFonts.nunito(
                                  color: dummy_data
                                      .card_section_list[index].smallTextColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12)),
                        ),
                        Positioned(
                          left: 16,
                          top: 80,
                          child: Text(
                              dummy_data.card_section_list[index].balance,
                              style: GoogleFonts.nunito(
                                  color: dummy_data
                                      .card_section_list[index].textColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20)),
                        ),
                        Positioned(
                          left: 16,
                          bottom: 38,
                          child: Text('Valid till',
                              style: GoogleFonts.nunito(
                                  color: dummy_data
                                      .card_section_list[index].smallTextColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12)),
                        ),
                        Positioned(
                          left: 16,
                          bottom: 12,
                          child: Text(
                              dummy_data.card_section_list[index].valid_date,
                              style: GoogleFonts.nunito(
                                  color: dummy_data
                                      .card_section_list[index].textColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14)),
                        ),
                        Positioned(
                            right: 16,
                            bottom: 12,
                            child: Icon(Icons.more_horiz,
                                color: dummy_data
                                    .card_section_list[index].textColor)),
                      ],
                    ),
                  );
                }),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 32, bottom: 16, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Last Transactions',
                      style: GoogleFonts.nunito(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'See all transactions',
                      style: GoogleFonts.nunito(
                          color: Colors.blue,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )),
            Container(
              height: 190,
              child: ListView.builder(
                itemCount: dummy_data.transaction_section_list.length,
                padding: const EdgeInsets.only(left: 16, right: 8),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 8),
                    height: double.infinity,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                            left: 16,
                            top: 12,
                            child: Icon(
                              dummy_data.transaction_section_list[index].icon,
                              size: 20,
                              color: dummy_data
                                  .transaction_section_list[index].color,
                            )),
                        Positioned(
                            right: 16,
                            top: 12,
                            child: Text(
                              dummy_data.transaction_section_list[index].type,
                              style: GoogleFonts.nunito(
                                  color: dummy_data
                                      .transaction_section_list[index].color,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            )),
                        Positioned(
                            left: 16,
                            top: 60,
                            child: Text(
                              dummy_data.transaction_section_list[index].amount,
                              style: GoogleFonts.nunito(
                                  color: dummy_data
                                      .transaction_section_list[index].color,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            )),
                        Positioned(
                            left: 16,
                            bottom: 64,
                            child: Text(
                              dummy_data
                                  .transaction_section_list[index].transfer,
                              style: GoogleFonts.nunito(
                                  color: Colors.grey,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400),
                            )),
                        Positioned(
                            left: 16,
                            bottom: 38,
                            child: Text(
                              dummy_data.transaction_section_list[index].person,
                              style: GoogleFonts.nunito(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            )),
                        Positioned(
                            left: 16,
                            bottom: 12,
                            child: Text(
                              dummy_data.transaction_section_list[index].date,
                              style: GoogleFonts.nunito(
                                  color: Colors.grey,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400),
                            )),
                        Positioned(
                          right: 14,
                          bottom: 15.5,
                          child: Image.asset(
                            dummy_data
                                .transaction_section_list[index].imagePath,
                            height: 17,
                            width: 26,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 32, bottom: 16, right: 20),
                child: Text(
                  'Top Up Again',
                  style: GoogleFonts.nunito(
                      fontSize: 16, fontWeight: FontWeight.w700),
                )),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.only(left: 16, right: 20),
                itemCount: dummy_data.acount_section_list.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 68,
                    margin: const EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 6,
                            ),
                            Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey,
                                  image: DecorationImage(
                                      image: AssetImage(dummy_data
                                          .acount_section_list[index]
                                          .imagePath))),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  dummy_data.acount_section_list[index].name,
                                  style: GoogleFonts.nunito(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  dummy_data.acount_section_list[index].type,
                                  style: GoogleFonts.nunito(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              dummy_data.acount_section_list[index].ac_no,
                              style: GoogleFonts.nunito(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                })
          ])),
    );
  }
}

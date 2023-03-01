
import 'package:ecommerceapp/features/home/presentaion/views/widgets/best_sellerlistview.dart';

import 'package:flutter/material.dart';

import '../../../../core/utls/styles.dart';
import 'widgets/customappbar.dart';
import 'widgets/customfeaturesListview.dart';

class Home_View extends StatelessWidget {
  const Home_View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child:CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  const [
                  CustomAppBar(),
                  CustomListView(),
                  Padding(
                    padding: EdgeInsets.only(left: 8,top: 24),
                    child: Text("Best Seller",style: Styles.titlestyle18,),
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            ),
              const SliverToBoxAdapter(
              child: BestSeller_ListView(),
            )
          ],
        ),
      )
    );
  }
}


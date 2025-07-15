import 'package:flutter/material.dart';
import 'package:itri/common/widgets/appbar/appbar.dart';
import 'package:itri/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:itri/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:itri/common/widgets/images/i_circular_image.dart';
import 'package:itri/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:itri/common/widgets/texts/i_brand_title_text_with_verified_icon.dart';
import 'package:itri/common/widgets/texts/section_heading.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/enums.dart';
import 'package:itri/utils/constants/image_strings.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/helpers/helper_functions.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IAppBar(
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [ICartCounterIcon(onPressed: () {})],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFunctions.isDarkMode(context)
                  ? TColors.black
                  : TColors.white,
              expandedHeight: 440,

              flexibleSpace: Padding(
                padding: const EdgeInsets.all(ISizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    const SizedBox(height: ISizes.spaceBtwItems),
                    const ISearchContainer(
                      text: '',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(height: ISizes.spaceBtwSections),

                    // Feature brands
                    ISectionHeading(
                      title: 'Featured Brands',
                      showActionButton: true,
                      onPressed: () {},
                    ),
                    const SizedBox(height: ISizes.spaceBtwItems / 1.5),

                    GestureDetector(
                      onTap: (){},
                      child: IRoundedContainer(
                        padding: const EdgeInsets.all(ISizes.sm),
                        showBorder: true,
                        backgroundColor: Colors.transparent,
                        child: Row(
                          children: [
                            ICircularImage(
                              isNetworkImage: false,
                              image: IImages.clothIcon,
                              backgroundColor: Colors.transparent,
                              overlayColor: THelperFunctions.isDarkMode(context)
                                  ? TColors.white
                                  : TColors.black,
                            ),
                      
                            const SizedBox(width: ISizes.spaceBtwItems / 2),
                      
                            // Text
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.large),
                                Text(
                                  '256 products',
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context).textTheme.labelMedium,
                                  )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:itri/common/widgets/images/i_circular_image.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/image_strings.dart';

class IUserProfileTitle extends StatelessWidget {
  const IUserProfileTitle({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
       leading: ICircularImage(
         image: IImages.user,
         width: 50,
         height: 50,
         padding: 0,
         ),
         title: Text('xalphi', style: Theme.of(context).textTheme.headlineSmall!.apply(color: IColors.white),),
         subtitle: Text('xalphi@proton.me', style: Theme.of(context).textTheme.bodyMedium!.apply(color: IColors.white),),
         trailing: IconButton(onPressed: onPressed, icon: const Icon(Iconsax.edit, color: IColors.white))
     );
  }
}
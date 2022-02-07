// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({Key? key}) : super(key: key);

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: SizedBox(
            height: 158.h,
            width: 335.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 125.w,
                  height: 158.h,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    color: Colors.grey.withOpacity(0.4),
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1601290006882-9dcdfbd809ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
                        scale: 2.0,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 200.w,
                  height: 127.h,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    color: Theme.of(context).backgroundColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'John doe',
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: Colors.white,
                            height: 1.6,
                            fontFamily: 'MontserratSemiBold',
                          ),
                        ),
                        Text(
                          'Meknès',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white,
                            height: 1.6,
                            fontFamily: 'MontserratRegular',
                          ),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Points',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.white,
                                    height: 1.6,
                                    fontFamily: 'MontserratSemiBold',
                                  ),
                                ),
                                Text(
                                  '2800 Pts',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.white,
                                    height: 1.6,
                                    fontFamily: 'MontserratRegular',
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Level',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.white,
                                    height: 1.6,
                                    fontFamily: 'MontserratSemiBold',
                                  ),
                                ),
                                Text(
                                  'Level 1',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.white,
                                    height: 1.6,
                                    fontFamily: 'MontserratRegular',
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                          ],
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'Informations personnelles',
              style: TextStyle(
                fontSize: 18.sp,
                color: Colors.black,
                height: 1.6,
                fontFamily: 'MontserratSemiBold',
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: SizedBox(
            height: 55.h,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nom Complete :',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.black,
                        height: 1.6,
                        fontFamily: 'MontserratSemiBold',
                      ),
                    ),
                    Text(
                      'John Doe',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.black.withOpacity(0.4),
                        height: 1.6,
                        fontFamily: 'MontserratSemiBold',
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Icon(
                  FeatherIcons.edit,
                  size: 18.w,
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 22.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: SizedBox(
            height: 55.h,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Adresse email :',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.black,
                        height: 1.6,
                        fontFamily: 'MontserratSemiBold',
                      ),
                    ),
                    Text(
                      'Johndoe@gmail.com',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.black.withOpacity(0.4),
                        height: 1.6,
                        fontFamily: 'MontserratSemiBold',
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Icon(
                  FeatherIcons.edit,
                  size: 18.w,
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 22.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: SizedBox(
            height: 55.h,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Numéro de téléphone :',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.black,
                        height: 1.6,
                        fontFamily: 'MontserratSemiBold',
                      ),
                    ),
                    Text(
                      '0645885858',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.black.withOpacity(0.4),
                        height: 1.6,
                        fontFamily: 'MontserratSemiBold',
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Icon(
                  FeatherIcons.edit,
                  size: 18.w,
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 60.h,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 269.w,
            height: 65.h,
            decoration: BoxDecoration(
              //color: Theme.of(context).backgroundColor,
              borderRadius: BorderRadius.circular(45),
              border: Border.all(
                width: 1.8,
                color: Colors.red,
              ),
            ),
            child: Row(
              children: [
                const Spacer(),
                Icon(
                  FeatherIcons.lock,
                  color: Colors.red,
                  size: 18.w,
                ),
                const Spacer(),
                Text(
                  'Change mot de passe',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.red,
                    height: 1.6,
                    fontFamily: 'MontserratBold',
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

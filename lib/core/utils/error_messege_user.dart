import 'package:flutter/material.dart';
import 'package:project/feature/home/presentation/manger/featuredBooksCubit/featuredbooks_cubit.dart';

abstract class ErrorMessege{

  static   void showErrorMessage(BuildContext context, FeaturedbooksFailure state) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(state.errorMessege)),
    );
  
}
}
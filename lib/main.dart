import 'package:flutter/material.dart';
import 'package:organization_app/core/scheme_colors.dart';
import 'package:organization_app/pages/home.dart';

void main(){
  runApp(const OrganizationList());
}

class OrganizationList extends StatelessWidget {
  const OrganizationList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const SchemeColorsApp(),
      ),
      home: const Home(),
    );
  }
}
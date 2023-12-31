import 'package:flutter/material.dart';
import 'package:projectname/common_widgets/custom_card_widget.dart';
import 'package:projectname/features/tareef/data/pdf_screen.dart';

class Tareef extends StatelessWidget {
  const Tareef({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          // Set the AppBar icon color to white
          color: Theme.of(context).colorScheme.onPrimary,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(24),
          ),
        ),
        elevation: 5,
        title: Text(
          'Tareef',
          style: TextStyle(
            fontSize: 24,
            color: Theme.of(context).colorScheme.onPrimary,
            shadows: [
              Shadow(
                blurRadius: 1.0,
                color: Colors.black.withOpacity(0.5),
                offset: const Offset(2, 2),
              ),
            ],
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),

      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            CustomCardWidget(
              title: "Housing Contract",
              icon: Icons.house,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const PDFScreen(path: 'assets/tareef.png')),
                );
              },
            ),
            CustomCardWidget(
              title: "English Identification Letter",
              icon: Icons.perm_identity,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const PDFScreen(path: 'assets/tareef.png')));
              },
            ),
            CustomCardWidget(
              title: "Arabic Identification Letter",
              icon: Icons.perm_identity,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const PDFScreen(path: 'assets/tareef.png')));
              },
            ),
            CustomCardWidget(
              title: "Honor Letter",
              icon: Icons.star,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const PDFScreen(path: 'assets/tareef.png'),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AppBarWithHelpButton extends StatelessWidget implements PreferredSizeWidget {
  final String? titleText; // Título da barra de aplicativos, opcional
  final String helpButtonText;
  final List<Widget> helpDialogChildren;
  final String closeButtonLabel;
  final Color? backgroundColor; // Cor de fundo da barra de aplicativos, opcional

  const AppBarWithHelpButton({
    Key? key,
    this.titleText, // Título da barra de aplicativos, opcional
    required this.helpButtonText,
    required this.helpDialogChildren,
    required this.closeButtonLabel,
    this.backgroundColor, // Cor de fundo da barra de aplicativos, opcional
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: titleText != null ? Text(titleText!) : null, // Adiciona o título se fornecido
      backgroundColor: backgroundColor, // Define a cor de fundo da barra de aplicativos, se fornecida
      actions: [
        IconButton(
          icon: const Icon(Icons.help_outline),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(helpButtonText),
                  content: SingleChildScrollView(
                    child: Column(
                      children: helpDialogChildren,
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(closeButtonLabel),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class AccountInformation extends StatelessWidget {
  const AccountInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Información actual de su cuenta',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Colors.black,
              ),
        ),
        const SizedBox(height: 10),
        LayoutBuilder(
          builder: (context, constraints) => Container(
            width: constraints.maxWidth,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white54,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: 1,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('No tienes notificaciones pendientes'),
                SizedBox(height: 10),
                Text('Su código QR ha caducado'),
                SizedBox(height: 10),
                Text('Ultima verificación: 12/12/2021 12:00'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

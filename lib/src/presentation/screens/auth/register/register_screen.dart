import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:metro_uio/src/application/core/constants/images.dart';
import 'package:metro_uio/src/presentation/widgets/fields/dropdown_field_widget.dart';
import 'package:metro_uio/src/presentation/widgets/fields/text_field_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey formKey = GlobalKey<FormState>();
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back),
          onPressed: () => {},
        ),
        title: Row(
          children: [
            SvgPicture.asset(
              Images.logoImage,
              width: 30,
            ),
            const SizedBox(width: 10),
            const Text(
              'Registrar cuenta',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const TextFieldWidget(
                      label: 'Nombres completos',
                      hint: 'Ingresa tus nombres completos',
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: DropdownFieldWidget(
                            label: 'Tipo de documento',
                            items: [
                              DropDownItem(value: '1', label: 'Cédula'),
                              DropDownItem(value: '2', label: 'Pasaporte'),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: TextFieldWidget(
                            label: 'Número de documento',
                            hint: 'Ingresa tu número de documento',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: TextFieldWidget(
                            label: 'Celular',
                            hint: 'Ingresa tu número de celular',
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(width: 10),
                              Expanded(
                                child: TextFieldWidget(
                                  label: 'Código dactilar',
                                  hint: 'Ingresa tu código dactilar',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: TextFieldWidget(
                            label: 'Contraseña',
                            hint: 'Ingresa tu contraseña',
                            password: true,
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextFieldWidget(
                            label: 'Confirmar contraseña',
                            hint: 'Confirma tu contraseña',
                            password: true,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const TextFieldWidget(
                      label: 'Correo electrónico',
                      hint: 'Ingresa tu correo electrónico',
                    ),
                    const SizedBox(height: 20),
                    const TextFieldWidget(
                      label: 'Confirmar correo electrónico',
                      hint: 'Confirma tu correo electrónico',
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Radio(
                          groupValue: true,
                          value: false,
                          onChanged: (val) {},
                        ),
                        const Text('Acepto recibir notificaciones del metro'),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Radio(
                          groupValue: true,
                          value: false,
                          onChanged: (val) {},
                        ),
                        Expanded(
                          child: /* Text(
                            'Doy mi consentimiento para el tratamiento de mis datos personales*',
                          ) */
                              RichText(
                            text: TextSpan(
                              text: 'Doy mi consentimiento para el ',
                              style: const TextStyle(color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'tratamiento de mis datos personales*',
                                  style: TextStyle(
                                    color: Colors.blue[900]!,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Registrarme',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: MediaQuery.of(context).viewInsets.bottom > 0,
                      child: const SizedBox(height: 10),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

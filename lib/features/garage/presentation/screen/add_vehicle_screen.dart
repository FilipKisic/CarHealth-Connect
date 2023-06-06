import 'package:car_health_connect/core/style/text_styles.dart';
import 'package:car_health_connect/core/widget/custom_text_field.dart';
import 'package:car_health_connect/core/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AddVehicleScreen extends HookConsumerWidget {
  final _formGroup = FormGroup({
    'vin': FormControl<String>(
      validators: [
        Validators.required,
        Validators.minLength(17),
        Validators.maxLength(17),
      ],
    ),
  });

  AddVehicleScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vinController = useTextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/add_vehicle_background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ReactiveForm(
              formGroup: _formGroup,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Image(
                    image: AssetImage('assets/images/bmw_logo.png'),
                    width: 50,
                  ),
                  const SizedBox(height: 20),
                  const Text('Add vehicle', style: titleTextStyle),
                  const SizedBox(height: 20),
                  CustomTextField(
                    controller: vinController,
                    labelText: 'WBAXXXXXXXXXXXXXX',
                    formControlName: 'vin',
                    validationMessages: {
                      'required': (_) => 'VIN number is required',
                      'minLength': (_) => 'VIN must be 17 digits long',
                      'maxLength': (_) => 'VIN must be 17 digits long',
                    },
                  ),
                  const SizedBox(height: 30),
                  PrimaryButton.dark(
                    child: Text('ADD VEHICLE'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

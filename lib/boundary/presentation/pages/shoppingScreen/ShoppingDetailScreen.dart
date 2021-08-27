import 'package:autojaquezapp/boundary/presentation/widgets/AppBarWidget.dart';
import 'package:autojaquezapp/application/shipping/ShippingProviderNotifier.dart';
import 'package:cool_stepper/cool_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShoppingDetailScreen extends StatefulWidget {
  @override
  _WishListScreenState createState() => _WishListScreenState();
}

class _WishListScreenState extends State<ShoppingDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return EmptyShoppingDetailScreen();
  }
}

class EmptyShoppingDetailScreen extends StatefulWidget {
  @override
  _EmptyShoppingDetailScreenState createState() =>
      _EmptyShoppingDetailScreenState();
}

class _EmptyShoppingDetailScreenState extends State<EmptyShoppingDetailScreen> {
  final _formKey = GlobalKey<FormState>();
  String selectedRole = "Writer";
  TextEditingController _nameCtrl = TextEditingController();
  TextEditingController _emailCtrl = TextEditingController();
  bool iSAddress = true;

  late ShippingProviderNotifier shippingEvent;

  String _value = "0";

  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    shippingEvent = Provider.of<ShippingProviderNotifier>(context);
    shippingEvent.fillAddessList();

    final stepper = CoolStepper(
      onCompleted: () {
        print("Steps completed!");
      },
      steps: _step(),
      config: CoolStepperConfig(
          backText: "ANTERIOR",
          nextText: "SIGUIENTE",
          finalText: "",
          ofText: "DE",
          stepText: "PASO"),
    );

    return Scaffold(
      backgroundColor: Color(0xFFfafafa),
      appBar: appBarWidget(context),
      body: stepper,
      /*bottomNavigationBar: BottomNavBar(
        product: widget.product,
      )*/
    );
  }

  Widget _buildTextField({
    required String labelText,
    required FormFieldValidator<String> validator,
    required TextEditingController controller,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
        ),
        // validator: validator,
        controller: controller,
      ),
    );
  }

  Widget _buildCheckAddress() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(0.09),
          /*
          child: shippingEvent.addressList == null
              ? Container()
              : DropdownButton<List>(
                  isExpanded: true,
                  value: _value,
                  items: shippingEvent.addressList,
                  onChanged: (value) {
                    setState(() {
                      _value = value as String;
                    });
                  }),*/
        )
      ],
    );
  }

  Widget _buildAddress() {
    return Column(
      children: [
        _buildTextField(
          labelText: "Nombre contacto",
          validator: (value) {
            if (value!.isEmpty) {
              return "Name is required";
            }
            return null;
          },
          controller: _nameCtrl,
        ),
        _buildTextField(
          labelText: "Email Address",
          validator: (value) {
            if (value!.isEmpty) {
              return "Email address is required";
            }
            return null;
          },
          controller: _emailCtrl,
        ),
        _buildTextField(
          labelText: "Ciudad",
          validator: (value) {
            if (value!.isEmpty) {
              return "Name is required";
            }
            return null;
          },
          controller: _nameCtrl,
        ),
        _buildTextField(
          labelText: "Direccion",
          validator: (value) {
            if (value!.isEmpty) {
              return "Name is required";
            }
            return null;
          },
          controller: _nameCtrl,
        ),
        _buildTextField(
          labelText: "Direccion 2",
          validator: (value) {
            if (value!.isEmpty) {
              return "Name is required";
            }
            return null;
          },
          controller: _nameCtrl,
        ),
        _buildTextField(
          labelText: "Telefono/ Celular",
          validator: (value) {
            if (value!.isEmpty) {
              return "Name is required";
            }
            return null;
          },
          controller: _nameCtrl,
        ),
      ],
    );
  }

  Widget _buildSelector({
    required BuildContext context,
    required String name,
  }) {
    bool isActive = name == selectedRole;

    return Expanded(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          color: isActive ? Theme.of(context).primaryColor : null,
          border: Border.all(
            width: 0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: RadioListTile<String>(
          value: name,
          activeColor: Colors.white,
          groupValue: selectedRole,
          onChanged: (ind) => setState(() => selectedRole = ind!),
          title: Text(
            name,
            style: TextStyle(
              color: isActive ? Colors.white : null,
            ),
          ),
        ),
      ),
    );
  }

  List<CoolStep> _step() {
    final List<CoolStep> steps = [
      CoolStep(
        title: "Dirección",
        subtitle: "Por favor introduce la dirección de envio.",
        content: Form(
          key: _formKey,
          child: Column(
            children: [
              CheckboxListTile(
                  title: Text("Usar la misma direccion"),
                  value: iSAddress,
                  onChanged: (newValue) {
                    iSAddress = newValue!;
                    _currentIndex = 0;
                    if (newValue) {
                      _currentIndex = 1;
                    }
                    setState(() {});
                  },
                  controlAffinity: ListTileControlAffinity.leading),
              IndexedStack(
                index: _currentIndex,
                children: [_buildAddress(), _buildCheckAddress()],
              ),
            ],
          ),
        ),
        validation: () {
          if (!_formKey.currentState!.validate()) {
            return "Fill form correctly";
          }
          return null;
        },
      ),
      CoolStep(
        title: "Select your role",
        subtitle: "Choose a role that better defines you",
        content: Container(
          child: Row(
            children: <Widget>[
              _buildSelector(
                context: context,
                name: "Writer",
              ),
              SizedBox(width: 5.0),
              _buildSelector(
                context: context,
                name: "Editor",
              ),
            ],
          ),
        ),
        validation: () {
          return null;
        },
      ),
    ];
    return steps;
  }
}

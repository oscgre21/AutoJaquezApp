import 'package:autojaquezapp/application/shipping/ShippingProviderNotifier.dart';

import '../../widgets/AppBarWidget.dart';
import 'package:cool_stepper/cool_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShoppingDetailScreen2 extends StatefulWidget {
  @override
  _WishListScreenState createState() => _WishListScreenState();
}

class _WishListScreenState extends State<ShoppingDetailScreen2> {
  @override
  Widget build(BuildContext context) {
    return EmptyShoppingDetailScreen2();
  }
}

class EmptyShoppingDetailScreen2 extends StatefulWidget {
  @override
  _EmptyShoppingDetailScreenState2 createState() =>
      _EmptyShoppingDetailScreenState2();
}

class _EmptyShoppingDetailScreenState2
    extends State<EmptyShoppingDetailScreen2> {
  final _formKey = GlobalKey<FormState>();
  String selectedRole = "Writer";
  TextEditingController _nameCtrl = TextEditingController();
  TextEditingController _emailCtrl = TextEditingController();
  bool iSAddress = true;

  late ShippingProviderNotifier shippingEvent;

  String _value = "0";

  int _currentIndex = 1;
  late double width, height = 55.0;
  double customFontSize = 13;

  @override
  Widget build(BuildContext context) {
    shippingEvent = Provider.of<ShippingProviderNotifier>(context);
    shippingEvent.fillAddessList();

    return Scaffold(
      backgroundColor: Color(0xFFfafafa),
      appBar: appBarWidget(context),
      body: _container(),
      /*bottomNavigationBar: BottomNavBar(
        product: widget.product,
      )*/
    );
  }

  Widget _container() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 80,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              _ButtomStepMenu(
                  title: "DIRECCION",
                  onclick: () {
                    print("Pase por aqui");
                  },
                  icon: Container(
                    padding: EdgeInsets.all(10),
                    width: width,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Icon(
                      Icons.contact_page,
                      color: Colors.green,
                    ),
                  )),
              _LineWidget(),
              _ButtomStepMenu(
                  title: "ENVIO",
                  icon: Container(
                    padding: EdgeInsets.all(10),
                    width: width,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Icon(
                      Icons.contact_page,
                      color: Colors.green,
                    ),
                  ),
                  onclick: () => {}),
              _LineWidget(),
              _ButtomStepMenu(
                  title: "FORMA DE PAGO",
                  icon: Container(
                    padding: EdgeInsets.all(10),
                    width: width,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Icon(
                      Icons.contact_page,
                      color: Colors.green,
                    ),
                  ),
                  onclick: () => {}),
              _LineWidget(),
              _ButtomStepMenu(
                  title: "CONFIRMAR ORDEN",
                  icon: Container(
                    padding: EdgeInsets.all(10),
                    width: width,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Icon(
                      Icons.contact_page,
                      color: Colors.green,
                    ),
                  ),
                  onclick: () => {}),
            ],
          ),
        ),
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
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: IndexedStack(
              index: _currentIndex,
              children: [_buildAddress(), _buildCheckAddress()],
            ),
          ),
        ),
        RaisedButton(
          onPressed: () {},
          child: Text(
            "Ordenar",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Poppins-Medium.ttf',
            ),
            textAlign: TextAlign.center,
          ),
          color: Color(0xFFBC1F26),
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Color(0xFFBC1F26))),
        )
      ],
    );
  }

  Widget _LineWidget() {
    return SizedBox(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 31),
        height: 10.0,
        color: Colors.red,
      ),
      width: 30,
    );
  }

  Widget _ButtomStepMenu(
      {required String title,
      required Widget icon,
      bool isActive = false,
      required Function onclick}) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
                blurRadius: 5, color: Colors.black26, offset: Offset(0, 2))
          ]),
      child: RawMaterialButton(
        padding: EdgeInsets.only(right: 12),
        shape: RoundedRectangleBorder(),
        onPressed: () {
          if (onclick != null) {
            onclick();
          }
        },
        child: Column(
          children: <Widget>[
            icon == null ? Container() : icon,
            Center(
                child: Container(
              child: Text(
                title,
                style: TextStyle(
                    color: Color(0xFF969696),
                    fontFamily: 'Roboto-Light.ttf',
                    fontSize: customFontSize),
              ),
            ))
          ],
        ),
      ),
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
              : DropdownButton(
                  isExpanded: true,
                  value: _value,
                  items: shippingEvent.addressList,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  }),*/
        )
      ],
    );
  }

  Widget _buildAddress() {
    return SingleChildScrollView(
      child: Column(
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
      ),
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
          onChanged: (v) {
            setState(() {
              selectedRole = v!;
            });
          },
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
              )
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

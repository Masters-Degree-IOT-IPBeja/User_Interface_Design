import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supraiot/classes/preferences_setings.dart';

class SetupPageBody extends StatefulWidget {
  @override
  _SetupPageBodyState createState() => _SetupPageBodyState();
}

class _SetupPageBodyState extends State<SetupPageBody> {
  bool notificationsEnabled = true;
  bool textNotificationsEnabled = true;
  bool perimeterAlertEnabled = true;
  bool availablePlacesPerRowEnabled = false;
  bool locationOfAvailablePlaceEnabled = false;
  int minAvailablePlaces = 3;
  int alertRadius = 50;

  @override
  void initState() {
    super.initState();
    _loadSettings(); // Carregar as configurações salvas ao iniciar a página
  }

  void _loadSettings() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      notificationsEnabled = prefs.getBool('notificationsEnabled') ?? true;
      textNotificationsEnabled =
          prefs.getBool('textNotificationsEnabled') ?? true;
      perimeterAlertEnabled =
          prefs.getBool('perimeterAlertEnabled') ?? true;
      availablePlacesPerRowEnabled =
          prefs.getBool('availablePlacesPerRowEnabled') ?? false;
      locationOfAvailablePlaceEnabled =
          prefs.getBool('locationOfAvailablePlaceEnabled') ?? false;
      minAvailablePlaces = prefs.getInt('minAvailablePlaces') ?? 3;
      alertRadius = prefs.getInt('alertRadius') ?? 50;
    });
  }

  Future<void> _saveSettings() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('notificationsEnabled', notificationsEnabled);
    await prefs.setBool('textNotificationsEnabled', textNotificationsEnabled);
    await prefs.setBool('perimeterAlertEnabled', perimeterAlertEnabled);
    await prefs.setBool('availablePlacesPerRowEnabled',
        availablePlacesPerRowEnabled);
    await prefs.setBool(
        'locationOfAvailablePlaceEnabled', locationOfAvailablePlaceEnabled);
    await prefs.setInt('minAvailablePlaces', minAvailablePlaces);
    await prefs.setInt('alertRadius', alertRadius);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        await _saveSettings(); // Salvar as configurações antes de voltar
        return true;
      },
      child: Scaffold(
        body: PreferencesSetings(
          notificationsEnabled: notificationsEnabled,
          textNotificationsEnabled: textNotificationsEnabled,
          perimeterAlertEnabled: perimeterAlertEnabled,
          availablePlacesPerRowEnabled: availablePlacesPerRowEnabled,
          locationOfAvailablePlaceEnabled: locationOfAvailablePlaceEnabled,
          minAvailablePlaces: minAvailablePlaces,
          alertRadius: alertRadius,
          onSave: _saveSettings,
          onChangedNotifications: (value) {
            setState(() {
              notificationsEnabled = value;
            });
          },
          onChangedTextNotifications: (value) {
            setState(() {
              textNotificationsEnabled = value;
            });
          },
          onChangedPerimeterAlert: (value) {
            setState(() {
              perimeterAlertEnabled = value;
            });
          },
          onChangedAvailablePlacesPerRow: (value) {
            setState(() {
              availablePlacesPerRowEnabled = value;
            });
          },
          onChangedLocationOfAvailablePlace: (value) {
            setState(() {
              locationOfAvailablePlaceEnabled = value;
            });
          },
          onChangedMinAvailablePlaces: (value) {
            setState(() {
              minAvailablePlaces = value;
            });
          },
          onChangedAlertRadius: (value) {
            setState(() {
              alertRadius = value;
            });
          },
        ),
      ),
    );
  }
}

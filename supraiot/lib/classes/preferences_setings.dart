import 'package:flutter/material.dart';
import 'package:supraiot/classes/settings_section.dart';

class PreferencesSetings extends StatelessWidget {
  final bool notificationsEnabled;
  final bool textNotificationsEnabled;
  final bool perimeterAlertEnabled;
  final bool availablePlacesPerRowEnabled;
  final bool locationOfAvailablePlaceEnabled;
  final int minAvailablePlaces;
  final int alertRadius;
  final Function onSave;
  final Function(bool) onChangedNotifications;
  final Function(bool) onChangedTextNotifications;
  final Function(bool) onChangedPerimeterAlert;
  final Function(bool) onChangedAvailablePlacesPerRow;
  final Function(bool) onChangedLocationOfAvailablePlace;
  final Function(int) onChangedMinAvailablePlaces;
  final Function(int) onChangedAlertRadius;

  const PreferencesSetings({
    required this.notificationsEnabled,
    required this.textNotificationsEnabled,
    required this.perimeterAlertEnabled,
    required this.availablePlacesPerRowEnabled,
    required this.locationOfAvailablePlaceEnabled,
    required this.minAvailablePlaces,
    required this.alertRadius,
    required this.onSave,
    required this.onChangedNotifications,
    required this.onChangedTextNotifications,
    required this.onChangedPerimeterAlert,
    required this.onChangedAvailablePlacesPerRow,
    required this.onChangedLocationOfAvailablePlace,
    required this.onChangedMinAvailablePlaces,
    required this.onChangedAlertRadius,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SwitchListTile(
              title: Text('Notificações'),
              value: notificationsEnabled,
              onChanged: (value) {
                onChangedNotifications(value);
                // Desabilitar outros switches se Notificações estiver desativada
                if (!value) {
                  onChangedTextNotifications(false);
                  onChangedPerimeterAlert(false);
                  onChangedAvailablePlacesPerRow(false);
                  onChangedLocationOfAvailablePlace(false);
                }
              },
            ),
            SwitchListTile(
              title: Text('Notificação apenas Texto'),
              value: textNotificationsEnabled,
              onChanged: notificationsEnabled
                  ? (value) => onChangedTextNotifications(value)
                  : null, // Desabilitar se Notificações estiver desativada
            ),
            SwitchListTile(
              title: Text('Ativar Notificação ao se Aproximar do Estacionamento'),
              value: perimeterAlertEnabled,
              onChanged: notificationsEnabled
                  ? (value) => onChangedPerimeterAlert(value)
                  : null, // Desabilitar se Notificações estiver desativada
            ),
            SwitchListTile(
              title: Text('Quantidade de Lugares Disponíveis por Linha'),
              value: availablePlacesPerRowEnabled,
              onChanged: notificationsEnabled
                  ? (value) => onChangedAvailablePlacesPerRow(value)
                  : null, // Desabilitar se Notificações estiver desativada
            ),
            SwitchListTile(
              title: Text('Localização dos Lugares Disponíveis por linha'),
              value: locationOfAvailablePlaceEnabled,
              onChanged: notificationsEnabled && availablePlacesPerRowEnabled
                  ? (value) => onChangedLocationOfAvailablePlace(value)
                  : null, // Desabilitar se Notificações ou Lugares Disponíveis por Linha estiverem desativadas
            ),
            const SizedBox(height: 20),
            SettingsSection(
              title: 'Número Mínimo de Vagas para Receber as Notificações',
              value: minAvailablePlaces.toInt(),
              onChanged: (value) => onChangedMinAvailablePlaces(value.toInt()),
              minValue: 3,
              maxValue: 99,
              stepValue: 1,
              hintText: 'Digite um valor',
              helperText: 'MIN 3',
              context: context,
            ),
            const SizedBox(height: 20),
            SettingsSection(
              title: 'Qual a Distancia do Parque que Deseja Receber Notificações (metros)',
              value: alertRadius,
              onChanged: (value) => onChangedAlertRadius(value.toInt()),
              minValue: 50,
              maxValue: 500,
              stepValue: 25,
              hintText: 'Digite um valor',
              helperText: 'MIN 50',
              context: context,
            ),
            const SizedBox(height: 40),
            Center(
              child: ElevatedButton.icon(
                onPressed: () async {
                  // Executar a função onSave para salvar os dados
                  await onSave();
                  // Mostrar um diálogo pop-up informando que os dados foram salvos com sucesso
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Definições salvas com sucesso'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // Fechar o diálogo
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                },
                icon: const Icon(Icons.save),
                label: const Text('Salvar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

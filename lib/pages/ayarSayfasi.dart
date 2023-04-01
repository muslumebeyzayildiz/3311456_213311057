import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class ayarSayfasi extends StatefulWidget {
  const ayarSayfasi({Key? key}) : super(key: key);

  @override
  State<ayarSayfasi> createState() => _ayarSayfasiState();
}

class _ayarSayfasiState extends State<ayarSayfasi> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.green.shade900,
      title: Text('Ayarlar'),
    ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text('Common'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: Icon(Icons.language),
                title: Text('Dil'),
                value: Text('English'),
              ),
              SettingsTile.switchTile(
                onToggle: (value) {
                },
                initialValue: false,
                leading: Icon(Icons.format_paint),
                title: Text('Özel temayı etkinleştir'),
              ),

              SettingsTile.navigation(
                leading: Icon(Icons.help),
                title: Text('Yardım'),

              ),
              SettingsTile.switchTile(
                onToggle: (value) {},
                initialValue: false,
                leading: Icon(Icons.add_alert),
                title: Text('Bildirimleri yönet'),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
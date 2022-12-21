import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hspa_app/constants/src/get_pages.dart';
import 'package:hspa_app/constants/src/strings.dart';
import 'package:local_auth/local_auth.dart';

import '../../../services/src/local_auth_service.dart';
import '../../../theme/src/app_colors.dart';
import '../../../theme/src/app_text_style.dart';

enum _SupportState {
  unknown,
  supported,
  unsupported,
}

class LocalAuthPage extends StatefulWidget {
  const LocalAuthPage({Key? key}) : super(key: key);

  @override
  State<LocalAuthPage> createState() => _LocalAuthPageState();
}

class _LocalAuthPageState extends State<LocalAuthPage> {
  ///LOCAL AUTH
  final LocalAuthentication auth = LocalAuthentication();
  _SupportState _supportState = _SupportState.unknown;

  ///DATA VARIABLES
  bool _isAuthenticated = false;

  @override
  void initState() {
    /// Get Arguments

    super.initState();
    auth.isDeviceSupported().then(
          (bool isSupported) => setState(() {
            _supportState = isSupported
                ? _SupportState.supported
                : _SupportState.unsupported;
            authenticate();
          }),
        );
  }

  Future<void> authenticate() async {
    _isAuthenticated = await getAuthenticationResponse();
    if (_isAuthenticated) {
      setState(() {});
      Get.offNamed(AppRoutes.splashPage);
    } else {
      SystemNavigator.pop();
    }
  }

  Future<bool> getAuthenticationResponse() async {
    bool isAuthenticated = false;
    if (_supportState == _SupportState.supported) {
      isAuthenticated = await LocalAuthService.authenticate();
    }
    return isAuthenticated;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: _isAuthenticated
                ? Text(
                    AppStrings().labelAuthenticating,
                    style: AppTextStyle.textMediumStyle(
                      color: AppColors.black,
                      fontSize: 16,
                    ),
                  )
                : SizedBox(
                    width: 40,
                    height: 40,
                    child: CircularProgressIndicator(
                      backgroundColor: AppColors.primaryLightBlue007BFF,
                    ),
                  ),
          )
        ],
      ),
    );
  }
}
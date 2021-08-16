import 'package:flutter/cupertino.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shareadminpanel/functions/injection.dart';
import 'package:shareadminpanel/functions/profile_fun.dart';
import 'package:shareadminpanel/utils/response.dart';

class PortfolioProvider extends ChangeNotifier {
  final ProfileFun _userFun = inject<ProfileFun>();
  BehaviorSubject<Response>? _controllerUserProfile;

  Stream<Response>? get streamUserProfile => _controllerUserProfile?.stream;

  //TODO: Create the user info in an Object

  PortfolioProvider() {
    _controllerUserProfile = BehaviorSubject<Response>();
  }

  getUserPortfolio(String uid) async {
    _controllerUserProfile?.sink.add(Response.loading(""));
    //TODO: Store the user info in an Object
    _userFun.getUserProfile(uid);
    _controllerUserProfile?.sink.add(Response.completed(""));
  }

  @override
  void dispose() {
    _controllerUserProfile?.close();
    // TODO: implement dispose
    super.dispose();
  }
}

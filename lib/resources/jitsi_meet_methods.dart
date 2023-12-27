import 'package:jitsi_meet_flutter_sdk/jitsi_meet_flutter_sdk.dart';
import 'package:zoom_clone_flutter/resources/auth_methods.dart';
import 'package:zoom_clone_flutter/resources/firestore_methods.dart';

class JitsiMeetMethods {
  final AuthMethods _authMethods = AuthMethods();
  final FirestoreMethods _firestoreMethods = FirestoreMethods();
  void createMeeting({
    required String roomName,
    required bool isAudioMuted,
    required bool isVideoMuted,
    String username = '',
  }) async {
    try {
      var jitsimeet = JitsiMeet();
      String name;
      if (username.isEmpty) {
        name = _authMethods.user.displayName!;
      } else {
        name = username;
      }
      var options = JitsiMeetConferenceOptions(
        room: roomName,
        userInfo: JitsiMeetUserInfo(
          avatar: _authMethods.user.photoURL,
          displayName: name,
          email: _authMethods.user.email,
        ),
        configOverrides: {
          'IsAudioMuted': isAudioMuted,
          'IsVideoMuted': isVideoMuted,
        },
      );
      _firestoreMethods.addToMeetingHistory(roomName);
      jitsimeet.join(options);
    } catch (error) {
      print(error);
    }
  }
}

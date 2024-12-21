import 'package:flutter/material.dart';
import 'package:video_voice_calling/call_page.dart';
import 'package:video_voice_calling/voice_call.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green.withOpacity(0.5),
        title: const Text(
          "Voice & Video Calling",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            TextFormField(
              controller: callId,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.green.withOpacity(0.5),
                  )),
                  labelText: "CALL ID",
                  hintText: "Please enter CALL ID to join",
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.normal, fontSize: 14)),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: name,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Name",
                  hintText: "Please Enter Name",
                  hintStyle:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 14)),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: userId,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "User ID",
                  hintText: "Please Enter user id",
                  hintStyle:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 14)),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => CallPage(
                          callID: callId.text,
                          userName: name.text,
                          userId: userId.text,
                        ),
                      ),
                    );
                  },
                  icon: const Icon(Icons.video_camera_back),
                  label: const Text("Join video Call"),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => VoiceCall(
                          callID: callId.text,
                          userName: name.text,
                          userId: userId.text,
                        ),
                      ),
                    );
                  },
                  icon: const Icon(Icons.phone),
                  label: const Text("Join voice Call"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  final callId = TextEditingController();
  final name = TextEditingController();
  final userId = TextEditingController();
}

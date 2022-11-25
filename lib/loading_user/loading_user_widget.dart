import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class LoadingUserWidget extends StatefulWidget {
  const LoadingUserWidget({Key? key}) : super(key: key);

  @override
  _LoadingUserWidgetState createState() => _LoadingUserWidgetState();
}

class _LoadingUserWidgetState extends State<LoadingUserWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 1000));
      if (currentUserReference != null) {
        context.goNamedAuth('Dashboard', mounted);
      } else {
        await Future.delayed(const Duration(milliseconds: 2000));
        if (currentUserReference != null) {
          context.goNamedAuth('Dashboard', mounted);
        } else {
          await Future.delayed(const Duration(milliseconds: 3000));
          if (currentUserReference != null) {
            context.goNamedAuth('Dashboard', mounted);
          } else {
            GoRouter.of(context).prepareAuthEvent();
            await signOut();
          }
        }
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Text(
                  'Fetching your data...',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0x8BFF656C),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/travel-app-nx06qn/assets/mm6w5tghwas3/sushi.png',
                      width: 400.0,
                      height: 387.0,
                      fit: BoxFit.cover,
                      alignment: const Alignment(0.0, 0.0),
                    ),
                  ),
                ],
              ),
              Opacity(
                opacity: 0.2,
                child: Divider(
                  thickness: 2.0,
                  color: FlutterFlowTheme.of(context).alternate,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 120.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'The Taste of Japanese food',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: Colors.white,
                            fontSize: 50.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.italic,
                          ),
                    ),
                    Text(
                      'Feel the taste of most populars Japanese foods from anywhere and anytime',
                      textAlign: TextAlign.justify,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: Colors.white,
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w200,
                          ),
                    ),
                  ],
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('Page2');
                },
                text: 'Get Started',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: const Color(0xCEFF5568),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

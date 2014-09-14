library manager_v1beta2_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_manager_v1beta2_api/src/console_client.dart';

import "package:google_manager_v1beta2_api/manager_v1beta2_api_client.dart";

/** The Deployment Manager API allows users to declaratively configure, deploy and run complex solutions on the Google Cloud Platform. */
@deprecated
class Manager extends Client with ConsoleClient {

  /** OAuth Scope2: View and manage your applications deployed on Google App Engine */
  static const String APPENGINE_ADMIN_SCOPE = "https://www.googleapis.com/auth/appengine.admin";

  /** OAuth Scope2: View and manage your data across Google Cloud Platform services */
  static const String CLOUD_PLATFORM_SCOPE = "https://www.googleapis.com/auth/cloud-platform";

  /** OAuth Scope2: View and manage your Google Compute Engine resources */
  static const String COMPUTE_SCOPE = "https://www.googleapis.com/auth/compute";

  /** OAuth Scope2: Manage your data in Google Cloud Storage */
  static const String DEVSTORAGE_READ_WRITE_SCOPE = "https://www.googleapis.com/auth/devstorage.read_write";

  /** OAuth Scope2: View and manage your Google Cloud Platform management resources and deployment status information */
  static const String NDEV_CLOUDMAN_SCOPE = "https://www.googleapis.com/auth/ndev.cloudman";

  /** OAuth Scope2: View your Google Cloud Platform management resources and deployment status information */
  static const String NDEV_CLOUDMAN_READONLY_SCOPE = "https://www.googleapis.com/auth/ndev.cloudman.readonly";

  final oauth2.OAuth2Console auth;

  Manager([oauth2.OAuth2Console this.auth]);
}

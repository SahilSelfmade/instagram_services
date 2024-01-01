import 'dart:convert';
import 'dart:developer';

class Logger {
  static void print(
    dynamic data,
  ) {
    log('\n*********\n$data\n*********\n');
  }

  static void error(
    dynamic title,
    dynamic data,
  ) {
    log('\n*********\n$title\n$data\n*********\n');
  }

  static void printApiResponse(
    dynamic data,
  ) {
    log('\n*********Response Body:\n${const JsonEncoder.withIndent('  ').convert(data)}\n*********\n');
  }

  static void printApiRequest(
    dynamic data,
  ) {
    log('\n*********\nRequest Body:\n$data\n*********\n');
  }
}

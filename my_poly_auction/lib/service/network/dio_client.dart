import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:my_poly_auction/env/env.dart';
import 'package:my_poly_auction/service/network/constant/endpoints.dart';

enum _ApiSource {
  crm,
  cms;
}

var logger = Logger(level: Level.nothing);

class DioClient {
  final Dio _dio;

  DioClient(this._dio) {
    _dio
      ..options.baseUrl = Endpoints.baseUrl
      ..options.headers = {
        'cccrm-client-secret-key': Env.cccmsClientSecretKey,
      }
      ..options.connectTimeout = Endpoints.connectionTimeout
      ..options.receiveTimeout = Endpoints.receiveTimeout
      ..options.responseType = ResponseType.json
      ..interceptors.add(_createDioInterceptor(_ApiSource.cms));
  }

  bool _isEmpty(dynamic body) {
    return body != null &&
        body != '' &&
        body != false &&
        body != 0 &&
        body != '0';
  }

  String _generateCheckCode(input, _ApiSource apiSource) {
    var cc = '';
    var data = input;

    // Convert array to object
    if (data is List) {
      data = data.asMap();
    }

    // Loop object
    if (data is Map) {
      final dataKeys = data.keys.toList();
      dataKeys.sort();
      for (var key in dataKeys) {
        final body = data[key];
        if (_isEmpty(body)) {
          if (body is! Map || body is! List) {
            cc += data[key];
          } else {
            cc += _generateCheckCode(body, apiSource);
          }
        }
      }
    }

    final secret = apiSource == _ApiSource.crm
        ? Env.cccrmClientSecretKey
        : Env.cccmsClientSecretKey;
    final md5Checksum = md5.convert(utf8.encode('$cc$secret')).toString();

    return md5Checksum.substring(11, 11 + 10);
  }

  InterceptorsWrapper _createDioInterceptor(_ApiSource apiSource) {
    return InterceptorsWrapper(
      onRequest: (options, handler) {
        // Do something before request is sent

        final checkCode = _generateCheckCode(options.data, apiSource);

        if (options.method != 'GET') {
          options.data['cc'] = checkCode;
        } else {
          options.queryParameters['cc'] = checkCode;
        }

        if (options.data != null) {
          logger.i('API REQUEST"');
          logger.i(options.data as Map);
        } else {
          logger.i('API REQUEST"');
          // ignore: unnecessary_cast
          logger.i(options.queryParameters as Map);
        }

        return handler.next(options); //continue
        // If you want to resolve the request with some custom data，
        // you can resolve a `Response` object eg: `handler.resolve(response)`.
        // If you want to reject the request with a error message,
        // you can reject a `DioError` object eg: `handler.reject(dioError)`
      },
      onResponse: (response, handler) {
        // Do something with response data
        logger.i('API RESPONSE"');
        logger.i(response.data as Map);

        return handler.next(response); // continue
        // If you want to reject the request with a error message,
        // you can reject a `DioError` object eg: `handler.reject(dioError)`
      },
      onError: (DioError e, handler) {
        // Do something with response error
        return handler.next(e); //continue
        // If you want to resolve the request with some custom data，
        // you can resolve a `Response` object eg: `handler.resolve(response)`.
      },
    );
  }

  Dio get dio => _dio;
}

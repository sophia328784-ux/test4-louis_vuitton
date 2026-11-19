package com.sensorsdata.analytics.android.sdk.network;

import android.text.TextUtils;
import com.dynatrace.android.callback.Callback;
import com.sensorsdata.analytics.android.sdk.SAConfigOptions;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: loaded from: classes3.dex */
class RealRequest {
    private static final String TAG = "SA.HttpRequest";
    private static String sRequestURL;
    private HttpConfig httpConfig = new HttpConfig();

    private RealResponse getExceptionResponse(Exception exc) {
        RealResponse realResponse = new RealResponse();
        realResponse.exception = exc;
        realResponse.errorMsg = exc.getMessage();
        SALog.i(TAG, realResponse.toString());
        return realResponse;
    }

    private HttpURLConnection getHttpURLConnection(String str, String str2) throws IOException {
        URLConnection uRLConnectionOpenConnection = new URL(str).openConnection();
        Callback.C(uRLConnectionOpenConnection);
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection.setRequestMethod(str2);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setConnectTimeout(this.httpConfig.getConnectionTimeout());
        httpURLConnection.setReadTimeout(this.httpConfig.getReadTimeout());
        if (str2.equals("POST")) {
            httpURLConnection.setDoOutput(true);
        }
        SAConfigOptions configOptions = SensorsDataAPI.getConfigOptions();
        if (configOptions != null && configOptions.getSSLSocketFactory() != null && (httpURLConnection instanceof HttpsURLConnection)) {
            ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(configOptions.getSSLSocketFactory());
        }
        return httpURLConnection;
    }

    private RealResponse getRealResponse(HttpURLConnection httpURLConnection) {
        RealResponse realResponse = new RealResponse();
        try {
            try {
                int iK = Callback.k(httpURLConnection);
                realResponse.code = iK;
                if (HttpUtils.needRedirects(iK)) {
                    realResponse.location = HttpUtils.getLocation(httpURLConnection, sRequestURL);
                }
                realResponse.contentLength = Callback.c(httpURLConnection);
                if (realResponse.code < 400) {
                    realResponse.result = HttpUtils.getRetString(Callback.g(httpURLConnection));
                } else {
                    realResponse.errorMsg = HttpUtils.getRetString(Callback.d(httpURLConnection));
                }
                httpURLConnection.disconnect();
                SALog.i(TAG, realResponse.toString());
                return realResponse;
            } catch (IOException e2) {
                RealResponse exceptionResponse = getExceptionResponse(e2);
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return exceptionResponse;
            }
        } catch (Throwable th) {
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            throw th;
        }
    }

    private void setHeader(HttpURLConnection httpURLConnection, Map<String, String> map) {
        if (map != null) {
            for (String str : map.keySet()) {
                httpURLConnection.setRequestProperty(str, map.get(str));
            }
        }
    }

    public RealResponse getData(String str, Map<String, String> map) {
        try {
            SALog.i(TAG, "url:" + str + ",\nmethod:GET");
            sRequestURL = str;
            HttpURLConnection httpURLConnection = getHttpURLConnection(str, "GET");
            if (map != null) {
                setHeader(httpURLConnection, map);
            }
            Callback.a(httpURLConnection);
            return getRealResponse(httpURLConnection);
        } catch (Exception e2) {
            return getExceptionResponse(e2);
        }
    }

    public RealResponse postData(String str, String str2, String str3, Map<String, String> map) {
        BufferedWriter bufferedWriter = null;
        try {
            try {
                sRequestURL = str;
                SALog.i(TAG, "url:" + str + "\nparams:" + str2 + "\nmethod:POST");
                HttpURLConnection httpURLConnection = getHttpURLConnection(str, "POST");
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setUseCaches(false);
                if (!TextUtils.isEmpty(str3)) {
                    httpURLConnection.setRequestProperty("Content-Type", str3);
                }
                if (map != null) {
                    setHeader(httpURLConnection, map);
                }
                Callback.a(httpURLConnection);
                if (!TextUtils.isEmpty(str2)) {
                    BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(Callback.i(httpURLConnection), "UTF-8"));
                    try {
                        bufferedWriter2.write(str2);
                        bufferedWriter2.flush();
                        bufferedWriter = bufferedWriter2;
                    } catch (Exception e2) {
                        e = e2;
                        bufferedWriter = bufferedWriter2;
                        RealResponse exceptionResponse = getExceptionResponse(e);
                        if (bufferedWriter != null) {
                            try {
                                bufferedWriter.close();
                            } catch (IOException e3) {
                                SALog.printStackTrace(e3);
                            }
                        }
                        return exceptionResponse;
                    } catch (Throwable th) {
                        th = th;
                        bufferedWriter = bufferedWriter2;
                        if (bufferedWriter != null) {
                            try {
                                bufferedWriter.close();
                            } catch (IOException e4) {
                                SALog.printStackTrace(e4);
                            }
                        }
                        throw th;
                    }
                }
                RealResponse realResponse = getRealResponse(httpURLConnection);
                if (bufferedWriter != null) {
                    try {
                        bufferedWriter.close();
                        return realResponse;
                    } catch (IOException e5) {
                        SALog.printStackTrace(e5);
                    }
                }
                return realResponse;
            } catch (Exception e6) {
                e = e6;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public RealRequest setHttpConfig(HttpConfig httpConfig) {
        if (httpConfig == null) {
            return this;
        }
        this.httpConfig = httpConfig;
        return this;
    }
}

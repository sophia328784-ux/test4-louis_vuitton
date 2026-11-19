package com.linecorp.linesdk.internal.nwclient.core;

import android.content.Context;
import android.net.Uri;
import com.dynatrace.android.callback.Callback;
import com.linecorp.linesdk.LineApiError;
import com.linecorp.linesdk.LineApiResponse;
import com.linecorp.linesdk.LineApiResponseCode;
import com.linecorp.linesdk.utils.UriUtils;
import com.networkbench.agent.impl.harvest.InitUrlConnection;
import defpackage.md;
import defpackage.pq0;
import defpackage.x1;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: loaded from: classes2.dex */
public class ChannelServiceHttpClient {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final byte[] f36237e = new byte[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UserAgentGenerator f36238a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StringResponseParser f36239b = new StringResponseParser("UTF-8");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f36240c = 90000;
    public final int d = 90000;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class HttpMethod {
        private static final /* synthetic */ HttpMethod[] $VALUES;
        public static final HttpMethod DELETE;
        public static final HttpMethod GET;
        public static final HttpMethod POST;
        public static final HttpMethod PUT;

        static {
            HttpMethod httpMethod = new HttpMethod("POST", 0);
            POST = httpMethod;
            HttpMethod httpMethod2 = new HttpMethod("GET", 1);
            GET = httpMethod2;
            HttpMethod httpMethod3 = new HttpMethod("DELETE", 2);
            DELETE = httpMethod3;
            HttpMethod httpMethod4 = new HttpMethod("PUT", 3);
            PUT = httpMethod4;
            $VALUES = new HttpMethod[]{httpMethod, httpMethod2, httpMethod3, httpMethod4};
        }

        public static HttpMethod valueOf(String str) {
            return (HttpMethod) Enum.valueOf(HttpMethod.class, str);
        }

        public static HttpMethod[] values() {
            return (HttpMethod[]) $VALUES.clone();
        }
    }

    public ChannelServiceHttpClient(Context context, String str) {
        this.f36238a = new UserAgentGenerator(context, str);
    }

    public static LineApiResponse b(HttpURLConnection httpURLConnection, ResponseDataParser responseDataParser, ResponseDataParser responseDataParser2) {
        InputStream inputStreamG = Callback.k(httpURLConnection) < 400 ? Callback.g(httpURLConnection) : Callback.d(httpURLConnection);
        List list = (List) Callback.f(httpURLConnection).get("Content-Encoding");
        if (list != null && !list.isEmpty()) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                if (((String) list.get(i2)).equalsIgnoreCase("gzip")) {
                    inputStreamG = new GZIPInputStream(inputStreamG);
                    break;
                }
            }
        }
        int iK = Callback.k(httpURLConnection);
        try {
            if (iK == 200 || iK == 204) {
                return responseDataParser == null ? LineApiResponse.d : LineApiResponse.b(responseDataParser.a(inputStreamG));
            }
            return LineApiResponse.a(LineApiResponseCode.SERVER_ERROR, new LineApiError(iK, (String) responseDataParser2.a(inputStreamG), LineApiError.ErrorCode.NOT_DEFINED));
        } catch (IOException e2) {
            return LineApiResponse.a(LineApiResponseCode.INTERNAL_ERROR, new LineApiError(e2, LineApiError.ErrorCode.HTTP_RESPONSE_PARSE_ERROR));
        }
    }

    public static HttpURLConnection e(Uri uri) throws IOException {
        URLConnection uRLConnectionOpenConnection = new URL(uri.toString()).openConnection();
        Callback.C(uRLConnectionOpenConnection);
        if (uRLConnectionOpenConnection instanceof HttpsURLConnection) {
            return (HttpURLConnection) uRLConnectionOpenConnection;
        }
        md.n(pq0.l(uri, "The scheme of the server url must be https."));
        return null;
    }

    public static void i(HttpURLConnection httpURLConnection, Map map) {
        for (Map.Entry entry : map.entrySet()) {
            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
    }

    public final LineApiResponse a(Uri uri, Map map, Map map2, ResponseDataParser responseDataParser) {
        Uri.Builder builderBuildUpon = uri.buildUpon();
        UriUtils.a(builderBuildUpon, map2);
        HttpURLConnection httpURLConnectionD = null;
        try {
            try {
                httpURLConnectionD = d(builderBuildUpon.build());
                i(httpURLConnectionD, map);
                Callback.a(httpURLConnectionD);
                LineApiResponse lineApiResponseB = b(httpURLConnectionD, responseDataParser, this.f36239b);
                httpURLConnectionD.disconnect();
                return lineApiResponseB;
            } catch (IOException e2) {
                LineApiResponse lineApiResponseA = LineApiResponse.a(LineApiResponseCode.NETWORK_ERROR, new LineApiError(e2));
                if (httpURLConnectionD != null) {
                    httpURLConnectionD.disconnect();
                }
                return lineApiResponseA;
            }
        } catch (Throwable th) {
            if (httpURLConnectionD != null) {
                httpURLConnectionD.disconnect();
            }
            throw th;
        }
    }

    public final HttpURLConnection c(Uri uri, int i2, HttpMethod httpMethod) throws IOException {
        HttpURLConnection httpURLConnectionE = e(uri);
        httpURLConnectionE.setInstanceFollowRedirects(true);
        httpURLConnectionE.setRequestProperty("User-Agent", this.f36238a.a());
        httpURLConnectionE.setRequestProperty("Accept-Encoding", "gzip");
        httpURLConnectionE.setRequestProperty("Content-Type", InitUrlConnection.CONTENT_TYPE_VALUE);
        httpURLConnectionE.setRequestProperty("Content-Length", String.valueOf(i2));
        httpURLConnectionE.setConnectTimeout(this.f36240c);
        httpURLConnectionE.setReadTimeout(this.d);
        httpURLConnectionE.setRequestMethod(httpMethod.name());
        httpURLConnectionE.setDoOutput(true);
        return httpURLConnectionE;
    }

    public final HttpURLConnection d(Uri uri) throws IOException {
        HttpURLConnection httpURLConnectionE = e(uri);
        httpURLConnectionE.setInstanceFollowRedirects(true);
        httpURLConnectionE.setRequestProperty("User-Agent", this.f36238a.a());
        httpURLConnectionE.setRequestProperty("Accept-Encoding", "gzip");
        httpURLConnectionE.setConnectTimeout(this.f36240c);
        httpURLConnectionE.setReadTimeout(this.d);
        httpURLConnectionE.setRequestMethod(HttpMethod.GET.name());
        return httpURLConnectionE;
    }

    public final HttpURLConnection f(Uri uri, int i2) throws IOException {
        HttpURLConnection httpURLConnectionE = e(uri);
        httpURLConnectionE.setInstanceFollowRedirects(true);
        httpURLConnectionE.setRequestProperty("User-Agent", this.f36238a.a());
        httpURLConnectionE.setRequestProperty("Accept-Encoding", "gzip");
        httpURLConnectionE.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        httpURLConnectionE.setRequestProperty("Content-Length", String.valueOf(i2));
        httpURLConnectionE.setConnectTimeout(this.f36240c);
        httpURLConnectionE.setReadTimeout(this.d);
        httpURLConnectionE.setRequestMethod(HttpMethod.POST.name());
        httpURLConnectionE.setDoOutput(true);
        return httpURLConnectionE;
    }

    public final LineApiResponse g(Uri uri, LinkedHashMap linkedHashMap, ResponseDataParser responseDataParser) {
        byte[] bytes;
        Map map = Collections.EMPTY_MAP;
        HttpURLConnection httpURLConnectionF = null;
        if (linkedHashMap.isEmpty()) {
            bytes = f36237e;
        } else {
            Uri.Builder builderBuildUpon = Uri.parse("").buildUpon();
            UriUtils.a(builderBuildUpon, linkedHashMap);
            try {
                bytes = builderBuildUpon.build().getEncodedQuery().getBytes("UTF-8");
            } catch (UnsupportedEncodingException e2) {
                x1.m(e2);
                return null;
            }
        }
        try {
            try {
                httpURLConnectionF = f(uri, bytes.length);
                i(httpURLConnectionF, map);
                Callback.a(httpURLConnectionF);
                OutputStream outputStreamI = Callback.i(httpURLConnectionF);
                outputStreamI.write(bytes);
                outputStreamI.flush();
                LineApiResponse lineApiResponseB = b(httpURLConnectionF, responseDataParser, this.f36239b);
                httpURLConnectionF.disconnect();
                return lineApiResponseB;
            } catch (IOException e3) {
                LineApiResponse lineApiResponseA = LineApiResponse.a(LineApiResponseCode.NETWORK_ERROR, new LineApiError(e3));
                if (httpURLConnectionF != null) {
                    httpURLConnectionF.disconnect();
                }
                return lineApiResponseA;
            }
        } catch (Throwable th) {
            if (httpURLConnectionF != null) {
                httpURLConnectionF.disconnect();
            }
            throw th;
        }
    }

    public final LineApiResponse h(Uri uri, LinkedHashMap linkedHashMap, String str, ResponseDataParser responseDataParser) {
        HttpMethod httpMethod = HttpMethod.POST;
        byte[] bytes = str.getBytes();
        HttpURLConnection httpURLConnectionC = null;
        try {
            try {
                httpURLConnectionC = c(uri, bytes.length, httpMethod);
                i(httpURLConnectionC, linkedHashMap);
                Callback.a(httpURLConnectionC);
                OutputStream outputStreamI = Callback.i(httpURLConnectionC);
                outputStreamI.write(bytes);
                outputStreamI.flush();
                LineApiResponse lineApiResponseB = b(httpURLConnectionC, responseDataParser, this.f36239b);
                httpURLConnectionC.disconnect();
                return lineApiResponseB;
            } catch (IOException e2) {
                LineApiResponse lineApiResponseA = LineApiResponse.a(LineApiResponseCode.NETWORK_ERROR, new LineApiError(e2));
                if (httpURLConnectionC != null) {
                    httpURLConnectionC.disconnect();
                }
                return lineApiResponseA;
            }
        } catch (Throwable th) {
            if (httpURLConnectionC != null) {
                httpURLConnectionC.disconnect();
            }
            throw th;
        }
    }
}

package com.google.android.datatransport.cct;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.dynatrace.android.callback.Callback;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.cct.internal.AndroidClientInfo;
import com.google.android.datatransport.cct.internal.AutoBatchedLogRequestEncoder;
import com.google.android.datatransport.cct.internal.BatchedLogRequest;
import com.google.android.datatransport.cct.internal.ClientInfo;
import com.google.android.datatransport.cct.internal.ComplianceData;
import com.google.android.datatransport.cct.internal.ExperimentIds;
import com.google.android.datatransport.cct.internal.ExternalPRequestContext;
import com.google.android.datatransport.cct.internal.ExternalPrivacyContext;
import com.google.android.datatransport.cct.internal.LogEvent;
import com.google.android.datatransport.cct.internal.LogRequest;
import com.google.android.datatransport.cct.internal.LogResponse;
import com.google.android.datatransport.cct.internal.NetworkConnectionInfo;
import com.google.android.datatransport.cct.internal.QosTier;
import com.google.android.datatransport.runtime.EncodedPayload;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.backends.BackendRequest;
import com.google.android.datatransport.runtime.backends.BackendResponse;
import com.google.android.datatransport.runtime.backends.TransportBackend;
import com.google.android.datatransport.runtime.logging.Logging;
import com.google.android.datatransport.runtime.retries.Function;
import com.google.android.datatransport.runtime.time.Clock;
import com.google.firebase.encoders.DataEncoder;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;
import com.networkbench.agent.impl.background.NBSApplicationStateMonitor;
import com.networkbench.agent.impl.harvest.InitUrlConnection;
import defpackage.r81;
import defpackage.tr;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes2.dex */
final class CctTransportBackend implements TransportBackend {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DataEncoder f27798a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConnectivityManager f27799b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f27800c;
    public final URL d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Clock f27801e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Clock f27802f;
    public final int g;

    public static final class HttpRequest {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final URL f27803a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final BatchedLogRequest f27804b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f27805c;

        public HttpRequest(URL url, BatchedLogRequest batchedLogRequest, String str) {
            this.f27803a = url;
            this.f27804b = batchedLogRequest;
            this.f27805c = str;
        }
    }

    public static final class HttpResponse {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f27806a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final URL f27807b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f27808c;

        public HttpResponse(int i2, URL url, long j2) {
            this.f27806a = i2;
            this.f27807b = url;
            this.f27808c = j2;
        }
    }

    public CctTransportBackend(Context context, Clock clock, Clock clock2) {
        JsonDataEncoderBuilder jsonDataEncoderBuilder = new JsonDataEncoderBuilder();
        AutoBatchedLogRequestEncoder.f27810a.a(jsonDataEncoderBuilder);
        jsonDataEncoderBuilder.d = true;
        this.f27798a = jsonDataEncoderBuilder.a();
        this.f27800c = context;
        this.f27799b = (ConnectivityManager) context.getSystemService("connectivity");
        this.d = c(CCTDestination.f27793c);
        this.f27801e = clock2;
        this.f27802f = clock;
        this.g = 130000;
    }

    public static URL c(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e2) {
            r81.j(tr.g("Invalid url: ", str), e2);
            return null;
        }
    }

    @Override // com.google.android.datatransport.runtime.backends.TransportBackend
    public final EventInternal a(EventInternal eventInternal) {
        int subtype;
        NetworkInfo activeNetworkInfo = this.f27799b.getActiveNetworkInfo();
        EventInternal.Builder builderN = eventInternal.n();
        ((HashMap) builderN.c()).put("sdk-version", String.valueOf(Build.VERSION.SDK_INT));
        builderN.a("model", Build.MODEL);
        builderN.a("hardware", Build.HARDWARE);
        builderN.a("device", Build.DEVICE);
        builderN.a("product", Build.PRODUCT);
        builderN.a("os-uild", Build.ID);
        builderN.a("manufacturer", Build.MANUFACTURER);
        builderN.a("fingerprint", Build.FINGERPRINT);
        Calendar.getInstance();
        builderN.c().put("tz-offset", String.valueOf(TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / 1000));
        ((HashMap) builderN.c()).put("net-type", String.valueOf(activeNetworkInfo == null ? NetworkConnectionInfo.NetworkType.NONE.b() : activeNetworkInfo.getType()));
        int i2 = -1;
        if (activeNetworkInfo == null) {
            subtype = NetworkConnectionInfo.MobileSubtype.UNKNOWN_MOBILE_SUBTYPE.b();
        } else {
            subtype = activeNetworkInfo.getSubtype();
            if (subtype == -1) {
                subtype = NetworkConnectionInfo.MobileSubtype.COMBINED.b();
            } else if (NetworkConnectionInfo.MobileSubtype.a(subtype) == null) {
                subtype = 0;
            }
        }
        ((HashMap) builderN.c()).put("mobile-subtype", String.valueOf(subtype));
        builderN.a("country", Locale.getDefault().getCountry());
        builderN.a("locale", Locale.getDefault().getLanguage());
        Context context = this.f27800c;
        String simOperator = ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
        if (simOperator == null) {
            simOperator = "";
        }
        builderN.a("mcc_mnc", simOperator);
        try {
            i2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            Log.isLoggable("TRuntime.".concat("CctTransportBackend"), 6);
        }
        builderN.a("application_build", Integer.toString(i2));
        return builderN.b();
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.android.datatransport.cct.a] */
    @Override // com.google.android.datatransport.runtime.backends.TransportBackend
    public final BackendResponse b(BackendRequest backendRequest) {
        int i2;
        String str;
        Object objA;
        LogEvent.Builder builderK;
        HashMap map = new HashMap();
        for (EventInternal eventInternal : backendRequest.b()) {
            String strL = eventInternal.l();
            if (map.containsKey(strL)) {
                ((List) map.get(strL)).add(eventInternal);
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.add(eventInternal);
                map.put(strL, arrayList);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = map.entrySet().iterator();
        while (true) {
            i2 = 5;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) it.next();
            EventInternal eventInternal2 = (EventInternal) ((List) entry.getValue()).get(0);
            LogRequest.Builder builderA = LogRequest.a();
            builderA.f(QosTier.DEFAULT);
            builderA.g(this.f27802f.a());
            builderA.h(this.f27801e.a());
            ClientInfo.Builder builderA2 = ClientInfo.a();
            builderA2.c(ClientInfo.ClientType.ANDROID_FIREBASE);
            AndroidClientInfo.Builder builderA3 = AndroidClientInfo.a();
            builderA3.m(Integer.valueOf(eventInternal2.i("sdk-version")));
            builderA3.j(eventInternal2.b("model"));
            builderA3.f(eventInternal2.b("hardware"));
            builderA3.d(eventInternal2.b("device"));
            builderA3.l(eventInternal2.b("product"));
            builderA3.k(eventInternal2.b("os-uild"));
            builderA3.h(eventInternal2.b("manufacturer"));
            builderA3.e(eventInternal2.b("fingerprint"));
            builderA3.c(eventInternal2.b("country"));
            builderA3.g(eventInternal2.b("locale"));
            builderA3.i(eventInternal2.b("mcc_mnc"));
            builderA3.b(eventInternal2.b("application_build"));
            builderA2.b(builderA3.a());
            builderA.b(builderA2.a());
            try {
                builderA.d(Integer.valueOf(Integer.parseInt((String) entry.getKey())));
            } catch (NumberFormatException unused) {
                builderA.e((String) entry.getKey());
            }
            ArrayList arrayList3 = new ArrayList();
            for (EventInternal eventInternal3 : (List) entry.getValue()) {
                EncodedPayload encodedPayloadE = eventInternal3.e();
                Encoding encoding = encodedPayloadE.f27970a;
                byte[] bArr = encodedPayloadE.f27971b;
                if (encoding.equals(new Encoding("proto"))) {
                    builderK = LogEvent.k(bArr);
                } else if (encoding.equals(new Encoding("json"))) {
                    builderK = LogEvent.j(new String(bArr, Charset.forName("UTF-8")));
                } else if (Log.isLoggable("TRuntime.".concat("CctTransportBackend"), 5)) {
                    new StringBuilder("Received event of unsupported encoding ").append(encoding);
                }
                builderK.d(eventInternal3.f());
                builderK.e(eventInternal3.m());
                String str2 = (String) eventInternal3.c().get("tz-offset");
                builderK.h(str2 == null ? 0L : Long.valueOf(str2).longValue());
                NetworkConnectionInfo.Builder builderA4 = NetworkConnectionInfo.a();
                builderA4.c(NetworkConnectionInfo.NetworkType.a(eventInternal3.i("net-type")));
                builderA4.b(NetworkConnectionInfo.MobileSubtype.a(eventInternal3.i("mobile-subtype")));
                builderK.g(builderA4.a());
                if (eventInternal3.d() != null) {
                    builderK.c(eventInternal3.d());
                }
                if (eventInternal3.j() != null) {
                    ComplianceData.Builder builderA5 = ComplianceData.a();
                    ExternalPrivacyContext.Builder builderA6 = ExternalPrivacyContext.a();
                    ExternalPRequestContext.Builder builderA7 = ExternalPRequestContext.a();
                    builderA7.b(eventInternal3.j());
                    builderA6.b(builderA7.a());
                    builderA5.b(builderA6.a());
                    builderA5.c(ComplianceData.ProductIdOrigin.EVENT_OVERRIDE);
                    builderK.b(builderA5.a());
                }
                if (eventInternal3.g() != null || eventInternal3.h() != null) {
                    ExperimentIds.Builder builderA8 = ExperimentIds.a();
                    if (eventInternal3.g() != null) {
                        builderA8.b(eventInternal3.g());
                    }
                    if (eventInternal3.h() != null) {
                        builderA8.c(eventInternal3.h());
                    }
                    builderK.f(builderA8.a());
                }
                arrayList3.add(builderK.a());
            }
            builderA.c(arrayList3);
            arrayList2.add(builderA.a());
        }
        BatchedLogRequest batchedLogRequestA = BatchedLogRequest.a(arrayList2);
        byte[] bArrC = backendRequest.c();
        URL urlC = this.d;
        if (bArrC != null) {
            try {
                CCTDestination cCTDestinationB = CCTDestination.b(backendRequest.c());
                str = cCTDestinationB.f27797b;
                if (str == null) {
                    str = null;
                }
                String str3 = cCTDestinationB.f27796a;
                if (str3 != null) {
                    urlC = c(str3);
                }
            } catch (IllegalArgumentException unused2) {
                return BackendResponse.a();
            }
        } else {
            str = null;
        }
        try {
            HttpRequest httpRequest = new HttpRequest(urlC, batchedLogRequestA, str);
            ?? r0 = new Function() { // from class: com.google.android.datatransport.cct.a
                public final Object a(Object obj) {
                    CctTransportBackend.HttpRequest httpRequest2 = (CctTransportBackend.HttpRequest) obj;
                    URL url = httpRequest2.f27803a;
                    if (Log.isLoggable("TRuntime.".concat("CctTransportBackend"), 4)) {
                        String.format("Making request to: %s", url);
                    }
                    URLConnection uRLConnectionOpenConnection = url.openConnection();
                    Callback.C(uRLConnectionOpenConnection);
                    HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
                    httpURLConnection.setConnectTimeout(NBSApplicationStateMonitor.ALTERNATEPERIOD);
                    CctTransportBackend cctTransportBackend = this.f27809a;
                    httpURLConnection.setReadTimeout(cctTransportBackend.g);
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setInstanceFollowRedirects(false);
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.setRequestProperty("User-Agent", "datatransport/3.3.0 android/");
                    httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
                    httpURLConnection.setRequestProperty("Content-Type", InitUrlConnection.CONTENT_TYPE_VALUE);
                    httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
                    String str4 = httpRequest2.f27805c;
                    if (str4 != null) {
                        httpURLConnection.setRequestProperty("X-Goog-Api-Key", str4);
                    }
                    try {
                        OutputStream outputStreamI = Callback.i(httpURLConnection);
                        try {
                            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStreamI);
                            try {
                                cctTransportBackend.f27798a.a(new BufferedWriter(new OutputStreamWriter(gZIPOutputStream)), httpRequest2.f27804b);
                                gZIPOutputStream.close();
                                if (outputStreamI != null) {
                                    outputStreamI.close();
                                }
                                int iK = Callback.k(httpURLConnection);
                                Integer numValueOf = Integer.valueOf(iK);
                                if (Log.isLoggable("TRuntime.".concat("CctTransportBackend"), 4)) {
                                    String.format("Status Code: %d", numValueOf);
                                }
                                Logging.a("CctTransportBackend", Callback.e("Content-Type", httpURLConnection), "Content-Type: %s");
                                Logging.a("CctTransportBackend", Callback.e("Content-Encoding", httpURLConnection), "Content-Encoding: %s");
                                if (iK == 302 || iK == 301 || iK == 307) {
                                    return new CctTransportBackend.HttpResponse(iK, new URL(Callback.e(com.networkbench.agent.impl.performance.coulometry.a.f37790a, httpURLConnection)), 0L);
                                }
                                if (iK != 200) {
                                    return new CctTransportBackend.HttpResponse(iK, null, 0L);
                                }
                                InputStream inputStreamG = Callback.g(httpURLConnection);
                                try {
                                    InputStream gZIPInputStream = "gzip".equals(Callback.e("Content-Encoding", httpURLConnection)) ? new GZIPInputStream(inputStreamG) : inputStreamG;
                                    try {
                                        CctTransportBackend.HttpResponse httpResponse = new CctTransportBackend.HttpResponse(iK, null, LogResponse.a(new BufferedReader(new InputStreamReader(gZIPInputStream))).b());
                                        if (gZIPInputStream != null) {
                                            gZIPInputStream.close();
                                        }
                                        if (inputStreamG != null) {
                                            inputStreamG.close();
                                        }
                                        return httpResponse;
                                    } catch (Throwable th) {
                                        if (gZIPInputStream == null) {
                                            throw th;
                                        }
                                        try {
                                            gZIPInputStream.close();
                                            throw th;
                                        } catch (Throwable th2) {
                                            th.addSuppressed(th2);
                                            throw th;
                                        }
                                    }
                                } catch (Throwable th3) {
                                    if (inputStreamG == null) {
                                        throw th3;
                                    }
                                    try {
                                        inputStreamG.close();
                                        throw th3;
                                    } catch (Throwable th4) {
                                        th3.addSuppressed(th4);
                                        throw th3;
                                    }
                                }
                            } catch (Throwable th5) {
                                try {
                                    gZIPOutputStream.close();
                                    throw th5;
                                } catch (Throwable th6) {
                                    th5.addSuppressed(th6);
                                    throw th5;
                                }
                            }
                        } catch (Throwable th7) {
                            if (outputStreamI == null) {
                                throw th7;
                            }
                            try {
                                outputStreamI.close();
                                throw th7;
                            } catch (Throwable th8) {
                                th7.addSuppressed(th8);
                                throw th7;
                            }
                        }
                    } catch (EncodingException | IOException unused3) {
                        Log.isLoggable("TRuntime.".concat("CctTransportBackend"), 6);
                        return new CctTransportBackend.HttpResponse(400, null, 0L);
                    } catch (ConnectException | UnknownHostException unused4) {
                        Log.isLoggable("TRuntime.".concat("CctTransportBackend"), 6);
                        return new CctTransportBackend.HttpResponse(500, null, 0L);
                    }
                }
            };
            do {
                objA = r0.a(httpRequest);
                URL url = ((HttpResponse) objA).f27807b;
                if (url != null) {
                    Logging.a("CctTransportBackend", url, "Following redirect to: %s");
                    httpRequest = new HttpRequest(url, httpRequest.f27804b, httpRequest.f27805c);
                } else {
                    httpRequest = null;
                }
                if (httpRequest == null) {
                    break;
                }
                i2--;
            } while (i2 >= 1);
            HttpResponse httpResponse = (HttpResponse) objA;
            int i3 = httpResponse.f27806a;
            if (i3 == 200) {
                return BackendResponse.e(httpResponse.f27808c);
            }
            if (i3 < 500 && i3 != 404) {
                return i3 == 400 ? BackendResponse.d() : BackendResponse.a();
            }
            return BackendResponse.f();
        } catch (IOException unused3) {
            Log.isLoggable("TRuntime.".concat("CctTransportBackend"), 6);
            return BackendResponse.f();
        }
    }
}

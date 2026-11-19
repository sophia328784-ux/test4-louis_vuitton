package com.dynatrace.android.agent.comm;

import android.content.SharedPreferences;
import android.os.SystemClock;
import com.dynatrace.android.agent.AdkSettings;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.TimeLineProvider;
import com.dynatrace.android.agent.conf.AgentMode;
import com.dynatrace.android.agent.conf.Configuration;
import com.dynatrace.android.agent.conf.PreferencesManager;
import com.dynatrace.android.agent.conf.ServerConfiguration;
import com.dynatrace.android.agent.conf.ServerConfigurationParser;
import com.dynatrace.android.agent.events.eventsapi.EventPayloadUtility;
import com.dynatrace.android.agent.util.Utility;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.n00;
import defpackage.pq0;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.json.JSONException;

/* JADX INFO: loaded from: classes2.dex */
public class RequestExecutor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicInteger f27329a = new AtomicInteger(0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f27330b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f27331c;
    public final Configuration d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CommHandler f27332e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ServerConfigurationParser f27333f;

    static {
        boolean z = Global.f27307a;
    }

    public RequestExecutor(CommHandler commHandler, Configuration configuration, ServerConfigurationParser serverConfigurationParser) {
        this.d = configuration;
        this.f27332e = commHandler;
        this.f27333f = serverConfigurationParser;
        AgentMode agentMode = configuration.d;
        String str = configuration.f27341c;
        if (agentMode == AgentMode.SAAS) {
            this.f27331c = str;
            return;
        }
        String string = "dynaTraceMonitor";
        SharedPreferences sharedPreferences = AdkSettings.f27249k.d.f27380a;
        try {
            string = sharedPreferences.getString("DTX_BeaconSignal", "dynaTraceMonitor");
        } catch (ClassCastException unused) {
            sharedPreferences.edit().remove("DTX_BeaconSignal").apply();
        }
        this.f27330b = string;
        StringBuilder sbU = n00.u(str, "/");
        sbU.append(this.f27330b);
        this.f27331c = sbU.toString();
    }

    /* JADX WARN: Code duplicated, block: B:107:0x0296  */
    /* JADX WARN: Code duplicated, block: B:122:0x029b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public final ServerConfiguration a(ServerConfiguration serverConfiguration, boolean z, String str, int i2, long j2, int i3, boolean z2) {
        HttpURLConnection httpURLConnection;
        BufferedInputStream bufferedInputStream;
        byte[] bArrJ;
        String str2;
        HashMap map;
        StringBuilder sb = new StringBuilder(this.f27331c);
        sb.append("?type=m&srvid=");
        sb.append(i2);
        sb.append("&app=");
        sb.append(AdkSettings.f27246h);
        sb.append("&va=");
        sb.append(Utility.m("8.343.1.1038"));
        sb.append("&tt=maandroid&pt=0");
        Configuration configuration = this.d;
        AgentMode agentMode = configuration.d;
        AgentMode agentMode2 = configuration.d;
        if (agentMode == AgentMode.SAAS) {
            sb.append("&resp=json&cts=");
            sb.append(serverConfiguration.o);
        }
        if (z) {
            sb.append("&ns=1");
        }
        sb.append("&si=");
        sb.append(j2);
        sb.append("_");
        sb.append(i3);
        String string = sb.toString();
        CommHandler commHandler = this.f27332e;
        commHandler.getClass();
        int i4 = CommHandler.f27320b;
        try {
            HttpURLConnection httpURLConnectionA = commHandler.a(new URL(string));
            try {
                httpURLConnectionA.setConnectTimeout(CommHandler.f27320b);
                httpURLConnectionA.setReadTimeout(CommHandler.f27321c);
                if (!z2) {
                    httpURLConnectionA.setRequestProperty("Connection", "close");
                }
                httpURLConnectionA.addRequestProperty("Accept-Encoding", "identity, gzip");
                if (str != null) {
                    httpURLConnectionA.setRequestProperty("Content-Type", "text/plain; charset=utf-8");
                    httpURLConnectionA.setRequestProperty("Content-Encoding", "gzip");
                    httpURLConnectionA.setDoOutput(true);
                    boolean z3 = Global.f27307a;
                    TimeLineProvider timeLineProvider = TimeLineProvider.f27311c;
                    String strReplace = str.replace("__tsNow__", String.valueOf(timeLineProvider.a()));
                    long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos() + timeLineProvider.f27312a.f27304b;
                    String str3 = EventPayloadUtility.f27521a;
                    StringBuilder sb2 = new StringBuilder();
                    String str4 = EventPayloadUtility.f27521a;
                    sb2.append(str4);
                    sb2.append("%%SEND_NOW%%");
                    String strReplaceAll = strReplace.replaceAll(sb2.toString(), str4 + jElapsedRealtimeNanos);
                    GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(httpURLConnectionA.getOutputStream());
                    gZIPOutputStream.write(strReplaceAll.getBytes("utf-8"));
                    gZIPOutputStream.close();
                } else {
                    boolean z4 = Global.f27307a;
                }
                int responseCode = httpURLConnectionA.getResponseCode();
                String responseMessage = httpURLConnectionA.getResponseMessage();
                try {
                    bufferedInputStream = new BufferedInputStream(httpURLConnectionA.getInputStream());
                    try {
                        try {
                            bArrJ = Utility.j(bufferedInputStream);
                        } catch (IOException unused) {
                            boolean z5 = Global.f27307a;
                            bArrJ = null;
                        }
                        char c2 = 0;
                        if (bArrJ != null) {
                            if (bArrJ.length >= 2 && bArrJ[0] == 31 && bArrJ[1] == -117) {
                                bArrJ = Utility.j(new GZIPInputStream(new ByteArrayInputStream(bArrJ)));
                            }
                            str2 = new String(bArrJ);
                        } else {
                            str2 = null;
                        }
                        boolean z6 = Global.f27307a;
                        HttpResponse httpResponse = new HttpResponse(responseCode, responseMessage, str2, httpURLConnectionA.getHeaderFields());
                        int i5 = httpResponse.f27323a;
                        httpURLConnectionA.disconnect();
                        if (bufferedInputStream != null) {
                            try {
                                bufferedInputStream.close();
                            } catch (IOException unused2) {
                                boolean z7 = Global.f27307a;
                            }
                        }
                        AtomicInteger atomicInteger = this.f27329a;
                        if (i5 < 200 || i5 > 299) {
                            if (i5 == 404 && agentMode2 == AgentMode.APP_MON && !"dynaTraceMonitor".equals(this.f27330b)) {
                                boolean z8 = Global.f27307a;
                                this.f27330b = "dynaTraceMonitor";
                                AdkSettings.f27249k.d.f27380a.edit().remove("DTX_BeaconSignal").apply();
                                atomicInteger.incrementAndGet();
                            }
                            throw new InvalidResponseException(pq0.k(i5, "invalid response code "), httpResponse);
                        }
                        String str5 = httpResponse.f27325c;
                        if (str5 == null) {
                            throw new InvalidResponseException("no message body", httpResponse);
                        }
                        boolean zStartsWith = str5.startsWith("{");
                        ServerConfigurationParser serverConfigurationParser = this.f27333f;
                        if (zStartsWith) {
                            if (agentMode2 == AgentMode.APP_MON) {
                                throw new InvalidResponseException("invalid configuration format", httpResponse);
                            }
                            try {
                                return serverConfigurationParser.c(serverConfiguration, str5);
                            } catch (InvalidConfigurationException | ClassCastException | JSONException e2) {
                                throw new InvalidResponseException("invalid message protocol", e2, httpResponse);
                            }
                        }
                        AtomicInteger atomicInteger2 = Utility.f27585a;
                        HashMap map2 = new HashMap();
                        String[] strArrSplit = str5.split("&");
                        int length = strArrSplit.length;
                        int i6 = 0;
                        while (true) {
                            if (i6 >= length) {
                                map = map2;
                                break;
                            }
                            char c3 = c2;
                            String[] strArrSplit2 = strArrSplit[i6].split("=");
                            if (strArrSplit2.length != 2) {
                                map = null;
                                break;
                            }
                            map2.put(strArrSplit2[c3], strArrSplit2[1]);
                            i6++;
                            c2 = c3;
                        }
                        if (map == null || !NBSSpanMetricUnit.Minute.equals(map.get("type"))) {
                            throw new InvalidResponseException("invalid message protocol", httpResponse);
                        }
                        ServerConfiguration serverConfigurationD = serverConfigurationParser.d(map, agentMode2);
                        if (agentMode2 == AgentMode.APP_MON) {
                            String str6 = (String) map.get("bn");
                            if (str6 == null || str6.length() <= 0 || atomicInteger.get() > 3) {
                                str6 = "dynaTraceMonitor";
                            } else {
                                boolean z9 = Global.f27307a;
                            }
                            if (!str6.equals(this.f27330b)) {
                                this.f27330b = str6;
                                this.f27331c = configuration.f27341c + "/" + this.f27330b;
                                PreferencesManager preferencesManager = AdkSettings.f27249k.d;
                                String str7 = this.f27330b;
                                preferencesManager.getClass();
                                boolean zEquals = "dynaTraceMonitor".equals(str7);
                                SharedPreferences sharedPreferences = preferencesManager.f27380a;
                                if (zEquals) {
                                    sharedPreferences.edit().remove("DTX_BeaconSignal").apply();
                                } else {
                                    sharedPreferences.edit().putString("DTX_BeaconSignal", str7).apply();
                                }
                            }
                        }
                        return serverConfigurationD;
                    } catch (Throwable th) {
                        th = th;
                        httpURLConnection = httpURLConnectionA;
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        if (bufferedInputStream != null) {
                            try {
                                bufferedInputStream.close();
                            } catch (IOException unused3) {
                                boolean z10 = Global.f27307a;
                            }
                        }
                        throw th;
                    }
                } catch (IOException unused4) {
                    bufferedInputStream = null;
                }
            } catch (Throwable th2) {
                th = th2;
                httpURLConnection = httpURLConnectionA;
                bufferedInputStream = null;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                if (bufferedInputStream != null) {
                    bufferedInputStream.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            httpURLConnection = null;
        }
    }
}

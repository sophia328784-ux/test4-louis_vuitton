package com.google.android.gms.internal.gtm;

import android.app.BroadcastOptions;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.dynatrace.android.callback.Callback;
import com.google.android.gms.common.util.DefaultClock;
import com.networkbench.agent.impl.performance.coulometry.b.j;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import defpackage.fc;
import defpackage.tr;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzcg implements zzaq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f30026a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f30027b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzcf f30028c;
    public final HashMap d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap f30029e = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final DefaultClock f30030f = DefaultClock.f29336a;

    public zzcg(Context context, zzcf zzcfVar) {
        this.f30027b = context.getApplicationContext();
        this.f30028c = zzcfVar;
        String str = Build.VERSION.RELEASE;
        Locale locale = Locale.getDefault();
        String string = null;
        if (locale != null && locale.getLanguage() != null && locale.getLanguage().length() != 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(locale.getLanguage().toLowerCase());
            if (locale.getCountry() != null && locale.getCountry().length() != 0) {
                sb.append("-");
                sb.append(locale.getCountry().toLowerCase());
            }
            string = sb.toString();
        }
        this.f30026a = tr.l(fc.s("GoogleTagManager/5.06 (Linux; U; Android ", str, "; ", string, "; "), Build.MODEL, " Build/", Build.ID, ")");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:102:0x0201 A[Catch: all -> 0x0218, TRY_LEAVE, TryCatch #8 {all -> 0x0218, blocks: (B:100:0x01fb, B:102:0x0201), top: B:159:0x01fb }] */
    /* JADX WARN: Code duplicated, block: B:112:0x021a  */
    /* JADX WARN: Code duplicated, block: B:114:0x021d A[Catch: all -> 0x01a4, TRY_ENTER, TryCatch #3 {all -> 0x01a4, blocks: (B:78:0x0180, B:88:0x01b7, B:93:0x01c8, B:99:0x01f5, B:114:0x021d, B:115:0x0220, B:126:0x0239, B:127:0x023c, B:86:0x01b1, B:87:0x01b4), top: B:149:0x0180 }] */
    /* JADX WARN: Code duplicated, block: B:138:0x027a  */
    /* JADX WARN: Code duplicated, block: B:139:0x0291  */
    /* JADX WARN: Code duplicated, block: B:143:0x0087 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:151:0x0096 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:157:0x023f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:15:0x006e  */
    /* JADX WARN: Code duplicated, block: B:163:0x0229 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:17:0x007a  */
    /* JADX WARN: Code duplicated, block: B:25:0x00b8 A[Catch: all -> 0x00bd, TryCatch #11 {all -> 0x00bd, blocks: (B:23:0x009c, B:25:0x00b8, B:29:0x00c0), top: B:165:0x009c }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00c0 A[Catch: all -> 0x00bd, TRY_LEAVE, TryCatch #11 {all -> 0x00bd, blocks: (B:23:0x009c, B:25:0x00b8, B:29:0x00c0), top: B:165:0x009c }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:41:0x00ea A[Catch: all -> 0x010e, TryCatch #12 {all -> 0x010e, blocks: (B:39:0x00e1, B:41:0x00ea, B:42:0x00f2, B:44:0x00f8, B:48:0x0114, B:54:0x0135, B:57:0x0141, B:59:0x0147, B:61:0x014d, B:63:0x0153, B:64:0x015d, B:75:0x017a), top: B:167:0x00e1 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00f8 A[Catch: all -> 0x010e, LOOP:1: B:42:0x00f2->B:44:0x00f8, LOOP_END, TryCatch #12 {all -> 0x010e, blocks: (B:39:0x00e1, B:41:0x00ea, B:42:0x00f2, B:44:0x00f8, B:48:0x0114, B:54:0x0135, B:57:0x0141, B:59:0x0147, B:61:0x014d, B:63:0x0153, B:64:0x015d, B:75:0x017a), top: B:167:0x00e1 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x0114 A[Catch: all -> 0x010e, TRY_LEAVE, TryCatch #12 {all -> 0x010e, blocks: (B:39:0x00e1, B:41:0x00ea, B:42:0x00f2, B:44:0x00f8, B:48:0x0114, B:54:0x0135, B:57:0x0141, B:59:0x0147, B:61:0x014d, B:63:0x0153, B:64:0x015d, B:75:0x017a), top: B:167:0x00e1 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0135 A[Catch: all -> 0x010e, TRY_ENTER, TRY_LEAVE, TryCatch #12 {all -> 0x010e, blocks: (B:39:0x00e1, B:41:0x00ea, B:42:0x00f2, B:44:0x00f8, B:48:0x0114, B:54:0x0135, B:57:0x0141, B:59:0x0147, B:61:0x014d, B:63:0x0153, B:64:0x015d, B:75:0x017a), top: B:167:0x00e1 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x0141 A[Catch: all -> 0x010e, TRY_ENTER, TryCatch #12 {all -> 0x010e, blocks: (B:39:0x00e1, B:41:0x00ea, B:42:0x00f2, B:44:0x00f8, B:48:0x0114, B:54:0x0135, B:57:0x0141, B:59:0x0147, B:61:0x014d, B:63:0x0153, B:64:0x015d, B:75:0x017a), top: B:167:0x00e1 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x0165  */
    /* JADX WARN: Code duplicated, block: B:70:0x016c  */
    /* JADX WARN: Code duplicated, block: B:72:0x0172  */
    /* JADX WARN: Code duplicated, block: B:73:0x0174  */
    /* JADX WARN: Code duplicated, block: B:75:0x017a A[Catch: all -> 0x010e, TRY_ENTER, TRY_LEAVE, TryCatch #12 {all -> 0x010e, blocks: (B:39:0x00e1, B:41:0x00ea, B:42:0x00f2, B:44:0x00f8, B:48:0x0114, B:54:0x0135, B:57:0x0141, B:59:0x0147, B:61:0x014d, B:63:0x0153, B:64:0x015d, B:75:0x017a), top: B:167:0x00e1 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x017f  */
    /* JADX WARN: Code duplicated, block: B:82:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:83:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:85:0x01af A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:86:0x01b1 A[Catch: all -> 0x01a4, TRY_ENTER, TryCatch #3 {all -> 0x01a4, blocks: (B:78:0x0180, B:88:0x01b7, B:93:0x01c8, B:99:0x01f5, B:114:0x021d, B:115:0x0220, B:126:0x0239, B:127:0x023c, B:86:0x01b1, B:87:0x01b4), top: B:149:0x0180 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:99:0x01f5 A[Catch: all -> 0x01a4, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x01a4, blocks: (B:78:0x0180, B:88:0x01b7, B:93:0x01c8, B:99:0x01f5, B:114:0x021d, B:115:0x0220, B:126:0x0239, B:127:0x023c, B:86:0x01b1, B:87:0x01b4), top: B:149:0x0180 }] */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r3v9 */
    public final void a(ArrayList arrayList) {
        URL url;
        String str;
        HashMap map;
        int i2;
        String str2;
        int i3;
        long jMin;
        HttpURLConnection httpURLConnection;
        InputStream inputStream;
        Context context;
        Intent intent;
        long j2;
        int iK;
        ?? bufferedReader;
        InputStream inputStreamD;
        ?? r3;
        InputStream inputStreamG;
        int iMin = Math.min(arrayList.size(), 40);
        int i4 = 0;
        boolean z = true;
        while (i4 < iMin) {
            zzat zzatVar = (zzat) arrayList.get(i4);
            String str3 = zzatVar.f29968c;
            long j3 = zzatVar.f29966a;
            try {
                url = new URL(str3);
            } catch (MalformedURLException unused) {
                zzbg.a();
                url = null;
            }
            DefaultClock defaultClock = this.f30030f;
            HashMap map2 = this.f30029e;
            HashMap map3 = this.d;
            zzcf zzcfVar = this.f30028c;
            if (url == null || !map3.containsKey(url.toString())) {
                str = zzatVar.d;
                map = zzatVar.f29969e;
                i2 = iMin;
                str2 = zzatVar.f29970f;
                if (url == null) {
                    zzao.a(5);
                    ((zzbi) zzcfVar).a(zzatVar);
                    i3 = i4;
                } else {
                    try {
                        URLConnection uRLConnectionOpenConnection = url.openConnection();
                        Callback.C(uRLConnectionOpenConnection);
                        httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
                        try {
                            try {
                                if (z) {
                                    try {
                                        context = this.f30027b;
                                        int i5 = zzbh.f29973b;
                                        i3 = i4;
                                        try {
                                            intent = new Intent("com.google.analytics.RADIO_POWERED");
                                            intent.addCategory(context.getPackageName());
                                            j2 = j3;
                                            intent.putExtra("com.google.android.gms.internal.gtm.zzbh", true);
                                            if (Build.VERSION.SDK_INT < 34) {
                                                context.sendBroadcast(intent);
                                            } else {
                                                inputStream = null;
                                                try {
                                                    context.sendBroadcast(intent, null, BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle());
                                                } catch (Throwable th) {
                                                    th = th;
                                                    z = true;
                                                    if (inputStream != null) {
                                                        try {
                                                            inputStream.close();
                                                        } catch (IOException e2) {
                                                            e = e2;
                                                            url.toString();
                                                            zzao.a(5);
                                                            e.getMessage();
                                                            zzao.a(5);
                                                            ((zzbi) zzcfVar).b(zzatVar);
                                                            String string = url.toString();
                                                            defaultClock.getClass();
                                                            map2.put(string, Long.valueOf(System.currentTimeMillis()));
                                                            if (map3.containsKey(url.toString())) {
                                                                long jLongValue = ((Long) map3.get(url.toString())).longValue();
                                                                jMin = Math.min(jLongValue + jLongValue, j.f37873a);
                                                            } else {
                                                                jMin = LiveTranslationEntity.DefaultSentenceTimeOut;
                                                            }
                                                            map3.put(url.toString(), Long.valueOf(jMin));
                                                            url.toString();
                                                            zzao.a(5);
                                                            i4 = i3 + 1;
                                                            iMin = i2;
                                                        }
                                                    }
                                                    httpURLConnection.disconnect();
                                                    throw th;
                                                }
                                            }
                                            httpURLConnection.setRequestProperty("User-Agent", this.f30026a);
                                            if (map != null) {
                                                for (Map.Entry entry : map.entrySet()) {
                                                    httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                                                }
                                            }
                                            if (str != null) {
                                                String.format("Hit %d retrieved from the store has null HTTP method.", Long.valueOf(j2));
                                                zzao.a(5);
                                                ((zzbi) zzcfVar).a(zzatVar);
                                            } else if (!str.equals("GET") || str.equals("HEAD") || str.equals("POST") || str.equals("PUT")) {
                                                switch (str.hashCode()) {
                                                    case 70454:
                                                        if (str.equals("GET")) {
                                                            if (str2 != null) {
                                                                zzao.a(5);
                                                            }
                                                            httpURLConnection.setRequestMethod(str);
                                                        }
                                                        iK = Callback.k(httpURLConnection);
                                                        zzao.a(2);
                                                        if (iK >= 200 || iK >= 300) {
                                                            url.toString();
                                                            zzao.a(5);
                                                            try {
                                                                inputStreamD = Callback.d(httpURLConnection);
                                                                if (inputStreamD != null) {
                                                                    bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                                    do {
                                                                        try {
                                                                        } catch (Throwable th2) {
                                                                            th = th2;
                                                                            if (bufferedReader != 0) {
                                                                                bufferedReader.close();
                                                                            }
                                                                            throw th;
                                                                        }
                                                                    } while (bufferedReader.readLine() != null);
                                                                    zzao.a(5);
                                                                    r3 = bufferedReader;
                                                                } else {
                                                                    r3 = inputStream;
                                                                }
                                                                if (r3 != 0) {
                                                                    r3.close();
                                                                }
                                                                ((zzbi) zzcfVar).b(zzatVar);
                                                                inputStreamG = inputStream;
                                                            } catch (Throwable th3) {
                                                                th = th3;
                                                                bufferedReader = inputStream;
                                                            }
                                                        } else {
                                                            inputStreamG = Callback.g(httpURLConnection);
                                                            try {
                                                                url.toString();
                                                                zzao.a(2);
                                                                ((zzbi) zzcfVar).f29975a.d(new String[]{String.valueOf(j2)});
                                                                map3.remove(url.toString());
                                                                map2.remove(url.toString());
                                                            } catch (Throwable th4) {
                                                                th = th4;
                                                                inputStream = inputStreamG;
                                                                z = false;
                                                                if (inputStream != null) {
                                                                    inputStream.close();
                                                                }
                                                                httpURLConnection.disconnect();
                                                                throw th;
                                                            }
                                                        }
                                                        if (inputStreamG != null) {
                                                            try {
                                                                inputStreamG.close();
                                                            } catch (IOException e3) {
                                                                e = e3;
                                                                z = false;
                                                                url.toString();
                                                                zzao.a(5);
                                                                e.getMessage();
                                                                zzao.a(5);
                                                                ((zzbi) zzcfVar).b(zzatVar);
                                                                String string2 = url.toString();
                                                                defaultClock.getClass();
                                                                map2.put(string2, Long.valueOf(System.currentTimeMillis()));
                                                                if (map3.containsKey(url.toString())) {
                                                                    long jLongValue2 = ((Long) map3.get(url.toString())).longValue();
                                                                    jMin = Math.min(jLongValue2 + jLongValue2, j.f37873a);
                                                                } else {
                                                                    jMin = LiveTranslationEntity.DefaultSentenceTimeOut;
                                                                }
                                                                map3.put(url.toString(), Long.valueOf(jMin));
                                                                url.toString();
                                                                zzao.a(5);
                                                            }
                                                        }
                                                        httpURLConnection.disconnect();
                                                        z = false;
                                                        break;
                                                    case 79599:
                                                        if (str.equals("PUT")) {
                                                            httpURLConnection.setRequestMethod(str);
                                                            if (str2 != null) {
                                                                try {
                                                                    httpURLConnection.setDoOutput(true);
                                                                    byte[] bytes = str2.getBytes(Charset.forName("UTF-8"));
                                                                    httpURLConnection.setFixedLengthStreamingMode(bytes.length);
                                                                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(Callback.i(httpURLConnection));
                                                                    bufferedOutputStream.write(bytes);
                                                                    bufferedOutputStream.flush();
                                                                    bufferedOutputStream.close();
                                                                } catch (Throwable th5) {
                                                                    th = th5;
                                                                    z = false;
                                                                    if (inputStream != null) {
                                                                        inputStream.close();
                                                                    }
                                                                    httpURLConnection.disconnect();
                                                                    throw th;
                                                                }
                                                            }
                                                            iK = Callback.k(httpURLConnection);
                                                            zzao.a(2);
                                                            if (iK >= 200) {
                                                                url.toString();
                                                                zzao.a(5);
                                                                inputStreamD = Callback.d(httpURLConnection);
                                                                if (inputStreamD != null) {
                                                                    bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                                    do {
                                                                    } while (bufferedReader.readLine() != null);
                                                                    zzao.a(5);
                                                                    r3 = bufferedReader;
                                                                } else {
                                                                    r3 = inputStream;
                                                                }
                                                                if (r3 != 0) {
                                                                    r3.close();
                                                                }
                                                                ((zzbi) zzcfVar).b(zzatVar);
                                                                inputStreamG = inputStream;
                                                            } else {
                                                                url.toString();
                                                                zzao.a(5);
                                                                inputStreamD = Callback.d(httpURLConnection);
                                                                if (inputStreamD != null) {
                                                                    bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                                    do {
                                                                    } while (bufferedReader.readLine() != null);
                                                                    zzao.a(5);
                                                                    r3 = bufferedReader;
                                                                } else {
                                                                    r3 = inputStream;
                                                                }
                                                                if (r3 != 0) {
                                                                    r3.close();
                                                                }
                                                                ((zzbi) zzcfVar).b(zzatVar);
                                                                inputStreamG = inputStream;
                                                            }
                                                            if (inputStreamG != null) {
                                                                inputStreamG.close();
                                                            }
                                                            httpURLConnection.disconnect();
                                                            z = false;
                                                        } else {
                                                            iK = Callback.k(httpURLConnection);
                                                            zzao.a(2);
                                                            if (iK >= 200) {
                                                                url.toString();
                                                                zzao.a(5);
                                                                inputStreamD = Callback.d(httpURLConnection);
                                                                if (inputStreamD != null) {
                                                                    bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                                    do {
                                                                    } while (bufferedReader.readLine() != null);
                                                                    zzao.a(5);
                                                                    r3 = bufferedReader;
                                                                } else {
                                                                    r3 = inputStream;
                                                                }
                                                                if (r3 != 0) {
                                                                    r3.close();
                                                                }
                                                                ((zzbi) zzcfVar).b(zzatVar);
                                                                inputStreamG = inputStream;
                                                            } else {
                                                                url.toString();
                                                                zzao.a(5);
                                                                inputStreamD = Callback.d(httpURLConnection);
                                                                if (inputStreamD != null) {
                                                                    bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                                    do {
                                                                    } while (bufferedReader.readLine() != null);
                                                                    zzao.a(5);
                                                                    r3 = bufferedReader;
                                                                } else {
                                                                    r3 = inputStream;
                                                                }
                                                                if (r3 != 0) {
                                                                    r3.close();
                                                                }
                                                                ((zzbi) zzcfVar).b(zzatVar);
                                                                inputStreamG = inputStream;
                                                            }
                                                            if (inputStreamG != null) {
                                                                inputStreamG.close();
                                                            }
                                                            httpURLConnection.disconnect();
                                                            z = false;
                                                        }
                                                        break;
                                                    case 2213344:
                                                        if (str.equals("HEAD")) {
                                                            if (str2 != null) {
                                                                zzao.a(5);
                                                            }
                                                            httpURLConnection.setRequestMethod(str);
                                                        }
                                                        iK = Callback.k(httpURLConnection);
                                                        zzao.a(2);
                                                        if (iK >= 200) {
                                                            url.toString();
                                                            zzao.a(5);
                                                            inputStreamD = Callback.d(httpURLConnection);
                                                            if (inputStreamD != null) {
                                                                bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                                do {
                                                                } while (bufferedReader.readLine() != null);
                                                                zzao.a(5);
                                                                r3 = bufferedReader;
                                                            } else {
                                                                r3 = inputStream;
                                                            }
                                                            if (r3 != 0) {
                                                                r3.close();
                                                            }
                                                            ((zzbi) zzcfVar).b(zzatVar);
                                                            inputStreamG = inputStream;
                                                        } else {
                                                            url.toString();
                                                            zzao.a(5);
                                                            inputStreamD = Callback.d(httpURLConnection);
                                                            if (inputStreamD != null) {
                                                                bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                                do {
                                                                } while (bufferedReader.readLine() != null);
                                                                zzao.a(5);
                                                                r3 = bufferedReader;
                                                            } else {
                                                                r3 = inputStream;
                                                            }
                                                            if (r3 != 0) {
                                                                r3.close();
                                                            }
                                                            ((zzbi) zzcfVar).b(zzatVar);
                                                            inputStreamG = inputStream;
                                                        }
                                                        if (inputStreamG != null) {
                                                            inputStreamG.close();
                                                        }
                                                        httpURLConnection.disconnect();
                                                        z = false;
                                                        break;
                                                    case 2461856:
                                                        if (str.equals("POST")) {
                                                            httpURLConnection.setRequestMethod(str);
                                                            if (str2 != null) {
                                                                httpURLConnection.setDoOutput(true);
                                                                byte[] bytes2 = str2.getBytes(Charset.forName("UTF-8"));
                                                                httpURLConnection.setFixedLengthStreamingMode(bytes2.length);
                                                                BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(Callback.i(httpURLConnection));
                                                                bufferedOutputStream2.write(bytes2);
                                                                bufferedOutputStream2.flush();
                                                                bufferedOutputStream2.close();
                                                            }
                                                            iK = Callback.k(httpURLConnection);
                                                            zzao.a(2);
                                                            if (iK >= 200) {
                                                                url.toString();
                                                                zzao.a(5);
                                                                inputStreamD = Callback.d(httpURLConnection);
                                                                if (inputStreamD != null) {
                                                                    bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                                    do {
                                                                    } while (bufferedReader.readLine() != null);
                                                                    zzao.a(5);
                                                                    r3 = bufferedReader;
                                                                } else {
                                                                    r3 = inputStream;
                                                                }
                                                                if (r3 != 0) {
                                                                    r3.close();
                                                                }
                                                                ((zzbi) zzcfVar).b(zzatVar);
                                                                inputStreamG = inputStream;
                                                            } else {
                                                                url.toString();
                                                                zzao.a(5);
                                                                inputStreamD = Callback.d(httpURLConnection);
                                                                if (inputStreamD != null) {
                                                                    bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                                    do {
                                                                    } while (bufferedReader.readLine() != null);
                                                                    zzao.a(5);
                                                                    r3 = bufferedReader;
                                                                } else {
                                                                    r3 = inputStream;
                                                                }
                                                                if (r3 != 0) {
                                                                    r3.close();
                                                                }
                                                                ((zzbi) zzcfVar).b(zzatVar);
                                                                inputStreamG = inputStream;
                                                            }
                                                            if (inputStreamG != null) {
                                                                inputStreamG.close();
                                                            }
                                                            httpURLConnection.disconnect();
                                                            z = false;
                                                        } else {
                                                            iK = Callback.k(httpURLConnection);
                                                            zzao.a(2);
                                                            if (iK >= 200) {
                                                                url.toString();
                                                                zzao.a(5);
                                                                inputStreamD = Callback.d(httpURLConnection);
                                                                if (inputStreamD != null) {
                                                                    bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                                    do {
                                                                    } while (bufferedReader.readLine() != null);
                                                                    zzao.a(5);
                                                                    r3 = bufferedReader;
                                                                } else {
                                                                    r3 = inputStream;
                                                                }
                                                                if (r3 != 0) {
                                                                    r3.close();
                                                                }
                                                                ((zzbi) zzcfVar).b(zzatVar);
                                                                inputStreamG = inputStream;
                                                            } else {
                                                                url.toString();
                                                                zzao.a(5);
                                                                inputStreamD = Callback.d(httpURLConnection);
                                                                if (inputStreamD != null) {
                                                                    bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                                    do {
                                                                    } while (bufferedReader.readLine() != null);
                                                                    zzao.a(5);
                                                                    r3 = bufferedReader;
                                                                } else {
                                                                    r3 = inputStream;
                                                                }
                                                                if (r3 != 0) {
                                                                    r3.close();
                                                                }
                                                                ((zzbi) zzcfVar).b(zzatVar);
                                                                inputStreamG = inputStream;
                                                            }
                                                            if (inputStreamG != null) {
                                                                inputStreamG.close();
                                                            }
                                                            httpURLConnection.disconnect();
                                                            z = false;
                                                        }
                                                        break;
                                                    default:
                                                        iK = Callback.k(httpURLConnection);
                                                        zzao.a(2);
                                                        if (iK >= 200) {
                                                            url.toString();
                                                            zzao.a(5);
                                                            inputStreamD = Callback.d(httpURLConnection);
                                                            if (inputStreamD != null) {
                                                                bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                                do {
                                                                } while (bufferedReader.readLine() != null);
                                                                zzao.a(5);
                                                                r3 = bufferedReader;
                                                            } else {
                                                                r3 = inputStream;
                                                            }
                                                            if (r3 != 0) {
                                                                r3.close();
                                                            }
                                                            ((zzbi) zzcfVar).b(zzatVar);
                                                            inputStreamG = inputStream;
                                                        } else {
                                                            url.toString();
                                                            zzao.a(5);
                                                            inputStreamD = Callback.d(httpURLConnection);
                                                            if (inputStreamD != null) {
                                                                bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                                do {
                                                                } while (bufferedReader.readLine() != null);
                                                                zzao.a(5);
                                                                r3 = bufferedReader;
                                                            } else {
                                                                r3 = inputStream;
                                                            }
                                                            if (r3 != 0) {
                                                                r3.close();
                                                            }
                                                            ((zzbi) zzcfVar).b(zzatVar);
                                                            inputStreamG = inputStream;
                                                        }
                                                        if (inputStreamG != null) {
                                                            inputStreamG.close();
                                                        }
                                                        httpURLConnection.disconnect();
                                                        z = false;
                                                        break;
                                                }
                                            } else {
                                                zzao.a(5);
                                                ((zzbi) zzcfVar).a(zzatVar);
                                            }
                                            httpURLConnection.disconnect();
                                            z = false;
                                        } catch (Throwable th6) {
                                            th = th6;
                                            inputStream = null;
                                            z = true;
                                            if (inputStream != null) {
                                                inputStream.close();
                                            }
                                            httpURLConnection.disconnect();
                                            throw th;
                                        }
                                    } catch (Throwable th7) {
                                        th = th7;
                                        i3 = i4;
                                    }
                                } else {
                                    i3 = i4;
                                    j2 = j3;
                                }
                                if (str != null) {
                                    if (str.equals("GET")) {
                                    }
                                    switch (str.hashCode()) {
                                        case 70454:
                                            if (str.equals("GET")) {
                                                if (str2 != null) {
                                                    zzao.a(5);
                                                }
                                                httpURLConnection.setRequestMethod(str);
                                            }
                                            iK = Callback.k(httpURLConnection);
                                            zzao.a(2);
                                            if (iK >= 200) {
                                                url.toString();
                                                zzao.a(5);
                                                inputStreamD = Callback.d(httpURLConnection);
                                                if (inputStreamD != null) {
                                                    bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                    do {
                                                    } while (bufferedReader.readLine() != null);
                                                    zzao.a(5);
                                                    r3 = bufferedReader;
                                                } else {
                                                    r3 = inputStream;
                                                }
                                                if (r3 != 0) {
                                                    r3.close();
                                                }
                                                ((zzbi) zzcfVar).b(zzatVar);
                                                inputStreamG = inputStream;
                                            } else {
                                                url.toString();
                                                zzao.a(5);
                                                inputStreamD = Callback.d(httpURLConnection);
                                                if (inputStreamD != null) {
                                                    bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                    do {
                                                    } while (bufferedReader.readLine() != null);
                                                    zzao.a(5);
                                                    r3 = bufferedReader;
                                                } else {
                                                    r3 = inputStream;
                                                }
                                                if (r3 != 0) {
                                                    r3.close();
                                                }
                                                ((zzbi) zzcfVar).b(zzatVar);
                                                inputStreamG = inputStream;
                                            }
                                            if (inputStreamG != null) {
                                                inputStreamG.close();
                                            }
                                            httpURLConnection.disconnect();
                                            z = false;
                                            break;
                                        case 79599:
                                            if (str.equals("PUT")) {
                                                httpURLConnection.setRequestMethod(str);
                                                if (str2 != null) {
                                                    httpURLConnection.setDoOutput(true);
                                                    byte[] bytes3 = str2.getBytes(Charset.forName("UTF-8"));
                                                    httpURLConnection.setFixedLengthStreamingMode(bytes3.length);
                                                    BufferedOutputStream bufferedOutputStream3 = new BufferedOutputStream(Callback.i(httpURLConnection));
                                                    bufferedOutputStream3.write(bytes3);
                                                    bufferedOutputStream3.flush();
                                                    bufferedOutputStream3.close();
                                                }
                                                iK = Callback.k(httpURLConnection);
                                                zzao.a(2);
                                                if (iK >= 200) {
                                                    url.toString();
                                                    zzao.a(5);
                                                    inputStreamD = Callback.d(httpURLConnection);
                                                    if (inputStreamD != null) {
                                                        bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                        do {
                                                        } while (bufferedReader.readLine() != null);
                                                        zzao.a(5);
                                                        r3 = bufferedReader;
                                                    } else {
                                                        r3 = inputStream;
                                                    }
                                                    if (r3 != 0) {
                                                        r3.close();
                                                    }
                                                    ((zzbi) zzcfVar).b(zzatVar);
                                                    inputStreamG = inputStream;
                                                } else {
                                                    url.toString();
                                                    zzao.a(5);
                                                    inputStreamD = Callback.d(httpURLConnection);
                                                    if (inputStreamD != null) {
                                                        bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                        do {
                                                        } while (bufferedReader.readLine() != null);
                                                        zzao.a(5);
                                                        r3 = bufferedReader;
                                                    } else {
                                                        r3 = inputStream;
                                                    }
                                                    if (r3 != 0) {
                                                        r3.close();
                                                    }
                                                    ((zzbi) zzcfVar).b(zzatVar);
                                                    inputStreamG = inputStream;
                                                }
                                                if (inputStreamG != null) {
                                                    inputStreamG.close();
                                                }
                                                httpURLConnection.disconnect();
                                                z = false;
                                            } else {
                                                iK = Callback.k(httpURLConnection);
                                                zzao.a(2);
                                                if (iK >= 200) {
                                                    url.toString();
                                                    zzao.a(5);
                                                    inputStreamD = Callback.d(httpURLConnection);
                                                    if (inputStreamD != null) {
                                                        bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                        do {
                                                        } while (bufferedReader.readLine() != null);
                                                        zzao.a(5);
                                                        r3 = bufferedReader;
                                                    } else {
                                                        r3 = inputStream;
                                                    }
                                                    if (r3 != 0) {
                                                        r3.close();
                                                    }
                                                    ((zzbi) zzcfVar).b(zzatVar);
                                                    inputStreamG = inputStream;
                                                } else {
                                                    url.toString();
                                                    zzao.a(5);
                                                    inputStreamD = Callback.d(httpURLConnection);
                                                    if (inputStreamD != null) {
                                                        bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                        do {
                                                        } while (bufferedReader.readLine() != null);
                                                        zzao.a(5);
                                                        r3 = bufferedReader;
                                                    } else {
                                                        r3 = inputStream;
                                                    }
                                                    if (r3 != 0) {
                                                        r3.close();
                                                    }
                                                    ((zzbi) zzcfVar).b(zzatVar);
                                                    inputStreamG = inputStream;
                                                }
                                                if (inputStreamG != null) {
                                                    inputStreamG.close();
                                                }
                                                httpURLConnection.disconnect();
                                                z = false;
                                            }
                                            break;
                                        case 2213344:
                                            if (str.equals("HEAD")) {
                                                if (str2 != null) {
                                                    zzao.a(5);
                                                }
                                                httpURLConnection.setRequestMethod(str);
                                            }
                                            iK = Callback.k(httpURLConnection);
                                            zzao.a(2);
                                            if (iK >= 200) {
                                                url.toString();
                                                zzao.a(5);
                                                inputStreamD = Callback.d(httpURLConnection);
                                                if (inputStreamD != null) {
                                                    bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                    do {
                                                    } while (bufferedReader.readLine() != null);
                                                    zzao.a(5);
                                                    r3 = bufferedReader;
                                                } else {
                                                    r3 = inputStream;
                                                }
                                                if (r3 != 0) {
                                                    r3.close();
                                                }
                                                ((zzbi) zzcfVar).b(zzatVar);
                                                inputStreamG = inputStream;
                                            } else {
                                                url.toString();
                                                zzao.a(5);
                                                inputStreamD = Callback.d(httpURLConnection);
                                                if (inputStreamD != null) {
                                                    bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                    do {
                                                    } while (bufferedReader.readLine() != null);
                                                    zzao.a(5);
                                                    r3 = bufferedReader;
                                                } else {
                                                    r3 = inputStream;
                                                }
                                                if (r3 != 0) {
                                                    r3.close();
                                                }
                                                ((zzbi) zzcfVar).b(zzatVar);
                                                inputStreamG = inputStream;
                                            }
                                            if (inputStreamG != null) {
                                                inputStreamG.close();
                                            }
                                            httpURLConnection.disconnect();
                                            z = false;
                                            break;
                                        case 2461856:
                                            if (str.equals("POST")) {
                                                httpURLConnection.setRequestMethod(str);
                                                if (str2 != null) {
                                                    httpURLConnection.setDoOutput(true);
                                                    byte[] bytes4 = str2.getBytes(Charset.forName("UTF-8"));
                                                    httpURLConnection.setFixedLengthStreamingMode(bytes4.length);
                                                    BufferedOutputStream bufferedOutputStream4 = new BufferedOutputStream(Callback.i(httpURLConnection));
                                                    bufferedOutputStream4.write(bytes4);
                                                    bufferedOutputStream4.flush();
                                                    bufferedOutputStream4.close();
                                                }
                                                iK = Callback.k(httpURLConnection);
                                                zzao.a(2);
                                                if (iK >= 200) {
                                                    url.toString();
                                                    zzao.a(5);
                                                    inputStreamD = Callback.d(httpURLConnection);
                                                    if (inputStreamD != null) {
                                                        bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                        do {
                                                        } while (bufferedReader.readLine() != null);
                                                        zzao.a(5);
                                                        r3 = bufferedReader;
                                                    } else {
                                                        r3 = inputStream;
                                                    }
                                                    if (r3 != 0) {
                                                        r3.close();
                                                    }
                                                    ((zzbi) zzcfVar).b(zzatVar);
                                                    inputStreamG = inputStream;
                                                } else {
                                                    url.toString();
                                                    zzao.a(5);
                                                    inputStreamD = Callback.d(httpURLConnection);
                                                    if (inputStreamD != null) {
                                                        bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                        do {
                                                        } while (bufferedReader.readLine() != null);
                                                        zzao.a(5);
                                                        r3 = bufferedReader;
                                                    } else {
                                                        r3 = inputStream;
                                                    }
                                                    if (r3 != 0) {
                                                        r3.close();
                                                    }
                                                    ((zzbi) zzcfVar).b(zzatVar);
                                                    inputStreamG = inputStream;
                                                }
                                                if (inputStreamG != null) {
                                                    inputStreamG.close();
                                                }
                                                httpURLConnection.disconnect();
                                                z = false;
                                            } else {
                                                iK = Callback.k(httpURLConnection);
                                                zzao.a(2);
                                                if (iK >= 200) {
                                                    url.toString();
                                                    zzao.a(5);
                                                    inputStreamD = Callback.d(httpURLConnection);
                                                    if (inputStreamD != null) {
                                                        bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                        do {
                                                        } while (bufferedReader.readLine() != null);
                                                        zzao.a(5);
                                                        r3 = bufferedReader;
                                                    } else {
                                                        r3 = inputStream;
                                                    }
                                                    if (r3 != 0) {
                                                        r3.close();
                                                    }
                                                    ((zzbi) zzcfVar).b(zzatVar);
                                                    inputStreamG = inputStream;
                                                } else {
                                                    url.toString();
                                                    zzao.a(5);
                                                    inputStreamD = Callback.d(httpURLConnection);
                                                    if (inputStreamD != null) {
                                                        bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                        do {
                                                        } while (bufferedReader.readLine() != null);
                                                        zzao.a(5);
                                                        r3 = bufferedReader;
                                                    } else {
                                                        r3 = inputStream;
                                                    }
                                                    if (r3 != 0) {
                                                        r3.close();
                                                    }
                                                    ((zzbi) zzcfVar).b(zzatVar);
                                                    inputStreamG = inputStream;
                                                }
                                                if (inputStreamG != null) {
                                                    inputStreamG.close();
                                                }
                                                httpURLConnection.disconnect();
                                                z = false;
                                            }
                                            break;
                                        default:
                                            iK = Callback.k(httpURLConnection);
                                            zzao.a(2);
                                            if (iK >= 200) {
                                                url.toString();
                                                zzao.a(5);
                                                inputStreamD = Callback.d(httpURLConnection);
                                                if (inputStreamD != null) {
                                                    bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                    do {
                                                    } while (bufferedReader.readLine() != null);
                                                    zzao.a(5);
                                                    r3 = bufferedReader;
                                                } else {
                                                    r3 = inputStream;
                                                }
                                                if (r3 != 0) {
                                                    r3.close();
                                                }
                                                ((zzbi) zzcfVar).b(zzatVar);
                                                inputStreamG = inputStream;
                                            } else {
                                                url.toString();
                                                zzao.a(5);
                                                inputStreamD = Callback.d(httpURLConnection);
                                                if (inputStreamD != null) {
                                                    bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                    do {
                                                    } while (bufferedReader.readLine() != null);
                                                    zzao.a(5);
                                                    r3 = bufferedReader;
                                                } else {
                                                    r3 = inputStream;
                                                }
                                                if (r3 != 0) {
                                                    r3.close();
                                                }
                                                ((zzbi) zzcfVar).b(zzatVar);
                                                inputStreamG = inputStream;
                                            }
                                            if (inputStreamG != null) {
                                                inputStreamG.close();
                                            }
                                            httpURLConnection.disconnect();
                                            z = false;
                                            break;
                                    }
                                } else {
                                    String.format("Hit %d retrieved from the store has null HTTP method.", Long.valueOf(j2));
                                    zzao.a(5);
                                    ((zzbi) zzcfVar).a(zzatVar);
                                }
                                httpURLConnection.disconnect();
                                z = false;
                            } catch (IOException e4) {
                                e = e4;
                                z = false;
                                url.toString();
                                zzao.a(5);
                                e.getMessage();
                                zzao.a(5);
                                ((zzbi) zzcfVar).b(zzatVar);
                                String string3 = url.toString();
                                defaultClock.getClass();
                                map2.put(string3, Long.valueOf(System.currentTimeMillis()));
                                if (map3.containsKey(url.toString())) {
                                    long jLongValue3 = ((Long) map3.get(url.toString())).longValue();
                                    jMin = Math.min(jLongValue3 + jLongValue3, j.f37873a);
                                } else {
                                    jMin = LiveTranslationEntity.DefaultSentenceTimeOut;
                                }
                                map3.put(url.toString(), Long.valueOf(jMin));
                                url.toString();
                                zzao.a(5);
                            }
                            httpURLConnection.setRequestProperty("User-Agent", this.f30026a);
                            if (map != null) {
                                while (r6.hasNext()) {
                                    httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                                }
                            }
                        } catch (Throwable th8) {
                            th = th8;
                        }
                        inputStream = null;
                    } catch (IOException e5) {
                        e = e5;
                        i3 = i4;
                    }
                }
            } else {
                long jLongValue4 = ((Long) map2.get(url.toString())).longValue() + ((Long) map3.get(url.toString())).longValue();
                defaultClock.getClass();
                if (jLongValue4 > System.currentTimeMillis()) {
                    ((zzbi) zzcfVar).b(zzatVar);
                    i2 = iMin;
                } else {
                    str = zzatVar.d;
                    map = zzatVar.f29969e;
                    i2 = iMin;
                    str2 = zzatVar.f29970f;
                    if (url == null) {
                        zzao.a(5);
                        ((zzbi) zzcfVar).a(zzatVar);
                    } else {
                        URLConnection uRLConnectionOpenConnection2 = url.openConnection();
                        Callback.C(uRLConnectionOpenConnection2);
                        httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection2;
                        if (z) {
                            context = this.f30027b;
                            int i6 = zzbh.f29973b;
                            i3 = i4;
                            intent = new Intent("com.google.analytics.RADIO_POWERED");
                            intent.addCategory(context.getPackageName());
                            j2 = j3;
                            intent.putExtra("com.google.android.gms.internal.gtm.zzbh", true);
                            if (Build.VERSION.SDK_INT < 34) {
                                context.sendBroadcast(intent);
                            } else {
                                inputStream = null;
                                context.sendBroadcast(intent, null, BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle());
                            }
                            httpURLConnection.setRequestProperty("User-Agent", this.f30026a);
                            if (map != null) {
                                while (r6.hasNext()) {
                                    httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                                }
                            }
                            if (str != null) {
                                if (str.equals("GET")) {
                                }
                                switch (str.hashCode()) {
                                    case 70454:
                                        if (str.equals("GET")) {
                                            if (str2 != null) {
                                                zzao.a(5);
                                            }
                                            httpURLConnection.setRequestMethod(str);
                                        }
                                        iK = Callback.k(httpURLConnection);
                                        zzao.a(2);
                                        if (iK >= 200) {
                                            url.toString();
                                            zzao.a(5);
                                            inputStreamD = Callback.d(httpURLConnection);
                                            if (inputStreamD != null) {
                                                bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                do {
                                                } while (bufferedReader.readLine() != null);
                                                zzao.a(5);
                                                r3 = bufferedReader;
                                            } else {
                                                r3 = inputStream;
                                            }
                                            if (r3 != 0) {
                                                r3.close();
                                            }
                                            ((zzbi) zzcfVar).b(zzatVar);
                                            inputStreamG = inputStream;
                                        } else {
                                            url.toString();
                                            zzao.a(5);
                                            inputStreamD = Callback.d(httpURLConnection);
                                            if (inputStreamD != null) {
                                                bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                do {
                                                } while (bufferedReader.readLine() != null);
                                                zzao.a(5);
                                                r3 = bufferedReader;
                                            } else {
                                                r3 = inputStream;
                                            }
                                            if (r3 != 0) {
                                                r3.close();
                                            }
                                            ((zzbi) zzcfVar).b(zzatVar);
                                            inputStreamG = inputStream;
                                        }
                                        if (inputStreamG != null) {
                                            inputStreamG.close();
                                        }
                                        httpURLConnection.disconnect();
                                        z = false;
                                        break;
                                    case 79599:
                                        if (str.equals("PUT")) {
                                            httpURLConnection.setRequestMethod(str);
                                            if (str2 != null) {
                                                httpURLConnection.setDoOutput(true);
                                                byte[] bytes5 = str2.getBytes(Charset.forName("UTF-8"));
                                                httpURLConnection.setFixedLengthStreamingMode(bytes5.length);
                                                BufferedOutputStream bufferedOutputStream5 = new BufferedOutputStream(Callback.i(httpURLConnection));
                                                bufferedOutputStream5.write(bytes5);
                                                bufferedOutputStream5.flush();
                                                bufferedOutputStream5.close();
                                            }
                                            iK = Callback.k(httpURLConnection);
                                            zzao.a(2);
                                            if (iK >= 200) {
                                                url.toString();
                                                zzao.a(5);
                                                inputStreamD = Callback.d(httpURLConnection);
                                                if (inputStreamD != null) {
                                                    bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                    do {
                                                    } while (bufferedReader.readLine() != null);
                                                    zzao.a(5);
                                                    r3 = bufferedReader;
                                                } else {
                                                    r3 = inputStream;
                                                }
                                                if (r3 != 0) {
                                                    r3.close();
                                                }
                                                ((zzbi) zzcfVar).b(zzatVar);
                                                inputStreamG = inputStream;
                                            } else {
                                                url.toString();
                                                zzao.a(5);
                                                inputStreamD = Callback.d(httpURLConnection);
                                                if (inputStreamD != null) {
                                                    bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                    do {
                                                    } while (bufferedReader.readLine() != null);
                                                    zzao.a(5);
                                                    r3 = bufferedReader;
                                                } else {
                                                    r3 = inputStream;
                                                }
                                                if (r3 != 0) {
                                                    r3.close();
                                                }
                                                ((zzbi) zzcfVar).b(zzatVar);
                                                inputStreamG = inputStream;
                                            }
                                            if (inputStreamG != null) {
                                                inputStreamG.close();
                                            }
                                            httpURLConnection.disconnect();
                                            z = false;
                                        } else {
                                            iK = Callback.k(httpURLConnection);
                                            zzao.a(2);
                                            if (iK >= 200) {
                                                url.toString();
                                                zzao.a(5);
                                                inputStreamD = Callback.d(httpURLConnection);
                                                if (inputStreamD != null) {
                                                    bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                    do {
                                                    } while (bufferedReader.readLine() != null);
                                                    zzao.a(5);
                                                    r3 = bufferedReader;
                                                } else {
                                                    r3 = inputStream;
                                                }
                                                if (r3 != 0) {
                                                    r3.close();
                                                }
                                                ((zzbi) zzcfVar).b(zzatVar);
                                                inputStreamG = inputStream;
                                            } else {
                                                url.toString();
                                                zzao.a(5);
                                                inputStreamD = Callback.d(httpURLConnection);
                                                if (inputStreamD != null) {
                                                    bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                    do {
                                                    } while (bufferedReader.readLine() != null);
                                                    zzao.a(5);
                                                    r3 = bufferedReader;
                                                } else {
                                                    r3 = inputStream;
                                                }
                                                if (r3 != 0) {
                                                    r3.close();
                                                }
                                                ((zzbi) zzcfVar).b(zzatVar);
                                                inputStreamG = inputStream;
                                            }
                                            if (inputStreamG != null) {
                                                inputStreamG.close();
                                            }
                                            httpURLConnection.disconnect();
                                            z = false;
                                        }
                                        break;
                                    case 2213344:
                                        if (str.equals("HEAD")) {
                                            if (str2 != null) {
                                                zzao.a(5);
                                            }
                                            httpURLConnection.setRequestMethod(str);
                                        }
                                        iK = Callback.k(httpURLConnection);
                                        zzao.a(2);
                                        if (iK >= 200) {
                                            url.toString();
                                            zzao.a(5);
                                            inputStreamD = Callback.d(httpURLConnection);
                                            if (inputStreamD != null) {
                                                bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                do {
                                                } while (bufferedReader.readLine() != null);
                                                zzao.a(5);
                                                r3 = bufferedReader;
                                            } else {
                                                r3 = inputStream;
                                            }
                                            if (r3 != 0) {
                                                r3.close();
                                            }
                                            ((zzbi) zzcfVar).b(zzatVar);
                                            inputStreamG = inputStream;
                                        } else {
                                            url.toString();
                                            zzao.a(5);
                                            inputStreamD = Callback.d(httpURLConnection);
                                            if (inputStreamD != null) {
                                                bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                do {
                                                } while (bufferedReader.readLine() != null);
                                                zzao.a(5);
                                                r3 = bufferedReader;
                                            } else {
                                                r3 = inputStream;
                                            }
                                            if (r3 != 0) {
                                                r3.close();
                                            }
                                            ((zzbi) zzcfVar).b(zzatVar);
                                            inputStreamG = inputStream;
                                        }
                                        if (inputStreamG != null) {
                                            inputStreamG.close();
                                        }
                                        httpURLConnection.disconnect();
                                        z = false;
                                        break;
                                    case 2461856:
                                        if (str.equals("POST")) {
                                            httpURLConnection.setRequestMethod(str);
                                            if (str2 != null) {
                                                httpURLConnection.setDoOutput(true);
                                                byte[] bytes6 = str2.getBytes(Charset.forName("UTF-8"));
                                                httpURLConnection.setFixedLengthStreamingMode(bytes6.length);
                                                BufferedOutputStream bufferedOutputStream6 = new BufferedOutputStream(Callback.i(httpURLConnection));
                                                bufferedOutputStream6.write(bytes6);
                                                bufferedOutputStream6.flush();
                                                bufferedOutputStream6.close();
                                            }
                                            iK = Callback.k(httpURLConnection);
                                            zzao.a(2);
                                            if (iK >= 200) {
                                                url.toString();
                                                zzao.a(5);
                                                inputStreamD = Callback.d(httpURLConnection);
                                                if (inputStreamD != null) {
                                                    bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                    do {
                                                    } while (bufferedReader.readLine() != null);
                                                    zzao.a(5);
                                                    r3 = bufferedReader;
                                                } else {
                                                    r3 = inputStream;
                                                }
                                                if (r3 != 0) {
                                                    r3.close();
                                                }
                                                ((zzbi) zzcfVar).b(zzatVar);
                                                inputStreamG = inputStream;
                                            } else {
                                                url.toString();
                                                zzao.a(5);
                                                inputStreamD = Callback.d(httpURLConnection);
                                                if (inputStreamD != null) {
                                                    bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                    do {
                                                    } while (bufferedReader.readLine() != null);
                                                    zzao.a(5);
                                                    r3 = bufferedReader;
                                                } else {
                                                    r3 = inputStream;
                                                }
                                                if (r3 != 0) {
                                                    r3.close();
                                                }
                                                ((zzbi) zzcfVar).b(zzatVar);
                                                inputStreamG = inputStream;
                                            }
                                            if (inputStreamG != null) {
                                                inputStreamG.close();
                                            }
                                            httpURLConnection.disconnect();
                                            z = false;
                                        } else {
                                            iK = Callback.k(httpURLConnection);
                                            zzao.a(2);
                                            if (iK >= 200) {
                                                url.toString();
                                                zzao.a(5);
                                                inputStreamD = Callback.d(httpURLConnection);
                                                if (inputStreamD != null) {
                                                    bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                    do {
                                                    } while (bufferedReader.readLine() != null);
                                                    zzao.a(5);
                                                    r3 = bufferedReader;
                                                } else {
                                                    r3 = inputStream;
                                                }
                                                if (r3 != 0) {
                                                    r3.close();
                                                }
                                                ((zzbi) zzcfVar).b(zzatVar);
                                                inputStreamG = inputStream;
                                            } else {
                                                url.toString();
                                                zzao.a(5);
                                                inputStreamD = Callback.d(httpURLConnection);
                                                if (inputStreamD != null) {
                                                    bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                    do {
                                                    } while (bufferedReader.readLine() != null);
                                                    zzao.a(5);
                                                    r3 = bufferedReader;
                                                } else {
                                                    r3 = inputStream;
                                                }
                                                if (r3 != 0) {
                                                    r3.close();
                                                }
                                                ((zzbi) zzcfVar).b(zzatVar);
                                                inputStreamG = inputStream;
                                            }
                                            if (inputStreamG != null) {
                                                inputStreamG.close();
                                            }
                                            httpURLConnection.disconnect();
                                            z = false;
                                        }
                                        break;
                                    default:
                                        iK = Callback.k(httpURLConnection);
                                        zzao.a(2);
                                        if (iK >= 200) {
                                            url.toString();
                                            zzao.a(5);
                                            inputStreamD = Callback.d(httpURLConnection);
                                            if (inputStreamD != null) {
                                                bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                do {
                                                } while (bufferedReader.readLine() != null);
                                                zzao.a(5);
                                                r3 = bufferedReader;
                                            } else {
                                                r3 = inputStream;
                                            }
                                            if (r3 != 0) {
                                                r3.close();
                                            }
                                            ((zzbi) zzcfVar).b(zzatVar);
                                            inputStreamG = inputStream;
                                        } else {
                                            url.toString();
                                            zzao.a(5);
                                            inputStreamD = Callback.d(httpURLConnection);
                                            if (inputStreamD != null) {
                                                bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                do {
                                                } while (bufferedReader.readLine() != null);
                                                zzao.a(5);
                                                r3 = bufferedReader;
                                            } else {
                                                r3 = inputStream;
                                            }
                                            if (r3 != 0) {
                                                r3.close();
                                            }
                                            ((zzbi) zzcfVar).b(zzatVar);
                                            inputStreamG = inputStream;
                                        }
                                        if (inputStreamG != null) {
                                            inputStreamG.close();
                                        }
                                        httpURLConnection.disconnect();
                                        z = false;
                                        break;
                                }
                            } else {
                                String.format("Hit %d retrieved from the store has null HTTP method.", Long.valueOf(j2));
                                zzao.a(5);
                                ((zzbi) zzcfVar).a(zzatVar);
                            }
                            httpURLConnection.disconnect();
                            z = false;
                        } else {
                            i3 = i4;
                            j2 = j3;
                        }
                        inputStream = null;
                        httpURLConnection.setRequestProperty("User-Agent", this.f30026a);
                        if (map != null) {
                            while (r6.hasNext()) {
                                httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                            }
                        }
                        if (str != null) {
                            if (str.equals("GET")) {
                            }
                            switch (str.hashCode()) {
                                case 70454:
                                    if (str.equals("GET")) {
                                        if (str2 != null) {
                                            zzao.a(5);
                                        }
                                        httpURLConnection.setRequestMethod(str);
                                    }
                                    iK = Callback.k(httpURLConnection);
                                    zzao.a(2);
                                    if (iK >= 200) {
                                        url.toString();
                                        zzao.a(5);
                                        inputStreamD = Callback.d(httpURLConnection);
                                        if (inputStreamD != null) {
                                            bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                            do {
                                            } while (bufferedReader.readLine() != null);
                                            zzao.a(5);
                                            r3 = bufferedReader;
                                        } else {
                                            r3 = inputStream;
                                        }
                                        if (r3 != 0) {
                                            r3.close();
                                        }
                                        ((zzbi) zzcfVar).b(zzatVar);
                                        inputStreamG = inputStream;
                                    } else {
                                        url.toString();
                                        zzao.a(5);
                                        inputStreamD = Callback.d(httpURLConnection);
                                        if (inputStreamD != null) {
                                            bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                            do {
                                            } while (bufferedReader.readLine() != null);
                                            zzao.a(5);
                                            r3 = bufferedReader;
                                        } else {
                                            r3 = inputStream;
                                        }
                                        if (r3 != 0) {
                                            r3.close();
                                        }
                                        ((zzbi) zzcfVar).b(zzatVar);
                                        inputStreamG = inputStream;
                                    }
                                    if (inputStreamG != null) {
                                        inputStreamG.close();
                                    }
                                    httpURLConnection.disconnect();
                                    z = false;
                                    break;
                                case 79599:
                                    if (str.equals("PUT")) {
                                        httpURLConnection.setRequestMethod(str);
                                        if (str2 != null) {
                                            httpURLConnection.setDoOutput(true);
                                            byte[] bytes7 = str2.getBytes(Charset.forName("UTF-8"));
                                            httpURLConnection.setFixedLengthStreamingMode(bytes7.length);
                                            BufferedOutputStream bufferedOutputStream7 = new BufferedOutputStream(Callback.i(httpURLConnection));
                                            bufferedOutputStream7.write(bytes7);
                                            bufferedOutputStream7.flush();
                                            bufferedOutputStream7.close();
                                        }
                                        iK = Callback.k(httpURLConnection);
                                        zzao.a(2);
                                        if (iK >= 200) {
                                            url.toString();
                                            zzao.a(5);
                                            inputStreamD = Callback.d(httpURLConnection);
                                            if (inputStreamD != null) {
                                                bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                do {
                                                } while (bufferedReader.readLine() != null);
                                                zzao.a(5);
                                                r3 = bufferedReader;
                                            } else {
                                                r3 = inputStream;
                                            }
                                            if (r3 != 0) {
                                                r3.close();
                                            }
                                            ((zzbi) zzcfVar).b(zzatVar);
                                            inputStreamG = inputStream;
                                        } else {
                                            url.toString();
                                            zzao.a(5);
                                            inputStreamD = Callback.d(httpURLConnection);
                                            if (inputStreamD != null) {
                                                bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                do {
                                                } while (bufferedReader.readLine() != null);
                                                zzao.a(5);
                                                r3 = bufferedReader;
                                            } else {
                                                r3 = inputStream;
                                            }
                                            if (r3 != 0) {
                                                r3.close();
                                            }
                                            ((zzbi) zzcfVar).b(zzatVar);
                                            inputStreamG = inputStream;
                                        }
                                        if (inputStreamG != null) {
                                            inputStreamG.close();
                                        }
                                        httpURLConnection.disconnect();
                                        z = false;
                                    } else {
                                        iK = Callback.k(httpURLConnection);
                                        zzao.a(2);
                                        if (iK >= 200) {
                                            url.toString();
                                            zzao.a(5);
                                            inputStreamD = Callback.d(httpURLConnection);
                                            if (inputStreamD != null) {
                                                bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                do {
                                                } while (bufferedReader.readLine() != null);
                                                zzao.a(5);
                                                r3 = bufferedReader;
                                            } else {
                                                r3 = inputStream;
                                            }
                                            if (r3 != 0) {
                                                r3.close();
                                            }
                                            ((zzbi) zzcfVar).b(zzatVar);
                                            inputStreamG = inputStream;
                                        } else {
                                            url.toString();
                                            zzao.a(5);
                                            inputStreamD = Callback.d(httpURLConnection);
                                            if (inputStreamD != null) {
                                                bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                do {
                                                } while (bufferedReader.readLine() != null);
                                                zzao.a(5);
                                                r3 = bufferedReader;
                                            } else {
                                                r3 = inputStream;
                                            }
                                            if (r3 != 0) {
                                                r3.close();
                                            }
                                            ((zzbi) zzcfVar).b(zzatVar);
                                            inputStreamG = inputStream;
                                        }
                                        if (inputStreamG != null) {
                                            inputStreamG.close();
                                        }
                                        httpURLConnection.disconnect();
                                        z = false;
                                    }
                                    break;
                                case 2213344:
                                    if (str.equals("HEAD")) {
                                        if (str2 != null) {
                                            zzao.a(5);
                                        }
                                        httpURLConnection.setRequestMethod(str);
                                    }
                                    iK = Callback.k(httpURLConnection);
                                    zzao.a(2);
                                    if (iK >= 200) {
                                        url.toString();
                                        zzao.a(5);
                                        inputStreamD = Callback.d(httpURLConnection);
                                        if (inputStreamD != null) {
                                            bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                            do {
                                            } while (bufferedReader.readLine() != null);
                                            zzao.a(5);
                                            r3 = bufferedReader;
                                        } else {
                                            r3 = inputStream;
                                        }
                                        if (r3 != 0) {
                                            r3.close();
                                        }
                                        ((zzbi) zzcfVar).b(zzatVar);
                                        inputStreamG = inputStream;
                                    } else {
                                        url.toString();
                                        zzao.a(5);
                                        inputStreamD = Callback.d(httpURLConnection);
                                        if (inputStreamD != null) {
                                            bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                            do {
                                            } while (bufferedReader.readLine() != null);
                                            zzao.a(5);
                                            r3 = bufferedReader;
                                        } else {
                                            r3 = inputStream;
                                        }
                                        if (r3 != 0) {
                                            r3.close();
                                        }
                                        ((zzbi) zzcfVar).b(zzatVar);
                                        inputStreamG = inputStream;
                                    }
                                    if (inputStreamG != null) {
                                        inputStreamG.close();
                                    }
                                    httpURLConnection.disconnect();
                                    z = false;
                                    break;
                                case 2461856:
                                    if (str.equals("POST")) {
                                        httpURLConnection.setRequestMethod(str);
                                        if (str2 != null) {
                                            httpURLConnection.setDoOutput(true);
                                            byte[] bytes8 = str2.getBytes(Charset.forName("UTF-8"));
                                            httpURLConnection.setFixedLengthStreamingMode(bytes8.length);
                                            BufferedOutputStream bufferedOutputStream8 = new BufferedOutputStream(Callback.i(httpURLConnection));
                                            bufferedOutputStream8.write(bytes8);
                                            bufferedOutputStream8.flush();
                                            bufferedOutputStream8.close();
                                        }
                                        iK = Callback.k(httpURLConnection);
                                        zzao.a(2);
                                        if (iK >= 200) {
                                            url.toString();
                                            zzao.a(5);
                                            inputStreamD = Callback.d(httpURLConnection);
                                            if (inputStreamD != null) {
                                                bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                do {
                                                } while (bufferedReader.readLine() != null);
                                                zzao.a(5);
                                                r3 = bufferedReader;
                                            } else {
                                                r3 = inputStream;
                                            }
                                            if (r3 != 0) {
                                                r3.close();
                                            }
                                            ((zzbi) zzcfVar).b(zzatVar);
                                            inputStreamG = inputStream;
                                        } else {
                                            url.toString();
                                            zzao.a(5);
                                            inputStreamD = Callback.d(httpURLConnection);
                                            if (inputStreamD != null) {
                                                bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                do {
                                                } while (bufferedReader.readLine() != null);
                                                zzao.a(5);
                                                r3 = bufferedReader;
                                            } else {
                                                r3 = inputStream;
                                            }
                                            if (r3 != 0) {
                                                r3.close();
                                            }
                                            ((zzbi) zzcfVar).b(zzatVar);
                                            inputStreamG = inputStream;
                                        }
                                        if (inputStreamG != null) {
                                            inputStreamG.close();
                                        }
                                        httpURLConnection.disconnect();
                                        z = false;
                                    } else {
                                        iK = Callback.k(httpURLConnection);
                                        zzao.a(2);
                                        if (iK >= 200) {
                                            url.toString();
                                            zzao.a(5);
                                            inputStreamD = Callback.d(httpURLConnection);
                                            if (inputStreamD != null) {
                                                bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                do {
                                                } while (bufferedReader.readLine() != null);
                                                zzao.a(5);
                                                r3 = bufferedReader;
                                            } else {
                                                r3 = inputStream;
                                            }
                                            if (r3 != 0) {
                                                r3.close();
                                            }
                                            ((zzbi) zzcfVar).b(zzatVar);
                                            inputStreamG = inputStream;
                                        } else {
                                            url.toString();
                                            zzao.a(5);
                                            inputStreamD = Callback.d(httpURLConnection);
                                            if (inputStreamD != null) {
                                                bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                                do {
                                                } while (bufferedReader.readLine() != null);
                                                zzao.a(5);
                                                r3 = bufferedReader;
                                            } else {
                                                r3 = inputStream;
                                            }
                                            if (r3 != 0) {
                                                r3.close();
                                            }
                                            ((zzbi) zzcfVar).b(zzatVar);
                                            inputStreamG = inputStream;
                                        }
                                        if (inputStreamG != null) {
                                            inputStreamG.close();
                                        }
                                        httpURLConnection.disconnect();
                                        z = false;
                                    }
                                    break;
                                default:
                                    iK = Callback.k(httpURLConnection);
                                    zzao.a(2);
                                    if (iK >= 200) {
                                        url.toString();
                                        zzao.a(5);
                                        inputStreamD = Callback.d(httpURLConnection);
                                        if (inputStreamD != null) {
                                            bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                            do {
                                            } while (bufferedReader.readLine() != null);
                                            zzao.a(5);
                                            r3 = bufferedReader;
                                        } else {
                                            r3 = inputStream;
                                        }
                                        if (r3 != 0) {
                                            r3.close();
                                        }
                                        ((zzbi) zzcfVar).b(zzatVar);
                                        inputStreamG = inputStream;
                                    } else {
                                        url.toString();
                                        zzao.a(5);
                                        inputStreamD = Callback.d(httpURLConnection);
                                        if (inputStreamD != null) {
                                            bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                                            do {
                                            } while (bufferedReader.readLine() != null);
                                            zzao.a(5);
                                            r3 = bufferedReader;
                                        } else {
                                            r3 = inputStream;
                                        }
                                        if (r3 != 0) {
                                            r3.close();
                                        }
                                        ((zzbi) zzcfVar).b(zzatVar);
                                        inputStreamG = inputStream;
                                    }
                                    if (inputStreamG != null) {
                                        inputStreamG.close();
                                    }
                                    httpURLConnection.disconnect();
                                    z = false;
                                    break;
                            }
                        } else {
                            String.format("Hit %d retrieved from the store has null HTTP method.", Long.valueOf(j2));
                            zzao.a(5);
                            ((zzbi) zzcfVar).a(zzatVar);
                        }
                        httpURLConnection.disconnect();
                        z = false;
                    }
                }
                i3 = i4;
            }
            i4 = i3 + 1;
            iMin = i2;
        }
    }
}

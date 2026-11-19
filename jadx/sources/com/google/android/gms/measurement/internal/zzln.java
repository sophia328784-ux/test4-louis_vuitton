package com.google.android.gms.measurement.internal;

import com.dynatrace.android.callback.Callback;
import com.github.druk.dnssd.DNSSD;
import com.google.android.gms.common.internal.Preconditions;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Map;
import java.util.Objects;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes2.dex */
final class zzln implements Runnable {
    final /* synthetic */ zzlo zza;
    private final URL zzb;
    private final byte[] zzc;
    private final zzll zzd;
    private final String zze;
    private final Map zzf;

    public zzln(zzlo zzloVar, String str, URL url, byte[] bArr, Map map, zzll zzllVar) {
        Objects.requireNonNull(zzloVar);
        this.zza = zzloVar;
        Preconditions.e(str);
        Preconditions.h(url);
        Preconditions.h(zzllVar);
        this.zzb = url;
        this.zzc = bArr;
        this.zzd = zzllVar;
        this.zze = str;
        this.zzf = map;
    }

    private final void zzb(final int i2, final Exception exc, final byte[] bArr, final Map map) {
        zzhz zzhzVar = this.zza.f31850a.g;
        zzic.m(zzhzVar);
        zzhzVar.p(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzlm
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                this.zza.zza(i2, exc, bArr, map);
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:77:0x0150  */
    /* JADX WARN: Code duplicated, block: B:87:0x0177  */
    /* JADX WARN: Code duplicated, block: B:90:0x0135 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:97:0x015c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.google.android.gms.measurement.internal.zzln] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        Throwable th;
        OutputStream outputStreamI;
        HttpURLConnection httpURLConnection;
        ?? r6;
        IOException e2;
        ?? r7;
        InputStream inputStreamG;
        zzlo zzloVar = this.zza;
        zzhz zzhzVar = zzloVar.f31850a.g;
        zzic.m(zzhzVar);
        zzhzVar.k();
        int i2 = 0;
        try {
            URLConnection uRLConnectionOpenConnection = this.zzb.openConnection();
            Callback.C(uRLConnectionOpenConnection);
            if (!(uRLConnectionOpenConnection instanceof HttpURLConnection)) {
                throw new IOException("Failed to obtain HTTP connection");
            }
            httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
            httpURLConnection.setDefaultUseCaches(false);
            zzloVar.f31850a.getClass();
            httpURLConnection.setConnectTimeout(DNSSD.DNSSD_DEFAULT_TIMEOUT);
            httpURLConnection.setReadTimeout(61000);
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setDoInput(true);
            try {
                try {
                    Map map = this.zzf;
                    if (map != null) {
                        for (Map.Entry entry : map.entrySet()) {
                            httpURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                        }
                    }
                    byte[] byteArray = this.zzc;
                    if (byteArray != null) {
                        try {
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                            gZIPOutputStream.write(byteArray);
                            gZIPOutputStream.close();
                            byteArrayOutputStream.close();
                            byteArray = byteArrayOutputStream.toByteArray();
                            zzgu zzguVar = this.zza.f31850a.f31842f;
                            zzic.m(zzguVar);
                            zzgs zzgsVar = zzguVar.n;
                            int length = byteArray.length;
                            zzgsVar.b(Integer.valueOf(length), "Uploading data. size");
                            httpURLConnection.setDoOutput(true);
                            httpURLConnection.addRequestProperty("Content-Encoding", "gzip");
                            httpURLConnection.setFixedLengthStreamingMode(length);
                            Callback.a(httpURLConnection);
                            outputStreamI = Callback.i(httpURLConnection);
                            try {
                                outputStreamI.write(byteArray);
                                outputStreamI.close();
                            } catch (IOException e3) {
                                e2 = e3;
                                r7 = 0;
                                if (outputStreamI != null) {
                                    try {
                                        outputStreamI.close();
                                    } catch (IOException e4) {
                                        zzgu zzguVar2 = this.zza.f31850a.f31842f;
                                        zzic.m(zzguVar2);
                                        zzguVar2.f31769f.c("Error closing HTTP compressed POST connection output stream. appId", zzgu.o(this.zze), e4);
                                    }
                                }
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                                zzb(i2, e2, null, r7);
                            } catch (Throwable th2) {
                                th = th2;
                                r6 = 0;
                                if (outputStreamI != null) {
                                    try {
                                        outputStreamI.close();
                                    } catch (IOException e5) {
                                        zzgu zzguVar3 = this.zza.f31850a.f31842f;
                                        zzic.m(zzguVar3);
                                        zzguVar3.f31769f.c("Error closing HTTP compressed POST connection output stream. appId", zzgu.o(this.zze), e5);
                                    }
                                }
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                                zzb(i2, null, null, r6);
                                throw th;
                            }
                        } catch (IOException e6) {
                            zzgu zzguVar4 = this.zza.f31850a.f31842f;
                            zzic.m(zzguVar4);
                            zzguVar4.f31769f.b(e6, "Failed to gzip post request content");
                            throw e6;
                        }
                    }
                    int iK = Callback.k(httpURLConnection);
                    try {
                        try {
                            Map mapF = Callback.f(httpURLConnection);
                            try {
                                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                                inputStreamG = Callback.g(httpURLConnection);
                                try {
                                    byte[] bArr = new byte[1024];
                                    while (true) {
                                        int i3 = inputStreamG.read(bArr);
                                        if (i3 <= 0) {
                                            byte[] byteArray2 = byteArrayOutputStream2.toByteArray();
                                            inputStreamG.close();
                                            httpURLConnection.disconnect();
                                            zzb(iK, null, byteArray2, mapF);
                                            return;
                                        }
                                        byteArrayOutputStream2.write(bArr, 0, i3);
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    if (inputStreamG != null) {
                                        inputStreamG.close();
                                    }
                                    throw th;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                inputStreamG = null;
                            }
                        } catch (IOException e7) {
                            e2 = e7;
                            i2 = iK;
                            outputStreamI = null;
                            r7 = 0;
                            if (outputStreamI != null) {
                                outputStreamI.close();
                            }
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            zzb(i2, e2, null, r7);
                        } catch (Throwable th5) {
                            th = th5;
                            i2 = iK;
                            outputStreamI = null;
                            r6 = 0;
                            if (outputStreamI != null) {
                                outputStreamI.close();
                            }
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            zzb(i2, null, null, r6);
                            throw th;
                        }
                    } catch (IOException e8) {
                        r7 = byteArray;
                        e2 = e8;
                        i2 = iK;
                        outputStreamI = null;
                        if (outputStreamI != null) {
                            outputStreamI.close();
                        }
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        zzb(i2, e2, null, r7);
                    } catch (Throwable th6) {
                        r6 = byteArray;
                        th = th6;
                        i2 = iK;
                        outputStreamI = null;
                        if (outputStreamI != null) {
                            outputStreamI.close();
                        }
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        zzb(i2, null, null, r6);
                        throw th;
                    }
                } catch (Throwable th7) {
                    th = th7;
                }
            } catch (IOException e9) {
                e2 = e9;
            }
        } catch (IOException e10) {
            e2 = e10;
            outputStreamI = null;
            httpURLConnection = null;
            r7 = 0;
        } catch (Throwable th8) {
            th = th8;
            outputStreamI = null;
            httpURLConnection = null;
            r6 = 0;
        }
    }

    public final /* synthetic */ void zza(int i2, Exception exc, byte[] bArr, Map map) {
        this.zzd.a(this.zze, i2, exc, bArr, map);
    }
}

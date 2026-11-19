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

/* JADX INFO: loaded from: classes2.dex */
final class zzgy implements Runnable {
    final /* synthetic */ zzgz zza;
    private final URL zzb;
    private final byte[] zzc;
    private final zzgw zzd;
    private final String zze;
    private final Map zzf;

    public zzgy(zzgz zzgzVar, String str, URL url, byte[] bArr, Map map, zzgw zzgwVar) {
        Objects.requireNonNull(zzgzVar);
        this.zza = zzgzVar;
        Preconditions.e(str);
        Preconditions.h(url);
        Preconditions.h(zzgwVar);
        this.zzb = url;
        this.zzc = bArr;
        this.zzd = zzgwVar;
        this.zze = str;
        this.zzf = map;
    }

    /* JADX WARN: Code duplicated, block: B:73:0x0149  */
    /* JADX WARN: Code duplicated, block: B:83:0x0186  */
    /* JADX WARN: Code duplicated, block: B:86:0x012e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x016b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Not initialized variable reg: 11, insn: 0x0104: MOVE (r9 I:??[OBJECT, ARRAY]) = (r11 I:??[OBJECT, ARRAY]), block:B:51:0x0102 */
    /* JADX WARN: Not initialized variable reg: 11, insn: 0x0107: MOVE (r10 I:??[OBJECT, ARRAY]) = (r11 I:??[OBJECT, ARRAY]), block:B:52:0x0106 */
    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        HttpURLConnection httpURLConnection;
        Map map;
        IOException iOException;
        int iK;
        Map map2;
        Throwable th;
        Map map3;
        Map map4;
        InputStream inputStreamG;
        zzgz zzgzVar = this.zza;
        zzhz zzhzVar = zzgzVar.f31850a.g;
        zzic.m(zzhzVar);
        zzhzVar.k();
        int i2 = 0;
        OutputStream outputStream = null;
        try {
            URLConnection uRLConnectionOpenConnection = this.zzb.openConnection();
            Callback.C(uRLConnectionOpenConnection);
            if (!(uRLConnectionOpenConnection instanceof HttpURLConnection)) {
                throw new IOException("Failed to obtain HTTP connection");
            }
            httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
            httpURLConnection.setDefaultUseCaches(false);
            zzic zzicVar = zzgzVar.f31850a;
            zzicVar.getClass();
            httpURLConnection.setConnectTimeout(DNSSD.DNSSD_DEFAULT_TIMEOUT);
            httpURLConnection.setReadTimeout(61000);
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setDoInput(true);
            try {
                Map map5 = this.zzf;
                if (map5 != null) {
                    for (Map.Entry entry : map5.entrySet()) {
                        httpURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                    }
                }
                byte[] bArr = this.zzc;
                if (bArr != null) {
                    zzpk zzpkVar = zzgzVar.f31948b.g;
                    zzpg.U(zzpkVar);
                    byte[] bArrQ = zzpkVar.Q(bArr);
                    zzgu zzguVar = zzicVar.f31842f;
                    zzic.m(zzguVar);
                    zzgs zzgsVar = zzguVar.n;
                    int length = bArrQ.length;
                    zzgsVar.b(Integer.valueOf(length), "Uploading data. size");
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.addRequestProperty("Content-Encoding", "gzip");
                    httpURLConnection.setFixedLengthStreamingMode(length);
                    Callback.a(httpURLConnection);
                    OutputStream outputStreamI = Callback.i(httpURLConnection);
                    try {
                        outputStreamI.write(bArrQ);
                        outputStreamI.close();
                    } catch (IOException e2) {
                        iOException = e2;
                        iK = 0;
                        map2 = null;
                        outputStream = outputStreamI;
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (IOException e3) {
                                zzgu zzguVar2 = this.zza.f31850a.f31842f;
                                zzic.m(zzguVar2);
                                zzguVar2.f31769f.c("Error closing HTTP compressed POST connection output stream. appId", zzgu.o(this.zze), e3);
                            }
                        }
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        zzgz zzgzVar2 = this.zza;
                        String str = this.zze;
                        zzgw zzgwVar = this.zzd;
                        zzhz zzhzVar2 = zzgzVar2.f31850a.g;
                        zzic.m(zzhzVar2);
                        zzhzVar2.p(new zzgx(str, zzgwVar, iK, iOException, null, map2, null));
                    } catch (Throwable th2) {
                        th = th2;
                        map = null;
                        outputStream = outputStreamI;
                        th = th;
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (IOException e4) {
                                zzgu zzguVar3 = this.zza.f31850a.f31842f;
                                zzic.m(zzguVar3);
                                zzguVar3.f31769f.c("Error closing HTTP compressed POST connection output stream. appId", zzgu.o(this.zze), e4);
                            }
                        }
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        zzgz zzgzVar3 = this.zza;
                        String str2 = this.zze;
                        zzgw zzgwVar2 = this.zzd;
                        zzhz zzhzVar3 = zzgzVar3.f31850a.g;
                        zzic.m(zzhzVar3);
                        zzhzVar3.p(new zzgx(str2, zzgwVar2, i2, null, null, map, null));
                        throw th;
                    }
                }
                iK = Callback.k(httpURLConnection);
                try {
                    try {
                        Map mapF = Callback.f(httpURLConnection);
                        try {
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            inputStreamG = Callback.g(httpURLConnection);
                            try {
                                byte[] bArr2 = new byte[1024];
                                while (true) {
                                    int i3 = inputStreamG.read(bArr2);
                                    if (i3 <= 0) {
                                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                                        inputStreamG.close();
                                        httpURLConnection.disconnect();
                                        zzgz zzgzVar4 = this.zza;
                                        String str3 = this.zze;
                                        zzgw zzgwVar3 = this.zzd;
                                        zzhz zzhzVar4 = zzgzVar4.f31850a.g;
                                        zzic.m(zzhzVar4);
                                        zzhzVar4.p(new zzgx(str3, zzgwVar3, iK, null, byteArray, mapF, null));
                                        return;
                                    }
                                    byteArrayOutputStream.write(bArr2, 0, i3);
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
                    } catch (IOException e5) {
                        e = e5;
                        map2 = map4;
                        iOException = e;
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        zzgz zzgzVar5 = this.zza;
                        String str4 = this.zze;
                        zzgw zzgwVar4 = this.zzd;
                        zzhz zzhzVar5 = zzgzVar5.f31850a.g;
                        zzic.m(zzhzVar5);
                        zzhzVar5.p(new zzgx(str4, zzgwVar4, iK, iOException, null, map2, null));
                    } catch (Throwable th5) {
                        th = th5;
                        i2 = iK;
                        map = map3;
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        zzgz zzgzVar6 = this.zza;
                        String str5 = this.zze;
                        zzgw zzgwVar5 = this.zzd;
                        zzhz zzhzVar6 = zzgzVar6.f31850a.g;
                        zzic.m(zzhzVar6);
                        zzhzVar6.p(new zzgx(str5, zzgwVar5, i2, null, null, map, null));
                        throw th;
                    }
                } catch (IOException e6) {
                    e = e6;
                    map2 = null;
                    iOException = e;
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    zzgz zzgzVar7 = this.zza;
                    String str6 = this.zze;
                    zzgw zzgwVar6 = this.zzd;
                    zzhz zzhzVar7 = zzgzVar7.f31850a.g;
                    zzic.m(zzhzVar7);
                    zzhzVar7.p(new zzgx(str6, zzgwVar6, iK, iOException, null, map2, null));
                } catch (Throwable th6) {
                    th = th6;
                    map = null;
                    i2 = iK;
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    zzgz zzgzVar8 = this.zza;
                    String str7 = this.zze;
                    zzgw zzgwVar7 = this.zzd;
                    zzhz zzhzVar8 = zzgzVar8.f31850a.g;
                    zzic.m(zzhzVar8);
                    zzhzVar8.p(new zzgx(str7, zzgwVar7, i2, null, null, map, null));
                    throw th;
                }
            } catch (IOException e7) {
                iOException = e7;
                iK = 0;
                map2 = null;
            } catch (Throwable th7) {
                th = th7;
                map = null;
            }
        } catch (IOException e8) {
            iOException = e8;
            iK = 0;
            httpURLConnection = null;
            map2 = null;
        } catch (Throwable th8) {
            th = th8;
            httpURLConnection = null;
            map = null;
        }
    }
}

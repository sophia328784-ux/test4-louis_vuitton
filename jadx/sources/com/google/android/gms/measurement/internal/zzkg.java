package com.google.android.gms.measurement.internal;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.n00;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzkg extends zzaz {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzlj f31878e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzkg(zzlj zzljVar, zzjg zzjgVar) {
        super(zzjgVar);
        Objects.requireNonNull(zzljVar);
        this.f31878e = zzljVar;
    }

    /* JADX WARN: Code duplicated, block: B:45:0x0119  */
    /* JADX WARN: Code duplicated, block: B:47:0x0133  */
    /* JADX WARN: Code duplicated, block: B:49:0x0144  */
    /* JADX WARN: Code duplicated, block: B:55:0x0160  */
    /* JADX WARN: Code duplicated, block: B:56:0x0163  */
    /* JADX WARN: Code duplicated, block: B:59:0x0167  */
    /* JADX WARN: Code duplicated, block: B:61:0x0171  */
    /* JADX WARN: Code duplicated, block: B:64:0x0185  */
    /* JADX WARN: Code duplicated, block: B:65:0x0188  */
    /* JADX WARN: Code duplicated, block: B:67:0x019b  */
    /* JADX WARN: Code duplicated, block: B:69:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:74:0x025e A[Catch: IllegalArgumentException | MalformedURLException -> 0x0265, TryCatch #0 {IllegalArgumentException | MalformedURLException -> 0x0265, blocks: (B:72:0x0216, B:74:0x025e, B:77:0x0267, B:79:0x026d, B:81:0x0275, B:82:0x027b, B:83:0x027f), top: B:94:0x0216 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x026d A[Catch: IllegalArgumentException | MalformedURLException -> 0x0265, TryCatch #0 {IllegalArgumentException | MalformedURLException -> 0x0265, blocks: (B:72:0x0216, B:74:0x025e, B:77:0x0267, B:79:0x026d, B:81:0x0275, B:82:0x027b, B:83:0x027f), top: B:94:0x0216 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x0275 A[Catch: IllegalArgumentException | MalformedURLException -> 0x0265, TryCatch #0 {IllegalArgumentException | MalformedURLException -> 0x0265, blocks: (B:72:0x0216, B:74:0x025e, B:77:0x0267, B:79:0x026d, B:81:0x0275, B:82:0x027b, B:83:0x027f), top: B:94:0x0216 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x0299  */
    @Override // com.google.android.gms.measurement.internal.zzaz
    public final void a() {
        Pair pair;
        NetworkInfo activeNetworkInfo;
        zznl zznlVarP;
        zzic zzicVar;
        zzgb zzgbVar;
        zzao zzaoVarR1;
        Bundle bundle;
        String str;
        int i2;
        String str2;
        String string;
        zzic zzicVar2;
        URL url;
        String strConcat;
        zzlj zzljVar = this.f31878e;
        final zzic zzicVar3 = zzljVar.f31850a;
        zzhh zzhhVar = zzicVar3.f31841e;
        zzgu zzguVar = zzicVar3.f31842f;
        zzhz zzhzVar = zzicVar3.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        zzlo zzloVar = zzicVar3.o;
        zzic.m(zzloVar);
        zzic zzicVar4 = zzloVar.f31850a;
        zzic.m(zzloVar);
        String strM = zzicVar3.r().m();
        Boolean boolT = zzicVar3.d.t("google_analytics_adid_collection_enabled");
        boolean z = false;
        if (boolT == null || boolT.booleanValue()) {
            zzic.k(zzhhVar);
            zzic zzicVar5 = zzhhVar.f31850a;
            zzhhVar.g();
            if (zzhhVar.n().i(zzjk.AD_STORAGE)) {
                zzicVar5.f31846k.getClass();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                String str3 = zzhhVar.f31811h;
                if (str3 == null || jElapsedRealtime >= zzhhVar.f31813j) {
                    zzhhVar.f31813j = zzicVar5.d.o(strM, zzfy.f31733b) + jElapsedRealtime;
                    try {
                        AdvertisingIdClient.Info infoA = AdvertisingIdClient.a(zzicVar5.f31838a);
                        zzhhVar.f31811h = "";
                        String str4 = infoA.f28679a;
                        if (str4 != null) {
                            zzhhVar.f31811h = str4;
                        }
                        zzhhVar.f31812i = infoA.f28680b;
                    } catch (Exception e2) {
                        zzgu zzguVar2 = zzicVar5.f31842f;
                        zzic.m(zzguVar2);
                        zzguVar2.m.b(e2, "Unable to get advertising id");
                        zzhhVar.f31811h = "";
                    }
                    pair = new Pair(zzhhVar.f31811h, Boolean.valueOf(zzhhVar.f31812i));
                } else {
                    pair = new Pair(str3, Boolean.valueOf(zzhhVar.f31812i));
                }
            } else {
                pair = new Pair("", Boolean.FALSE);
            }
            if (((Boolean) pair.second).booleanValue() || TextUtils.isEmpty((CharSequence) pair.first)) {
                zzic.m(zzguVar);
                zzguVar.n.a("ADID unavailable to retrieve Deferred Deep Link. Skipping");
            } else {
                zzic.m(zzloVar);
                zzloVar.i();
                ConnectivityManager connectivityManager = (ConnectivityManager) zzicVar4.f31838a.getSystemService("connectivity");
                if (connectivityManager != null) {
                    try {
                        activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                    } catch (SecurityException unused) {
                        activeNetworkInfo = null;
                    }
                } else {
                    activeNetworkInfo = null;
                }
                if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                    zzic.m(zzguVar);
                    zzguVar.f31771i.a("Network is not available for Deferred Deep Link request. Skipping");
                } else {
                    StringBuilder sb = new StringBuilder();
                    zznl zznlVarP2 = zzicVar3.p();
                    zznlVarP2.g();
                    zznlVarP2.h();
                    if (zznlVarP2.n()) {
                        zzpp zzppVar = zznlVarP2.f31850a.f31844i;
                        zzic.k(zzppVar);
                        if (zzppVar.R() >= 234200) {
                            zzlj zzljVar2 = zzicVar3.m;
                            zzic.l(zzljVar2);
                            zzic zzicVar6 = zzljVar2.f31850a;
                            zzljVar2.g();
                            zznlVarP = zzicVar6.p();
                            zzicVar = zznlVarP.f31850a;
                            zznlVarP.g();
                            zznlVarP.h();
                            zzgbVar = zznlVarP.d;
                            if (zzgbVar == null) {
                                zznlVarP.m();
                                zzgu zzguVar3 = zzicVar.f31842f;
                                zzic.m(zzguVar3);
                                zzguVar3.m.a("Failed to get consents; not connected to service yet.");
                            } else {
                                zzaoVarR1 = zzgbVar.R1(zznlVarP.w(false));
                                zznlVarP.t();
                                if (zzaoVarR1 != null) {
                                    bundle = zzaoVarR1.f31556b;
                                } else {
                                    bundle = null;
                                }
                                if (bundle == null) {
                                    i2 = zzicVar3.B;
                                    zzicVar3.B = i2 + 1;
                                    if (i2 < 10) {
                                    }
                                    zzic.m(zzguVar);
                                    zzgs zzgsVar = zzguVar.m;
                                    StringBuilder sb2 = new StringBuilder(69);
                                    sb2.append("Failed to retrieve DMA consent from the service, ");
                                    if (i2 < 10) {
                                        str2 = "Retrying.";
                                    } else {
                                        str2 = "Skipping.";
                                    }
                                    zzgsVar.b(Integer.valueOf(zzicVar3.B), n00.r(str2, " retryCount", sb2));
                                } else {
                                    zzjl zzjlVarB = zzjl.b(100, bundle);
                                    sb.append("&gcs=");
                                    sb.append(zzjlVarB.f());
                                    zzba zzbaVarC = zzba.c(100, bundle);
                                    str = zzbaVarC.d;
                                    sb.append("&dma=");
                                    sb.append(!Objects.equals(zzbaVarC.f31584c, Boolean.FALSE) ? 1 : 0);
                                    if (!TextUtils.isEmpty(str)) {
                                        sb.append("&dma_cps=");
                                        sb.append(str);
                                    }
                                    int i3 = !Objects.equals(zzba.d(bundle), Boolean.TRUE) ? 1 : 0;
                                    sb.append("&npa=");
                                    sb.append(i3);
                                    zzic.m(zzguVar);
                                    zzguVar.n.b(sb, "Consent query parameters to Bow");
                                    zzpp zzppVar2 = zzicVar3.f31844i;
                                    zzic.k(zzppVar2);
                                    zzicVar3.r().f31850a.d.m();
                                    String str5 = (String) pair.first;
                                    long jA = zzhhVar.u.a() - 1;
                                    string = sb.toString();
                                    zzicVar2 = zzppVar2.f31850a;
                                    Preconditions.e(str5);
                                    Preconditions.e(strM);
                                    strConcat = "https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=" + ("v161000." + zzppVar2.R()) + "&rdid=" + str5 + "&bundleid=" + strM + "&retry=" + jA;
                                    if (strM.equals(zzicVar2.d.k("debug.deferred.deeplink"))) {
                                        strConcat = strConcat.concat("&ddl_test=1");
                                    }
                                    if (!string.isEmpty()) {
                                        if (string.charAt(0) != '&') {
                                            strConcat = strConcat.concat("&");
                                        }
                                        strConcat = strConcat.concat(string);
                                    }
                                    url = new URL(strConcat);
                                    if (url != null) {
                                        zzic.m(zzloVar);
                                        zzll zzllVar = new zzll() { // from class: com.google.android.gms.measurement.internal.zzib
                                            @Override // com.google.android.gms.measurement.internal.zzll
                                            public final /* synthetic */ void a(String str6, int i4, Exception exc, byte[] bArr, Map map) {
                                                zzicVar3.i(i4, exc, bArr);
                                            }
                                        };
                                        zzloVar.i();
                                        zzhz zzhzVar2 = zzicVar4.g;
                                        zzic.m(zzhzVar2);
                                        zzhzVar2.s(new zzln(zzloVar, strM, url, null, null, zzllVar));
                                    }
                                }
                            }
                            zzaoVarR1 = null;
                            if (zzaoVarR1 != null) {
                                bundle = zzaoVarR1.f31556b;
                            } else {
                                bundle = null;
                            }
                            if (bundle == null) {
                                i2 = zzicVar3.B;
                                zzicVar3.B = i2 + 1;
                                if (i2 < 10) {
                                }
                                zzic.m(zzguVar);
                                zzgs zzgsVar2 = zzguVar.m;
                                StringBuilder sb3 = new StringBuilder(69);
                                sb3.append("Failed to retrieve DMA consent from the service, ");
                                if (i2 < 10) {
                                    str2 = "Retrying.";
                                } else {
                                    str2 = "Skipping.";
                                }
                                zzgsVar2.b(Integer.valueOf(zzicVar3.B), n00.r(str2, " retryCount", sb3));
                            } else {
                                zzjl zzjlVarB2 = zzjl.b(100, bundle);
                                sb.append("&gcs=");
                                sb.append(zzjlVarB2.f());
                                zzba zzbaVarC2 = zzba.c(100, bundle);
                                str = zzbaVarC2.d;
                                sb.append("&dma=");
                                sb.append(!Objects.equals(zzbaVarC2.f31584c, Boolean.FALSE) ? 1 : 0);
                                if (!TextUtils.isEmpty(str)) {
                                    sb.append("&dma_cps=");
                                    sb.append(str);
                                }
                                int i4 = !Objects.equals(zzba.d(bundle), Boolean.TRUE) ? 1 : 0;
                                sb.append("&npa=");
                                sb.append(i4);
                                zzic.m(zzguVar);
                                zzguVar.n.b(sb, "Consent query parameters to Bow");
                                zzpp zzppVar3 = zzicVar3.f31844i;
                                zzic.k(zzppVar3);
                                zzicVar3.r().f31850a.d.m();
                                String str6 = (String) pair.first;
                                long jA2 = zzhhVar.u.a() - 1;
                                string = sb.toString();
                                zzicVar2 = zzppVar3.f31850a;
                                Preconditions.e(str6);
                                Preconditions.e(strM);
                                strConcat = "https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=" + ("v161000." + zzppVar3.R()) + "&rdid=" + str6 + "&bundleid=" + strM + "&retry=" + jA2;
                                if (strM.equals(zzicVar2.d.k("debug.deferred.deeplink"))) {
                                    strConcat = strConcat.concat("&ddl_test=1");
                                }
                                if (!string.isEmpty()) {
                                    if (string.charAt(0) != '&') {
                                        strConcat = strConcat.concat("&");
                                    }
                                    strConcat = strConcat.concat(string);
                                }
                                url = new URL(strConcat);
                                if (url != null) {
                                    zzic.m(zzloVar);
                                    zzll zzllVar2 = new zzll() { // from class: com.google.android.gms.measurement.internal.zzib
                                        @Override // com.google.android.gms.measurement.internal.zzll
                                        public final /* synthetic */ void a(String str7, int i5, Exception exc, byte[] bArr, Map map) {
                                            zzicVar3.i(i5, exc, bArr);
                                        }
                                    };
                                    zzloVar.i();
                                    zzhz zzhzVar3 = zzicVar4.g;
                                    zzic.m(zzhzVar3);
                                    zzhzVar3.s(new zzln(zzloVar, strM, url, null, null, zzllVar2));
                                }
                            }
                        } else {
                            zzpp zzppVar4 = zzicVar3.f31844i;
                            zzic.k(zzppVar4);
                            zzicVar3.r().f31850a.d.m();
                            String str7 = (String) pair.first;
                            long jA3 = zzhhVar.u.a() - 1;
                            string = sb.toString();
                            zzicVar2 = zzppVar4.f31850a;
                            Preconditions.e(str7);
                            Preconditions.e(strM);
                            strConcat = "https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=" + ("v161000." + zzppVar4.R()) + "&rdid=" + str7 + "&bundleid=" + strM + "&retry=" + jA3;
                            if (strM.equals(zzicVar2.d.k("debug.deferred.deeplink"))) {
                                strConcat = strConcat.concat("&ddl_test=1");
                            }
                            if (!string.isEmpty()) {
                                if (string.charAt(0) != '&') {
                                    strConcat = strConcat.concat("&");
                                }
                                strConcat = strConcat.concat(string);
                            }
                            url = new URL(strConcat);
                            if (url != null) {
                                zzic.m(zzloVar);
                                zzll zzllVar3 = new zzll() { // from class: com.google.android.gms.measurement.internal.zzib
                                    @Override // com.google.android.gms.measurement.internal.zzll
                                    public final /* synthetic */ void a(String str8, int i5, Exception exc, byte[] bArr, Map map) {
                                        zzicVar3.i(i5, exc, bArr);
                                    }
                                };
                                zzloVar.i();
                                zzhz zzhzVar4 = zzicVar4.g;
                                zzic.m(zzhzVar4);
                                zzhzVar4.s(new zzln(zzloVar, strM, url, null, null, zzllVar3));
                            }
                        }
                    } else {
                        zzlj zzljVar3 = zzicVar3.m;
                        zzic.l(zzljVar3);
                        zzic zzicVar7 = zzljVar3.f31850a;
                        zzljVar3.g();
                        zznlVarP = zzicVar7.p();
                        zzicVar = zznlVarP.f31850a;
                        zznlVarP.g();
                        zznlVarP.h();
                        zzgbVar = zznlVarP.d;
                        if (zzgbVar == null) {
                            zznlVarP.m();
                            zzgu zzguVar4 = zzicVar.f31842f;
                            zzic.m(zzguVar4);
                            zzguVar4.m.a("Failed to get consents; not connected to service yet.");
                        } else {
                            try {
                                zzaoVarR1 = zzgbVar.R1(zznlVarP.w(false));
                                zznlVarP.t();
                            } catch (RemoteException e3) {
                                zzgu zzguVar5 = zzicVar.f31842f;
                                zzic.m(zzguVar5);
                                zzguVar5.f31769f.b(e3, "Failed to get consents; remote exception");
                                zzaoVarR1 = null;
                            }
                            if (zzaoVarR1 != null) {
                                bundle = zzaoVarR1.f31556b;
                            } else {
                                bundle = null;
                            }
                            if (bundle == null) {
                                i2 = zzicVar3.B;
                                zzicVar3.B = i2 + 1;
                                z = i2 < 10;
                                zzic.m(zzguVar);
                                zzgs zzgsVar3 = zzguVar.m;
                                StringBuilder sb4 = new StringBuilder(69);
                                sb4.append("Failed to retrieve DMA consent from the service, ");
                                if (i2 < 10) {
                                    str2 = "Retrying.";
                                } else {
                                    str2 = "Skipping.";
                                }
                                zzgsVar3.b(Integer.valueOf(zzicVar3.B), n00.r(str2, " retryCount", sb4));
                            } else {
                                zzjl zzjlVarB3 = zzjl.b(100, bundle);
                                sb.append("&gcs=");
                                sb.append(zzjlVarB3.f());
                                zzba zzbaVarC3 = zzba.c(100, bundle);
                                str = zzbaVarC3.d;
                                sb.append("&dma=");
                                sb.append(!Objects.equals(zzbaVarC3.f31584c, Boolean.FALSE) ? 1 : 0);
                                if (!TextUtils.isEmpty(str)) {
                                    sb.append("&dma_cps=");
                                    sb.append(str);
                                }
                                int i5 = !Objects.equals(zzba.d(bundle), Boolean.TRUE) ? 1 : 0;
                                sb.append("&npa=");
                                sb.append(i5);
                                zzic.m(zzguVar);
                                zzguVar.n.b(sb, "Consent query parameters to Bow");
                                zzpp zzppVar5 = zzicVar3.f31844i;
                                zzic.k(zzppVar5);
                                zzicVar3.r().f31850a.d.m();
                                String str8 = (String) pair.first;
                                long jA4 = zzhhVar.u.a() - 1;
                                string = sb.toString();
                                zzicVar2 = zzppVar5.f31850a;
                                try {
                                    Preconditions.e(str8);
                                    Preconditions.e(strM);
                                    strConcat = "https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=" + ("v161000." + zzppVar5.R()) + "&rdid=" + str8 + "&bundleid=" + strM + "&retry=" + jA4;
                                    if (strM.equals(zzicVar2.d.k("debug.deferred.deeplink"))) {
                                        strConcat = strConcat.concat("&ddl_test=1");
                                    }
                                    if (!string.isEmpty()) {
                                        if (string.charAt(0) != '&') {
                                            strConcat = strConcat.concat("&");
                                        }
                                        strConcat = strConcat.concat(string);
                                    }
                                    url = new URL(strConcat);
                                } catch (IllegalArgumentException | MalformedURLException e4) {
                                    zzgu zzguVar6 = zzicVar2.f31842f;
                                    zzic.m(zzguVar6);
                                    zzguVar6.f31769f.b(e4.getMessage(), "Failed to create BOW URL for Deferred Deep Link. exception");
                                    url = null;
                                }
                                if (url != null) {
                                    zzic.m(zzloVar);
                                    zzll zzllVar4 = new zzll() { // from class: com.google.android.gms.measurement.internal.zzib
                                        @Override // com.google.android.gms.measurement.internal.zzll
                                        public final /* synthetic */ void a(String str9, int i6, Exception exc, byte[] bArr, Map map) {
                                            zzicVar3.i(i6, exc, bArr);
                                        }
                                    };
                                    zzloVar.i();
                                    zzhz zzhzVar5 = zzicVar4.g;
                                    zzic.m(zzhzVar5);
                                    zzhzVar5.s(new zzln(zzloVar, strM, url, null, null, zzllVar4));
                                }
                            }
                        }
                        zzaoVarR1 = null;
                        if (zzaoVarR1 != null) {
                            bundle = zzaoVarR1.f31556b;
                        } else {
                            bundle = null;
                        }
                        if (bundle == null) {
                            i2 = zzicVar3.B;
                            zzicVar3.B = i2 + 1;
                            if (i2 < 10) {
                            }
                            zzic.m(zzguVar);
                            zzgs zzgsVar4 = zzguVar.m;
                            StringBuilder sb5 = new StringBuilder(69);
                            sb5.append("Failed to retrieve DMA consent from the service, ");
                            if (i2 < 10) {
                                str2 = "Retrying.";
                            } else {
                                str2 = "Skipping.";
                            }
                            zzgsVar4.b(Integer.valueOf(zzicVar3.B), n00.r(str2, " retryCount", sb5));
                        } else {
                            zzjl zzjlVarB4 = zzjl.b(100, bundle);
                            sb.append("&gcs=");
                            sb.append(zzjlVarB4.f());
                            zzba zzbaVarC4 = zzba.c(100, bundle);
                            str = zzbaVarC4.d;
                            sb.append("&dma=");
                            sb.append(!Objects.equals(zzbaVarC4.f31584c, Boolean.FALSE) ? 1 : 0);
                            if (!TextUtils.isEmpty(str)) {
                                sb.append("&dma_cps=");
                                sb.append(str);
                            }
                            int i6 = !Objects.equals(zzba.d(bundle), Boolean.TRUE) ? 1 : 0;
                            sb.append("&npa=");
                            sb.append(i6);
                            zzic.m(zzguVar);
                            zzguVar.n.b(sb, "Consent query parameters to Bow");
                            zzpp zzppVar6 = zzicVar3.f31844i;
                            zzic.k(zzppVar6);
                            zzicVar3.r().f31850a.d.m();
                            String str9 = (String) pair.first;
                            long jA5 = zzhhVar.u.a() - 1;
                            string = sb.toString();
                            zzicVar2 = zzppVar6.f31850a;
                            Preconditions.e(str9);
                            Preconditions.e(strM);
                            strConcat = "https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=" + ("v161000." + zzppVar6.R()) + "&rdid=" + str9 + "&bundleid=" + strM + "&retry=" + jA5;
                            if (strM.equals(zzicVar2.d.k("debug.deferred.deeplink"))) {
                                strConcat = strConcat.concat("&ddl_test=1");
                            }
                            if (!string.isEmpty()) {
                                if (string.charAt(0) != '&') {
                                    strConcat = strConcat.concat("&");
                                }
                                strConcat = strConcat.concat(string);
                            }
                            url = new URL(strConcat);
                            if (url != null) {
                                zzic.m(zzloVar);
                                zzll zzllVar5 = new zzll() { // from class: com.google.android.gms.measurement.internal.zzib
                                    @Override // com.google.android.gms.measurement.internal.zzll
                                    public final /* synthetic */ void a(String str10, int i7, Exception exc, byte[] bArr, Map map) {
                                        zzicVar3.i(i7, exc, bArr);
                                    }
                                };
                                zzloVar.i();
                                zzhz zzhzVar6 = zzicVar4.g;
                                zzic.m(zzhzVar6);
                                zzhzVar6.s(new zzln(zzloVar, strM, url, null, null, zzllVar5));
                            }
                        }
                    }
                }
            }
        } else {
            zzic.m(zzguVar);
            zzguVar.n.a("ADID collection is disabled from Manifest. Skipping");
        }
        if (z) {
            zzljVar.s.b(2000L);
        }
    }
}

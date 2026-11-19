package com.google.android.gms.measurement.internal;

import android.content.pm.PackageManager;
import android.os.SystemClock;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DefaultClock;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class zznn extends zzos {
    public final HashMap d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final zzhe f31923e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final zzhe f31924f;
    public final zzhe g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final zzhe f31925h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final zzhe f31926i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final zzhe f31927j;

    public zznn(zzpg zzpgVar) {
        super(zzpgVar);
        this.d = new HashMap();
        zzhh zzhhVar = this.f31850a.f31841e;
        zzic.k(zzhhVar);
        this.f31923e = new zzhe(zzhhVar, "last_delete_stale", 0L);
        zzhh zzhhVar2 = this.f31850a.f31841e;
        zzic.k(zzhhVar2);
        this.f31924f = new zzhe(zzhhVar2, "last_delete_stale_batch", 0L);
        zzhh zzhhVar3 = this.f31850a.f31841e;
        zzic.k(zzhhVar3);
        this.g = new zzhe(zzhhVar3, "backoff", 0L);
        zzhh zzhhVar4 = this.f31850a.f31841e;
        zzic.k(zzhhVar4);
        this.f31925h = new zzhe(zzhhVar4, "last_upload", 0L);
        zzhh zzhhVar5 = this.f31850a.f31841e;
        zzic.k(zzhhVar5);
        this.f31926i = new zzhe(zzhhVar5, "last_upload_attempt", 0L);
        zzhh zzhhVar6 = this.f31850a.f31841e;
        zzic.k(zzhhVar6);
        this.f31927j = new zzhe(zzhhVar6, "midnight_offset", 0L);
    }

    @Override // com.google.android.gms.measurement.internal.zzos
    public final void j() {
    }

    public final Pair k(zzr zzrVar, zzjl zzjlVar) {
        String str = zzrVar.f32016b;
        Preconditions.e(str);
        return (zzjlVar.i(zzjk.AD_STORAGE) && zzrVar.o) ? l(str) : new Pair("", Boolean.FALSE);
    }

    public final Pair l(String str) {
        AdvertisingIdClient.Info infoA;
        zznm zznmVar;
        g();
        zzic zzicVar = this.f31850a;
        DefaultClock defaultClock = zzicVar.f31846k;
        zzal zzalVar = zzicVar.d;
        defaultClock.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        HashMap map = this.d;
        zznm zznmVar2 = (zznm) map.get(str);
        if (zznmVar2 != null && jElapsedRealtime < zznmVar2.f31922c) {
            return new Pair(zznmVar2.f31920a, Boolean.valueOf(zznmVar2.f31921b));
        }
        long jO = zzalVar.o(str, zzfy.f31733b) + jElapsedRealtime;
        try {
            try {
                infoA = AdvertisingIdClient.a(zzicVar.f31838a);
            } catch (PackageManager.NameNotFoundException unused) {
                if (zznmVar2 != null && jElapsedRealtime < zznmVar2.f31922c + zzalVar.o(str, zzfy.f31734c)) {
                    return new Pair(zznmVar2.f31920a, Boolean.valueOf(zznmVar2.f31921b));
                }
                infoA = null;
            }
            if (infoA == null) {
                return new Pair("00000000-0000-0000-0000-000000000000", Boolean.FALSE);
            }
            String str2 = infoA.f28679a;
            zznmVar = str2 != null ? new zznm(jO, str2, infoA.f28680b) : new zznm(jO, "", infoA.f28680b);
            map.put(str, zznmVar);
            return new Pair(zznmVar.f31920a, Boolean.valueOf(zznmVar.f31921b));
        } catch (Exception e2) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.m.b(e2, "Unable to get advertising id");
            zznmVar = new zznm(jO, "", false);
        }
    }

    public final String m(zzr zzrVar, zzjl zzjlVar) {
        String str = zzrVar.f32016b;
        Preconditions.e(str);
        if (!zzjlVar.i(zzjk.AD_STORAGE) || !zzrVar.o) {
            return "";
        }
        g();
        String str2 = (String) l(str).first;
        MessageDigest messageDigestZ = zzpp.z();
        if (messageDigestZ == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, messageDigestZ.digest(str2.getBytes())));
    }
}

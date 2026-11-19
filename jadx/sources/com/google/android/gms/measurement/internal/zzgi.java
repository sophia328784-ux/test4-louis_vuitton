package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzaif;
import com.google.android.gms.internal.measurement.zzaja;
import com.google.android.gms.internal.measurement.zzajb;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgi extends zzg {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f31742c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f31743e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f31744f;
    public String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f31745h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f31746i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f31747j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public List f31748k;
    public String l;
    public final String m;
    public int n;
    public String o;
    public String p;
    public long q;
    public String r;

    public zzgi(zzic zzicVar, long j2, long j3, String str) {
        super(zzicVar);
        this.q = 0L;
        this.r = null;
        this.f31746i = j2;
        this.f31747j = j3;
        this.m = str;
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    public final boolean j() {
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x026b A[Catch: NameNotFoundException -> 0x0273, TRY_LEAVE, TryCatch #4 {NameNotFoundException -> 0x0273, blocks: (B:98:0x0265, B:100:0x026b), top: B:130:0x0265 }] */
    /* JADX WARN: Code duplicated, block: B:102:0x026e A[PHI: r5 r37
      0x026e: PHI (r5v16 int) = (r5v15 int), (r5v17 int) binds: [B:104:0x0273, B:99:0x0269] A[DONT_GENERATE, DONT_INLINE]
      0x026e: PHI (r37v2 boolean) = (r37v1 boolean), (r37v4 boolean) binds: [B:104:0x0273, B:99:0x0269] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:108:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:109:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:112:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:113:0x02cb  */
    /* JADX WARN: Code duplicated, block: B:116:0x02fe  */
    /* JADX WARN: Code duplicated, block: B:122:0x0151 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:126:0x0127 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:135:0x025c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0102  */
    /* JADX WARN: Code duplicated, block: B:37:0x0107  */
    /* JADX WARN: Code duplicated, block: B:39:0x011c  */
    /* JADX WARN: Code duplicated, block: B:42:0x0133  */
    /* JADX WARN: Code duplicated, block: B:44:0x0137  */
    /* JADX WARN: Code duplicated, block: B:57:0x0189  */
    /* JADX WARN: Code duplicated, block: B:64:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:67:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:68:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:71:0x01db  */
    /* JADX WARN: Code duplicated, block: B:74:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:75:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:77:0x0204  */
    /* JADX WARN: Code duplicated, block: B:78:0x0207  */
    /* JADX WARN: Code duplicated, block: B:87:0x022e  */
    /* JADX WARN: Code duplicated, block: B:91:0x023b  */
    /* JADX WARN: Code duplicated, block: B:92:0x023d  */
    /* JADX WARN: Code duplicated, block: B:95:0x0256  */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public final zzr k(String str) {
        String str2;
        long j2;
        boolean z;
        long j3;
        boolean zF;
        boolean z2;
        boolean z3;
        String str3;
        Class<?> clsLoadClass;
        Object objInvoke;
        long jA;
        long jMin;
        Boolean boolT;
        boolean z4;
        boolean z5;
        boolean z6;
        String str4;
        Boolean boolT2;
        boolean zBooleanValue;
        zzic zzicVar;
        String strM;
        boolean z7;
        int i2;
        int i3;
        long j4;
        ApplicationInfo applicationInfoA;
        zzfx zzfxVar;
        int iC;
        long jD;
        g();
        String strM2 = m();
        String strN = n();
        h();
        String str5 = this.d;
        h();
        long j5 = this.f31743e;
        h();
        Preconditions.h(this.f31744f);
        String str6 = this.f31744f;
        zzic zzicVar2 = this.f31850a;
        zzal zzalVar = zzicVar2.d;
        zzgu zzguVar = zzicVar2.f31842f;
        zzal zzalVar2 = zzicVar2.d;
        Context context = zzicVar2.f31838a;
        zzpp zzppVar = zzicVar2.f31844i;
        zzhh zzhhVar = zzicVar2.f31841e;
        zzalVar.m();
        h();
        g();
        long j6 = this.f31745h;
        if (j6 == 0) {
            zzic.k(zzppVar);
            zzic zzicVar3 = zzppVar.f31850a;
            String packageName = context.getPackageName();
            zzppVar.g();
            Preconditions.e(packageName);
            PackageManager packageManager = context.getPackageManager();
            z = false;
            MessageDigest messageDigestZ = zzpp.z();
            long jA2 = -1;
            if (messageDigestZ == null) {
                zzgu zzguVar2 = zzicVar3.f31842f;
                zzic.m(zzguVar2);
                zzguVar2.f31769f.a("Could not get MD5 instance");
                str2 = str5;
                j2 = j5;
            } else {
                if (packageManager != null) {
                    try {
                        if (zzppVar.O(context, packageName)) {
                            str2 = str5;
                            j2 = j5;
                            jA2 = 0;
                        } else {
                            str2 = str5;
                            try {
                                j2 = j5;
                                try {
                                    Signature[] signatureArr = Wrappers.a(context).b(64, zzicVar3.f31838a.getPackageName()).signatures;
                                    if (signatureArr == null || signatureArr.length <= 0) {
                                        zzgu zzguVar3 = zzicVar3.f31842f;
                                        zzic.m(zzguVar3);
                                        zzguVar3.f31771i.a("Could not get signatures");
                                    } else {
                                        jA2 = zzpp.A(messageDigestZ.digest(signatureArr[0].toByteArray()));
                                    }
                                } catch (PackageManager.NameNotFoundException e2) {
                                    e = e2;
                                    zzgu zzguVar4 = zzicVar3.f31842f;
                                    zzic.m(zzguVar4);
                                    zzguVar4.f31769f.b(e, "Package name not found");
                                    j3 = 0;
                                }
                            } catch (PackageManager.NameNotFoundException e3) {
                                e = e3;
                                j2 = j5;
                                zzgu zzguVar5 = zzicVar3.f31842f;
                                zzic.m(zzguVar5);
                                zzguVar5.f31769f.b(e, "Package name not found");
                                j3 = 0;
                                this.f31745h = j3;
                                zF = zzicVar2.f();
                                zzic.k(zzhhVar);
                                z2 = !zzhhVar.r;
                                g();
                                if (zzicVar2.f()) {
                                    ((zzajb) zzaja.f30557c.f30558b.get()).getClass();
                                    if (zzalVar2.r(null, zzfy.H0)) {
                                        zzic.m(zzguVar);
                                        zzguVar.n.a("Disabled IID for tests.");
                                        z3 = zF;
                                        str3 = null;
                                    } else {
                                        try {
                                            clsLoadClass = context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
                                            if (clsLoadClass == null) {
                                                z3 = zF;
                                            } else {
                                                z3 = zF;
                                                try {
                                                    Object[] objArr = {context};
                                                    str3 = null;
                                                    objInvoke = clsLoadClass.getDeclaredMethod("getInstance", Context.class).invoke(null, objArr);
                                                    if (objInvoke != null) {
                                                        try {
                                                            str3 = (String) clsLoadClass.getDeclaredMethod("getFirebaseInstanceId", null).invoke(objInvoke, null);
                                                        } catch (Exception unused) {
                                                            zzic.m(zzguVar);
                                                            zzguVar.f31773k.a("Failed to retrieve Firebase Instance Id");
                                                            str3 = null;
                                                        }
                                                    }
                                                } catch (Exception unused2) {
                                                    zzic.m(zzguVar);
                                                    zzguVar.f31772j.a("Failed to obtain Firebase Analytics instance");
                                                }
                                            }
                                        } catch (ClassNotFoundException unused3) {
                                        }
                                        str3 = null;
                                    }
                                } else {
                                    z3 = zF;
                                    str3 = null;
                                }
                                zzic.k(zzhhVar);
                                jA = zzhhVar.f31810f.a();
                                long j7 = j3;
                                jMin = zzicVar2.D;
                                if (jA != 0) {
                                    jMin = Math.min(jMin, jA);
                                }
                                h();
                                int i4 = this.n;
                                boolT = zzalVar2.t("google_analytics_adid_collection_enabled");
                                if (boolT != null) {
                                    z4 = true;
                                } else {
                                    z4 = true;
                                }
                                zzic.k(zzhhVar);
                                zzhhVar.g();
                                long j8 = jMin;
                                boolean z8 = zzhhVar.k().getBoolean("deferred_analytics_collection", z);
                                if (zzalVar2.w("google_analytics_default_allow_ad_personalization_signals", true) != zzji.GRANTED) {
                                    z5 = true;
                                } else {
                                    z5 = false;
                                }
                                Boolean boolValueOf = Boolean.valueOf(z5);
                                List list = this.f31748k;
                                String strG = zzhhVar.n().g();
                                if (this.l == null) {
                                    zzic.k(zzppVar);
                                    this.l = zzppVar.d0();
                                }
                                String str7 = this.l;
                                if (zzhhVar.n().i(zzjk.ANALYTICS_STORAGE)) {
                                    g();
                                    if (this.q == 0) {
                                        z6 = z2;
                                    } else {
                                        zzicVar2.f31846k.getClass();
                                        long jCurrentTimeMillis = System.currentTimeMillis() - this.q;
                                        z6 = z2;
                                        if (this.p != null) {
                                            l();
                                        }
                                    }
                                    if (this.p == null) {
                                        l();
                                    }
                                    str4 = this.p;
                                } else {
                                    z6 = z2;
                                    str4 = null;
                                }
                                boolT2 = zzalVar2.t("google_analytics_sgtm_upload_enabled");
                                if (boolT2 == null) {
                                    zBooleanValue = false;
                                } else {
                                    zBooleanValue = boolT2.booleanValue();
                                }
                                zzic.k(zzppVar);
                                zzicVar = zzppVar.f31850a;
                                String str8 = str4;
                                strM = m();
                                boolean z9 = zBooleanValue;
                                if (zzicVar.f31838a.getPackageManager() == null) {
                                    z7 = z4;
                                    j4 = 0;
                                } else {
                                    try {
                                        z7 = z4;
                                        i2 = 0;
                                        try {
                                            applicationInfoA = Wrappers.a(zzicVar.f31838a).a(0, strM);
                                            if (applicationInfoA != null) {
                                                i3 = applicationInfoA.targetSdkVersion;
                                            } else {
                                                i3 = i2;
                                            }
                                        } catch (PackageManager.NameNotFoundException unused4) {
                                            zzgu zzguVar6 = zzicVar.f31842f;
                                            zzic.m(zzguVar6);
                                            zzguVar6.l.b(strM, "PackageManager failed to find running app: app_id");
                                        }
                                    } catch (PackageManager.NameNotFoundException unused5) {
                                        z7 = z4;
                                        i2 = 0;
                                    }
                                    j4 = i3;
                                }
                                zzic.k(zzhhVar);
                                int i5 = zzhhVar.n().f31854b;
                                zzic.k(zzhhVar);
                                zzhhVar.g();
                                String str9 = zzba.b(zzhhVar.k().getString("dma_consent_settings", null)).f31583b;
                                zzaif.a();
                                zzfxVar = zzfy.P0;
                                if (zzalVar2.r(null, zzfxVar)) {
                                    zzic.k(zzppVar);
                                    iC = zzpp.C();
                                } else {
                                    iC = 0;
                                }
                                zzaif.a();
                                if (zzalVar2.r(null, zzfxVar)) {
                                    zzic.k(zzppVar);
                                    jD = zzppVar.D();
                                } else {
                                    jD = 0;
                                }
                                String str10 = zzalVar2.f31553c;
                                String strValueOf = String.valueOf(zzjl.h(zzalVar2.w("google_analytics_default_allow_ad_personalization_signals", true)));
                                long j9 = j4;
                                long j10 = zzicVar2.D;
                                zzic.j(zzicVar2.u);
                                return new zzr(strM2, strN, str2, j2, str6, 161000L, j7, str, z3, z6, str3, j8, i4, z7, z8, boolValueOf, this.f31746i, list, strG, str7, str8, z9, j9, i5, str9, iC, jD, str10, strValueOf, j10, zzicVar2.u.l().d0(), zzalVar2.r(null, zzfy.e1) ? zzicVar2.E : 0L);
                            }
                        }
                    } catch (PackageManager.NameNotFoundException e4) {
                        e = e4;
                        str2 = str5;
                    }
                } else {
                    str2 = str5;
                    j2 = j5;
                }
                j3 = 0;
                this.f31745h = j3;
            }
            j3 = jA2;
            this.f31745h = j3;
        } else {
            str2 = str5;
            j2 = j5;
            z = false;
            j3 = j6;
        }
        zF = zzicVar2.f();
        zzic.k(zzhhVar);
        z2 = !zzhhVar.r;
        g();
        if (zzicVar2.f()) {
            z3 = zF;
            str3 = null;
        } else {
            ((zzajb) zzaja.f30557c.f30558b.get()).getClass();
            if (zzalVar2.r(null, zzfy.H0)) {
                zzic.m(zzguVar);
                zzguVar.n.a("Disabled IID for tests.");
                z3 = zF;
                str3 = null;
            } else {
                clsLoadClass = context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
                if (clsLoadClass == null) {
                    z3 = zF;
                } else {
                    z3 = zF;
                    Object[] objArr2 = {context};
                    str3 = null;
                    objInvoke = clsLoadClass.getDeclaredMethod("getInstance", Context.class).invoke(null, objArr2);
                    if (objInvoke != null) {
                        str3 = (String) clsLoadClass.getDeclaredMethod("getFirebaseInstanceId", null).invoke(objInvoke, null);
                    }
                }
                str3 = null;
            }
        }
        zzic.k(zzhhVar);
        jA = zzhhVar.f31810f.a();
        long j11 = j3;
        jMin = zzicVar2.D;
        if (jA != 0) {
            jMin = Math.min(jMin, jA);
        }
        h();
        int i6 = this.n;
        boolT = zzalVar2.t("google_analytics_adid_collection_enabled");
        if (boolT != null || boolT.booleanValue()) {
            z4 = true;
        } else {
            z4 = z;
        }
        zzic.k(zzhhVar);
        zzhhVar.g();
        long j12 = jMin;
        boolean z10 = zzhhVar.k().getBoolean("deferred_analytics_collection", z);
        if (zzalVar2.w("google_analytics_default_allow_ad_personalization_signals", true) != zzji.GRANTED) {
            z5 = true;
        } else {
            z5 = false;
        }
        Boolean boolValueOf2 = Boolean.valueOf(z5);
        List list2 = this.f31748k;
        String strG2 = zzhhVar.n().g();
        if (this.l == null) {
            zzic.k(zzppVar);
            this.l = zzppVar.d0();
        }
        String str11 = this.l;
        if (zzhhVar.n().i(zzjk.ANALYTICS_STORAGE)) {
            z6 = z2;
            str4 = null;
        } else {
            g();
            if (this.q == 0) {
                z6 = z2;
            } else {
                zzicVar2.f31846k.getClass();
                long jCurrentTimeMillis2 = System.currentTimeMillis() - this.q;
                z6 = z2;
                if (this.p != null && jCurrentTimeMillis2 > 86400000 && this.r == null) {
                    l();
                }
            }
            if (this.p == null) {
                l();
            }
            str4 = this.p;
        }
        boolT2 = zzalVar2.t("google_analytics_sgtm_upload_enabled");
        if (boolT2 == null) {
            zBooleanValue = false;
        } else {
            zBooleanValue = boolT2.booleanValue();
        }
        zzic.k(zzppVar);
        zzicVar = zzppVar.f31850a;
        String str12 = str4;
        strM = m();
        boolean z11 = zBooleanValue;
        if (zzicVar.f31838a.getPackageManager() == null) {
            z7 = z4;
            j4 = 0;
        } else {
            z7 = z4;
            i2 = 0;
            applicationInfoA = Wrappers.a(zzicVar.f31838a).a(0, strM);
            if (applicationInfoA != null) {
                i3 = applicationInfoA.targetSdkVersion;
            } else {
                i3 = i2;
            }
            j4 = i3;
        }
        zzic.k(zzhhVar);
        int i7 = zzhhVar.n().f31854b;
        zzic.k(zzhhVar);
        zzhhVar.g();
        String str13 = zzba.b(zzhhVar.k().getString("dma_consent_settings", null)).f31583b;
        zzaif.a();
        zzfxVar = zzfy.P0;
        if (zzalVar2.r(null, zzfxVar)) {
            zzic.k(zzppVar);
            iC = zzpp.C();
        } else {
            iC = 0;
        }
        zzaif.a();
        if (zzalVar2.r(null, zzfxVar)) {
            zzic.k(zzppVar);
            jD = zzppVar.D();
        } else {
            jD = 0;
        }
        String str14 = zzalVar2.f31553c;
        String strValueOf2 = String.valueOf(zzjl.h(zzalVar2.w("google_analytics_default_allow_ad_personalization_signals", true)));
        long j13 = j4;
        long j14 = zzicVar2.D;
        zzic.j(zzicVar2.u);
        return new zzr(strM2, strN, str2, j2, str6, 161000L, j11, str, z3, z6, str3, j12, i6, z7, z10, boolValueOf2, this.f31746i, list2, strG2, str11, str12, z11, j13, i7, str13, iC, jD, str14, strValueOf2, j14, zzicVar2.u.l().d0(), zzalVar2.r(null, zzfy.e1) ? zzicVar2.E : 0L);
    }

    public final void l() {
        String str;
        g();
        zzic zzicVar = this.f31850a;
        zzhh zzhhVar = zzicVar.f31841e;
        zzgu zzguVar = zzicVar.f31842f;
        zzic.k(zzhhVar);
        if (zzhhVar.n().i(zzjk.ANALYTICS_STORAGE)) {
            byte[] bArr = new byte[16];
            zzpp zzppVar = zzicVar.f31844i;
            zzic.k(zzppVar);
            zzppVar.f0().nextBytes(bArr);
            str = String.format(Locale.US, "%032x", new BigInteger(1, bArr));
        } else {
            zzic.m(zzguVar);
            zzguVar.m.a("Analytics Storage consent is not granted");
            str = null;
        }
        zzic.m(zzguVar);
        zzguVar.m.a("Resetting session stitching token to ".concat(str == null ? "null" : "not null"));
        this.p = str;
        zzicVar.f31846k.getClass();
        this.q = System.currentTimeMillis();
    }

    public final String m() {
        h();
        Preconditions.h(this.f31742c);
        return this.f31742c;
    }

    public final String n() {
        g();
        h();
        Preconditions.h(this.o);
        return this.o;
    }
}

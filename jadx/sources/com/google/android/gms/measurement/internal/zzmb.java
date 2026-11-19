package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.SystemClock;
import com.appsflyer.sdk_base.referrer.Payload;
import com.batch.android.s.b;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DefaultClock;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class zzmb extends zzg {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile zzlu f31900c;
    public volatile zzlu d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public zzlu f31901e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ConcurrentHashMap f31902f;
    public com.google.android.gms.internal.measurement.zzdd g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile boolean f31903h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile zzlu f31904i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public zzlu f31905j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f31906k;
    public final Object l;

    public zzmb(zzic zzicVar) {
        super(zzicVar);
        this.l = new Object();
        this.f31902f = new ConcurrentHashMap();
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    public final boolean j() {
        return false;
    }

    public final zzlu k(boolean z) {
        h();
        g();
        zzlu zzluVar = this.f31901e;
        return (z && zzluVar == null) ? this.f31905j : zzluVar;
    }

    public final String l(String str) {
        if (str == null) {
            return "Activity";
        }
        String[] strArrSplit = str.split("\\.");
        int length = strArrSplit.length;
        String str2 = length > 0 ? strArrSplit[length - 1] : "";
        int length2 = str2.length();
        zzic zzicVar = this.f31850a;
        zzicVar.d.getClass();
        if (length2 <= 500) {
            return str2;
        }
        zzicVar.d.getClass();
        return str2.substring(0, 500);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x002d  */
    public final void m(zzlu zzluVar, zzlu zzluVar2, long j2, boolean z, Bundle bundle) {
        boolean z2;
        long jElapsedRealtime;
        String str;
        long j3;
        g();
        boolean z3 = false;
        if (zzluVar2 != null) {
            if (zzluVar2.f31897c == zzluVar.f31897c && Objects.equals(zzluVar2.f31896b, zzluVar.f31896b) && Objects.equals(zzluVar2.f31895a, zzluVar.f31895a)) {
                z2 = false;
            } else {
                z2 = true;
            }
        } else {
            z2 = true;
        }
        if (z && this.f31901e != null) {
            z3 = true;
        }
        zzic zzicVar = this.f31850a;
        if (z2) {
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            zzpp.c0(zzluVar, bundle2, true);
            if (zzluVar2 != null) {
                String str2 = zzluVar2.f31895a;
                if (str2 != null) {
                    bundle2.putString("_pn", str2);
                }
                String str3 = zzluVar2.f31896b;
                if (str3 != null) {
                    bundle2.putString("_pc", str3);
                }
                bundle2.putLong("_pi", zzluVar2.f31897c);
            }
            if (z3) {
                zzoc zzocVar = zzicVar.f31843h;
                zzic.l(zzocVar);
                zzoa zzoaVar = zzocVar.f31938f;
                long j4 = j2 - zzoaVar.f31933b;
                zzoaVar.f31933b = j2;
                if (j4 > 0) {
                    zzpp zzppVar = zzicVar.f31844i;
                    zzic.k(zzppVar);
                    zzppVar.S(bundle2, j4);
                }
            }
            zzal zzalVar = zzicVar.d;
            DefaultClock defaultClock = zzicVar.f31846k;
            if (!zzalVar.v()) {
                bundle2.putLong("_mst", 1L);
            }
            boolean z4 = zzluVar.f31898e;
            String str4 = true != z4 ? "auto" : Payload.TYPE_APP;
            defaultClock.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (z4) {
                long j5 = zzluVar.f31899f;
                if (j5 != 0) {
                    jCurrentTimeMillis = j5;
                }
            }
            if (zzicVar.d.r(null, zzfy.e1)) {
                defaultClock.getClass();
                jElapsedRealtime = SystemClock.elapsedRealtime();
            } else {
                jElapsedRealtime = 0;
            }
            if (z4) {
                str = str4;
                long j6 = zzluVar.g;
                if (j6 != 0) {
                    j3 = j6;
                }
                zzlj zzljVar = zzicVar.m;
                zzic.l(zzljVar);
                zzljVar.o(str, "_vs", bundle2, jCurrentTimeMillis, j3);
            } else {
                str = str4;
            }
            j3 = jElapsedRealtime;
            zzlj zzljVar2 = zzicVar.m;
            zzic.l(zzljVar2);
            zzljVar2.o(str, "_vs", bundle2, jCurrentTimeMillis, j3);
        }
        if (z3) {
            p(this.f31901e, true, j2);
        }
        this.f31901e = zzluVar;
        if (zzluVar.f31898e) {
            this.f31905j = zzluVar;
        }
        zznl zznlVarP = zzicVar.p();
        zznlVarP.g();
        zznlVarP.h();
        zznlVarP.u(new zzmn(zznlVarP, zzluVar));
    }

    public final void n(com.google.android.gms.internal.measurement.zzdd zzddVar, Bundle bundle) {
        Bundle bundle2;
        if (!this.f31850a.d.v() || bundle == null || (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) == null) {
            return;
        }
        this.f31902f.put(Integer.valueOf(zzddVar.f30608b), new zzlu(bundle2.getString("name"), bundle2.getString("referrer_name"), bundle2.getLong(b.a.f24015b)));
    }

    public final void o(String str, zzlu zzluVar, boolean z) {
        zzlu zzluVar2;
        zzlu zzluVar3 = this.f31900c == null ? this.d : this.f31900c;
        if (zzluVar.f31896b == null) {
            zzluVar2 = new zzlu(zzluVar.f31895a, str != null ? l(str) : null, zzluVar.f31897c, zzluVar.f31898e, zzluVar.f31899f, zzluVar.g);
        } else {
            zzluVar2 = zzluVar;
        }
        this.d = this.f31900c;
        this.f31900c = zzluVar2;
        zzic zzicVar = this.f31850a;
        zzicVar.f31846k.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        zzhz zzhzVar = zzicVar.g;
        zzic.m(zzhzVar);
        zzhzVar.p(new zzlw(this, zzluVar2, zzluVar3, jElapsedRealtime, z));
    }

    public final void p(zzlu zzluVar, boolean z, long j2) {
        zzic zzicVar = this.f31850a;
        zzd zzdVar = zzicVar.n;
        zzic.j(zzdVar);
        zzicVar.f31846k.getClass();
        zzdVar.j(SystemClock.elapsedRealtime());
        boolean z2 = zzluVar != null && zzluVar.d;
        zzoc zzocVar = zzicVar.f31843h;
        zzic.l(zzocVar);
        if (!zzocVar.f31938f.a(z2, z, j2) || zzluVar == null) {
            return;
        }
        zzluVar.d = false;
    }

    public final zzlu q(com.google.android.gms.internal.measurement.zzdd zzddVar) {
        Preconditions.h(zzddVar);
        Integer numValueOf = Integer.valueOf(zzddVar.f30608b);
        ConcurrentHashMap concurrentHashMap = this.f31902f;
        zzlu zzluVar = (zzlu) concurrentHashMap.get(numValueOf);
        if (zzluVar == null) {
            String strL = l(zzddVar.f30609c);
            zzpp zzppVar = this.f31850a.f31844i;
            zzic.k(zzppVar);
            zzlu zzluVar2 = new zzlu(null, strL, zzppVar.e0());
            concurrentHashMap.put(numValueOf, zzluVar2);
            zzluVar = zzluVar2;
        }
        return this.f31904i != null ? this.f31904i : zzluVar;
    }
}

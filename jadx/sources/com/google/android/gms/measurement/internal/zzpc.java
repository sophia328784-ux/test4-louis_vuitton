package com.google.android.gms.measurement.internal;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
final class zzpc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.google.android.gms.internal.measurement.zzid f31970a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayList f31971b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ArrayList f31972c;
    public long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzpg f31973e;

    public /* synthetic */ zzpc(zzpg zzpgVar) {
        this.f31973e = zzpgVar;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0090  */
    /* JADX WARN: Code duplicated, block: B:26:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:30:0x00c1 A[RETURN] */
    public final boolean a(long j2, com.google.android.gms.internal.measurement.zzhs zzhsVar) {
        com.google.android.gms.internal.measurement.zzid zzidVar;
        if (this.f31972c == null) {
            this.f31972c = new ArrayList();
        }
        if (this.f31971b == null) {
            this.f31971b = new ArrayList();
        }
        if (this.f31972c.isEmpty() || ((((com.google.android.gms.internal.measurement.zzhs) this.f31972c.get(0)).H() / 1000) / 60) / 60 == ((zzhsVar.H() / 1000) / 60) / 60) {
            long jE = this.d + ((long) zzhsVar.e());
            zzpg zzpgVar = this.f31973e;
            if (!zzpgVar.f0().r(null, zzfy.Y0)) {
                zzpgVar.f0();
                if (jE < Math.max(0, ((Integer) zzfy.f31739j.a(null)).intValue())) {
                    this.d = jE;
                    this.f31972c.add(zzhsVar);
                    this.f31971b.add(Long.valueOf(j2));
                    zzidVar = this.f31970a;
                    if (this.f31972c.size() < Math.max(1, zzpgVar.f0().p(zzidVar != null ? zzidVar.A() : null, zzfy.f31740k))) {
                        return true;
                    }
                }
            } else if (this.f31972c.isEmpty()) {
                this.d = jE;
                this.f31972c.add(zzhsVar);
                this.f31971b.add(Long.valueOf(j2));
                zzidVar = this.f31970a;
                if (this.f31972c.size() < Math.max(1, zzpgVar.f0().p(zzidVar != null ? zzidVar.A() : null, zzfy.f31740k))) {
                    return true;
                }
            } else {
                zzpgVar.f0();
                if (jE < Math.max(0, ((Integer) zzfy.f31739j.a(null)).intValue())) {
                    this.d = jE;
                    this.f31972c.add(zzhsVar);
                    this.f31971b.add(Long.valueOf(j2));
                    zzidVar = this.f31970a;
                    if (this.f31972c.size() < Math.max(1, zzpgVar.f0().p(zzidVar != null ? zzidVar.A() : null, zzfy.f31740k))) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}

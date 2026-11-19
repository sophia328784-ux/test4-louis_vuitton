package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.cj;
import defpackage.d21;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f31587a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f31588b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f31589c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f31590e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f31591f;
    public final zzbf g;

    public zzbc(zzic zzicVar, String str, String str2, String str3, long j2, long j3, long j4, Bundle bundle) {
        zzbf zzbfVar;
        Preconditions.e(str2);
        Preconditions.e(str3);
        this.f31587a = str2;
        this.f31588b = str3;
        this.f31589c = true == TextUtils.isEmpty(str) ? null : str;
        this.d = j2;
        this.f31590e = j3;
        this.f31591f = j4;
        if (j4 != 0 && j4 > j2) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31771i.b(zzgu.o(str2), "Event created with reverse previous/current timestamps. appId");
        }
        if (bundle == null || bundle.isEmpty()) {
            zzbfVar = new zzbf(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    zzgu zzguVar2 = zzicVar.f31842f;
                    zzic.m(zzguVar2);
                    zzguVar2.f31769f.a("Param name can't be null");
                    it.remove();
                } else {
                    zzpp zzppVar = zzicVar.f31844i;
                    zzic.k(zzppVar);
                    Object objP = zzppVar.p(bundle2.get(next), next);
                    if (objP == null) {
                        zzgu zzguVar3 = zzicVar.f31842f;
                        zzic.m(zzguVar3);
                        zzguVar3.f31771i.b(zzicVar.f31845j.b(next), "Param value can't be null");
                        it.remove();
                    } else {
                        zzpp zzppVar2 = zzicVar.f31844i;
                        zzic.k(zzppVar2);
                        zzppVar2.x(bundle2, next, objP);
                    }
                }
            }
            zzbfVar = new zzbf(bundle2);
        }
        this.g = zzbfVar;
    }

    public final zzbc a(zzic zzicVar, long j2) {
        return new zzbc(zzicVar, this.f31589c, this.f31587a, this.f31588b, this.d, this.f31590e, j2, this.g);
    }

    public final String toString() {
        String string = this.g.toString();
        String str = this.f31587a;
        int length = String.valueOf(str).length();
        String str2 = this.f31588b;
        StringBuilder sb = new StringBuilder(length + 22 + String.valueOf(str2).length() + 10 + string.length() + 1);
        cj.C(sb, "Event{appId='", str, "', name='", str2);
        return d21.p(sb, "', params=", string, "}");
    }

    public zzbc(zzic zzicVar, String str, String str2, String str3, long j2, long j3, long j4, zzbf zzbfVar) {
        Preconditions.e(str2);
        Preconditions.e(str3);
        Preconditions.h(zzbfVar);
        this.f31587a = str2;
        this.f31588b = str3;
        this.f31589c = true == TextUtils.isEmpty(str) ? null : str;
        this.d = j2;
        this.f31590e = j3;
        this.f31591f = j4;
        if (j4 != 0 && j4 > j2) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31771i.c("Event created with reverse previous/current timestamps. appId, name", zzgu.o(str2), zzgu.o(str3));
        }
        this.g = zzbfVar;
    }
}

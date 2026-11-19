package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.EnumMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzabj extends zzabh {
    public static final Map d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzyz f30344c;

    static {
        EnumMap enumMap = new EnumMap(zzyz.class);
        for (zzyz zzyzVar : zzyz.values()) {
            zzabj[] zzabjVarArr = new zzabj[10];
            for (int i2 = 0; i2 < 10; i2++) {
                zzabjVarArr[i2] = new zzabj(i2, zzyzVar, zzza.f31109e);
            }
            enumMap.put(zzyzVar, zzabjVarArr);
        }
        d = Collections.unmodifiableMap(enumMap);
    }

    public zzabj(int i2, zzyz zzyzVar, zzza zzzaVar) {
        super(zzzaVar, i2);
        zzabr.a(zzyzVar, "format char");
        this.f30344c = zzyzVar;
        if (zzzaVar.a()) {
            return;
        }
        int iB = zzyzVar.b();
        iB = zzzaVar.c() ? iB & 65503 : iB;
        StringBuilder sb = new StringBuilder("%");
        zzzaVar.d(sb);
        sb.append((char) iB);
    }

    @Override // com.google.android.gms.internal.measurement.zzabh
    public final void a(zzyy zzyyVar, Object obj) {
        zzyyVar.a(obj, this.f30344c, this.f30343b);
    }
}

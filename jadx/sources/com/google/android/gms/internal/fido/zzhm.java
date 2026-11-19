package com.google.android.gms.internal.fido;

import com.batch.android.x0.h;
import defpackage.md;
import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhm extends zzhp {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29913b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzcj f29914c;

    public zzhm(zzcj zzcjVar) throws zzhf {
        zzcjVar.getClass();
        this.f29914c = zzcjVar;
        zzdc zzdcVarI = zzcjVar.entrySet().i();
        int i2 = 0;
        while (zzdcVarI.hasNext()) {
            Map.Entry entry = (Map.Entry) zzdcVarI.next();
            int iA = ((zzhp) entry.getKey()).a();
            i2 = i2 < iA ? iA : i2;
            int iA2 = ((zzhp) entry.getValue()).a();
            if (i2 < iA2) {
                i2 = iA2;
            }
        }
        int i3 = i2 + 1;
        this.f29913b = i3;
        if (i3 > 8) {
            throw new zzhf("Exceeded cutoff limit for max depth of cbor value");
        }
    }

    @Override // com.google.android.gms.internal.fido.zzhp
    public final int a() {
        return this.f29913b;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        int iCompareTo;
        zzhp zzhpVar = (zzhp) obj;
        int iD0 = zzhpVar.d0();
        int iC = zzhp.c(h.a.d);
        if (iC != iD0) {
            return iC - zzhpVar.d0();
        }
        zzcj zzcjVar = ((zzhm) zzhpVar).f29914c;
        zzcj zzcjVar2 = this.f29914c;
        if (zzcjVar2.f29855e.size() != zzcjVar.f29855e.size()) {
            return zzcjVar2.f29855e.size() - zzcjVar.f29855e.size();
        }
        zzdc zzdcVarI = zzcjVar2.entrySet().i();
        zzdc zzdcVarI2 = zzcjVar.entrySet().i();
        do {
            if (!zzdcVarI.hasNext() && !zzdcVarI2.hasNext()) {
                return 0;
            }
            Map.Entry entry = (Map.Entry) zzdcVarI.next();
            Map.Entry entry2 = (Map.Entry) zzdcVarI2.next();
            int iCompareTo2 = ((zzhp) entry.getKey()).compareTo((zzhp) entry2.getKey());
            if (iCompareTo2 != 0) {
                return iCompareTo2;
            }
            iCompareTo = ((zzhp) entry.getValue()).compareTo((zzhp) entry2.getValue());
        } while (iCompareTo == 0);
        return iCompareTo;
    }

    @Override // com.google.android.gms.internal.fido.zzhp
    public final int d0() {
        return zzhp.c(h.a.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzhm.class == obj.getClass()) {
            return this.f29914c.equals(((zzhm) obj).f29914c);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(zzhp.c(h.a.d)), this.f29914c});
    }

    public final String toString() {
        zzcj zzcjVar = this.f29914c;
        if (zzcjVar.isEmpty()) {
            return "{}";
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        zzdc zzdcVarI = zzcjVar.entrySet().i();
        while (zzdcVarI.hasNext()) {
            Map.Entry entry = (Map.Entry) zzdcVarI.next();
            linkedHashMap.put(((zzhp) entry.getKey()).toString().replace("\n", "\n  "), ((zzhp) entry.getValue()).toString().replace("\n", "\n  "));
        }
        zzbd zzbdVar = new zzbd();
        StringBuilder sb = new StringBuilder("{\n  ");
        try {
            zzbc.a(sb, linkedHashMap.entrySet().iterator(), zzbdVar);
            sb.append("\n}");
            return sb.toString();
        } catch (IOException e2) {
            md.h(e2);
            return null;
        }
    }
}

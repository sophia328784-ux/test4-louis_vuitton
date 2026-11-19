package com.google.android.gms.internal.fido;

import defpackage.md;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhg extends zzhp {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzcc f29906b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f29907c;

    public zzhg(zzcc zzccVar) throws zzhf {
        zzccVar.getClass();
        this.f29906b = zzccVar;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            zzcc zzccVar2 = this.f29906b;
            if (i2 >= zzccVar2.size()) {
                break;
            }
            int iA = ((zzhp) zzccVar2.get(i2)).a();
            if (i3 < iA) {
                i3 = iA;
            }
            i2++;
        }
        int i4 = i3 + 1;
        this.f29907c = i4;
        if (i4 > 8) {
            throw new zzhf("Exceeded cutoff limit for max depth of cbor value");
        }
    }

    @Override // com.google.android.gms.internal.fido.zzhp
    public final int a() {
        return this.f29907c;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        zzhp zzhpVar = (zzhp) obj;
        int iD0 = zzhpVar.d0();
        int iC = zzhp.c((byte) -128);
        if (iC != iD0) {
            return iC - zzhpVar.d0();
        }
        zzcc zzccVar = ((zzhg) zzhpVar).f29906b;
        zzcc zzccVar2 = this.f29906b;
        if (zzccVar2.size() != zzccVar.size()) {
            return zzccVar2.size() - zzccVar.size();
        }
        for (int i2 = 0; i2 < zzccVar2.size(); i2++) {
            int iCompareTo = ((zzhp) zzccVar2.get(i2)).compareTo((zzhp) zzccVar.get(i2));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.fido.zzhp
    public final int d0() {
        return zzhp.c((byte) -128);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzhg.class == obj.getClass()) {
            return this.f29906b.equals(((zzhg) obj).f29906b);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(zzhp.c((byte) -128)), this.f29906b});
    }

    public final String toString() {
        zzcc zzccVar = this.f29906b;
        if (zzccVar.isEmpty()) {
            return "[]";
        }
        ArrayList arrayList = new ArrayList();
        int size = zzccVar.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(((zzhp) zzccVar.get(i2)).toString().replace("\n", "\n  "));
        }
        StringBuilder sb = new StringBuilder("[\n  ");
        Iterator it = arrayList.iterator();
        try {
            if (it.hasNext()) {
                sb.append(zzbd.a(it.next()));
                while (it.hasNext()) {
                    sb.append((CharSequence) ",\n  ");
                    sb.append(zzbd.a(it.next()));
                }
            }
            sb.append("\n]");
            return sb.toString();
        } catch (IOException e2) {
            md.h(e2);
            return null;
        }
    }
}

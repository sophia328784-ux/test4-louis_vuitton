package com.google.android.gms.internal.fido;

import com.batch.android.x0.h;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhh extends zzhp {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f29908b;

    public zzhh(boolean z) {
        this.f29908b = z;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        zzhp zzhpVar = (zzhp) obj;
        int iD0 = zzhpVar.d0();
        int iC = zzhp.c(h.a.K);
        if (iC != iD0) {
            return iC - zzhpVar.d0();
        }
        return (true != this.f29908b ? 20 : 21) - (true != ((zzhh) zzhpVar).f29908b ? 20 : 21);
    }

    @Override // com.google.android.gms.internal.fido.zzhp
    public final int d0() {
        return zzhp.c(h.a.K);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && zzhh.class == obj.getClass() && this.f29908b == ((zzhh) obj).f29908b;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(zzhp.c(h.a.K)), Boolean.valueOf(this.f29908b)});
    }

    public final String toString() {
        return Boolean.toString(this.f29908b);
    }
}

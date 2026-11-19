package com.google.android.gms.internal.fido;

import defpackage.n00;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhn extends zzhp {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f29915b;

    public zzhn(String str) {
        this.f29915b = str;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        zzhp zzhpVar = (zzhp) obj;
        int iD0 = zzhpVar.d0();
        int iC = zzhp.c((byte) 96);
        if (iC != iD0) {
            return iC - zzhpVar.d0();
        }
        String str = ((zzhn) zzhpVar).f29915b;
        int length = str.length();
        String str2 = this.f29915b;
        if (str2.length() == length) {
            return str2.compareTo(str);
        }
        return str2.length() - str.length();
    }

    @Override // com.google.android.gms.internal.fido.zzhp
    public final int d0() {
        return zzhp.c((byte) 96);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzhn.class == obj.getClass()) {
            return this.f29915b.equals(((zzhn) obj).f29915b);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(zzhp.c((byte) 96)), this.f29915b});
    }

    public final String toString() {
        return n00.r(this.f29915b, "\"", new StringBuilder("\""));
    }
}

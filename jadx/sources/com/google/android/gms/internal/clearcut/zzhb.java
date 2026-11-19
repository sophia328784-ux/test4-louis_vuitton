package com.google.android.gms.internal.clearcut;

import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhb extends zzfu<zzhb> implements Cloneable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile zzhb[] f29773e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f29774c = "";
    public final String d = "";

    public zzhb() {
        this.f29754b = -1;
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    public final void a(zzfs zzfsVar) throws zzft {
        String str = this.f29774c;
        if (str != null && !str.equals("")) {
            zzfsVar.c(1, str);
        }
        String str2 = this.d;
        if (str2 == null || str2.equals("")) {
            return;
        }
        zzfsVar.c(2, str2);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    public final int c() {
        String str = this.f29774c;
        int iG = (str == null || str.equals("")) ? 0 : zzfs.g(1, str);
        String str2 = this.d;
        return (str2 == null || str2.equals("")) ? iG : zzfs.g(2, str2) + iG;
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    public final Object clone() {
        try {
            return (zzhb) super.clone();
        } catch (CloneNotSupportedException e2) {
            md.h(e2);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    /* JADX INFO: renamed from: d */
    public final /* synthetic */ zzfz clone() {
        return (zzhb) clone();
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ zzfu clone() {
        return (zzhb) clone();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzhb)) {
            return false;
        }
        zzhb zzhbVar = (zzhb) obj;
        String str = zzhbVar.f29774c;
        String str2 = this.f29774c;
        if (str2 == null) {
            if (str != null) {
                return false;
            }
        } else if (!str2.equals(str)) {
            return false;
        }
        String str3 = zzhbVar.d;
        String str4 = this.d;
        if (str4 == null) {
            if (str3 != null) {
                return false;
            }
        } else if (!str4.equals(str3)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.f29774c;
        int iHashCode = (553293703 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        return (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
    }
}

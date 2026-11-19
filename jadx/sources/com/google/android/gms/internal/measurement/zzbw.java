package com.google.android.gms.internal.measurement;

import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
final class zzbw extends zzcc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f30590a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte f30591b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f30592c;
    public int d;

    public final zzcd a() {
        if (this.f30591b == 1 && this.f30590a != null && this.f30592c != 0 && this.d != 0) {
            return new zzbx(this.f30590a, this.f30592c, this.d);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f30590a == null) {
            sb.append(" fileOwner");
        }
        if (this.f30591b == 0) {
            sb.append(" hasDifferentDmaOwner");
        }
        if (this.f30592c == 0) {
            sb.append(" fileChecks");
        }
        if (this.d == 0) {
            sb.append(" filePurpose");
        }
        md.k("Missing required properties:".concat(sb.toString()));
        return null;
    }
}

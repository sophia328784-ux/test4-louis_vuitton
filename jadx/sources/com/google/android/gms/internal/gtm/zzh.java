package com.google.android.gms.internal.gtm;

import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
final class zzh extends zzo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f30072a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte f30073b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f30074c;
    public int d;

    public final zzp a() {
        if (this.f30073b == 1 && this.f30072a != null && this.f30074c != 0 && this.d != 0) {
            return new zzj(this.f30072a, this.f30074c, this.d);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f30072a == null) {
            sb.append(" fileOwner");
        }
        if (this.f30073b == 0) {
            sb.append(" hasDifferentDmaOwner");
        }
        if (this.f30074c == 0) {
            sb.append(" fileChecks");
        }
        if (this.d == 0) {
            sb.append(" filePurpose");
        }
        md.k("Missing required properties:".concat(sb.toString()));
        return null;
    }
}

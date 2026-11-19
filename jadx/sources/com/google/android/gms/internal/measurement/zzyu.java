package com.google.android.gms.internal.measurement;

import defpackage.cj;

/* JADX INFO: loaded from: classes2.dex */
final class zzyu implements zzyd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzyd f31101a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f31102b;

    public zzyu(zzyd zzydVar, Object obj) {
        this.f31101a = zzydVar;
        zzabr.a(obj, "log site qualifier");
        this.f31102b = obj;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzyu)) {
            return false;
        }
        zzyu zzyuVar = (zzyu) obj;
        return this.f31101a.equals(zzyuVar.f31101a) && this.f31102b.equals(zzyuVar.f31102b);
    }

    public final int hashCode() {
        return this.f31102b.hashCode() ^ this.f31101a.hashCode();
    }

    public final String toString() {
        String string = this.f31101a.toString();
        int length = string.length();
        String string2 = this.f31102b.toString();
        StringBuilder sb = new StringBuilder(length + 47 + string2.length() + 3);
        cj.C(sb, "SpecializedLogSiteKey{ delegate='", string, "', qualifier='", string2);
        sb.append("' }");
        return sb.toString();
    }
}

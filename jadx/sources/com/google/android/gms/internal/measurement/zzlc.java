package com.google.android.gms.internal.measurement;

import android.content.Context;
import com.google.common.base.Supplier;
import defpackage.cj;

/* JADX INFO: loaded from: classes2.dex */
final class zzlc extends zzlt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f30704a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Supplier f30705b;

    public zzlc(Context context, Supplier supplier) {
        this.f30704a = context;
        this.f30705b = supplier;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzlt)) {
            return false;
        }
        zzlc zzlcVar = (zzlc) ((zzlt) obj);
        if (!this.f30704a.equals(zzlcVar.f30704a)) {
            return false;
        }
        Supplier supplier = zzlcVar.f30705b;
        Supplier supplier2 = this.f30705b;
        if (supplier2 == null) {
            return supplier == null;
        }
        return supplier2.equals(supplier);
    }

    public final int hashCode() {
        int iHashCode = this.f30704a.hashCode() ^ 1000003;
        Supplier supplier = this.f30705b;
        return (supplier == null ? 0 : supplier.hashCode()) ^ (iHashCode * 1000003);
    }

    public final String toString() {
        String string = this.f30704a.toString();
        int length = string.length();
        String strValueOf = String.valueOf(this.f30705b);
        StringBuilder sb = new StringBuilder(length + 45 + strValueOf.length() + 1);
        cj.C(sb, "FlagsContext{context=", string, ", hermeticFileOverrides=", strValueOf);
        sb.append("}");
        return sb.toString();
    }
}

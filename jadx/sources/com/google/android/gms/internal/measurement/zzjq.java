package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zzjq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzjq> CREATOR = new zzjr();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f30671b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f30672c;
    public final zzjo d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f30673e;

    public zzjq(String str, String str2, zzjo zzjoVar, boolean z) {
        this.f30671b = str;
        this.f30672c = str2;
        this.d = zzjoVar;
        this.f30673e = z;
    }

    public final void W1(StringBuilder sb) {
        sb.append("FlagOverride(");
        sb.append(this.f30671b);
        sb.append(", ");
        sb.append(this.f30672c);
        sb.append(", ");
        this.d.W1(sb);
        sb.append(", ");
        sb.append(this.f30673e);
        sb.append(")");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzjq)) {
            return false;
        }
        zzjq zzjqVar = (zzjq) obj;
        return zzkl.a(this.f30671b, zzjqVar.f30671b) && zzkl.a(this.f30672c, zzjqVar.f30672c) && zzkl.a(this.d, zzjqVar.d) && this.f30673e == zzjqVar.f30673e;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        W1(sb);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 2, this.f30671b, false);
        SafeParcelWriter.k(parcel, 3, this.f30672c, false);
        SafeParcelWriter.j(parcel, 4, this.d, i2, false);
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeInt(this.f30673e ? 1 : 0);
        SafeParcelWriter.r(iQ, parcel);
    }
}

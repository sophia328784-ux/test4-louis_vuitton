package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.n00;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class zzac extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzac> CREATOR = new zzad();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f31388b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.google.android.gms.internal.location.zzd f31389c;

    public zzac(boolean z, com.google.android.gms.internal.location.zzd zzdVar) {
        this.f31388b = z;
        this.f31389c = zzdVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzac)) {
            return false;
        }
        zzac zzacVar = (zzac) obj;
        return this.f31388b == zzacVar.f31388b && Objects.a(this.f31389c, zzacVar.f31389c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.f31388b)});
    }

    public final String toString() {
        StringBuilder sbT = n00.t("LocationAvailabilityRequest[");
        if (this.f31388b) {
            sbT.append("bypass, ");
        }
        com.google.android.gms.internal.location.zzd zzdVar = this.f31389c;
        if (zzdVar != null) {
            sbT.append("impersonation=");
            sbT.append(zzdVar);
            sbT.append(", ");
        }
        sbT.setLength(sbT.length() - 2);
        sbT.append(']');
        return sbT.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f31388b ? 1 : 0);
        SafeParcelWriter.j(parcel, 2, this.f31389c, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}

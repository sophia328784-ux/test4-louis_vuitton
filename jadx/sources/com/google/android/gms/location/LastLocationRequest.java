package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.location.zzen;
import defpackage.n00;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class LastLocationRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<LastLocationRequest> CREATOR = new zzz();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f31338b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f31339c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final com.google.android.gms.internal.location.zzd f31340e;

    public LastLocationRequest(long j2, int i2, boolean z, com.google.android.gms.internal.location.zzd zzdVar) {
        this.f31338b = j2;
        this.f31339c = i2;
        this.d = z;
        this.f31340e = zzdVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof LastLocationRequest)) {
            return false;
        }
        LastLocationRequest lastLocationRequest = (LastLocationRequest) obj;
        return this.f31338b == lastLocationRequest.f31338b && this.f31339c == lastLocationRequest.f31339c && this.d == lastLocationRequest.d && Objects.a(this.f31340e, lastLocationRequest.f31340e);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f31338b), Integer.valueOf(this.f31339c), Boolean.valueOf(this.d)});
    }

    public final String toString() {
        StringBuilder sbT = n00.t("LastLocationRequest[");
        long j2 = this.f31338b;
        if (j2 != Long.MAX_VALUE) {
            sbT.append("maxAge=");
            zzen.a(j2, sbT);
        }
        int i2 = this.f31339c;
        if (i2 != 0) {
            sbT.append(", ");
            sbT.append(zzp.a(i2));
        }
        if (this.d) {
            sbT.append(", bypass");
        }
        com.google.android.gms.internal.location.zzd zzdVar = this.f31340e;
        if (zzdVar != null) {
            sbT.append(", impersonation=");
            sbT.append(zzdVar);
        }
        sbT.append(']');
        return sbT.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 8);
        parcel.writeLong(this.f31338b);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f31339c);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.d ? 1 : 0);
        SafeParcelWriter.j(parcel, 5, this.f31340e, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f31341a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f31342b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f31343c;
        public final com.google.android.gms.internal.location.zzd d;

        public Builder(LastLocationRequest lastLocationRequest) {
            this.f31341a = lastLocationRequest.f31338b;
            this.f31342b = lastLocationRequest.f31339c;
            this.f31343c = lastLocationRequest.d;
            this.d = lastLocationRequest.f31340e;
        }

        public Builder() {
            this.f31341a = Long.MAX_VALUE;
            this.f31342b = 0;
            this.f31343c = false;
            this.d = null;
        }
    }
}

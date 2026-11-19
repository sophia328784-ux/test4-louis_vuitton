package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.WorkSource;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.util.WorkSourceUtil;
import com.google.android.gms.internal.location.zzen;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.ct0;
import defpackage.n00;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class CurrentLocationRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CurrentLocationRequest> CREATOR = new zzj();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f31319b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f31320c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f31321e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f31322f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final WorkSource f31323h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final com.google.android.gms.internal.location.zzd f31324i;

    public CurrentLocationRequest(long j2, int i2, int i3, long j3, boolean z, int i4, WorkSource workSource, com.google.android.gms.internal.location.zzd zzdVar) {
        this.f31319b = j2;
        this.f31320c = i2;
        this.d = i3;
        this.f31321e = j3;
        this.f31322f = z;
        this.g = i4;
        this.f31323h = workSource;
        this.f31324i = zzdVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof CurrentLocationRequest)) {
            return false;
        }
        CurrentLocationRequest currentLocationRequest = (CurrentLocationRequest) obj;
        return this.f31319b == currentLocationRequest.f31319b && this.f31320c == currentLocationRequest.f31320c && this.d == currentLocationRequest.d && this.f31321e == currentLocationRequest.f31321e && this.f31322f == currentLocationRequest.f31322f && this.g == currentLocationRequest.g && Objects.a(this.f31323h, currentLocationRequest.f31323h) && Objects.a(this.f31324i, currentLocationRequest.f31324i);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f31319b), Integer.valueOf(this.f31320c), Integer.valueOf(this.d), Long.valueOf(this.f31321e)});
    }

    public final String toString() {
        String str;
        StringBuilder sbT = n00.t("CurrentLocationRequest[");
        sbT.append(zzak.b(this.d));
        long j2 = this.f31319b;
        if (j2 != Long.MAX_VALUE) {
            sbT.append(", maxAge=");
            zzen.a(j2, sbT);
        }
        long j3 = this.f31321e;
        if (j3 != Long.MAX_VALUE) {
            sbT.append(", duration=");
            sbT.append(j3);
            sbT.append(NBSSpanMetricUnit.Millisecond);
        }
        int i2 = this.f31320c;
        if (i2 != 0) {
            sbT.append(", ");
            sbT.append(zzp.a(i2));
        }
        if (this.f31322f) {
            sbT.append(", bypass");
        }
        int i3 = this.g;
        if (i3 != 0) {
            sbT.append(", ");
            if (i3 == 0) {
                str = "THROTTLE_BACKGROUND";
            } else if (i3 == 1) {
                str = "THROTTLE_ALWAYS";
            } else {
                if (i3 != 2) {
                    ct0.c();
                    return null;
                }
                str = "THROTTLE_NEVER";
            }
            sbT.append(str);
        }
        WorkSource workSource = this.f31323h;
        if (!WorkSourceUtil.b(workSource)) {
            sbT.append(", workSource=");
            sbT.append(workSource);
        }
        com.google.android.gms.internal.location.zzd zzdVar = this.f31324i;
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
        parcel.writeLong(this.f31319b);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f31320c);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.d);
        SafeParcelWriter.p(parcel, 4, 8);
        parcel.writeLong(this.f31321e);
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeInt(this.f31322f ? 1 : 0);
        SafeParcelWriter.j(parcel, 6, this.f31323h, i2, false);
        SafeParcelWriter.p(parcel, 7, 4);
        parcel.writeInt(this.g);
        SafeParcelWriter.j(parcel, 9, this.f31324i, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}

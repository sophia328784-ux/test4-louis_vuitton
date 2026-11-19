package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zzk extends AbstractSafeParcelable implements Result {
    public static final Parcelable.Creator<zzk> CREATOR;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Status f30272b;

    static {
        new zzk(Status.f29004f);
        CREATOR = new zzl();
    }

    public zzk(Status status) {
        this.f30272b = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f30272b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.j(parcel, 1, this.f30272b, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}

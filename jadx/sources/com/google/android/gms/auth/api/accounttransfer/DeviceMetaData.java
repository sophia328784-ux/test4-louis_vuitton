package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceMetaData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<DeviceMetaData> CREATOR = new zzy();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f28697b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f28698c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f28699e;

    public DeviceMetaData(long j2, boolean z, int i2, boolean z2) {
        this.f28697b = i2;
        this.f28698c = z;
        this.d = j2;
        this.f28699e = z2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f28697b);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f28698c ? 1 : 0);
        SafeParcelWriter.p(parcel, 3, 8);
        parcel.writeLong(this.d);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(this.f28699e ? 1 : 0);
        SafeParcelWriter.r(iQ, parcel);
    }
}

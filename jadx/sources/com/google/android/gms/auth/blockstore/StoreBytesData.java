package com.google.android.gms.auth.blockstore;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public class StoreBytesData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<StoreBytesData> CREATOR = new zze();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f28862b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f28863c;
    public final String d;

    public StoreBytesData(String str, boolean z, byte[] bArr) {
        this.f28862b = bArr;
        this.f28863c = z;
        this.d = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.b(parcel, 1, this.f28862b, false);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f28863c ? 1 : 0);
        SafeParcelWriter.k(parcel, 3, this.d, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}

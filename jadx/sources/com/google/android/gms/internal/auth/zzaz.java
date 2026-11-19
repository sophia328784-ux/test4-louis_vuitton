package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaz> CREATOR = new zzba();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29603b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f29604c;
    public final byte[] d;

    public zzaz(String str, byte[] bArr, int i2) {
        this.f29603b = 1;
        Preconditions.h(str);
        this.f29604c = str;
        Preconditions.h(bArr);
        this.d = bArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29603b);
        SafeParcelWriter.k(parcel, 2, this.f29604c, false);
        SafeParcelWriter.b(parcel, 3, this.d, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public zzaz(String str, byte[] bArr) {
        this(str, bArr, 0);
    }
}

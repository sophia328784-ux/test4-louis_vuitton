package com.google.android.gms.cloudmessaging;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public class UnregisterRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<UnregisterRequest> CREATOR = new zzag();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f28917b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f28918c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f28919e;

    public UnregisterRequest(String str, String str2, String str3, String str4) {
        this.f28917b = str;
        this.f28918c = str2;
        this.d = str3;
        this.f28919e = str4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 1, this.f28917b, false);
        SafeParcelWriter.k(parcel, 2, this.f28918c, false);
        SafeParcelWriter.k(parcel, 3, this.d, false);
        SafeParcelWriter.k(parcel, 4, this.f28919e, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}

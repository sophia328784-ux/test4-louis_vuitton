package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zam extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zam> CREATOR = new zak();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29320b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f29321c;
    public final FastJsonResponse.Field d;

    public zam(String str, FastJsonResponse.Field field) {
        this.f29320b = 1;
        this.f29321c = str;
        this.d = field;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29320b);
        SafeParcelWriter.k(parcel, 2, this.f29321c, false);
        SafeParcelWriter.j(parcel, 3, this.d, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public zam(int i2, String str, FastJsonResponse.Field field) {
        this.f29320b = i2;
        this.f29321c = str;
        this.d = field;
    }
}

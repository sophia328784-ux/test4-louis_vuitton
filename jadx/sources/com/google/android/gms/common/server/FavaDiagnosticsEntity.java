package com.google.android.gms.common.server;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public class FavaDiagnosticsEntity extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<FavaDiagnosticsEntity> CREATOR = new zaa();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29297b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f29298c;
    public final int d;

    public FavaDiagnosticsEntity(String str, int i2) {
        this.f29297b = 1;
        this.f29298c = str;
        this.d = i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29297b);
        SafeParcelWriter.k(parcel, 2, this.f29298c, false);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.d);
        SafeParcelWriter.r(iQ, parcel);
    }

    public FavaDiagnosticsEntity(int i2, String str, int i3) {
        this.f29297b = i2;
        this.f29298c = str;
        this.d = i3;
    }
}

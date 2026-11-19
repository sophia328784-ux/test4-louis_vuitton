package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zaaa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaaa> CREATOR = new zaab();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29216b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f29217c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Scope[] f29218e;

    public zaaa(int i2, int i3, int i4, Scope[] scopeArr) {
        this.f29216b = i2;
        this.f29217c = i3;
        this.d = i4;
        this.f29218e = scopeArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29216b);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f29217c);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.d);
        SafeParcelWriter.n(parcel, 4, this.f29218e, i2);
        SafeParcelWriter.r(iQ, parcel);
    }
}

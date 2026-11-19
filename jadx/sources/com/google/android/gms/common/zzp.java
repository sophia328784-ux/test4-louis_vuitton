package com.google.android.gms.common;

import android.content.Context;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes2.dex */
public final class zzp extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzp> CREATOR = new zzq();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f29370b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f29371c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f29372e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f29373f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f29374h;

    public zzp(String str, boolean z, boolean z2, IBinder iBinder, boolean z3, boolean z4, boolean z5) {
        this.f29370b = str;
        this.f29371c = z;
        this.d = z2;
        this.f29372e = (Context) ObjectWrapper.G2(IObjectWrapper.Stub.F2(iBinder));
        this.f29373f = z3;
        this.g = z4;
        this.f29374h = z5;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 1, this.f29370b, false);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f29371c ? 1 : 0);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.d ? 1 : 0);
        SafeParcelWriter.f(parcel, 4, new ObjectWrapper(this.f29372e));
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeInt(this.f29373f ? 1 : 0);
        SafeParcelWriter.p(parcel, 6, 4);
        parcel.writeInt(this.g ? 1 : 0);
        SafeParcelWriter.p(parcel, 8, 4);
        parcel.writeInt(this.f29374h ? 1 : 0);
        SafeParcelWriter.r(iQ, parcel);
    }
}

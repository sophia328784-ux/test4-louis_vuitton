package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public class MethodInvocation extends AbstractSafeParcelable {
    public static final Parcelable.Creator<MethodInvocation> CREATOR = new zaq();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29190b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f29191c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f29192e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f29193f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f29194h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f29195i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f29196j;

    public MethodInvocation(int i2, int i3, int i4, long j2, long j3, String str, String str2, int i5, int i6) {
        this.f29190b = i2;
        this.f29191c = i3;
        this.d = i4;
        this.f29192e = j2;
        this.f29193f = j3;
        this.g = str;
        this.f29194h = str2;
        this.f29195i = i5;
        this.f29196j = i6;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29190b);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f29191c);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.d);
        SafeParcelWriter.p(parcel, 4, 8);
        parcel.writeLong(this.f29192e);
        SafeParcelWriter.p(parcel, 5, 8);
        parcel.writeLong(this.f29193f);
        SafeParcelWriter.k(parcel, 6, this.g, false);
        SafeParcelWriter.k(parcel, 7, this.f29194h, false);
        SafeParcelWriter.p(parcel, 8, 4);
        parcel.writeInt(this.f29195i);
        SafeParcelWriter.p(parcel, 9, 4);
        parcel.writeInt(this.f29196j);
        SafeParcelWriter.r(iQ, parcel);
    }

    @Deprecated
    public MethodInvocation(int i2, int i3, int i4, long j2, long j3, String str, String str2, int i5) {
        this(i2, i3, i4, j2, j3, str, str2, i5, -1);
    }
}

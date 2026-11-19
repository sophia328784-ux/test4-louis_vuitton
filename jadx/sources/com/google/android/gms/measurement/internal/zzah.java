package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zzah extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzah> CREATOR = new zzai();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f31543b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f31544c;
    public zzpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f31545e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f31546f;
    public String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final zzbh f31547h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f31548i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public zzbh f31549j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f31550k;
    public final zzbh l;

    public zzah(zzah zzahVar) {
        Preconditions.h(zzahVar);
        this.f31543b = zzahVar.f31543b;
        this.f31544c = zzahVar.f31544c;
        this.d = zzahVar.d;
        this.f31545e = zzahVar.f31545e;
        this.f31546f = zzahVar.f31546f;
        this.g = zzahVar.g;
        this.f31547h = zzahVar.f31547h;
        this.f31548i = zzahVar.f31548i;
        this.f31549j = zzahVar.f31549j;
        this.f31550k = zzahVar.f31550k;
        this.l = zzahVar.l;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 2, this.f31543b, false);
        SafeParcelWriter.k(parcel, 3, this.f31544c, false);
        SafeParcelWriter.j(parcel, 4, this.d, i2, false);
        long j2 = this.f31545e;
        SafeParcelWriter.p(parcel, 5, 8);
        parcel.writeLong(j2);
        boolean z = this.f31546f;
        SafeParcelWriter.p(parcel, 6, 4);
        parcel.writeInt(z ? 1 : 0);
        SafeParcelWriter.k(parcel, 7, this.g, false);
        SafeParcelWriter.j(parcel, 8, this.f31547h, i2, false);
        long j3 = this.f31548i;
        SafeParcelWriter.p(parcel, 9, 8);
        parcel.writeLong(j3);
        SafeParcelWriter.j(parcel, 10, this.f31549j, i2, false);
        SafeParcelWriter.p(parcel, 11, 8);
        parcel.writeLong(this.f31550k);
        SafeParcelWriter.j(parcel, 12, this.l, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public zzah(String str, String str2, zzpl zzplVar, long j2, boolean z, String str3, zzbh zzbhVar, long j3, zzbh zzbhVar2, long j4, zzbh zzbhVar3) {
        this.f31543b = str;
        this.f31544c = str2;
        this.d = zzplVar;
        this.f31545e = j2;
        this.f31546f = z;
        this.g = str3;
        this.f31547h = zzbhVar;
        this.f31548i = j3;
        this.f31549j = zzbhVar2;
        this.f31550k = j4;
        this.l = zzbhVar3;
    }
}

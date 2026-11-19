package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.cj;
import defpackage.n00;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbh> CREATOR = new zzbi();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f31603b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzbf f31604c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f31605e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f31606f;

    public zzbh(zzbh zzbhVar, long j2, long j3) {
        Preconditions.h(zzbhVar);
        this.f31603b = zzbhVar.f31603b;
        this.f31604c = zzbhVar.f31604c;
        this.d = zzbhVar.d;
        this.f31605e = j2;
        this.f31606f = j3;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f31604c);
        String str = this.d;
        int length = String.valueOf(str).length();
        String str2 = this.f31603b;
        StringBuilder sb = new StringBuilder(length + 13 + String.valueOf(str2).length() + 8 + strValueOf.length());
        cj.C(sb, "origin=", str, ",name=", str2);
        return n00.r(",params=", strValueOf, sb);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        zzbi.a(this, parcel, i2);
    }

    public zzbh(String str, zzbf zzbfVar, String str2, long j2, long j3) {
        this.f31603b = str;
        this.f31604c = zzbfVar;
        this.d = str2;
        this.f31605e = j2;
        this.f31606f = j3;
    }
}

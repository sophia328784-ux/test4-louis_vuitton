package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zzr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzr> CREATOR = new zzs();
    public final int A;
    public final long B;
    public final String C;
    public final String D;
    public final long E;
    public final int F;
    public final long G;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f32016b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f32017c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f32018e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f32019f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f32020h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f32021i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f32022j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f32023k;
    public final String l;
    public final long m;
    public final int n;
    public final boolean o;
    public final boolean p;
    public final Boolean q;
    public final long r;
    public final List s;
    public final String t;
    public final String u;
    public final String v;
    public final boolean w;
    public final long x;
    public final int y;
    public final String z;

    public zzr(String str, String str2, String str3, long j2, String str4, long j3, long j4, String str5, boolean z, boolean z2, String str6, long j5, int i2, boolean z3, boolean z4, Boolean bool, long j6, List list, String str7, String str8, String str9, boolean z5, long j7, int i3, String str10, int i4, long j8, String str11, String str12, long j9, int i5, long j10) {
        Preconditions.e(str);
        this.f32016b = str;
        this.f32017c = true == TextUtils.isEmpty(str2) ? null : str2;
        this.d = str3;
        this.f32023k = j2;
        this.f32018e = str4;
        this.f32019f = j3;
        this.g = j4;
        this.f32020h = str5;
        this.f32021i = z;
        this.f32022j = z2;
        this.l = str6;
        this.m = j5;
        this.n = i2;
        this.o = z3;
        this.p = z4;
        this.q = bool;
        this.r = j6;
        this.s = list;
        this.t = str7;
        this.u = str8;
        this.v = str9;
        this.w = z5;
        this.x = j7;
        this.y = i3;
        this.z = str10;
        this.A = i4;
        this.B = j8;
        this.C = str11;
        this.D = str12;
        this.E = j9;
        this.F = i5;
        this.G = j10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 2, this.f32016b, false);
        SafeParcelWriter.k(parcel, 3, this.f32017c, false);
        SafeParcelWriter.k(parcel, 4, this.d, false);
        SafeParcelWriter.k(parcel, 5, this.f32018e, false);
        SafeParcelWriter.p(parcel, 6, 8);
        parcel.writeLong(this.f32019f);
        SafeParcelWriter.p(parcel, 7, 8);
        parcel.writeLong(this.g);
        SafeParcelWriter.k(parcel, 8, this.f32020h, false);
        SafeParcelWriter.p(parcel, 9, 4);
        parcel.writeInt(this.f32021i ? 1 : 0);
        SafeParcelWriter.p(parcel, 10, 4);
        parcel.writeInt(this.f32022j ? 1 : 0);
        SafeParcelWriter.p(parcel, 11, 8);
        parcel.writeLong(this.f32023k);
        SafeParcelWriter.k(parcel, 12, this.l, false);
        SafeParcelWriter.p(parcel, 14, 8);
        parcel.writeLong(this.m);
        SafeParcelWriter.p(parcel, 15, 4);
        parcel.writeInt(this.n);
        SafeParcelWriter.p(parcel, 16, 4);
        parcel.writeInt(this.o ? 1 : 0);
        SafeParcelWriter.p(parcel, 18, 4);
        parcel.writeInt(this.p ? 1 : 0);
        Boolean bool = this.q;
        if (bool != null) {
            SafeParcelWriter.p(parcel, 21, 4);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        }
        SafeParcelWriter.p(parcel, 22, 8);
        parcel.writeLong(this.r);
        SafeParcelWriter.m(parcel, 23, this.s);
        SafeParcelWriter.k(parcel, 25, this.t, false);
        SafeParcelWriter.k(parcel, 26, this.u, false);
        SafeParcelWriter.k(parcel, 27, this.v, false);
        SafeParcelWriter.p(parcel, 28, 4);
        parcel.writeInt(this.w ? 1 : 0);
        SafeParcelWriter.p(parcel, 29, 8);
        parcel.writeLong(this.x);
        SafeParcelWriter.p(parcel, 30, 4);
        parcel.writeInt(this.y);
        SafeParcelWriter.k(parcel, 31, this.z, false);
        SafeParcelWriter.p(parcel, 32, 4);
        parcel.writeInt(this.A);
        SafeParcelWriter.p(parcel, 34, 8);
        parcel.writeLong(this.B);
        SafeParcelWriter.k(parcel, 35, this.C, false);
        SafeParcelWriter.k(parcel, 36, this.D, false);
        SafeParcelWriter.p(parcel, 37, 8);
        parcel.writeLong(this.E);
        SafeParcelWriter.p(parcel, 38, 4);
        parcel.writeInt(this.F);
        SafeParcelWriter.p(parcel, 39, 8);
        parcel.writeLong(this.G);
        SafeParcelWriter.r(iQ, parcel);
    }

    public zzr(String str, String str2, String str3, String str4, long j2, long j3, String str5, boolean z, boolean z2, long j4, String str6, long j5, int i2, boolean z3, boolean z4, Boolean bool, long j6, ArrayList arrayList, String str7, String str8, String str9, boolean z5, long j7, int i3, String str10, int i4, long j8, String str11, String str12, long j9, int i5, long j10) {
        this.f32016b = str;
        this.f32017c = str2;
        this.d = str3;
        this.f32023k = j4;
        this.f32018e = str4;
        this.f32019f = j2;
        this.g = j3;
        this.f32020h = str5;
        this.f32021i = z;
        this.f32022j = z2;
        this.l = str6;
        this.m = j5;
        this.n = i2;
        this.o = z3;
        this.p = z4;
        this.q = bool;
        this.r = j6;
        this.s = arrayList;
        this.t = str7;
        this.u = str8;
        this.v = str9;
        this.w = z5;
        this.x = j7;
        this.y = i3;
        this.z = str10;
        this.A = i4;
        this.B = j8;
        this.C = str11;
        this.D = str12;
        this.E = j9;
        this.F = i5;
        this.G = j10;
    }
}

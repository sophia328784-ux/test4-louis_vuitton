package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.cj;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class WakeLockEvent extends StatsEvent {
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new zza();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29328b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f29329c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f29330e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f29331f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f29332h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f29333i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f29334j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f29335k;
    public final int l;
    public final String m;
    public final float n;
    public final long o;
    public final boolean p;

    public WakeLockEvent(int i2, long j2, int i3, String str, int i4, ArrayList arrayList, String str2, long j3, int i5, String str3, String str4, float f2, long j4, String str5, boolean z) {
        this.f29328b = i2;
        this.f29329c = j2;
        this.d = i3;
        this.f29330e = str;
        this.f29331f = str3;
        this.g = str5;
        this.f29332h = i4;
        this.f29333i = arrayList;
        this.f29334j = str2;
        this.f29335k = j3;
        this.l = i5;
        this.m = str4;
        this.n = f2;
        this.o = j4;
        this.p = z;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long W1() {
        return this.f29329c;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final int X1() {
        return this.d;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final String Y1() {
        List list = this.f29333i;
        String strJoin = list == null ? "" : TextUtils.join(",", list);
        String str = this.f29330e;
        int length = String.valueOf(str).length();
        int i2 = this.f29332h;
        int length2 = String.valueOf(i2).length() + length + 2;
        int length3 = String.valueOf(strJoin).length();
        int i3 = this.l;
        int length4 = String.valueOf(i3).length() + length2 + 1 + length3 + 1;
        String str2 = this.f29331f;
        if (str2 == null) {
            str2 = "";
        }
        int length5 = str2.length() + length4 + 1 + 1;
        String str3 = this.m;
        if (str3 == null) {
            str3 = "";
        }
        int length6 = str3.length() + length5 + 1;
        float f2 = this.n;
        int length7 = String.valueOf(f2).length() + length6 + 1;
        String str4 = this.g;
        String str5 = str4 != null ? str4 : "";
        int length8 = str5.length() + length7 + 1;
        boolean z = this.p;
        StringBuilder sb = new StringBuilder(length8 + String.valueOf(z).length());
        sb.append("\t");
        sb.append(str);
        sb.append("\t");
        sb.append(i2);
        sb.append("\t");
        sb.append(strJoin);
        sb.append("\t");
        sb.append(i3);
        cj.C(sb, "\t", str2, "\t", str3);
        sb.append("\t");
        sb.append(f2);
        sb.append("\t");
        sb.append(str5);
        sb.append("\t");
        sb.append(z);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29328b);
        SafeParcelWriter.p(parcel, 2, 8);
        parcel.writeLong(this.f29329c);
        SafeParcelWriter.k(parcel, 4, this.f29330e, false);
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeInt(this.f29332h);
        SafeParcelWriter.m(parcel, 6, this.f29333i);
        SafeParcelWriter.p(parcel, 8, 8);
        parcel.writeLong(this.f29335k);
        SafeParcelWriter.k(parcel, 10, this.f29331f, false);
        SafeParcelWriter.p(parcel, 11, 4);
        parcel.writeInt(this.d);
        SafeParcelWriter.k(parcel, 12, this.f29334j, false);
        SafeParcelWriter.k(parcel, 13, this.m, false);
        SafeParcelWriter.p(parcel, 14, 4);
        parcel.writeInt(this.l);
        SafeParcelWriter.p(parcel, 15, 4);
        parcel.writeFloat(this.n);
        SafeParcelWriter.p(parcel, 16, 8);
        parcel.writeLong(this.o);
        SafeParcelWriter.k(parcel, 17, this.g, false);
        SafeParcelWriter.p(parcel, 18, 4);
        parcel.writeInt(this.p ? 1 : 0);
        SafeParcelWriter.r(iQ, parcel);
    }
}

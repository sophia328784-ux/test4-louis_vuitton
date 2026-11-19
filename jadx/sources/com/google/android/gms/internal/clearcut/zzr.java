package com.google.android.gms.internal.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.a;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class zzr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzr> CREATOR = new zzs();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f29784b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f29785c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f29786e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f29787f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f29788h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f29789i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f29790j;

    public zzr(String str, int i2, int i3, String str2, String str3, String str4, boolean z, zzge$zzv$zzb zzge_zzv_zzb) {
        Preconditions.h(str);
        this.f29784b = str;
        this.f29785c = i2;
        this.d = i3;
        this.f29788h = str2;
        this.f29786e = str3;
        this.f29787f = str4;
        this.g = !z;
        this.f29789i = z;
        this.f29790j = zzge_zzv_zzb.b();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzr) {
            zzr zzrVar = (zzr) obj;
            if (Objects.a(this.f29784b, zzrVar.f29784b) && this.f29785c == zzrVar.f29785c && this.d == zzrVar.d && Objects.a(this.f29788h, zzrVar.f29788h) && Objects.a(this.f29786e, zzrVar.f29786e) && Objects.a(this.f29787f, zzrVar.f29787f) && this.g == zzrVar.g && this.f29789i == zzrVar.f29789i && this.f29790j == zzrVar.f29790j) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f29784b, Integer.valueOf(this.f29785c), Integer.valueOf(this.d), this.f29788h, this.f29786e, this.f29787f, Boolean.valueOf(this.g), Boolean.valueOf(this.f29789i), Integer.valueOf(this.f29790j)});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PlayLoggerContext[package=");
        sb.append(this.f29784b);
        sb.append(",packageVersionCode=");
        sb.append(this.f29785c);
        sb.append(",logSource=");
        sb.append(this.d);
        sb.append(",logSourceName=");
        sb.append(this.f29788h);
        sb.append(",uploadAccount=");
        sb.append(this.f29786e);
        sb.append(",loggingId=");
        sb.append(this.f29787f);
        sb.append(",logAndroidId=");
        sb.append(this.g);
        sb.append(",isAnonymous=");
        sb.append(this.f29789i);
        sb.append(",qosTier=");
        return a.i(this.f29790j, "]", sb);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 2, this.f29784b, false);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.f29785c);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(this.d);
        SafeParcelWriter.k(parcel, 5, this.f29786e, false);
        SafeParcelWriter.k(parcel, 6, this.f29787f, false);
        SafeParcelWriter.p(parcel, 7, 4);
        parcel.writeInt(this.g ? 1 : 0);
        SafeParcelWriter.k(parcel, 8, this.f29788h, false);
        SafeParcelWriter.p(parcel, 9, 4);
        parcel.writeInt(this.f29789i ? 1 : 0);
        SafeParcelWriter.p(parcel, 10, 4);
        parcel.writeInt(this.f29790j);
        SafeParcelWriter.r(iQ, parcel);
    }

    public zzr(String str, int i2, int i3, String str2, String str3, boolean z, String str4, boolean z2, int i4) {
        this.f29784b = str;
        this.f29785c = i2;
        this.d = i3;
        this.f29786e = str2;
        this.f29787f = str3;
        this.g = z;
        this.f29788h = str4;
        this.f29789i = z2;
        this.f29790j = i4;
    }
}

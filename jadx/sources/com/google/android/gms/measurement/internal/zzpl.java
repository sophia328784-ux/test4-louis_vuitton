package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public final class zzpl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzpl> CREATOR = new zzpm();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f31999b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f32000c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Long f32001e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f32002f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Double f32003h;

    public zzpl(long j2, Object obj, String str, String str2) {
        Preconditions.e(str);
        this.f31999b = 2;
        this.f32000c = str;
        this.d = j2;
        this.g = str2;
        if (obj == null) {
            this.f32001e = null;
            this.f32003h = null;
            this.f32002f = null;
            return;
        }
        if (obj instanceof Long) {
            this.f32001e = (Long) obj;
            this.f32003h = null;
            this.f32002f = null;
        } else if (obj instanceof String) {
            this.f32001e = null;
            this.f32003h = null;
            this.f32002f = (String) obj;
        } else {
            if (!(obj instanceof Double)) {
                md.n("User attribute given of un-supported type");
                throw null;
            }
            this.f32001e = null;
            this.f32003h = (Double) obj;
            this.f32002f = null;
        }
    }

    public final Object W1() {
        Long l = this.f32001e;
        if (l != null) {
            return l;
        }
        Double d = this.f32003h;
        if (d != null) {
            return d;
        }
        String str = this.f32002f;
        if (str != null) {
            return str;
        }
        return null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        zzpm.a(this, parcel);
    }

    public zzpl(zzpn zzpnVar) {
        this(zzpnVar.d, zzpnVar.f32007e, zzpnVar.f32006c, zzpnVar.f32005b);
    }

    public zzpl(int i2, String str, long j2, Long l, Float f2, String str2, String str3, Double d) {
        this.f31999b = i2;
        this.f32000c = str;
        this.d = j2;
        this.f32001e = l;
        this.f32003h = i2 == 1 ? f2 != null ? Double.valueOf(f2.doubleValue()) : null : d;
        this.f32002f = str2;
        this.g = str3;
    }
}

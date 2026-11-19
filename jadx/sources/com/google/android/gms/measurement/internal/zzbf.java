package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbf extends AbstractSafeParcelable implements Iterable<String> {
    public static final Parcelable.Creator<zzbf> CREATOR = new zzbg();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Bundle f31602b;

    public zzbf(Bundle bundle) {
        this.f31602b = bundle;
    }

    public final Object W1(String str) {
        return this.f31602b.get(str);
    }

    public final Double X1() {
        return Double.valueOf(this.f31602b.getDouble("value"));
    }

    public final String Y1() {
        return this.f31602b.getString("currency");
    }

    public final Bundle Z1() {
        return new Bundle(this.f31602b);
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return new zzbe(this);
    }

    public final String toString() {
        return this.f31602b.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.a(parcel, 2, Z1());
        SafeParcelWriter.r(iQ, parcel);
    }
}

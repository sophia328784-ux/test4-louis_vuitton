package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class Scope extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new zzd();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29002b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f29003c;

    public Scope(int i2, String str) {
        Preconditions.f(str, "scopeUri must not be null or empty");
        this.f29002b = i2;
        this.f29003c = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scope)) {
            return false;
        }
        return this.f29003c.equals(((Scope) obj).f29003c);
    }

    public final int hashCode() {
        return this.f29003c.hashCode();
    }

    public final String toString() {
        return this.f29003c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29002b);
        SafeParcelWriter.k(parcel, 2, this.f29003c, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public Scope(String str) {
        this(1, str);
    }
}

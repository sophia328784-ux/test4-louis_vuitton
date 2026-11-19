package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class UvmEntry extends AbstractSafeParcelable {
    public static final Parcelable.Creator<UvmEntry> CREATOR = new zzbe();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final short f29498c;
    public final short d;

    public UvmEntry(int i2, short s, short s2) {
        this.f29497b = i2;
        this.f29498c = s;
        this.d = s2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof UvmEntry)) {
            return false;
        }
        UvmEntry uvmEntry = (UvmEntry) obj;
        return this.f29497b == uvmEntry.f29497b && this.f29498c == uvmEntry.f29498c && this.d == uvmEntry.d;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f29497b), Short.valueOf(this.f29498c), Short.valueOf(this.d)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29497b);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f29498c);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.d);
        SafeParcelWriter.r(iQ, parcel);
    }
}

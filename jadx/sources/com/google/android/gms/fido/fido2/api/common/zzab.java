package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class zzab extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzab> CREATOR = new zzac();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f29499b;

    public zzab(long j2) {
        this.f29499b = Long.valueOf(j2).longValue();
    }

    public final boolean equals(Object obj) {
        return (obj instanceof zzab) && this.f29499b == ((zzab) obj).f29499b;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f29499b)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 8);
        parcel.writeLong(this.f29499b);
        SafeParcelWriter.r(iQ, parcel);
    }
}

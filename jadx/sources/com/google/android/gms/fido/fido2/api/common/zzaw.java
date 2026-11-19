package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaw> CREATOR = new zzax();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f29507b;

    public zzaw(String str) {
        this.f29507b = str;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzaw) {
            return Objects.a(this.f29507b, ((zzaw) obj).f29507b);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f29507b});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 1, this.f29507b, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}

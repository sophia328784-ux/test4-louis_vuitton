package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.n00;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class FidoAppIdExtension extends AbstractSafeParcelable {
    public static final Parcelable.Creator<FidoAppIdExtension> CREATOR = new zzx();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f29446b;

    public FidoAppIdExtension(String str) {
        Preconditions.h(str);
        this.f29446b = str;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof FidoAppIdExtension) {
            return this.f29446b.equals(((FidoAppIdExtension) obj).f29446b);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f29446b});
    }

    public final String toString() {
        return n00.r(this.f29446b, "'}", new StringBuilder("FidoAppIdExtension{appid='"));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 2, this.f29446b, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}

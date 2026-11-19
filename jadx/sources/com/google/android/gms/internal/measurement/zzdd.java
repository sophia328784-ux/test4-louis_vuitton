package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class zzdd extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdd> CREATOR = new zzde();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f30608b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f30609c;
    public final Intent d;

    public zzdd(int i2, String str, Intent intent) {
        this.f30608b = i2;
        this.f30609c = str;
        this.d = intent;
    }

    public static zzdd W1(Activity activity) {
        return new zzdd(activity.hashCode(), activity.getClass().getCanonicalName(), activity.getIntent());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzdd)) {
            return false;
        }
        zzdd zzddVar = (zzdd) obj;
        return this.f30608b == zzddVar.f30608b && Objects.equals(this.f30609c, zzddVar.f30609c) && Objects.equals(this.d, zzddVar.d);
    }

    public final int hashCode() {
        return this.f30608b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f30608b);
        SafeParcelWriter.k(parcel, 2, this.f30609c, false);
        SafeParcelWriter.j(parcel, 3, this.d, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}

package com.google.android.gms.internal.auth;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbb> CREATOR = new zzbc();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29605b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f29606c;
    public final PendingIntent d;

    public zzbb(int i2, PendingIntent pendingIntent, String str) {
        this.f29605b = 1;
        Preconditions.h(str);
        this.f29606c = str;
        Preconditions.h(pendingIntent);
        this.d = pendingIntent;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29605b);
        SafeParcelWriter.k(parcel, 2, this.f29606c, false);
        SafeParcelWriter.j(parcel, 3, this.d, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public zzbb(String str, PendingIntent pendingIntent) {
        this(0, pendingIntent, str);
    }
}

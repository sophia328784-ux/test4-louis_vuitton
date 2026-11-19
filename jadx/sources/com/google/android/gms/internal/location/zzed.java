package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zzed extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzed> CREATOR = new zzee();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f30238b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final IBinder f30239c;
    public final IBinder d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PendingIntent f30240e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f30241f;

    public zzed(int i2, IBinder iBinder, IBinder iBinder2, PendingIntent pendingIntent, String str) {
        this.f30238b = i2;
        this.f30239c = iBinder;
        this.d = iBinder2;
        this.f30240e = pendingIntent;
        this.f30241f = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f30238b);
        SafeParcelWriter.f(parcel, 2, this.f30239c);
        SafeParcelWriter.f(parcel, 3, this.d);
        SafeParcelWriter.j(parcel, 4, this.f30240e, i2, false);
        SafeParcelWriter.k(parcel, 6, this.f30241f, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}

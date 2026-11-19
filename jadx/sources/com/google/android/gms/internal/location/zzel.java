package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzel extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzel> CREATOR = new zzem();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzeu f30255b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PendingIntent f30256c;
    public final String d;

    public zzel(ArrayList arrayList, PendingIntent pendingIntent, String str) {
        zzeu zzeuVarP;
        if (arrayList == null) {
            zzex zzexVar = zzeu.f30264c;
            zzeuVarP = zzev.f30265f;
        } else {
            zzeuVarP = zzeu.p(arrayList);
        }
        this.f30255b = zzeuVarP;
        this.f30256c = pendingIntent;
        this.d = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.m(parcel, 1, this.f30255b);
        SafeParcelWriter.j(parcel, 2, this.f30256c, i2, false);
        SafeParcelWriter.k(parcel, 3, this.d, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}

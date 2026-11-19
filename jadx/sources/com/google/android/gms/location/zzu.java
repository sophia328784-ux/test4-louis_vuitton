package com.google.android.gms.location;

import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzu extends com.google.android.gms.internal.location.zzb implements zzv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f31406a = 0;

    public zzu() {
        super("com.google.android.gms.location.ILocationCallback");
    }

    @Override // com.google.android.gms.internal.location.zzb
    public final boolean E2(int i2, Parcel parcel) {
        if (i2 == 1) {
            LocationResult locationResult = (LocationResult) com.google.android.gms.internal.location.zzc.a(parcel, LocationResult.CREATOR);
            com.google.android.gms.internal.location.zzc.c(parcel);
            b1(locationResult);
            return true;
        }
        if (i2 != 2) {
            if (i2 != 3) {
                return false;
            }
            I();
            return true;
        }
        LocationAvailability locationAvailability = (LocationAvailability) com.google.android.gms.internal.location.zzc.a(parcel, LocationAvailability.CREATOR);
        com.google.android.gms.internal.location.zzc.c(parcel);
        H(locationAvailability);
        return true;
    }
}

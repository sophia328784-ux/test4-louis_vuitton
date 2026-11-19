package com.google.android.gms.location;

import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzr extends com.google.android.gms.internal.location.zzb implements zzs {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f31405a = 0;

    public zzr() {
        super("com.google.android.gms.location.IDeviceOrientationListener");
    }

    @Override // com.google.android.gms.internal.location.zzb
    public final boolean E2(int i2, Parcel parcel) {
        if (i2 != 1) {
            return false;
        }
        com.google.android.gms.internal.location.zzc.c(parcel);
        g0();
        return true;
    }
}

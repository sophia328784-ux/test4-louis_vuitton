package com.google.android.gms.location;

import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzx extends com.google.android.gms.internal.location.zzb implements zzy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f31407a = 0;

    public zzx() {
        super("com.google.android.gms.location.ILocationListener");
    }

    @Override // com.google.android.gms.internal.location.zzb
    public final boolean E2(int i2, Parcel parcel) {
        if (i2 != 1) {
            if (i2 != 2) {
                return false;
            }
            b2();
            return true;
        }
        com.google.android.gms.internal.location.zzc.c(parcel);
        K0();
        return true;
    }
}

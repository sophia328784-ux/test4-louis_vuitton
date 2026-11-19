package com.google.android.gms.internal.location;

import android.location.Location;
import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzx extends zzb implements zzy {
    public zzx() {
        super("com.google.android.gms.location.internal.ILocationStatusCallback");
    }

    @Override // com.google.android.gms.internal.location.zzb
    public final boolean E2(int i2, Parcel parcel) {
        if (i2 != 1) {
            return false;
        }
        Status status = (Status) zzc.a(parcel, Status.CREATOR);
        Location location = (Location) zzc.a(parcel, Location.CREATOR);
        zzc.c(parcel);
        TaskUtil.a(status, location, ((zzdj) this).f30232a);
        return true;
    }
}

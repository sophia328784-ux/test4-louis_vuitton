package com.google.android.gms.internal.location;

import android.os.Parcel;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.location.LocationSettingsResponse;
import com.google.android.gms.location.LocationSettingsResult;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzz extends zzb implements zzaa {
    public zzz() {
        super("com.google.android.gms.location.internal.ISettingsCallbacks");
    }

    @Override // com.google.android.gms.internal.location.zzb
    public final boolean E2(int i2, Parcel parcel) {
        if (i2 != 1) {
            return false;
        }
        LocationSettingsResult locationSettingsResult = (LocationSettingsResult) zzc.a(parcel, LocationSettingsResult.CREATOR);
        zzc.c(parcel);
        TaskUtil.a(locationSettingsResult.f31369b, new LocationSettingsResponse(locationSettingsResult), ((zzdd) this).f30229a);
        return true;
    }
}

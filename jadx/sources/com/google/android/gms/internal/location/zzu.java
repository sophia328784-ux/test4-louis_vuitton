package com.google.android.gms.internal.location;

import android.location.Location;
import android.os.IInterface;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.location.LastLocationRequest;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationSettingsRequest;

/* JADX INFO: loaded from: classes2.dex */
public interface zzu extends IInterface {
    void C(zzed zzedVar, LocationRequest locationRequest, IStatusCallback iStatusCallback);

    void G1(zzed zzedVar, IStatusCallback iStatusCallback);

    void I0(LastLocationRequest lastLocationRequest, zzed zzedVar);

    void V0(LastLocationRequest lastLocationRequest, zzy zzyVar);

    void Y1(zzeh zzehVar);

    Location j();

    void n2(LocationSettingsRequest locationSettingsRequest, zzaa zzaaVar);
}

package com.google.android.gms.location;

import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes2.dex */
public interface FusedLocationProviderClient extends HasApiKey<Api.ApiOptions.NoOptions> {
    Task a(LocationRequest locationRequest, LocationCallback locationCallback, Looper looper);

    Task b(LocationCallback locationCallback);

    Task c();
}

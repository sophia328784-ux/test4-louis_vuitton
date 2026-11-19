package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationResult;

/* JADX INFO: loaded from: classes2.dex */
final class zzdr implements ListenerHolder.Notifier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ LocationResult f30234a;

    public zzdr(zzdu zzduVar, LocationResult locationResult) {
        this.f30234a = locationResult;
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final /* synthetic */ void a(Object obj) {
        ((LocationCallback) obj).onLocationResult(this.f30234a);
    }
}

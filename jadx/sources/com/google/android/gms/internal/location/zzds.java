package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationCallback;

/* JADX INFO: loaded from: classes2.dex */
final class zzds implements ListenerHolder.Notifier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ LocationAvailability f30235a;

    public zzds(zzdu zzduVar, LocationAvailability locationAvailability) {
        this.f30235a = locationAvailability;
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final /* synthetic */ void a(Object obj) {
        ((LocationCallback) obj).onLocationAvailability(this.f30235a);
    }
}

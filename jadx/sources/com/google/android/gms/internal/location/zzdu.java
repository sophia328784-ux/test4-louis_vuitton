package com.google.android.gms.internal.location;

import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationResult;

/* JADX INFO: loaded from: classes2.dex */
final class zzdu extends com.google.android.gms.location.zzu {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzdq f30237b;

    public zzdu(zzdq zzdqVar) {
        this.f30237b = zzdqVar;
    }

    @Override // com.google.android.gms.location.zzv
    public final void H(LocationAvailability locationAvailability) {
        this.f30237b.d0().a(new zzds(this, locationAvailability));
    }

    @Override // com.google.android.gms.location.zzv
    public final void I() {
        this.f30237b.d0().a(new zzdt(this));
    }

    @Override // com.google.android.gms.location.zzv
    public final void b1(LocationResult locationResult) {
        this.f30237b.d0().a(new zzdr(this, locationResult));
    }
}

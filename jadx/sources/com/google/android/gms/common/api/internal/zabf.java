package com.google.android.gms.common.api.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zabf implements BackgroundDetector.BackgroundStateChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ GoogleApiManager f29072a;

    public zabf(GoogleApiManager googleApiManager) {
        this.f29072a = googleApiManager;
    }

    @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
    public final void a(boolean z) {
        Boolean boolValueOf = Boolean.valueOf(z);
        GoogleApiManager googleApiManager = this.f29072a;
        googleApiManager.o.sendMessage(googleApiManager.o.obtainMessage(1, boolValueOf));
    }
}

package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zap extends LifecycleCallback implements DialogInterface.OnCancelListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile boolean f29123c;
    public final AtomicReference d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final com.google.android.gms.internal.base.zao f29124e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final GoogleApiAvailability f29125f;

    public zap(LifecycleFragment lifecycleFragment, GoogleApiAvailability googleApiAvailability) {
        super(lifecycleFragment);
        this.d = new AtomicReference(null);
        this.f29124e = new com.google.android.gms.internal.base.zao(Looper.getMainLooper());
        this.f29125f = googleApiAvailability;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void b(Bundle bundle) {
        if (bundle != null) {
            this.d.set(bundle.getBoolean("resolving_error", false) ? new zam(new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution")), bundle.getInt("failed_client_id", -1)) : null);
        }
    }

    public final void d(ConnectionResult connectionResult, int i2) {
        this.d.set(null);
        ((zaab) this).f29069h.i(connectionResult, i2);
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        ConnectionResult connectionResult = new ConnectionResult(13, null);
        zam zamVar = (zam) this.d.get();
        d(connectionResult, zamVar == null ? -1 : zamVar.f29119a);
    }
}

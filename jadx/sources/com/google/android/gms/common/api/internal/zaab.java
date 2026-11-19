package com.google.android.gms.common.api.internal;

import androidx.collection.ArraySet;
import com.google.android.gms.common.GoogleApiAvailability;

/* JADX INFO: loaded from: classes2.dex */
public final class zaab extends zap {
    public final ArraySet g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final GoogleApiManager f29069h;

    public zaab(LifecycleFragment lifecycleFragment, GoogleApiManager googleApiManager, GoogleApiAvailability googleApiAvailability) {
        super(lifecycleFragment, googleApiAvailability);
        this.g = new ArraySet();
        this.f29069h = googleApiManager;
        lifecycleFragment.z(this);
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void c() {
        this.f29123c = false;
        GoogleApiManager googleApiManager = this.f29069h;
        googleApiManager.getClass();
        synchronized (GoogleApiManager.s) {
            try {
                if (googleApiManager.l == this) {
                    googleApiManager.l = null;
                    googleApiManager.m.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void e() {
        if (this.g.isEmpty()) {
            return;
        }
        this.f29069h.f(this);
    }
}

package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class zzcm extends zzcr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f30602a = new AtomicReference();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f30603b;

    public static final Object H2(Bundle bundle, Class cls) {
        Object obj;
        if (bundle == null || (obj = bundle.get("r")) == null) {
            return null;
        }
        return cls.cast(obj);
    }

    public final String F2(long j2) {
        return (String) H2(G2(j2), String.class);
    }

    public final Bundle G2(long j2) {
        Bundle bundle;
        AtomicReference atomicReference = this.f30602a;
        synchronized (atomicReference) {
            if (!this.f30603b) {
                try {
                    atomicReference.wait(j2);
                } catch (InterruptedException unused) {
                    return null;
                }
            }
            bundle = (Bundle) this.f30602a.get();
        }
        return bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzcs
    public final void V1(Bundle bundle) {
        AtomicReference atomicReference = this.f30602a;
        synchronized (atomicReference) {
            try {
                try {
                    atomicReference.set(bundle);
                    this.f30603b = true;
                    this.f30602a.notify();
                } catch (Throwable th) {
                    this.f30602a.notify();
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}

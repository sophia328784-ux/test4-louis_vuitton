package com.google.android.gms.common;

import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzm extends zzj {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final WeakReference f29361k = new WeakReference(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public WeakReference f29362j;

    public zzm(byte[] bArr) {
        super(bArr);
        this.f29362j = f29361k;
    }

    @Override // com.google.android.gms.common.zzj
    public final byte[] F2() {
        byte[] bArrH2;
        synchronized (this) {
            try {
                bArrH2 = (byte[]) this.f29362j.get();
                if (bArrH2 == null) {
                    bArrH2 = H2();
                    this.f29362j = new WeakReference(bArrH2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return bArrH2;
    }

    public abstract byte[] H2();
}

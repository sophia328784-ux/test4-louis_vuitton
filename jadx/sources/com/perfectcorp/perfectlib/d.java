package com.perfectcorp.perfectlib;

import com.perfectcorp.common.utility.Log;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40098b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AccessoryVtoApplierImpl f40099c;
    public final /* synthetic */ Throwable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AccessoryVtoApplier.ApplyCallback f40100e;

    public /* synthetic */ d(AccessoryVtoApplierImpl accessoryVtoApplierImpl, Throwable th, AccessoryVtoApplier.ApplyCallback applyCallback, int i2) {
        this.f40098b = i2;
        this.f40099c = accessoryVtoApplierImpl;
        this.d = th;
        this.f40100e = applyCallback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f40098b;
        AccessoryVtoApplier.ApplyCallback applyCallback = this.f40100e;
        Throwable th = this.d;
        AccessoryVtoApplierImpl accessoryVtoApplierImpl = this.f40099c;
        switch (i2) {
            case 0:
                Log.e(accessoryVtoApplierImpl.f39462a, "[apply] failed", th);
                applyCallback.onFailure(th);
                break;
            case 1:
                Log.e(accessoryVtoApplierImpl.f39462a, "[clearAllEffects] failed", th);
                applyCallback.onFailure(th);
                break;
            default:
                Log.e(accessoryVtoApplierImpl.f39462a, "[applyEffectIds] failed", th);
                applyCallback.onFailure(th);
                break;
        }
    }
}

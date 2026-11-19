package com.perfectcorp.perfectlib;

import com.perfectcorp.common.utility.Log;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class f0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40139b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ HandVtoApplierImpl f40140c;
    public final /* synthetic */ Throwable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ HandVtoApplierImpl.ApplyCallback f40141e;

    public /* synthetic */ f0(HandVtoApplierImpl handVtoApplierImpl, Throwable th, HandVtoApplierImpl.ApplyCallback applyCallback, int i2) {
        this.f40139b = i2;
        this.f40140c = handVtoApplierImpl;
        this.d = th;
        this.f40141e = applyCallback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f40139b;
        HandVtoApplierImpl.ApplyCallback applyCallback = this.f40141e;
        Throwable th = this.d;
        HandVtoApplierImpl handVtoApplierImpl = this.f40140c;
        switch (i2) {
            case 0:
                Log.e(handVtoApplierImpl.f39633a, "[clearAllEffects] failed", th);
                applyCallback.onFailure(th);
                break;
            case 1:
                Log.e(handVtoApplierImpl.f39633a, "[apply] failed", th);
                applyCallback.onFailure(th);
                break;
            case 2:
                Log.e(handVtoApplierImpl.f39633a, "[apply] failed", th);
                applyCallback.onFailure(th);
                break;
            default:
                Log.e(handVtoApplierImpl.f39633a, "[applyEffectIds] failed", th);
                applyCallback.onFailure(th);
                break;
        }
    }
}

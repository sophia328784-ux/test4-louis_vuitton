package com.perfectcorp.perfectlib;

import com.perfectcorp.common.utility.Log;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class d3 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40111b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NailVtoApplierImpl f40112c;
    public final /* synthetic */ Throwable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ NailVtoApplier.ApplyCallback f40113e;

    public /* synthetic */ d3(NailVtoApplierImpl nailVtoApplierImpl, Throwable th, NailVtoApplier.ApplyCallback applyCallback, int i2) {
        this.f40111b = i2;
        this.f40112c = nailVtoApplierImpl;
        this.d = th;
        this.f40113e = applyCallback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f40111b;
        NailVtoApplier.ApplyCallback applyCallback = this.f40113e;
        Throwable th = this.d;
        NailVtoApplierImpl nailVtoApplierImpl = this.f40112c;
        switch (i2) {
            case 0:
                Log.e(nailVtoApplierImpl.f39724a, "[applyEffectIds] failed", th);
                applyCallback.onFailure(th);
                break;
            case 1:
                Log.e(nailVtoApplierImpl.f39724a, "[clearEffects] failed", th);
                applyCallback.onFailure(th);
                break;
            case 2:
                Log.e(nailVtoApplierImpl.f39724a, "[setIntensities] failed", th);
                applyCallback.onFailure(th);
                break;
            case 3:
                Log.e(nailVtoApplierImpl.f39724a, "[clearAllEffects] failed", th);
                applyCallback.onFailure(th);
                break;
            default:
                Log.e(nailVtoApplierImpl.f39724a, "[apply] failed", th);
                applyCallback.onFailure(th);
                break;
        }
    }
}

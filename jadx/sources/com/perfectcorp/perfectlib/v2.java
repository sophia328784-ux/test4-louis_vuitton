package com.perfectcorp.perfectlib;

import com.perfectcorp.common.utility.Log;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class v2 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41892b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ VtoApplier.ApplyCallback f41893c;
    public final /* synthetic */ Throwable d;

    public /* synthetic */ v2(VtoApplier.ApplyCallback applyCallback, Throwable th, int i2) {
        this.f41892b = i2;
        this.f41893c = applyCallback;
        this.d = th;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f41892b;
        Throwable th = this.d;
        VtoApplier.ApplyCallback applyCallback = this.f41893c;
        switch (i2) {
            case 0:
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                applyCallback.onFailure(th);
                break;
            case 1:
                ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                applyCallback.onFailure(th);
                break;
            case 2:
                int i3 = PhotoMakeupInternal.n;
                Log.e("PhotoMakeupInternal", "[applyEffectIds] failed", th);
                applyCallback.onFailure(th);
                break;
            case 3:
                int i4 = PhotoMakeupInternal.n;
                Log.e("PhotoMakeupInternal", "[clearEffects] failed", th);
                applyCallback.onFailure(th);
                break;
            case 4:
                int i5 = PhotoMakeupInternal.n;
                Log.e("PhotoMakeupInternal", "[setReshapeIntensities] failed", th);
                applyCallback.onFailure(th);
                break;
            case 5:
                int i6 = PhotoMakeupInternal.n;
                Log.e("PhotoMakeupInternal", "[setIntensities] failed", th);
                applyCallback.onFailure(th);
                break;
            case 6:
                int i7 = PhotoMakeupInternal.n;
                Log.e("PhotoMakeupInternal", "[applySkus] failed", th);
                applyCallback.onFailure(th);
                break;
            case 7:
                int i8 = PhotoMakeupInternal.n;
                Log.e("PhotoMakeupInternal", "[downloadAndApplySkus] failed", th);
                applyCallback.onFailure(th);
                break;
            case 8:
                int i9 = PhotoMakeupInternal.n;
                Log.e("PhotoMakeupInternal", "[clearAllEffects] failed", th);
                applyCallback.onFailure(th);
                break;
            case 9:
                int i10 = PhotoMakeupInternal.n;
                applyCallback.onFailure(th);
                break;
            default:
                int i11 = PhotoMakeupInternal.n;
                applyCallback.onFailure(th);
                break;
        }
    }

    public /* synthetic */ v2(Throwable th, VtoApplier.ApplyCallback applyCallback, int i2) {
        this.f41892b = i2;
        this.d = th;
        this.f41893c = applyCallback;
    }
}

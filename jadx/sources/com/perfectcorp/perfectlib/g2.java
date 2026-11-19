package com.perfectcorp.perfectlib;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class g2 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f40164a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ VtoApplier.ReshapeEffectIdCallback f40165b;

    public /* synthetic */ g2(VtoApplier.ReshapeEffectIdCallback reshapeEffectIdCallback, int i2) {
        this.f40164a = i2;
        this.f40165b = reshapeEffectIdCallback;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f40164a;
        VtoApplier.ReshapeEffectIdCallback reshapeEffectIdCallback = this.f40165b;
        switch (i2) {
            case 0:
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                Log.g(3, "MakeupCamInternal", "[getReshapeEffectIds] complete");
                reshapeEffectIdCallback.onSuccess((List) obj);
                break;
            case 1:
                Throwable th = (Throwable) obj;
                ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                if (!(th instanceof SkipCallbackException)) {
                    Log.e("MakeupCamInternal", "[getReshapeEffectIds] failed", th);
                    reshapeEffectIdCallback.onFailure(th);
                } else {
                    Log.c("MakeupCamInternal", "[getReshapeEffectIds] task canceled.", th);
                }
                break;
            case 2:
                int i3 = PhotoMakeupInternal.n;
                Log.g(3, "PhotoMakeupInternal", "[getReshapeEffectIds] complete");
                reshapeEffectIdCallback.onSuccess((List) obj);
                break;
            default:
                Throwable th2 = (Throwable) obj;
                int i4 = PhotoMakeupInternal.n;
                if (!(th2 instanceof SkipCallbackException)) {
                    Log.e("PhotoMakeupInternal", "[getReshapeEffectIds] failed", th2);
                    reshapeEffectIdCallback.onFailure(th2);
                } else {
                    Log.c("PhotoMakeupInternal", "[getReshapeEffectIds] task canceled.", th2);
                }
                break;
        }
    }
}

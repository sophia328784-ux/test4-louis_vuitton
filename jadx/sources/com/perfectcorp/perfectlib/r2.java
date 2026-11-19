package com.perfectcorp.perfectlib;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class r2 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f41810a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ VtoApplier.ProductIdCallback f41811b;

    public /* synthetic */ r2(VtoApplier.ProductIdCallback productIdCallback, int i2) {
        this.f41810a = i2;
        this.f41811b = productIdCallback;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f41810a;
        VtoApplier.ProductIdCallback productIdCallback = this.f41811b;
        switch (i2) {
            case 0:
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                Log.g(3, "MakeupCamInternal", "[getProductIds] success");
                productIdCallback.onSuccess((List) obj);
                break;
            case 1:
                Throwable th = (Throwable) obj;
                ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                if (!(th instanceof SkipCallbackException)) {
                    Log.e("MakeupCamInternal", "[getProductIds] failed", th);
                    productIdCallback.onFailure(th);
                } else {
                    Log.c("MakeupCamInternal", "[getProductIds] task canceled.", th);
                }
                break;
            case 2:
                int i3 = PhotoMakeupInternal.n;
                Log.g(3, "PhotoMakeupInternal", "[getProductIds] success");
                productIdCallback.onSuccess((List) obj);
                break;
            default:
                Throwable th2 = (Throwable) obj;
                int i4 = PhotoMakeupInternal.n;
                if (!(th2 instanceof SkipCallbackException)) {
                    Log.e("PhotoMakeupInternal", "[getProductIds] failed", th2);
                    productIdCallback.onFailure(th2);
                } else {
                    Log.c("PhotoMakeupInternal", "[getProductIds] task canceled.", th2);
                }
                break;
        }
    }
}

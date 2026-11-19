package com.perfectcorp.perfectlib;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.thirdparty.com.google.common.collect.Iterables;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class w2 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f41905a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ List f41906b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ VtoApplier.ApplyCallback f41907c;

    public /* synthetic */ w2(List list, VtoApplier.ApplyCallback applyCallback, int i2) {
        this.f41905a = i2;
        this.f41906b = list;
        this.f41907c = applyCallback;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f41905a;
        VtoApplier.ApplyCallback applyCallback = this.f41907c;
        List list = this.f41906b;
        Throwable th = (Throwable) obj;
        switch (i2) {
            case 0:
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                boolean z = th instanceof SkipCallbackException;
                String strC = Iterables.c(list);
                if (!z) {
                    Log.e("MakeupCamInternal", "[downloadAndApplySkusInternal] onFailure. vtoSettings=".concat(strC), th);
                    applyCallback.onFailure(th);
                } else {
                    Log.c("MakeupCamInternal", "[downloadAndApplySkusInternal] task canceled. vtoSettings=".concat(strC), th);
                }
                break;
            default:
                int i3 = PhotoMakeupInternal.n;
                boolean z2 = th instanceof SkipCallbackException;
                String strC2 = Iterables.c(list);
                if (!z2) {
                    Log.e("PhotoMakeupInternal", "[downloadAndApplySkusInternal] onFailure. vtoSettings=".concat(strC2), th);
                    applyCallback.onFailure(th);
                } else {
                    Log.c("PhotoMakeupInternal", "[downloadAndApplySkusInternal] task canceled. vtoSettings=".concat(strC2), th);
                }
                break;
        }
    }
}

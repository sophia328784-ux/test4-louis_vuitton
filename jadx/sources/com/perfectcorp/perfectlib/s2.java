package com.perfectcorp.perfectlib;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class s2 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f41846a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ VtoApplier.ReshapeIntensitiesCallback f41847b;

    public /* synthetic */ s2(VtoApplier.ReshapeIntensitiesCallback reshapeIntensitiesCallback, int i2) {
        this.f41846a = i2;
        this.f41847b = reshapeIntensitiesCallback;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f41846a;
        VtoApplier.ReshapeIntensitiesCallback reshapeIntensitiesCallback = this.f41847b;
        switch (i2) {
            case 0:
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                Log.g(3, "MakeupCamInternal", "[getReshapeIntensities] complete");
                reshapeIntensitiesCallback.onSuccess((Map) obj);
                break;
            case 1:
                Throwable th = (Throwable) obj;
                ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                if (!(th instanceof SkipCallbackException)) {
                    Log.e("MakeupCamInternal", "[getReshapeIntensities] failed", th);
                    reshapeIntensitiesCallback.onFailure(th);
                } else {
                    Log.c("MakeupCamInternal", "[getReshapeIntensities] task canceled.", th);
                }
                break;
            case 2:
                int i3 = PhotoMakeupInternal.n;
                Log.g(3, "PhotoMakeupInternal", "[getReshapeIntensities] complete");
                reshapeIntensitiesCallback.onSuccess((Map) obj);
                break;
            default:
                Throwable th2 = (Throwable) obj;
                int i4 = PhotoMakeupInternal.n;
                if (!(th2 instanceof SkipCallbackException)) {
                    Log.e("PhotoMakeupInternal", "[getReshapeIntensities] failed", th2);
                    reshapeIntensitiesCallback.onFailure(th2);
                } else {
                    Log.c("PhotoMakeupInternal", "[getReshapeIntensities] task canceled.", th2);
                }
                break;
        }
    }
}

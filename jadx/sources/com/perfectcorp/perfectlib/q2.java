package com.perfectcorp.perfectlib;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class q2 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f41794a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ VtoApplier.IntensitiesCallback f41795b;

    public /* synthetic */ q2(VtoApplier.IntensitiesCallback intensitiesCallback, int i2) {
        this.f41794a = i2;
        this.f41795b = intensitiesCallback;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f41794a;
        VtoApplier.IntensitiesCallback intensitiesCallback = this.f41795b;
        switch (i2) {
            case 0:
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                Log.g(3, "MakeupCamInternal", "[getIntensities] complete");
                intensitiesCallback.onSuccess((Map) obj);
                break;
            case 1:
                Throwable th = (Throwable) obj;
                ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                if (!(th instanceof SkipCallbackException)) {
                    Log.e("MakeupCamInternal", "[getIntensities] failed", th);
                    intensitiesCallback.onFailure(th);
                } else {
                    Log.c("MakeupCamInternal", "[getIntensities] task canceled.", th);
                }
                break;
            case 2:
                int i3 = PhotoMakeupInternal.n;
                Log.g(3, "PhotoMakeupInternal", "[getIntensities] complete");
                intensitiesCallback.onSuccess((Map) obj);
                break;
            default:
                Throwable th2 = (Throwable) obj;
                int i4 = PhotoMakeupInternal.n;
                if (!(th2 instanceof SkipCallbackException)) {
                    Log.e("PhotoMakeupInternal", "[getIntensities] failed", th2);
                    intensitiesCallback.onFailure(th2);
                } else {
                    Log.c("PhotoMakeupInternal", "[getIntensities] task canceled.", th2);
                }
                break;
        }
    }
}

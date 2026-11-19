package com.perfectcorp.perfectlib;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class p2 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f41111a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ VtoApplier.EffectIdCallback f41112b;

    public /* synthetic */ p2(VtoApplier.EffectIdCallback effectIdCallback, int i2) {
        this.f41111a = i2;
        this.f41112b = effectIdCallback;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f41111a;
        VtoApplier.EffectIdCallback effectIdCallback = this.f41112b;
        switch (i2) {
            case 0:
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                Log.g(3, "MakeupCamInternal", "[getEffectIds] success");
                effectIdCallback.onSuccess((List) obj);
                break;
            case 1:
                Throwable th = (Throwable) obj;
                ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                Log.e("MakeupCamInternal", "[getEffectIds] failed", th);
                effectIdCallback.onFailure(th);
                break;
            case 2:
                int i3 = PhotoMakeupInternal.n;
                Log.g(3, "PhotoMakeupInternal", "[getEffectIds] success");
                effectIdCallback.onSuccess((List) obj);
                break;
            default:
                Throwable th2 = (Throwable) obj;
                int i4 = PhotoMakeupInternal.n;
                Log.e("PhotoMakeupInternal", "[getEffectIds] failed", th2);
                effectIdCallback.onFailure(th2);
                break;
        }
    }
}

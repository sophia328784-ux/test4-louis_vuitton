package com.perfectcorp.perfectlib;

import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.Iterables;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class t2 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f41860a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ImmutableList f41861b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ VtoApplier.ApplyCallback f41862c;

    public /* synthetic */ t2(ImmutableList immutableList, VtoApplier.ApplyCallback applyCallback, int i2) {
        this.f41860a = i2;
        this.f41861b = immutableList;
        this.f41862c = applyCallback;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f41860a;
        VtoApplier.ApplyCallback applyCallback = this.f41862c;
        ImmutableList immutableList = this.f41861b;
        Throwable th = (Throwable) obj;
        switch (i2) {
            case 0:
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                Log.e("MakeupCamInternal", "[downloadAndApplySkus] mapping SKUs failed. vtoSettings=".concat(Iterables.c(immutableList)), th);
                PfCommons.c(new v2(applyCallback, th, 0));
                break;
            case 1:
                ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                Log.e("MakeupCamInternal", "[downloadAndApplySkus] find product GUIDs failed. copiedVtoSettings=".concat(Iterables.c(immutableList)), th);
                PfCommons.c(new v2(applyCallback, th, 1));
                break;
            case 2:
                int i3 = PhotoMakeupInternal.n;
                Log.e("PhotoMakeupInternal", "[downloadAndApplySkus] mapping SKUs failed. vtoSettings=".concat(Iterables.c(immutableList)), th);
                PfCommons.c(new v2(applyCallback, th, 10));
                break;
            default:
                int i4 = PhotoMakeupInternal.n;
                Log.e("PhotoMakeupInternal", "[downloadAndApplySkus] find product GUIDs failed. copiedVtoSettings=".concat(Iterables.c(immutableList)), th);
                PfCommons.c(new v2(applyCallback, th, 9));
                break;
        }
    }
}

package com.perfectcorp.perfectlib;

import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.Iterables;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class m0 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f40470a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ HandVtoApplierImpl f40471b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ImmutableList f40472c;
    public final /* synthetic */ HandVtoApplierImpl.ApplyCallback d;

    public /* synthetic */ m0(HandVtoApplierImpl handVtoApplierImpl, ImmutableList immutableList, HandVtoApplierImpl.ApplyCallback applyCallback, int i2) {
        this.f40470a = i2;
        this.f40471b = handVtoApplierImpl;
        this.f40472c = immutableList;
        this.d = applyCallback;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f40470a;
        final HandVtoApplierImpl.ApplyCallback applyCallback = this.d;
        ImmutableList immutableList = this.f40472c;
        HandVtoApplierImpl handVtoApplierImpl = this.f40471b;
        final Throwable th = (Throwable) obj;
        switch (i2) {
            case 0:
                Log.e(handVtoApplierImpl.f39633a, "[downloadAndApplySkus] mapping SKUs failed. vtoSettings=".concat(Iterables.c(immutableList)), th);
                final int i3 = 2;
                PfCommons.c(new Runnable() { // from class: com.perfectcorp.perfectlib.q0
                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i3) {
                            case 0:
                                applyCallback.onFailure(th);
                                break;
                            case 1:
                                applyCallback.onFailure(th);
                                break;
                            case 2:
                                applyCallback.onFailure(th);
                                break;
                            default:
                                applyCallback.onFailure(th);
                                break;
                        }
                    }
                });
                break;
            case 1:
                Log.e(handVtoApplierImpl.f39633a, "[downloadAndApplySkus] find product GUIDs failed. copiedVtoSettings=".concat(Iterables.c(immutableList)), th);
                final int i4 = 1;
                PfCommons.c(new Runnable() { // from class: com.perfectcorp.perfectlib.q0
                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i4) {
                            case 0:
                                applyCallback.onFailure(th);
                                break;
                            case 1:
                                applyCallback.onFailure(th);
                                break;
                            case 2:
                                applyCallback.onFailure(th);
                                break;
                            default:
                                applyCallback.onFailure(th);
                                break;
                        }
                    }
                });
                break;
            case 2:
                Log.e(handVtoApplierImpl.f39633a, "[downloadAndApplySkus] mapping SKUs failed. vtoSettings=".concat(Iterables.c(immutableList)), th);
                final int i5 = 3;
                PfCommons.c(new Runnable() { // from class: com.perfectcorp.perfectlib.q0
                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i5) {
                            case 0:
                                applyCallback.onFailure(th);
                                break;
                            case 1:
                                applyCallback.onFailure(th);
                                break;
                            case 2:
                                applyCallback.onFailure(th);
                                break;
                            default:
                                applyCallback.onFailure(th);
                                break;
                        }
                    }
                });
                break;
            default:
                Log.e(handVtoApplierImpl.f39633a, "[downloadAndApplySkus] find product GUIDs failed. copiedVtoSettings=".concat(Iterables.c(immutableList)), th);
                final int i6 = 0;
                PfCommons.c(new Runnable() { // from class: com.perfectcorp.perfectlib.q0
                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i6) {
                            case 0:
                                applyCallback.onFailure(th);
                                break;
                            case 1:
                                applyCallback.onFailure(th);
                                break;
                            case 2:
                                applyCallback.onFailure(th);
                                break;
                            default:
                                applyCallback.onFailure(th);
                                break;
                        }
                    }
                });
                break;
        }
    }
}

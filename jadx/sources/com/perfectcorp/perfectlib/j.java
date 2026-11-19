package com.perfectcorp.perfectlib;

import android.graphics.Bitmap;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class j implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f40374a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AccessoryVtoApplierImpl f40375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AccessoryVtoApplier.ApplyCallback f40376c;

    public /* synthetic */ j(AccessoryVtoApplierImpl accessoryVtoApplierImpl, AccessoryVtoApplier.ApplyCallback applyCallback, int i2) {
        this.f40374a = i2;
        this.f40375b = accessoryVtoApplierImpl;
        this.f40376c = applyCallback;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f40374a;
        AccessoryVtoApplier.ApplyCallback applyCallback = this.f40376c;
        AccessoryVtoApplierImpl accessoryVtoApplierImpl = this.f40375b;
        switch (i2) {
            case 0:
                Log.g(3, accessoryVtoApplierImpl.f39462a, "[clearAllEffects] complete");
                applyCallback.onSuccess((Bitmap) ((Optional) obj).g());
                break;
            case 1:
                Throwable th = (Throwable) obj;
                boolean z = th instanceof SkipCallbackException;
                String str = accessoryVtoApplierImpl.f39462a;
                if (!z) {
                    Log.e(str, "[clearAllEffects] failed", th);
                    applyCallback.onFailure(th);
                } else {
                    Log.c(str, "[clearAllEffects] task canceled", th);
                }
                break;
            case 2:
                Log.g(3, accessoryVtoApplierImpl.f39462a, "[applyEffectIds] complete");
                applyCallback.onSuccess((Bitmap) ((Optional) obj).g());
                break;
            case 3:
                Throwable th2 = (Throwable) obj;
                boolean z2 = th2 instanceof SkipCallbackException;
                String str2 = accessoryVtoApplierImpl.f39462a;
                if (!z2) {
                    Log.e(str2, "[applyEffectIds] failed", th2);
                    applyCallback.onFailure(th2);
                } else {
                    Log.c(str2, "[applyEffectIds] task canceled", th2);
                }
                break;
            case 4:
                Log.g(3, accessoryVtoApplierImpl.f39462a, "[applySkus] complete");
                applyCallback.onSuccess((Bitmap) ((Optional) obj).g());
                break;
            case 5:
                Throwable th3 = (Throwable) obj;
                boolean z3 = th3 instanceof SkipCallbackException;
                String str3 = accessoryVtoApplierImpl.f39462a;
                if (!z3) {
                    Log.e(str3, "[applySkus] failed", th3);
                    applyCallback.onFailure(th3);
                } else {
                    Log.c(str3, "[applySkus] task canceled", th3);
                }
                break;
            case 6:
                Log.g(3, accessoryVtoApplierImpl.f39462a, "[applySkus] complete");
                applyCallback.onSuccess((Bitmap) ((Optional) obj).g());
                break;
            default:
                Throwable th4 = (Throwable) obj;
                boolean z4 = th4 instanceof SkipCallbackException;
                String str4 = accessoryVtoApplierImpl.f39462a;
                if (!z4) {
                    Log.e(str4, "[applySkus] failed", th4);
                    applyCallback.onFailure(th4);
                } else {
                    Log.c(str4, "[applySkus] task canceled", th4);
                }
                break;
        }
    }
}

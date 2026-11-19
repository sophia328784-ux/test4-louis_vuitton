package com.perfectcorp.perfectlib;

import android.graphics.Bitmap;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class g0 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f40159a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ HandVtoApplierImpl f40160b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ HandVtoApplierImpl.ApplyCallback f40161c;

    public /* synthetic */ g0(HandVtoApplierImpl handVtoApplierImpl, HandVtoApplierImpl.ApplyCallback applyCallback, int i2) {
        this.f40159a = i2;
        this.f40160b = handVtoApplierImpl;
        this.f40161c = applyCallback;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f40159a;
        HandVtoApplierImpl.ApplyCallback applyCallback = this.f40161c;
        HandVtoApplierImpl handVtoApplierImpl = this.f40160b;
        switch (i2) {
            case 0:
                Log.g(3, handVtoApplierImpl.f39633a, "[applyEffectIds] complete");
                applyCallback.onSuccess((Bitmap) ((Optional) obj).g());
                break;
            case 1:
                Throwable th = (Throwable) obj;
                boolean z = th instanceof SkipCallbackException;
                String str = handVtoApplierImpl.f39633a;
                if (!z) {
                    Log.e(str, "[applyEffectIds] failed", th);
                    applyCallback.onFailure(th);
                } else {
                    Log.c(str, "[applyEffectIds] task canceled", th);
                }
                break;
            case 2:
                Log.g(3, handVtoApplierImpl.f39633a, "[applySkus] complete");
                applyCallback.onSuccess((Bitmap) ((Optional) obj).g());
                break;
            case 3:
                Throwable th2 = (Throwable) obj;
                boolean z2 = th2 instanceof SkipCallbackException;
                String str2 = handVtoApplierImpl.f39633a;
                if (!z2) {
                    Log.e(str2, "[applySkus] failed", th2);
                    applyCallback.onFailure(th2);
                } else {
                    Log.c(str2, "[applySkus] task canceled", th2);
                }
                break;
            case 4:
                Log.g(3, handVtoApplierImpl.f39633a, "[applySkus] complete");
                applyCallback.onSuccess((Bitmap) ((Optional) obj).g());
                break;
            case 5:
                Throwable th3 = (Throwable) obj;
                boolean z3 = th3 instanceof SkipCallbackException;
                String str3 = handVtoApplierImpl.f39633a;
                if (!z3) {
                    Log.e(str3, "[applySkus] failed", th3);
                    applyCallback.onFailure(th3);
                } else {
                    Log.c(str3, "[applySkus] task canceled", th3);
                }
                break;
            case 6:
                Log.g(3, handVtoApplierImpl.f39633a, "[clearAllEffects] complete");
                applyCallback.onSuccess((Bitmap) ((Optional) obj).g());
                break;
            case 7:
                Throwable th4 = (Throwable) obj;
                boolean z4 = th4 instanceof SkipCallbackException;
                String str4 = handVtoApplierImpl.f39633a;
                if (!z4) {
                    Log.e(str4, "[clearAllEffects] failed", th4);
                    applyCallback.onFailure(th4);
                } else {
                    Log.c(str4, "[clearAllEffects] task canceled", th4);
                }
                break;
            case 8:
                Log.g(3, handVtoApplierImpl.f39633a, "[applySkus] complete");
                applyCallback.onSuccess((Bitmap) ((Optional) obj).g());
                break;
            case 9:
                Throwable th5 = (Throwable) obj;
                boolean z5 = th5 instanceof SkipCallbackException;
                String str5 = handVtoApplierImpl.f39633a;
                if (!z5) {
                    Log.e(str5, "[applySkus] failed", th5);
                    applyCallback.onFailure(th5);
                } else {
                    Log.c(str5, "[applySkus] task canceled", th5);
                }
                break;
            case 10:
                Log.g(3, handVtoApplierImpl.f39633a, "[applySkus] complete");
                applyCallback.onSuccess((Bitmap) ((Optional) obj).g());
                break;
            default:
                Throwable th6 = (Throwable) obj;
                boolean z6 = th6 instanceof SkipCallbackException;
                String str6 = handVtoApplierImpl.f39633a;
                if (!z6) {
                    Log.e(str6, "[applySkus] failed", th6);
                    applyCallback.onFailure(th6);
                } else {
                    Log.c(str6, "[applySkus] task canceled", th6);
                }
                break;
        }
    }
}

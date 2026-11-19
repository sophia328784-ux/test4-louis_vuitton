package com.perfectcorp.perfectlib;

import android.graphics.Bitmap;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class h3 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f40196a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ NailVtoApplierImpl f40197b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NailVtoApplier.ApplyCallback f40198c;

    public /* synthetic */ h3(NailVtoApplierImpl nailVtoApplierImpl, NailVtoApplier.ApplyCallback applyCallback, int i2) {
        this.f40196a = i2;
        this.f40197b = nailVtoApplierImpl;
        this.f40198c = applyCallback;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f40196a;
        NailVtoApplier.ApplyCallback applyCallback = this.f40198c;
        NailVtoApplierImpl nailVtoApplierImpl = this.f40197b;
        switch (i2) {
            case 0:
                Log.g(3, nailVtoApplierImpl.f39724a, "[clearEffects] complete");
                applyCallback.onSuccess((Bitmap) ((Optional) obj).g());
                break;
            case 1:
                Throwable th = (Throwable) obj;
                boolean z = th instanceof SkipCallbackException;
                String str = nailVtoApplierImpl.f39724a;
                if (!z) {
                    Log.e(str, "[clearEffects] failed", th);
                    applyCallback.onFailure(th);
                } else {
                    Log.c(str, "[clearEffects] task canceled", th);
                }
                break;
            case 2:
                Log.g(3, nailVtoApplierImpl.f39724a, "[setIntensities] complete");
                applyCallback.onSuccess((Bitmap) ((Optional) obj).g());
                break;
            case 3:
                Throwable th2 = (Throwable) obj;
                boolean z2 = th2 instanceof SkipCallbackException;
                String str2 = nailVtoApplierImpl.f39724a;
                if (!z2) {
                    Log.e(str2, "[setIntensities] failed", th2);
                    applyCallback.onFailure(th2);
                } else {
                    Log.c(str2, "[setIntensities] task canceled", th2);
                }
                break;
            case 4:
                Log.g(3, nailVtoApplierImpl.f39724a, "[applyEffectIds] complete");
                applyCallback.onSuccess((Bitmap) ((Optional) obj).g());
                break;
            case 5:
                Log.g(3, nailVtoApplierImpl.f39724a, "[clearAllEffects] complete");
                applyCallback.onSuccess((Bitmap) ((Optional) obj).g());
                break;
            case 6:
                Throwable th3 = (Throwable) obj;
                boolean z3 = th3 instanceof SkipCallbackException;
                String str3 = nailVtoApplierImpl.f39724a;
                if (!z3) {
                    Log.e(str3, "[clearAllEffects] failed", th3);
                    applyCallback.onFailure(th3);
                } else {
                    Log.c(str3, "[clearAllEffects] task canceled", th3);
                }
                break;
            case 7:
                Log.g(3, nailVtoApplierImpl.f39724a, "[applySkus] complete");
                applyCallback.onSuccess((Bitmap) ((Optional) obj).g());
                break;
            case 8:
                Throwable th4 = (Throwable) obj;
                boolean z4 = th4 instanceof SkipCallbackException;
                String str4 = nailVtoApplierImpl.f39724a;
                if (!z4) {
                    Log.e(str4, "[applySkus] failed", th4);
                    applyCallback.onFailure(th4);
                } else {
                    Log.c(str4, "[applySkus] task canceled", th4);
                }
                break;
            case 9:
                Throwable th5 = (Throwable) obj;
                boolean z5 = th5 instanceof SkipCallbackException;
                String str5 = nailVtoApplierImpl.f39724a;
                if (!z5) {
                    Log.e(str5, "[applyEffectIds] failed", th5);
                    applyCallback.onFailure(th5);
                } else {
                    Log.c(str5, "[applyEffectIds] task canceled", th5);
                }
                break;
            case 10:
                Log.g(3, nailVtoApplierImpl.f39724a, "[applySkus] complete");
                applyCallback.onSuccess((Bitmap) ((Optional) obj).g());
                break;
            default:
                Throwable th6 = (Throwable) obj;
                boolean z6 = th6 instanceof SkipCallbackException;
                String str6 = nailVtoApplierImpl.f39724a;
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

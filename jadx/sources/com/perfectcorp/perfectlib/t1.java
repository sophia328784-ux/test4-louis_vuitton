package com.perfectcorp.perfectlib;

import android.graphics.Bitmap;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class t1 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f41858a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ VtoApplier.ApplyCallback f41859b;

    public /* synthetic */ t1(VtoApplier.ApplyCallback applyCallback, int i2) {
        this.f41858a = i2;
        this.f41859b = applyCallback;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f41858a;
        VtoApplier.ApplyCallback applyCallback = this.f41859b;
        switch (i2) {
            case 0:
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                Log.g(3, "MakeupCamInternal", "[clearAllEffects] success");
                applyCallback.onSuccess(null);
                break;
            case 1:
                Throwable th = (Throwable) obj;
                ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                Log.e("MakeupCamInternal", "[clearAllEffects] failed", th);
                applyCallback.onFailure(th);
                break;
            case 2:
                ThreadPoolExecutor threadPoolExecutor3 = MakeupCamInternal.n;
                Log.g(3, "MakeupCamInternal", "[applySkus] succeed.");
                applyCallback.onSuccess(null);
                break;
            case 3:
                Throwable th2 = (Throwable) obj;
                ThreadPoolExecutor threadPoolExecutor4 = MakeupCamInternal.n;
                if (!(th2 instanceof SkipCallbackException)) {
                    Log.e("MakeupCamInternal", "[applySkus] failed.", th2);
                    applyCallback.onFailure(th2);
                } else {
                    Log.c("MakeupCamInternal", "[applySkus] task canceled.", th2);
                }
                break;
            case 4:
                Throwable th3 = (Throwable) obj;
                ThreadPoolExecutor threadPoolExecutor5 = MakeupCamInternal.n;
                if (!(th3 instanceof SkipCallbackException)) {
                    Log.e("MakeupCamInternal", "[applyEffectIds] failed", th3);
                    applyCallback.onFailure(th3);
                } else {
                    Log.c("MakeupCamInternal", "[applyEffectIds] task canceled.", th3);
                }
                break;
            case 5:
                ThreadPoolExecutor threadPoolExecutor6 = MakeupCamInternal.n;
                Log.g(3, "MakeupCamInternal", "[setIntensities] complete");
                applyCallback.onSuccess(null);
                break;
            case 6:
                Throwable th4 = (Throwable) obj;
                ThreadPoolExecutor threadPoolExecutor7 = MakeupCamInternal.n;
                if (!(th4 instanceof SkipCallbackException)) {
                    Log.e("MakeupCamInternal", "[setIntensities] failed", th4);
                    applyCallback.onFailure(th4);
                } else {
                    Log.c("MakeupCamInternal", "[setIntensities] task canceled.", th4);
                }
                break;
            case 7:
                ThreadPoolExecutor threadPoolExecutor8 = MakeupCamInternal.n;
                Log.g(3, "MakeupCamInternal", "[clearEffects] success");
                applyCallback.onSuccess(null);
                break;
            case 8:
                Throwable th5 = (Throwable) obj;
                ThreadPoolExecutor threadPoolExecutor9 = MakeupCamInternal.n;
                Log.e("MakeupCamInternal", "[clearEffects] failed", th5);
                applyCallback.onFailure(th5);
                break;
            case 9:
                Throwable th6 = (Throwable) obj;
                ThreadPoolExecutor threadPoolExecutor10 = MakeupCamInternal.n;
                if (!(th6 instanceof SkipCallbackException)) {
                    Log.e("MakeupCamInternal", "[setReshapeIntensities] failed", th6);
                    applyCallback.onFailure(th6);
                } else {
                    Log.c("MakeupCamInternal", "[setReshapeIntensities] task canceled.", th6);
                }
                break;
            case 10:
                ThreadPoolExecutor threadPoolExecutor11 = MakeupCamInternal.n;
                Log.g(3, "MakeupCamInternal", "[clearAllMakeupEffects] success");
                applyCallback.onSuccess(null);
                break;
            case 11:
                Throwable th7 = (Throwable) obj;
                ThreadPoolExecutor threadPoolExecutor12 = MakeupCamInternal.n;
                Log.e("MakeupCamInternal", "[clearAllMakeupEffects] failed", th7);
                applyCallback.onFailure(th7);
                break;
            case 12:
                ThreadPoolExecutor threadPoolExecutor13 = MakeupCamInternal.n;
                Log.g(3, "MakeupCamInternal", "[downloadAndApplySkusInternal] Sku applied.");
                applyCallback.onSuccess(null);
                break;
            case 13:
                ThreadPoolExecutor threadPoolExecutor14 = MakeupCamInternal.n;
                Log.g(3, "MakeupCamInternal", "[clearAllEffects] success");
                applyCallback.onSuccess(null);
                break;
            case 14:
                Throwable th8 = (Throwable) obj;
                ThreadPoolExecutor threadPoolExecutor15 = MakeupCamInternal.n;
                Log.e("MakeupCamInternal", "[clearAllEffects] failed", th8);
                applyCallback.onFailure(th8);
                break;
            case 15:
                int i3 = PhotoMakeupInternal.n;
                Log.g(3, "PhotoMakeupInternal", "[clearAllEffects] success");
                applyCallback.onSuccess((Bitmap) obj);
                break;
            case 16:
                Throwable th9 = (Throwable) obj;
                int i4 = PhotoMakeupInternal.n;
                Log.e("PhotoMakeupInternal", "[clearAllEffects] failed", th9);
                applyCallback.onFailure(th9);
                break;
            case 17:
                int i5 = PhotoMakeupInternal.n;
                Log.g(3, "PhotoMakeupInternal", "[clearEffects] success");
                applyCallback.onSuccess((Bitmap) obj);
                break;
            case 18:
                Throwable th10 = (Throwable) obj;
                int i6 = PhotoMakeupInternal.n;
                Log.e("PhotoMakeupInternal", "[clearEffects] failed", th10);
                applyCallback.onFailure(th10);
                break;
            case 19:
                Throwable th11 = (Throwable) obj;
                int i7 = PhotoMakeupInternal.n;
                if (!(th11 instanceof SkipCallbackException)) {
                    Log.e("PhotoMakeupInternal", "[setReshapeIntensities] failed", th11);
                    applyCallback.onFailure(th11);
                } else {
                    Log.c("PhotoMakeupInternal", "[setReshapeIntensities] task canceled.", th11);
                }
                break;
            case 20:
                int i8 = PhotoMakeupInternal.n;
                Log.g(3, "PhotoMakeupInternal", "[clearAllMakeupEffects] success");
                applyCallback.onSuccess((Bitmap) obj);
                break;
            case 21:
                Throwable th12 = (Throwable) obj;
                int i9 = PhotoMakeupInternal.n;
                Log.e("PhotoMakeupInternal", "[clearAllMakeupEffects] failed", th12);
                applyCallback.onFailure(th12);
                break;
            case 22:
                int i10 = PhotoMakeupInternal.n;
                Log.g(3, "PhotoMakeupInternal", "[setIntensities] complete");
                applyCallback.onSuccess((Bitmap) obj);
                break;
            case 23:
                Throwable th13 = (Throwable) obj;
                int i11 = PhotoMakeupInternal.n;
                if (!(th13 instanceof SkipCallbackException)) {
                    Log.e("PhotoMakeupInternal", "[setIntensities] failed", th13);
                    applyCallback.onFailure(th13);
                } else {
                    Log.c("PhotoMakeupInternal", "[setIntensities] task canceled.", th13);
                }
                break;
            case 24:
                int i12 = PhotoMakeupInternal.n;
                Log.g(3, "PhotoMakeupInternal", "[applyEffectIds] success");
                applyCallback.onSuccess((Bitmap) obj);
                break;
            case 25:
                Throwable th14 = (Throwable) obj;
                int i13 = PhotoMakeupInternal.n;
                if (!(th14 instanceof SkipCallbackException)) {
                    Log.e("PhotoMakeupInternal", "[applyEffectIds] failed", th14);
                    applyCallback.onFailure(th14);
                } else {
                    Log.c("PhotoMakeupInternal", "[applyEffectIds] task canceled.", th14);
                }
                break;
            case 26:
                int i14 = PhotoMakeupInternal.n;
                Log.g(3, "PhotoMakeupInternal", "[applySkus] succeed.");
                applyCallback.onSuccess((Bitmap) obj);
                break;
            case 27:
                Throwable th15 = (Throwable) obj;
                int i15 = PhotoMakeupInternal.n;
                if (!(th15 instanceof SkipCallbackException)) {
                    Log.e("PhotoMakeupInternal", "[applySkus] failed.", th15);
                    applyCallback.onFailure(th15);
                } else {
                    Log.c("PhotoMakeupInternal", "[applySkus] task canceled.", th15);
                }
                break;
            default:
                int i16 = PhotoMakeupInternal.n;
                Log.g(3, "PhotoMakeupInternal", "[downloadAndApplySkusInternal] Sku applied.");
                applyCallback.onSuccess((Bitmap) obj);
                break;
        }
    }
}

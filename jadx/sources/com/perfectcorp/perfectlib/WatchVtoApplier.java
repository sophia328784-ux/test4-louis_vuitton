package com.perfectcorp.perfectlib;

import android.graphics.Bitmap;
import com.perfectcorp.perfectlib.internal.ModuleConfig;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.io.reactivex.android.schedulers.AndroidSchedulers;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.md;
import defpackage.mt;
import defpackage.ph;
import defpackage.qh;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class WatchVtoApplier {

    public interface ApplyCallback extends HandVtoApplierImpl.ApplyCallback {
        public static final ApplyCallback NOP = new AnonymousClass1();

        /* JADX INFO: renamed from: com.perfectcorp.perfectlib.WatchVtoApplier$ApplyCallback$1, reason: invalid class name */
        class AnonymousClass1 implements ApplyCallback {
            @Override // com.perfectcorp.perfectlib.WatchVtoApplier.ApplyCallback, com.perfectcorp.perfectlib.HandVtoApplierImpl.ApplyCallback
            public final void onFailure(Throwable th) {
            }

            @Override // com.perfectcorp.perfectlib.WatchVtoApplier.ApplyCallback, com.perfectcorp.perfectlib.HandVtoApplierImpl.ApplyCallback
            public final void onSuccess(Bitmap bitmap) {
            }
        }

        @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl.ApplyCallback
        void onFailure(Throwable th);

        @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl.ApplyCallback
        void onSuccess(Bitmap bitmap);
    }

    public interface CreateCallback {
        void onFailure(Throwable th);

        void onSuccess(WatchVtoApplier watchVtoApplier);
    }

    public interface EffectIdCallback extends HandVtoApplierImpl.EffectIdCallback {
        @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl.EffectIdCallback
        void onFailure(Throwable th);

        @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl.EffectIdCallback
        void onSuccess(List<EffectId> list);
    }

    public interface ProductIdCallback extends HandVtoApplierImpl.ProductIdCallback {
        @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl.ProductIdCallback
        void onFailure(Throwable th);

        @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl.ProductIdCallback
        void onSuccess(List<ProductId> list);
    }

    public static /* synthetic */ WatchVtoApplierImpl a(HandApplierTarget handApplierTarget) {
        if (ModuleConfig.v) {
            if (handApplierTarget instanceof HandCam) {
                if (!PerfectLib.f39740c.f39628e) {
                    mt.i("Doesn't have a valid license.");
                    return null;
                }
                final HandCam handCam = (HandCam) handApplierTarget;
                handCam.enableFunctionality(Functionality.WATCH);
                WatchVtoApplierImpl watchVtoApplierImpl = new WatchVtoApplierImpl(handCam.taskDisposables, com.perfectcorp.perfectlib.ph.clflurry.b.a.f41140a) { // from class: com.perfectcorp.perfectlib.WatchVtoApplier.1
                    @Override // com.perfectcorp.perfectlib.WatchVtoApplierImpl
                    public final ListenableFuture b(ArrayList arrayList) {
                        return BraceletVtoApplier.b(handCam, arrayList);
                    }

                    @Override // com.perfectcorp.perfectlib.WatchVtoApplierImpl
                    public final void c() {
                        handCam.assertNotReleased();
                    }

                    @Override // com.perfectcorp.perfectlib.WatchVtoApplierImpl
                    public final ListenableFuture d() {
                        return handCam.handEngineCtrl.clearAllEffects();
                    }
                };
                handCam.onPictureTakenListener = new qh();
                return watchVtoApplierImpl;
            }
            if (handApplierTarget instanceof PhotoHandAr) {
                if (!PerfectLib.f39740c.f39629f) {
                    mt.i("Doesn't have a valid license.");
                    return null;
                }
                final PhotoHandAr photoHandAr = (PhotoHandAr) handApplierTarget;
                photoHandAr.enableFunctionality(Functionality.WATCH);
                return new WatchVtoApplierImpl(photoHandAr.taskDisposables, com.perfectcorp.perfectlib.ph.clflurry.b.a.f41141b) { // from class: com.perfectcorp.perfectlib.WatchVtoApplier.2
                    @Override // com.perfectcorp.perfectlib.WatchVtoApplierImpl
                    public final ListenableFuture b(ArrayList arrayList) {
                        return BraceletVtoApplier.b(photoHandAr, arrayList);
                    }

                    @Override // com.perfectcorp.perfectlib.WatchVtoApplierImpl
                    public final void c() {
                        photoHandAr.assertNotReleased();
                    }

                    @Override // com.perfectcorp.perfectlib.WatchVtoApplierImpl
                    public final ListenableFuture d() {
                        return photoHandAr.handEngineCtrl.clearAllEffects();
                    }

                    @Override // com.perfectcorp.perfectlib.WatchVtoApplierImpl
                    public final void f() {
                        photoHandAr.validateState();
                    }
                };
            }
        }
        md.n("Unknown instance of applier target.");
        return null;
    }

    public static void create(HandApplierTarget handApplierTarget, CreateCallback createCallback) {
        Objects.requireNonNull(handApplierTarget, "handApplierTarget can't be null");
        Objects.requireNonNull(createCallback, "createCallback can't be null");
        new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new ph(handApplierTarget, 4)).j(Schedulers.f43170c).f(new b(6)).i(AndroidSchedulers.a()).a(new ConsumerSingleObserver(new c(createCallback, 10), new defpackage.o2(createCallback, 24)));
    }

    public abstract Cancelable apply(List<VtoSetting> list, ApplyCallback applyCallback);

    public abstract void applyEffectIds(List<EffectId> list, ApplyCallback applyCallback);

    public abstract void clearAllEffects(ApplyCallback applyCallback);

    public abstract void getEffectIds(EffectIdCallback effectIdCallback);

    public abstract void getProductIds(ProductIdCallback productIdCallback);
}

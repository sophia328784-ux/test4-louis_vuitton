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
public abstract class BraceletVtoApplier {

    public interface ApplyCallback extends HandVtoApplierImpl.ApplyCallback {
        public static final ApplyCallback NOP = new AnonymousClass1();

        /* JADX INFO: renamed from: com.perfectcorp.perfectlib.BraceletVtoApplier$ApplyCallback$1, reason: invalid class name */
        class AnonymousClass1 implements ApplyCallback {
            @Override // com.perfectcorp.perfectlib.BraceletVtoApplier.ApplyCallback, com.perfectcorp.perfectlib.HandVtoApplierImpl.ApplyCallback
            public final void onFailure(Throwable th) {
            }

            @Override // com.perfectcorp.perfectlib.BraceletVtoApplier.ApplyCallback, com.perfectcorp.perfectlib.HandVtoApplierImpl.ApplyCallback
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

        void onSuccess(BraceletVtoApplier braceletVtoApplier);
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

    public static /* synthetic */ BraceletVtoApplierImpl a(HandApplierTarget handApplierTarget) {
        if (ModuleConfig.v) {
            if (handApplierTarget instanceof HandCam) {
                if (!PerfectLib.f39740c.g) {
                    mt.i("Doesn't have a valid license.");
                    return null;
                }
                final HandCam handCam = (HandCam) handApplierTarget;
                handCam.enableFunctionality(Functionality.BRACELET);
                BraceletVtoApplierImpl braceletVtoApplierImpl = new BraceletVtoApplierImpl(handCam.taskDisposables, com.perfectcorp.perfectlib.ph.clflurry.b.a.f41140a) { // from class: com.perfectcorp.perfectlib.BraceletVtoApplier.1
                    @Override // com.perfectcorp.perfectlib.BraceletVtoApplierImpl
                    public final ListenableFuture c(ArrayList arrayList) {
                        return BraceletVtoApplier.b(handCam, arrayList);
                    }

                    @Override // com.perfectcorp.perfectlib.BraceletVtoApplierImpl
                    public final void d() {
                        handCam.assertNotReleased();
                    }

                    @Override // com.perfectcorp.perfectlib.BraceletVtoApplierImpl
                    public final ListenableFuture e() {
                        return handCam.handEngineCtrl.clearAllEffects();
                    }
                };
                handCam.onPictureTakenListener = new qh();
                return braceletVtoApplierImpl;
            }
            if (handApplierTarget instanceof PhotoHandAr) {
                if (!PerfectLib.f39740c.f39630h) {
                    mt.i("Doesn't have a valid license.");
                    return null;
                }
                final PhotoHandAr photoHandAr = (PhotoHandAr) handApplierTarget;
                photoHandAr.enableFunctionality(Functionality.BRACELET);
                return new BraceletVtoApplierImpl(photoHandAr.taskDisposables, com.perfectcorp.perfectlib.ph.clflurry.b.a.f41141b) { // from class: com.perfectcorp.perfectlib.BraceletVtoApplier.2
                    @Override // com.perfectcorp.perfectlib.BraceletVtoApplierImpl
                    public final ListenableFuture c(ArrayList arrayList) {
                        return BraceletVtoApplier.b(photoHandAr, arrayList);
                    }

                    @Override // com.perfectcorp.perfectlib.BraceletVtoApplierImpl
                    public final void d() {
                        photoHandAr.assertNotReleased();
                    }

                    @Override // com.perfectcorp.perfectlib.BraceletVtoApplierImpl
                    public final ListenableFuture e() {
                        return photoHandAr.handEngineCtrl.clearAllEffects();
                    }

                    @Override // com.perfectcorp.perfectlib.BraceletVtoApplierImpl
                    public final void g() {
                        photoHandAr.validateState();
                    }
                };
            }
        }
        md.n("Unknown instance of applier target.");
        return null;
    }

    public static ListenableFuture b(HandApplierTarget handApplierTarget, ArrayList arrayList) {
        ListenableFuture listenableFutureApplyWrist = null;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            com.perfectcorp.perfectlib.ph.utility.b bVar = (com.perfectcorp.perfectlib.ph.utility.b) arrayList.get(i2);
            boolean z = bVar.f41735a == PerfectEffect.WATCH;
            if (handApplierTarget instanceof HandCam) {
                HandCam handCam = (HandCam) handApplierTarget;
                listenableFutureApplyWrist = handCam.handEngineCtrl.applyWrist(handCam.loadWrist3dObject(bVar.f41739f, z, i2, 5), i2, arrayList.size(), z, bVar.g, bVar.f41740h);
            } else if (handApplierTarget instanceof PhotoHandAr) {
                PhotoHandAr photoHandAr = (PhotoHandAr) handApplierTarget;
                listenableFutureApplyWrist = photoHandAr.handEngineCtrl.applyWrist(photoHandAr.loadWrist3dObject(bVar.f41739f, z, i2, 5), i2, arrayList.size(), z, bVar.g, bVar.f41740h);
            }
        }
        return listenableFutureApplyWrist;
    }

    public static void create(HandApplierTarget handApplierTarget, CreateCallback createCallback) {
        Objects.requireNonNull(handApplierTarget, "handApplierTarget can't be null");
        Objects.requireNonNull(createCallback, "createCallback can't be null");
        int i2 = 1;
        new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new ph(handApplierTarget, 0)).j(Schedulers.f43170c).f(new b(i2)).i(AndroidSchedulers.a()).a(new ConsumerSingleObserver(new c(createCallback, i2), new defpackage.o2(createCallback, 3)));
    }

    public abstract Cancelable apply(List<VtoSetting> list, ApplyCallback applyCallback);

    public abstract void applyEffectIds(List<EffectId> list, ApplyCallback applyCallback);

    public abstract void clearAllEffects(ApplyCallback applyCallback);

    public abstract void getEffectIds(EffectIdCallback effectIdCallback);

    public abstract void getProductIds(ProductIdCallback productIdCallback);
}

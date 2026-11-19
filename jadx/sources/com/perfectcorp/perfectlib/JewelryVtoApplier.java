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
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class JewelryVtoApplier {

    public interface ApplyCallback extends HandVtoApplierImpl.ApplyCallback {
        public static final ApplyCallback NOP = new AnonymousClass1();

        /* JADX INFO: renamed from: com.perfectcorp.perfectlib.JewelryVtoApplier$ApplyCallback$1, reason: invalid class name */
        class AnonymousClass1 implements ApplyCallback {
            @Override // com.perfectcorp.perfectlib.JewelryVtoApplier.ApplyCallback, com.perfectcorp.perfectlib.HandVtoApplierImpl.ApplyCallback
            public final void onFailure(Throwable th) {
            }

            @Override // com.perfectcorp.perfectlib.JewelryVtoApplier.ApplyCallback, com.perfectcorp.perfectlib.HandVtoApplierImpl.ApplyCallback
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

        void onSuccess(JewelryVtoApplier jewelryVtoApplier);
    }

    public interface DownloadAndApplyCallback {
        public static final DownloadAndApplyCallback NOP = new AnonymousClass1();

        /* JADX INFO: renamed from: com.perfectcorp.perfectlib.JewelryVtoApplier$DownloadAndApplyCallback$1, reason: invalid class name */
        class AnonymousClass1 implements DownloadAndApplyCallback {
            @Override // com.perfectcorp.perfectlib.JewelryVtoApplier.DownloadAndApplyCallback
            public final void downloadProgress(double d) {
            }

            @Override // com.perfectcorp.perfectlib.JewelryVtoApplier.DownloadAndApplyCallback
            public final void onFailure(Throwable th) {
            }

            @Override // com.perfectcorp.perfectlib.JewelryVtoApplier.DownloadAndApplyCallback
            public final void onSuccess(Bitmap bitmap) {
            }
        }

        void downloadProgress(double d);

        void onFailure(Throwable th);

        void onSuccess(Bitmap bitmap);
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

    public static /* synthetic */ JewelryVtoApplierImpl a(HandApplierTarget handApplierTarget) {
        if (ModuleConfig.v) {
            if (handApplierTarget instanceof HandCam) {
                if (!PerfectLib.f39740c.f39631i) {
                    mt.i("Doesn't have a valid license.");
                    return null;
                }
                final HandCam handCam = (HandCam) handApplierTarget;
                handCam.enableFunctionality(Functionality.JEWELRY);
                JewelryVtoApplierImpl jewelryVtoApplierImpl = new JewelryVtoApplierImpl(handCam.taskDisposables, com.perfectcorp.perfectlib.ph.clflurry.b.a.f41140a) { // from class: com.perfectcorp.perfectlib.JewelryVtoApplier.1
                    @Override // com.perfectcorp.perfectlib.JewelryVtoApplierImpl
                    public final ListenableFuture c(ArrayList arrayList) {
                        return JewelryVtoApplier.b(handCam, arrayList);
                    }

                    @Override // com.perfectcorp.perfectlib.JewelryVtoApplierImpl
                    public final void e() {
                        handCam.assertNotReleased();
                    }

                    @Override // com.perfectcorp.perfectlib.JewelryVtoApplierImpl
                    public final ListenableFuture g() {
                        return handCam.handEngineCtrl.clearAllEffects();
                    }
                };
                handCam.onPictureTakenListener = new qh();
                return jewelryVtoApplierImpl;
            }
            if (handApplierTarget instanceof PhotoHandAr) {
                if (!PerfectLib.f39740c.f39632j) {
                    mt.i("Doesn't have a valid license.");
                    return null;
                }
                final PhotoHandAr photoHandAr = (PhotoHandAr) handApplierTarget;
                photoHandAr.enableFunctionality(Functionality.JEWELRY);
                return new JewelryVtoApplierImpl(photoHandAr.taskDisposables, com.perfectcorp.perfectlib.ph.clflurry.b.a.f41141b) { // from class: com.perfectcorp.perfectlib.JewelryVtoApplier.2
                    @Override // com.perfectcorp.perfectlib.JewelryVtoApplierImpl
                    public final ListenableFuture c(ArrayList arrayList) {
                        return JewelryVtoApplier.b(photoHandAr, arrayList);
                    }

                    @Override // com.perfectcorp.perfectlib.JewelryVtoApplierImpl
                    public final void e() {
                        photoHandAr.assertNotReleased();
                    }

                    @Override // com.perfectcorp.perfectlib.JewelryVtoApplierImpl
                    public final ListenableFuture g() {
                        return photoHandAr.handEngineCtrl.clearAllEffects();
                    }

                    @Override // com.perfectcorp.perfectlib.JewelryVtoApplierImpl
                    public final void h() {
                        photoHandAr.validateState();
                    }
                };
            }
        }
        md.n("Unknown instance of applier target.");
        return null;
    }

    public static /* synthetic */ ListenableFuture b(HandApplierTarget handApplierTarget, ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            com.perfectcorp.perfectlib.ph.utility.b bVar = (com.perfectcorp.perfectlib.ph.utility.b) it.next();
            PerfectEffect perfectEffect = PerfectEffect.WATCH;
            PerfectEffect perfectEffect2 = bVar.f41735a;
            if (perfectEffect == perfectEffect2 || PerfectEffect.BRACELET == perfectEffect2) {
                arrayList2.add(bVar);
            } else if (PerfectEffect.RING == perfectEffect2) {
                arrayList3.add(bVar);
            }
        }
        ListenableFuture listenableFutureB = BraceletVtoApplier.b(handApplierTarget, arrayList2);
        ListenableFuture listenableFutureB2 = RingVtoApplier.b(handApplierTarget, arrayList3);
        return listenableFutureB2 != null ? listenableFutureB2 : listenableFutureB;
    }

    public static void create(HandApplierTarget handApplierTarget, CreateCallback createCallback) {
        Objects.requireNonNull(handApplierTarget, "handApplierTarget can't be null");
        Objects.requireNonNull(createCallback, "createCallback can't be null");
        int i2 = 2;
        new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new ph(handApplierTarget, 1)).j(Schedulers.f43170c).f(new b(i2)).i(AndroidSchedulers.a()).a(new ConsumerSingleObserver(new c(createCallback, i2), new defpackage.o2(createCallback, 6)));
    }

    public abstract Cancelable apply(LookSetting lookSetting, DownloadAndApplyCallback downloadAndApplyCallback);

    public abstract Cancelable apply(List<VtoSetting> list, ApplyCallback applyCallback);

    public abstract void applyEffectIds(List<EffectId> list, ApplyCallback applyCallback);

    public abstract void clearAllEffects(ApplyCallback applyCallback);

    public abstract void getEffectIds(EffectIdCallback effectIdCallback);

    public abstract void getProductIds(ProductIdCallback productIdCallback);

    public abstract Cancelable setRingPositionAndApply(List<EffectId> list, List<RingPosition> list2, ApplyCallback applyCallback);
}

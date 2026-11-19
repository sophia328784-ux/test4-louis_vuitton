package com.perfectcorp.perfectlib;

import android.graphics.Bitmap;
import com.cyberlink.clgpuimage.hand.CLHandARFilter;
import com.perfectcorp.perfectlib.internal.ModuleConfig;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.io.reactivex.android.schedulers.AndroidSchedulers;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.md;
import defpackage.mt;
import defpackage.ph;
import defpackage.qh;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public abstract class NailVtoApplier {

    public interface ApplyCallback {
        public static final ApplyCallback NOP = new AnonymousClass1();

        /* JADX INFO: renamed from: com.perfectcorp.perfectlib.NailVtoApplier$ApplyCallback$1, reason: invalid class name */
        class AnonymousClass1 implements ApplyCallback {
            @Override // com.perfectcorp.perfectlib.NailVtoApplier.ApplyCallback
            public final void onFailure(Throwable th) {
            }

            @Override // com.perfectcorp.perfectlib.NailVtoApplier.ApplyCallback
            public final void onSuccess(Bitmap bitmap) {
            }
        }

        void onFailure(Throwable th);

        void onSuccess(Bitmap bitmap);
    }

    public interface CreateCallback {
        void onFailure(Throwable th);

        void onSuccess(NailVtoApplier nailVtoApplier);
    }

    public interface DownloadAndApplyCallback {
        public static final DownloadAndApplyCallback NOP = new AnonymousClass1();

        /* JADX INFO: renamed from: com.perfectcorp.perfectlib.NailVtoApplier$DownloadAndApplyCallback$1, reason: invalid class name */
        class AnonymousClass1 implements DownloadAndApplyCallback {
            @Override // com.perfectcorp.perfectlib.NailVtoApplier.DownloadAndApplyCallback
            public final void downloadProgress(double d) {
            }

            @Override // com.perfectcorp.perfectlib.NailVtoApplier.DownloadAndApplyCallback
            public final void onFailure(Throwable th) {
            }

            @Override // com.perfectcorp.perfectlib.NailVtoApplier.DownloadAndApplyCallback
            public final void onSuccess(Bitmap bitmap) {
            }
        }

        void downloadProgress(double d);

        void onFailure(Throwable th);

        void onSuccess(Bitmap bitmap);
    }

    public interface EffectIdCallback {
        void onFailure(Throwable th);

        void onSuccess(List<EffectId> list);
    }

    public interface IntensitiesCallback {
        void onFailure(Throwable th);

        void onSuccess(Map<NailPosition, Integer> map);
    }

    public interface ProductIdCallback {
        void onFailure(Throwable th);

        void onSuccess(List<ProductId> list);
    }

    public static /* synthetic */ NailVtoApplierImpl a(HandApplierTarget handApplierTarget) {
        if (ModuleConfig.v) {
            if (handApplierTarget instanceof HandCam) {
                if (!PerfectLib.f39740c.f39625a) {
                    mt.i("Doesn't have a valid license.");
                    return null;
                }
                final HandCam handCam = (HandCam) handApplierTarget;
                handCam.enableFunctionality(Functionality.NAIL);
                NailVtoApplierImpl nailVtoApplierImpl = new NailVtoApplierImpl(handCam.taskDisposables, com.perfectcorp.perfectlib.ph.clflurry.b.a.f41140a) { // from class: com.perfectcorp.perfectlib.NailVtoApplier.1
                    @Override // com.perfectcorp.perfectlib.NailVtoApplierImpl
                    public final ListenableFuture p(CLHandARFilter.HandARParameters handARParameters) {
                        return handCam.handEngineCtrl.applyNail(handCam.loadNail3dObject(handARParameters), handARParameters);
                    }

                    @Override // com.perfectcorp.perfectlib.NailVtoApplierImpl
                    public final void r() {
                        handCam.assertNotReleased();
                    }
                };
                handCam.onPictureTakenListener = new qh();
                return nailVtoApplierImpl;
            }
            if (handApplierTarget instanceof PhotoHandAr) {
                if (!PerfectLib.f39740c.f39626b) {
                    mt.i("Doesn't have a valid license.");
                    return null;
                }
                final PhotoHandAr photoHandAr = (PhotoHandAr) handApplierTarget;
                photoHandAr.enableFunctionality(Functionality.NAIL);
                return new NailVtoApplierImpl(photoHandAr.taskDisposables, com.perfectcorp.perfectlib.ph.clflurry.b.a.f41141b) { // from class: com.perfectcorp.perfectlib.NailVtoApplier.2
                    @Override // com.perfectcorp.perfectlib.NailVtoApplierImpl
                    public final ListenableFuture p(CLHandARFilter.HandARParameters handARParameters) {
                        return photoHandAr.handEngineCtrl.applyNail(photoHandAr.loadNail3dObject(handARParameters), handARParameters);
                    }

                    @Override // com.perfectcorp.perfectlib.NailVtoApplierImpl
                    public final void r() {
                        photoHandAr.assertNotReleased();
                    }

                    @Override // com.perfectcorp.perfectlib.NailVtoApplierImpl
                    public final void x() {
                        photoHandAr.validateState();
                    }
                };
            }
        }
        md.n("Unknown instance of nail applier target.");
        return null;
    }

    public static void create(HandApplierTarget handApplierTarget, CreateCallback createCallback) {
        Objects.requireNonNull(handApplierTarget, "handApplierTarget can't be null");
        Objects.requireNonNull(createCallback, "createCallback can't be null");
        new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new ph(handApplierTarget, 2)).j(Schedulers.f43170c).f(new b(4)).i(AndroidSchedulers.a()).a(new ConsumerSingleObserver(new c(createCallback, 3), new defpackage.o2(createCallback, 12)));
    }

    public abstract Cancelable apply(LookSetting lookSetting, DownloadAndApplyCallback downloadAndApplyCallback);

    public abstract Cancelable apply(List<VtoSetting> list, ApplyCallback applyCallback);

    public abstract void applyEffectIds(List<EffectId> list, boolean z, ApplyCallback applyCallback);

    public abstract void clearAllEffects(ApplyCallback applyCallback);

    public abstract void clearEffects(Set<NailPosition> set, ApplyCallback applyCallback);

    public abstract void getEffectIds(EffectIdCallback effectIdCallback);

    public abstract void getIntensities(IntensitiesCallback intensitiesCallback);

    public abstract void getProductIds(ProductIdCallback productIdCallback);

    public abstract void setIntensities(Map<NailPosition, Integer> map, ApplyCallback applyCallback);
}

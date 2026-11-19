package com.perfectcorp.perfectlib;

import android.graphics.Bitmap;
import com.perfectcorp.perfectlib.internal.ModuleConfig;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.io.reactivex.android.schedulers.AndroidSchedulers;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.md;
import defpackage.mt;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AccessoryVtoApplier {

    public interface ApplyCallback {
        public static final ApplyCallback NOP = new AnonymousClass1();

        /* JADX INFO: renamed from: com.perfectcorp.perfectlib.AccessoryVtoApplier$ApplyCallback$1, reason: invalid class name */
        class AnonymousClass1 implements ApplyCallback {
            @Override // com.perfectcorp.perfectlib.AccessoryVtoApplier.ApplyCallback
            public final void onFailure(Throwable th) {
            }

            @Override // com.perfectcorp.perfectlib.AccessoryVtoApplier.ApplyCallback
            public final void onSuccess(Bitmap bitmap) {
            }
        }

        void onFailure(Throwable th);

        void onSuccess(Bitmap bitmap);
    }

    public interface CreateCallback {
        void onFailure(Throwable th);

        void onSuccess(AccessoryVtoApplier accessoryVtoApplier);
    }

    public interface EffectIdCallback extends AccessoryVtoApplierImpl.EffectIdCallback {
        @Override // com.perfectcorp.perfectlib.AccessoryVtoApplierImpl.EffectIdCallback
        void onFailure(Throwable th);

        @Override // com.perfectcorp.perfectlib.AccessoryVtoApplierImpl.EffectIdCallback
        void onSuccess(List<EffectId> list);
    }

    public interface ProductIdCallback extends AccessoryVtoApplierImpl.ProductIdCallback {
        @Override // com.perfectcorp.perfectlib.AccessoryVtoApplierImpl.ProductIdCallback
        void onFailure(Throwable th);

        @Override // com.perfectcorp.perfectlib.AccessoryVtoApplierImpl.ProductIdCallback
        void onSuccess(List<ProductId> list);
    }

    public static /* synthetic */ AccessoryVtoApplierImpl a(AccessoryApplierTarget accessoryApplierTarget) {
        if (ModuleConfig.y) {
            if (accessoryApplierTarget instanceof AccessoryCam) {
                if (!PerfectLib.accessoryFunctionalities.isNecklaceLiveEnabled) {
                    mt.i("Doesn't have a valid license.");
                    return null;
                }
                final AccessoryCam accessoryCam = (AccessoryCam) accessoryApplierTarget;
                accessoryCam.enableFunctionality(Functionality.NECKLACE);
                AccessoryVtoApplierImpl accessoryVtoApplierImpl = new AccessoryVtoApplierImpl(accessoryCam.taskDisposables, com.perfectcorp.perfectlib.ph.clflurry.b.a.f41140a) { // from class: com.perfectcorp.perfectlib.AccessoryVtoApplier.1
                    @Override // com.perfectcorp.perfectlib.AccessoryVtoApplierImpl
                    public final ListenableFuture d(com.perfectcorp.perfectlib.ph.utility.a aVar) {
                        return accessoryCam.accessoryEngineCtrl.applyNecklace(accessoryCam.loadNecklace3dObject(aVar.d));
                    }

                    @Override // com.perfectcorp.perfectlib.AccessoryVtoApplierImpl
                    public final void f() {
                        accessoryCam.assertNotReleased();
                    }

                    @Override // com.perfectcorp.perfectlib.AccessoryVtoApplierImpl
                    public final ListenableFuture h() {
                        return accessoryCam.accessoryEngineCtrl.clearAllEffects(accessoryCam.clearNecklace3dObject());
                    }
                };
                accessoryCam.onPictureTakenListener = new defpackage.p2();
                return accessoryVtoApplierImpl;
            }
            if (accessoryApplierTarget instanceof PhotoAccessoryAr) {
                if (!PerfectLib.accessoryFunctionalities.isNecklacePhotoEnabled) {
                    mt.i("Doesn't have a valid license.");
                    return null;
                }
                final PhotoAccessoryAr photoAccessoryAr = (PhotoAccessoryAr) accessoryApplierTarget;
                photoAccessoryAr.enableFunctionality(Functionality.NECKLACE);
                return new AccessoryVtoApplierImpl(photoAccessoryAr.taskDisposables, com.perfectcorp.perfectlib.ph.clflurry.b.a.f41141b) { // from class: com.perfectcorp.perfectlib.AccessoryVtoApplier.2
                    @Override // com.perfectcorp.perfectlib.AccessoryVtoApplierImpl
                    public final ListenableFuture d(com.perfectcorp.perfectlib.ph.utility.a aVar) {
                        return photoAccessoryAr.accessoryEngineCtrl.applyNecklace(photoAccessoryAr.loadNecklace3dObject(aVar.d));
                    }

                    @Override // com.perfectcorp.perfectlib.AccessoryVtoApplierImpl
                    public final void f() {
                        photoAccessoryAr.assertNotReleased();
                    }

                    @Override // com.perfectcorp.perfectlib.AccessoryVtoApplierImpl
                    public final ListenableFuture h() {
                        return photoAccessoryAr.accessoryEngineCtrl.clearAllEffects();
                    }

                    @Override // com.perfectcorp.perfectlib.AccessoryVtoApplierImpl
                    public final void k() {
                        photoAccessoryAr.validateState();
                    }
                };
            }
        }
        md.n("Unknown instance of applier target.");
        return null;
    }

    public static void create(AccessoryApplierTarget accessoryApplierTarget, CreateCallback createCallback) {
        Objects.requireNonNull(accessoryApplierTarget, "accessoryApplierTarget can't be null");
        Objects.requireNonNull(createCallback, "createCallback can't be null");
        int i2 = 0;
        new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new defpackage.n2(accessoryApplierTarget, i2)).j(Schedulers.f43170c).f(new b(i2)).i(AndroidSchedulers.a()).a(new ConsumerSingleObserver(new c(createCallback, i2), new defpackage.o2(createCallback, i2)));
    }

    public abstract Cancelable apply(List<VtoSetting> list, ApplyCallback applyCallback);

    public abstract void applyEffectIds(List<EffectId> list, ApplyCallback applyCallback);

    public abstract void clearAllEffects(ApplyCallback applyCallback);

    public abstract void getEffectIds(EffectIdCallback effectIdCallback);

    public abstract void getProductIds(ProductIdCallback productIdCallback);
}

package com.perfectcorp.perfectlib;

import android.graphics.Bitmap;
import com.perfectcorp.perfectlib.internal.ModuleConfig;
import com.perfectcorp.perfectlib.ymk.utility.RingPositionHelper;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.io.reactivex.android.schedulers.AndroidSchedulers;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.md;
import defpackage.mt;
import defpackage.ph;
import defpackage.qh;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public abstract class RingVtoApplier {

    public interface ApplyCallback extends HandVtoApplierImpl.ApplyCallback {
        public static final ApplyCallback NOP = new AnonymousClass1();

        /* JADX INFO: renamed from: com.perfectcorp.perfectlib.RingVtoApplier$ApplyCallback$1, reason: invalid class name */
        class AnonymousClass1 implements ApplyCallback {
            @Override // com.perfectcorp.perfectlib.RingVtoApplier.ApplyCallback, com.perfectcorp.perfectlib.HandVtoApplierImpl.ApplyCallback
            public final void onFailure(Throwable th) {
            }

            @Override // com.perfectcorp.perfectlib.RingVtoApplier.ApplyCallback, com.perfectcorp.perfectlib.HandVtoApplierImpl.ApplyCallback
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

        void onSuccess(RingVtoApplier ringVtoApplier);
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

    public static /* synthetic */ RingVtoApplierImpl a(HandApplierTarget handApplierTarget) {
        if (ModuleConfig.v) {
            if (handApplierTarget instanceof HandCam) {
                if (!PerfectLib.f39740c.f39627c) {
                    mt.i("Doesn't have a valid license.");
                    return null;
                }
                final HandCam handCam = (HandCam) handApplierTarget;
                handCam.enableFunctionality(Functionality.RING);
                RingVtoApplierImpl ringVtoApplierImpl = new RingVtoApplierImpl(handCam.taskDisposables, com.perfectcorp.perfectlib.ph.clflurry.b.a.f41140a) { // from class: com.perfectcorp.perfectlib.RingVtoApplier.1
                    @Override // com.perfectcorp.perfectlib.RingVtoApplierImpl
                    public final ListenableFuture c(ArrayList arrayList) {
                        return RingVtoApplier.b(handCam, arrayList);
                    }

                    @Override // com.perfectcorp.perfectlib.RingVtoApplierImpl
                    public final void e() {
                        handCam.assertNotReleased();
                    }

                    @Override // com.perfectcorp.perfectlib.RingVtoApplierImpl
                    public final ListenableFuture f() {
                        return handCam.handEngineCtrl.clearAllEffects();
                    }
                };
                handCam.onPictureTakenListener = new qh();
                return ringVtoApplierImpl;
            }
            if (handApplierTarget instanceof PhotoHandAr) {
                if (!PerfectLib.f39740c.d) {
                    mt.i("Doesn't have a valid license.");
                    return null;
                }
                final PhotoHandAr photoHandAr = (PhotoHandAr) handApplierTarget;
                photoHandAr.enableFunctionality(Functionality.RING);
                return new RingVtoApplierImpl(photoHandAr.taskDisposables, com.perfectcorp.perfectlib.ph.clflurry.b.a.f41141b) { // from class: com.perfectcorp.perfectlib.RingVtoApplier.2
                    @Override // com.perfectcorp.perfectlib.RingVtoApplierImpl
                    public final ListenableFuture c(ArrayList arrayList) {
                        return RingVtoApplier.b(photoHandAr, arrayList);
                    }

                    @Override // com.perfectcorp.perfectlib.RingVtoApplierImpl
                    public final void e() {
                        photoHandAr.assertNotReleased();
                    }

                    @Override // com.perfectcorp.perfectlib.RingVtoApplierImpl
                    public final ListenableFuture f() {
                        return photoHandAr.handEngineCtrl.clearAllEffects();
                    }

                    @Override // com.perfectcorp.perfectlib.RingVtoApplierImpl
                    public final void h() {
                        photoHandAr.validateState();
                    }
                };
            }
        }
        md.n("Unknown instance of applier target.");
        return null;
    }

    public static ListenableFuture b(HandApplierTarget handApplierTarget, ArrayList arrayList) {
        List list;
        int i2;
        HashMap map = new HashMap();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            com.perfectcorp.perfectlib.ph.utility.b bVar = (com.perfectcorp.perfectlib.ph.utility.b) it.next();
            List arrayList2 = map.containsKey(bVar.l) ? (List) map.get(bVar.l) : new ArrayList();
            Objects.requireNonNull(arrayList2);
            arrayList2.add(bVar);
            map.put(bVar.l, arrayList2);
        }
        Set setKeySet = map.keySet();
        String[] strArr = new String[setKeySet.size()];
        Iterator it2 = setKeySet.iterator();
        int i3 = 0;
        while (it2.hasNext()) {
            strArr[i3] = RingPositionHelper.a((RingPosition) it2.next()).a();
            i3++;
        }
        Iterator it3 = setKeySet.iterator();
        ListenableFuture listenableFutureApplyRing = null;
        int i4 = 0;
        while (it3.hasNext()) {
            List list2 = (List) map.get((RingPosition) it3.next());
            int i5 = 0;
            while (true) {
                Objects.requireNonNull(list2);
                if (i5 < list2.size()) {
                    com.perfectcorp.perfectlib.ph.utility.b bVar2 = (com.perfectcorp.perfectlib.ph.utility.b) list2.get(i5);
                    int iB = RingPositionHelper.a(bVar2.l).b();
                    if (handApplierTarget instanceof HandCam) {
                        HandCam handCam = (HandCam) handApplierTarget;
                        list = list2;
                        i2 = i4;
                        listenableFutureApplyRing = handCam.handEngineCtrl.applyRing(handCam.loadRing3dObject(bVar2.f41739f, i5, iB), i5, list2.size(), i4 == arrayList.size() - 1, bVar2.f41741i, bVar2.f41742j, bVar2.f41743k, bVar2.l, strArr);
                    } else {
                        list = list2;
                        if (handApplierTarget instanceof PhotoHandAr) {
                            PhotoHandAr photoHandAr = (PhotoHandAr) handApplierTarget;
                            i2 = i4;
                            listenableFutureApplyRing = photoHandAr.handEngineCtrl.applyRing(photoHandAr.loadRing3dObject(bVar2.f41739f, i5, iB), i5, list.size(), i4 == arrayList.size() - 1, bVar2.f41741i, bVar2.f41742j, bVar2.f41743k, bVar2.l, strArr);
                        } else {
                            i2 = i4;
                        }
                    }
                    i4 = i2 + 1;
                    i5++;
                    list2 = list;
                }
            }
        }
        return listenableFutureApplyRing;
    }

    public static void create(HandApplierTarget handApplierTarget, CreateCallback createCallback) {
        Objects.requireNonNull(handApplierTarget, "handApplierTarget can't be null");
        Objects.requireNonNull(createCallback, "createCallback can't be null");
        new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new ph(handApplierTarget, 3)).j(Schedulers.f43170c).f(new b(5)).i(AndroidSchedulers.a()).a(new ConsumerSingleObserver(new c(createCallback, 6), new defpackage.o2(createCallback, 16)));
    }

    public abstract Cancelable apply(List<VtoSetting> list, ApplyCallback applyCallback);

    public abstract void applyEffectIds(List<EffectId> list, ApplyCallback applyCallback);

    public abstract void clearAllEffects(ApplyCallback applyCallback);

    public abstract void getEffectIds(EffectIdCallback effectIdCallback);

    public abstract void getProductIds(ProductIdCallback productIdCallback);

    public abstract Cancelable setRingPositionAndApply(List<EffectId> list, List<RingPosition> list2, ApplyCallback applyCallback);
}

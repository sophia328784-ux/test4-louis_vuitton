package com.perfectcorp.perfectlib;

import com.perfectcorp.common.concurrent.CallingThread;
import com.perfectcorp.common.rx.Singles;
import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveSettingCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ymk.model.YMKFeatures$EventFeature;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.Futures;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFutureTask;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class s0 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41841b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f41842c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f41843e;

    public /* synthetic */ s0(Object obj, int i2, Object obj2, int i3) {
        this.f41841b = i3;
        this.d = obj;
        this.f41842c = i2;
        this.f41843e = obj2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        int i2 = this.f41841b;
        Object obj2 = this.f41843e;
        int i3 = this.f41842c;
        Object obj3 = this.d;
        switch (i2) {
            case 0:
                HandVtoApplierImpl handVtoApplierImpl = (HandVtoApplierImpl) obj3;
                handVtoApplierImpl.s(i3);
                ArrayList arrayListR = handVtoApplierImpl.r((ArrayList) obj2);
                Iterator it = arrayListR.iterator();
                while (it.hasNext()) {
                    handVtoApplierImpl.t((com.perfectcorp.perfectlib.ph.utility.b) it.next());
                }
                return handVtoApplierImpl.v(arrayListR);
            case 1:
                JewelryVtoApplierImpl jewelryVtoApplierImpl = (JewelryVtoApplierImpl) obj3;
                jewelryVtoApplierImpl.f(i3);
                ArrayList arrayListD = JewelryVtoApplierImpl.d((YMKPrimitiveData.Look) obj);
                com.perfectcorp.perfectlib.ph.clflurry.b bVar = new com.perfectcorp.perfectlib.ph.clflurry.b(YMKFeatures$EventFeature.Jewelry, jewelryVtoApplierImpl.f39649c);
                bVar.f41949c.put("look_guid", (String) obj2);
                com.perfectcorp.perfectlib.ph.clflurry.c.j(arrayListD, bVar);
                bVar.b();
                return jewelryVtoApplierImpl.d.v(arrayListD);
            case 2:
                return ((NailVtoApplierImpl) obj3).l(i3, (String) obj2, (YMKPrimitiveData.Look) obj);
            case 3:
                int i4 = PhotoMakeupInternal.n;
                return ((PhotoMakeupInternal) obj3).b(i3, true, (Iterable) obj, ((PhotoMakeupInternal.ApplyEffectIdsInfo) obj2).f39792b);
            default:
                PhotoMakeupInternal photoMakeupInternal = (PhotoMakeupInternal) obj3;
                YMKPrimitiveData.Look look = (YMKPrimitiveData.Look) obj;
                int i5 = PhotoMakeupInternal.n;
                photoMakeupInternal.g(i3);
                defpackage.a.v(3, "[applyLookTransform] Start apply. lookGuid=", (String) obj2, "PhotoMakeupInternal");
                ApplyEffectCtrl applyEffectCtrl = photoMakeupInternal.f39787h;
                LiveSettingCtrl liveSettingCtrl = photoMakeupInternal.f39789j;
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                int i6 = 0;
                ListenableFutureTask listenableFutureTaskCreate = ListenableFutureTask.create(new d2(look, liveSettingCtrl, applyEffectCtrl, i6, i6));
                MakeupCamInternal.n.execute(listenableFutureTaskCreate);
                final PhotoMakeup.PhotoMakeupFrameProcessingThread photoMakeupFrameProcessingThread = photoMakeupInternal.f39788i;
                Objects.requireNonNull(photoMakeupFrameProcessingThread);
                com.perfectcorp.thirdparty.com.google.common.util.concurrent.i iVar = new com.perfectcorp.thirdparty.com.google.common.util.concurrent.i() { // from class: com.perfectcorp.perfectlib.p3
                    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.i
                    public final ListenableFuture apply(Object obj4) {
                        return photoMakeupFrameProcessingThread.applyConfiguration((ApplyEffectCtrl.Configuration) obj4);
                    }
                };
                CallingThread callingThread = CallingThread.ANY;
                return Singles.a(Futures.i(listenableFutureTaskCreate, iVar, callingThread), callingThread);
        }
    }
}

package com.perfectcorp.perfectlib;

import com.perfectcorp.common.guava.MoreFutures;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.perfectlib.exceptions.LookNotFoundException;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class t0 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41854b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f41855c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f41856e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f41857f;

    public /* synthetic */ t0(int i2, int i3, Object obj, Object obj2, Object obj3) {
        this.f41854b = i3;
        this.d = obj;
        this.f41855c = i2;
        this.f41856e = obj2;
        this.f41857f = obj3;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        int i2 = this.f41854b;
        Object obj2 = this.f41856e;
        Object obj3 = this.f41857f;
        int i3 = this.f41855c;
        Object obj4 = this.d;
        switch (i2) {
            case 0:
                HandVtoApplierImpl handVtoApplierImpl = (HandVtoApplierImpl) obj4;
                handVtoApplierImpl.s(i3);
                List listH = handVtoApplierImpl.h((ArrayList) obj2, (List) obj3);
                Iterator it = listH.iterator();
                while (it.hasNext()) {
                    handVtoApplierImpl.t((com.perfectcorp.perfectlib.ph.utility.b) it.next());
                }
                return handVtoApplierImpl.v(listH);
            case 1:
                MakeupCamInternal makeupCamInternal = (MakeupCamInternal) obj4;
                List list = (List) obj;
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                makeupCamInternal.w(i3);
                return (List) MoreFutures.b(ApplyEffectUtility.i(list, (DownloadCacheStrategy) obj2, makeupCamInternal.f39700i, (DownloadTaskCancelable) obj3, NetworkTaskManager.TaskPriority.NORMAL).k());
            case 2:
                ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                return ((MakeupCamInternal) obj4).o(i3, (ArrayList) obj2, (EffectConfig) obj3);
            case 3:
                PhotoMakeupInternal photoMakeupInternal = (PhotoMakeupInternal) obj4;
                List list2 = (List) obj;
                int i4 = PhotoMakeupInternal.n;
                photoMakeupInternal.e(i3);
                return (List) MoreFutures.b(ApplyEffectUtility.i(list2, (DownloadCacheStrategy) obj2, photoMakeupInternal.f39790k, (DownloadTaskCancelable) obj3, NetworkTaskManager.TaskPriority.NORMAL).k());
            case 4:
                PhotoMakeupInternal photoMakeupInternal2 = (PhotoMakeupInternal) obj4;
                String str = (String) obj3;
                com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar = (com.perfectcorp.perfectlib.ph.database.ymk.makeup.b) obj;
                int i5 = PhotoMakeupInternal.n;
                photoMakeupInternal2.getClass();
                Optional optionalF = ApplyEffectUtility.F(bVar.d);
                if (!optionalF.d()) {
                    throw new LookNotFoundException("Can't find look=".concat(str));
                }
                com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.s sVarH = Single.h((YMKPrimitiveData.Look) optionalF.c());
                String str2 = bVar.d;
                AtomicReference atomicReference = new AtomicReference();
                int i6 = PhotoMakeupInternal.n;
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(sVarH, new s0(photoMakeupInternal2, i3, str2, 4)).i(Schedulers.f43170c), new z0(atomicReference, 3)).f(new u2(photoMakeupInternal2, str2, atomicReference, 1));
            default:
                int i7 = PhotoMakeupInternal.n;
                return ((PhotoMakeupInternal) obj4).a(i3, (ArrayList) obj2, (EffectConfig) obj3);
        }
    }
}

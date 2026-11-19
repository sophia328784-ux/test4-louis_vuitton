package com.perfectcorp.perfectlib;

import com.perfectcorp.common.guava.MoreFutures;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.observables.GroupedObservable;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class n1 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41068b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f41069c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DownloadCacheStrategy f41070e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ DownloadTaskCancelable f41071f;
    public final /* synthetic */ boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Serializable f41072h;

    public /* synthetic */ n1(Object obj, int i2, ArrayList arrayList, DownloadCacheStrategy downloadCacheStrategy, DownloadTaskCancelable downloadTaskCancelable, boolean z, int i3) {
        this.f41068b = i3;
        this.f41069c = obj;
        this.d = i2;
        this.f41072h = arrayList;
        this.f41070e = downloadCacheStrategy;
        this.f41071f = downloadTaskCancelable;
        this.g = z;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        int i2 = this.f41068b;
        int i3 = this.d;
        Serializable serializable = this.f41072h;
        Object obj2 = this.f41069c;
        switch (i2) {
            case 0:
                MakeupCamInternal makeupCamInternal = (MakeupCamInternal) obj2;
                VtoSetting vtoSetting = (VtoSetting) obj;
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                ((AtomicReference) serializable).set(vtoSetting);
                makeupCamInternal.w(i3);
                return (Sku) MoreFutures.b(ApplyEffectUtility.h(vtoSetting.f40015b, this.f41070e, makeupCamInternal.f39700i, this.f41071f, NetworkTaskManager.TaskPriority.NORMAL, this.g, ApplyEffectUtility.ProgressCallbackMainThreadWrapper.f39482b).k());
            case 1:
                MakeupCamInternal makeupCamInternal2 = (MakeupCamInternal) obj2;
                ArrayList arrayList = (ArrayList) serializable;
                GroupedObservable groupedObservable = (GroupedObservable) obj;
                com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.d dVar = makeupCamInternal2.f39694a;
                int i4 = this.d;
                makeupCamInternal2.w(i4);
                boolean zBooleanValue = ((Boolean) groupedObservable.f43162b).booleanValue();
                DownloadCacheStrategy downloadCacheStrategy = this.f41070e;
                DownloadTaskCancelable downloadTaskCancelable = this.f41071f;
                if (zBooleanValue) {
                    return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(groupedObservable.map(new l(4, arrayList)).toList().i(dVar), new t0(i4, 1, makeupCamInternal2, downloadCacheStrategy, downloadTaskCancelable));
                }
                AtomicReference atomicReference = new AtomicReference();
                Observable<T> observableObserveOn = groupedObservable.observeOn(dVar);
                boolean z = this.g;
                return observableObserveOn.map(new n1(makeupCamInternal2, atomicReference, i4, downloadCacheStrategy, downloadTaskCancelable, z, 0)).map(new w0(atomicReference, z, arrayList, 2)).toList();
            case 2:
                PhotoMakeupInternal photoMakeupInternal = (PhotoMakeupInternal) obj2;
                VtoSetting vtoSetting2 = (VtoSetting) obj;
                int i5 = PhotoMakeupInternal.n;
                ((AtomicReference) serializable).set(vtoSetting2);
                photoMakeupInternal.e(i3);
                return (Sku) MoreFutures.b(ApplyEffectUtility.h(vtoSetting2.f40015b, this.f41070e, photoMakeupInternal.f39790k, this.f41071f, NetworkTaskManager.TaskPriority.NORMAL, this.g, ApplyEffectUtility.ProgressCallbackMainThreadWrapper.f39482b).k());
            default:
                PhotoMakeupInternal photoMakeupInternal2 = (PhotoMakeupInternal) obj2;
                ArrayList arrayList2 = (ArrayList) serializable;
                GroupedObservable groupedObservable2 = (GroupedObservable) obj;
                com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.d dVar2 = photoMakeupInternal2.f39782a;
                int i6 = this.d;
                photoMakeupInternal2.e(i6);
                boolean zBooleanValue2 = ((Boolean) groupedObservable2.f43162b).booleanValue();
                DownloadCacheStrategy downloadCacheStrategy2 = this.f41070e;
                DownloadTaskCancelable downloadTaskCancelable2 = this.f41071f;
                if (zBooleanValue2) {
                    return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(groupedObservable2.map(new l(7, arrayList2)).toList().i(dVar2), new t0(i6, 3, photoMakeupInternal2, downloadCacheStrategy2, downloadTaskCancelable2));
                }
                AtomicReference atomicReference2 = new AtomicReference();
                Observable<T> observableObserveOn2 = groupedObservable2.observeOn(dVar2);
                boolean z2 = this.g;
                return observableObserveOn2.map(new n1(photoMakeupInternal2, atomicReference2, i6, downloadCacheStrategy2, downloadTaskCancelable2, z2, 2)).map(new w0(atomicReference2, z2, arrayList2, 3)).toList();
        }
    }

    public /* synthetic */ n1(Object obj, AtomicReference atomicReference, int i2, DownloadCacheStrategy downloadCacheStrategy, DownloadTaskCancelable downloadTaskCancelable, boolean z, int i3) {
        this.f41068b = i3;
        this.f41069c = obj;
        this.f41072h = atomicReference;
        this.d = i2;
        this.f41070e = downloadCacheStrategy;
        this.f41071f = downloadTaskCancelable;
        this.g = z;
    }
}

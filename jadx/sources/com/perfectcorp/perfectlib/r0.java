package com.perfectcorp.perfectlib;

import com.perfectcorp.common.guava.MoreFutures;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.observables.GroupedObservable;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class r0 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41803b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ HandVtoApplierImpl f41804c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ArrayList f41805e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ DownloadCacheStrategy f41806f;
    public final /* synthetic */ DownloadTaskCancelable g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ boolean f41807h;

    public /* synthetic */ r0(HandVtoApplierImpl handVtoApplierImpl, int i2, ArrayList arrayList, DownloadCacheStrategy downloadCacheStrategy, DownloadTaskCancelable downloadTaskCancelable, boolean z, int i3) {
        this.f41803b = i3;
        this.f41804c = handVtoApplierImpl;
        this.d = i2;
        this.f41805e = arrayList;
        this.f41806f = downloadCacheStrategy;
        this.g = downloadTaskCancelable;
        this.f41807h = z;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        int i2 = this.f41803b;
        ArrayList arrayList = this.f41805e;
        GroupedObservable groupedObservable = (GroupedObservable) obj;
        switch (i2) {
            case 0:
                final HandVtoApplierImpl handVtoApplierImpl = this.f41804c;
                com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.d dVar = handVtoApplierImpl.f39636e;
                final int i3 = this.d;
                handVtoApplierImpl.j(i3);
                boolean zBooleanValue = ((Boolean) groupedObservable.f43162b).booleanValue();
                final DownloadCacheStrategy downloadCacheStrategy = this.f41806f;
                final DownloadTaskCancelable downloadTaskCancelable = this.g;
                if (zBooleanValue) {
                    final int i4 = 1;
                    return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(groupedObservable.map(new defpackage.q2(5, arrayList)).toList().i(dVar), new Function() { // from class: com.perfectcorp.perfectlib.u0
                        @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                        public final Object apply(Object obj2) {
                            int i5 = i4;
                            DownloadTaskCancelable downloadTaskCancelable2 = downloadTaskCancelable;
                            DownloadCacheStrategy downloadCacheStrategy2 = downloadCacheStrategy;
                            int i6 = i3;
                            HandVtoApplierImpl handVtoApplierImpl2 = handVtoApplierImpl;
                            List list = (List) obj2;
                            switch (i5) {
                                case 0:
                                    handVtoApplierImpl2.j(i6);
                                    break;
                                default:
                                    handVtoApplierImpl2.j(i6);
                                    break;
                            }
                            return (List) MoreFutures.b(ApplyEffectUtility.i(list, downloadCacheStrategy2, handVtoApplierImpl2.f39640j, downloadTaskCancelable2, NetworkTaskManager.TaskPriority.NORMAL).k());
                        }
                    });
                }
                final AtomicReference atomicReference = new AtomicReference();
                Observable<T> observableObserveOn = groupedObservable.observeOn(dVar);
                final int i5 = 1;
                final boolean z = this.f41807h;
                return observableObserveOn.map(new Function() { // from class: com.perfectcorp.perfectlib.v0
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                    public final Object apply(Object obj2) {
                        int i6 = i5;
                        int i7 = i3;
                        AtomicReference atomicReference2 = atomicReference;
                        HandVtoApplierImpl handVtoApplierImpl2 = handVtoApplierImpl;
                        VtoSetting vtoSetting = (VtoSetting) obj2;
                        switch (i6) {
                            case 0:
                                atomicReference2.set(vtoSetting);
                                handVtoApplierImpl2.j(i7);
                                return (Sku) MoreFutures.b(ApplyEffectUtility.h(vtoSetting.f40015b, downloadCacheStrategy, handVtoApplierImpl2.f39640j, downloadTaskCancelable, NetworkTaskManager.TaskPriority.NORMAL, z, null).k());
                            default:
                                atomicReference2.set(vtoSetting);
                                handVtoApplierImpl2.j(i7);
                                return (Sku) MoreFutures.b(ApplyEffectUtility.h(vtoSetting.f40015b, downloadCacheStrategy, handVtoApplierImpl2.f39640j, downloadTaskCancelable, NetworkTaskManager.TaskPriority.NORMAL, z, null).k());
                        }
                    }
                }).map(new w0(atomicReference, z, arrayList, 1)).toList();
            default:
                final HandVtoApplierImpl handVtoApplierImpl2 = this.f41804c;
                com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.d dVar2 = handVtoApplierImpl2.f39636e;
                final int i6 = this.d;
                handVtoApplierImpl2.j(i6);
                boolean zBooleanValue2 = ((Boolean) groupedObservable.f43162b).booleanValue();
                final DownloadCacheStrategy downloadCacheStrategy2 = this.f41806f;
                final DownloadTaskCancelable downloadTaskCancelable2 = this.g;
                if (zBooleanValue2) {
                    final int i7 = 0;
                    return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(groupedObservable.map(new defpackage.q2(4, arrayList)).toList().i(dVar2), new Function() { // from class: com.perfectcorp.perfectlib.u0
                        @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                        public final Object apply(Object obj2) {
                            int i8 = i7;
                            DownloadTaskCancelable downloadTaskCancelable3 = downloadTaskCancelable2;
                            DownloadCacheStrategy downloadCacheStrategy3 = downloadCacheStrategy2;
                            int i9 = i6;
                            HandVtoApplierImpl handVtoApplierImpl3 = handVtoApplierImpl2;
                            List list = (List) obj2;
                            switch (i8) {
                                case 0:
                                    handVtoApplierImpl3.j(i9);
                                    break;
                                default:
                                    handVtoApplierImpl3.j(i9);
                                    break;
                            }
                            return (List) MoreFutures.b(ApplyEffectUtility.i(list, downloadCacheStrategy3, handVtoApplierImpl3.f39640j, downloadTaskCancelable3, NetworkTaskManager.TaskPriority.NORMAL).k());
                        }
                    });
                }
                final AtomicReference atomicReference2 = new AtomicReference();
                Observable<T> observableObserveOn2 = groupedObservable.observeOn(dVar2);
                final int i8 = 0;
                final boolean z2 = this.f41807h;
                return observableObserveOn2.map(new Function() { // from class: com.perfectcorp.perfectlib.v0
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                    public final Object apply(Object obj2) {
                        int i9 = i8;
                        int i10 = i6;
                        AtomicReference atomicReference3 = atomicReference2;
                        HandVtoApplierImpl handVtoApplierImpl3 = handVtoApplierImpl2;
                        VtoSetting vtoSetting = (VtoSetting) obj2;
                        switch (i9) {
                            case 0:
                                atomicReference3.set(vtoSetting);
                                handVtoApplierImpl3.j(i10);
                                return (Sku) MoreFutures.b(ApplyEffectUtility.h(vtoSetting.f40015b, downloadCacheStrategy2, handVtoApplierImpl3.f39640j, downloadTaskCancelable2, NetworkTaskManager.TaskPriority.NORMAL, z2, null).k());
                            default:
                                atomicReference3.set(vtoSetting);
                                handVtoApplierImpl3.j(i10);
                                return (Sku) MoreFutures.b(ApplyEffectUtility.h(vtoSetting.f40015b, downloadCacheStrategy2, handVtoApplierImpl3.f39640j, downloadTaskCancelable2, NetworkTaskManager.TaskPriority.NORMAL, z2, null).k());
                        }
                    }
                }).map(new w0(atomicReference2, z2, arrayList, 0)).toList();
        }
    }
}

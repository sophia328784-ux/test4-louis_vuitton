package com.perfectcorp.perfectlib;

import android.util.Pair;
import com.perfectcorp.common.guava.MoreFutures;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.ph.database.mcsdk.IdRow;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class m implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40466b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f40467c;
    public final /* synthetic */ List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DownloadCacheStrategy f40468e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ DownloadTaskCancelable f40469f;
    public final /* synthetic */ Object g;

    public /* synthetic */ m(Object obj, int i2, ImmutableList immutableList, DownloadCacheStrategy downloadCacheStrategy, DownloadTaskCancelable downloadTaskCancelable, int i3) {
        this.f40466b = i3;
        this.g = obj;
        this.f40467c = i2;
        this.d = immutableList;
        this.f40468e = downloadCacheStrategy;
        this.f40469f = downloadTaskCancelable;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = this.f40466b;
        List list = this.d;
        int i3 = this.f40467c;
        Object obj = this.g;
        switch (i2) {
            case 0:
                AccessoryVtoApplierImpl accessoryVtoApplierImpl = (AccessoryVtoApplierImpl) obj;
                accessoryVtoApplierImpl.g(i3);
                Pair pairB = AccessoryVtoApplierImpl.b(list, true);
                List list2 = (List) pairB.first;
                List<VtoSetting> list3 = (List) pairB.second;
                ArrayList arrayList = new ArrayList(list2);
                arrayList.removeAll(list3);
                ArrayList arrayList2 = new ArrayList();
                Iterator it = arrayList.iterator();
                while (true) {
                    boolean zHasNext = it.hasNext();
                    DownloadCacheStrategy downloadCacheStrategy = this.f40468e;
                    DownloadTaskCancelable downloadTaskCancelable = this.f40469f;
                    if (!zHasNext) {
                        for (VtoSetting vtoSetting : list3) {
                            accessoryVtoApplierImpl.g(i3);
                            MoreFutures.b(ApplyEffectUtility.h(vtoSetting.f40015b, downloadCacheStrategy, accessoryVtoApplierImpl.f39469j, downloadTaskCancelable, NetworkTaskManager.TaskPriority.NORMAL, true, null).k());
                            Optional optionalM = com.perfectcorp.perfectlib.ph.database.mcsdk.a.h().m(vtoSetting.f40015b);
                            if (optionalM.d()) {
                                arrayList2.add(VtoSetting.builder(vtoSetting).setProductGuid(((IdRow) optionalM.c()).f41148b).setSkuGuid(((IdRow) optionalM.c()).d).build());
                            }
                        }
                        return arrayList2;
                    }
                    VtoSetting vtoSetting2 = (VtoSetting) it.next();
                    accessoryVtoApplierImpl.g(i3);
                    MoreFutures.b(ApplyEffectUtility.h(vtoSetting2.f40015b, downloadCacheStrategy, accessoryVtoApplierImpl.f39469j, downloadTaskCancelable, NetworkTaskManager.TaskPriority.NORMAL, false, null).k());
                    arrayList2.add(vtoSetting2);
                }
                break;
            default:
                NailVtoApplierImpl nailVtoApplierImpl = (NailVtoApplierImpl) obj;
                nailVtoApplierImpl.s(i3);
                Pair pairE = NailVtoApplierImpl.e(list, true);
                List list4 = (List) pairE.first;
                List<VtoSetting> list5 = (List) pairE.second;
                ArrayList arrayList3 = new ArrayList(list4);
                arrayList3.removeAll(list5);
                ArrayList arrayList4 = new ArrayList();
                Iterator it2 = arrayList3.iterator();
                while (true) {
                    boolean zHasNext2 = it2.hasNext();
                    DownloadCacheStrategy downloadCacheStrategy2 = this.f40468e;
                    DownloadTaskCancelable downloadTaskCancelable2 = this.f40469f;
                    if (!zHasNext2) {
                        for (VtoSetting vtoSetting3 : list5) {
                            nailVtoApplierImpl.s(i3);
                            MoreFutures.b(ApplyEffectUtility.h(vtoSetting3.f40015b, downloadCacheStrategy2, nailVtoApplierImpl.f39730i, downloadTaskCancelable2, NetworkTaskManager.TaskPriority.NORMAL, true, null).k());
                            Optional optionalM2 = com.perfectcorp.perfectlib.ph.database.mcsdk.a.h().m(vtoSetting3.f40015b);
                            if (optionalM2.d()) {
                                arrayList4.add(VtoSetting.builder(vtoSetting3).setProductGuid(((IdRow) optionalM2.c()).f41148b).setSkuGuid(((IdRow) optionalM2.c()).d).build());
                            }
                        }
                        return arrayList4;
                    }
                    VtoSetting vtoSetting4 = (VtoSetting) it2.next();
                    nailVtoApplierImpl.s(i3);
                    MoreFutures.b(ApplyEffectUtility.h(vtoSetting4.f40015b, downloadCacheStrategy2, nailVtoApplierImpl.f39730i, downloadTaskCancelable2, NetworkTaskManager.TaskPriority.NORMAL, false, null).k());
                    arrayList4.add(vtoSetting4);
                }
                break;
        }
    }
}

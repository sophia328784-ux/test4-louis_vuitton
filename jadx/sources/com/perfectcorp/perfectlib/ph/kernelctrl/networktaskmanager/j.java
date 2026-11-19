package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager;

import android.text.TextUtils;
import android.util.Pair;
import com.perfectcorp.common.concurrent.ThreadFactoryBuilder;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.makeupcam.template.TemplateConsts;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import com.perfectcorp.thirdparty.io.reactivex.Maybe;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.f91;
import defpackage.fc;
import defpackage.hw0;
import defpackage.ms;
import defpackage.r81;
import defpackage.t7;
import defpackage.ys;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicInteger f41498a = new AtomicInteger();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final List f41499b = ImmutableList.z(BeautyMode.EYE_CONTACT);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ThreadPoolExecutor f41500c;
    public static final com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.d d;

    static {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        ThreadFactoryBuilder threadFactoryBuilder = new ThreadFactoryBuilder();
        threadFactoryBuilder.f39170a = "IdSystemDataHelperInsertDBThread";
        threadFactoryBuilder.d = 10;
        threadFactoryBuilder.f39172c = true;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.MINUTES, linkedBlockingQueue, threadFactoryBuilder.a());
        f41500c = threadPoolExecutor;
        d = Schedulers.a(threadPoolExecutor);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    public static Maybe a(List list, String str, BeautyMode beautyMode, YMKPrimitiveData.SourceType sourceType, float f2, NetworkTaskManager.TaskPriority taskPriority, DownloadTaskCancelable downloadTaskCancelable) {
        String strC = TemplateConsts.c(beautyMode);
        int andIncrement = f41498a.getAndIncrement();
        int i2 = 3;
        fc.z(list, fc.q(andIncrement, "[#", "] #getIdSystemData(); ids.size()="), 3, "IdSystemDataHelper");
        ArrayList arrayListE = e(andIncrement, list, str);
        if (arrayListE.isEmpty()) {
            return Maybe.just(Pair.create(new ArrayList(), new TemplateUtils.c()));
        }
        Single list2 = Observable.fromIterable(Lists.b(30, arrayListE)).concatMap(new hw0(andIncrement, taskPriority, i2)).toList();
        l lVar = new l();
        lVar.f41509b = andIncrement;
        lVar.f41510c = list;
        lVar.d = taskPriority;
        lVar.f41511e = downloadTaskCancelable;
        list2.getClass();
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m mVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(list2, lVar);
        k kVar = new k();
        kVar.f41503b = downloadTaskCancelable;
        kVar.f41504c = andIncrement;
        kVar.d = list;
        kVar.f41505e = str;
        kVar.f41506f = beautyMode;
        kVar.g = sourceType;
        kVar.f41507h = strC;
        kVar.f41508i = f2;
        SingleSource mVar2 = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(mVar, kVar);
        return mVar2 instanceof com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.b ? ((com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.b) mVar2).a() : new com.perfectcorp.thirdparty.io.reactivex.internal.operators.maybe.e(mVar2);
    }

    public static Observable b(String str, HashMap map, NetworkTaskManager.TaskPriority taskPriority, DownloadTaskCancelable downloadTaskCancelable, int i2) {
        Single list = Observable.fromIterable(map.values()).flatMapSingle(new f91(downloadTaskCancelable, str, taskPriority, i2)).toList();
        hw0 hw0Var = new hw0(i2, map, 4);
        list.getClass();
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(list, hw0Var).l();
    }

    public static com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t c(Collection collection, String str, NetworkTaskManager.TaskPriority taskPriority, DownloadTaskCancelable downloadTaskCancelable) {
        int andIncrement = f41498a.getAndIncrement();
        StringBuilder sbQ = fc.q(andIncrement, "[#", "] #getDownloadIDSystemSingle(); downloadComponentMap.size()=");
        sbQ.append(collection.size());
        Log.g(3, "IdSystemDataHelper", sbQ.toString());
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(Observable.fromIterable(collection).filter(new r81(21)).flatMapMaybe(new f91(andIncrement, str, taskPriority, downloadTaskCancelable)).toList().i(d), new ms(andIncrement, 4));
    }

    public static com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u d(DownloadTaskCancelable downloadTaskCancelable, String str, ArrayList arrayList) {
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(a(arrayList, "", TemplateConsts.d(str), YMKPrimitiveData.SourceType.SKU, TemplateUtils.f41580a, NetworkTaskManager.TaskPriority.LOW, downloadTaskCancelable).toSingle().i(d), new t7(str, 23)).i(Schedulers.f43170c);
    }

    public static ArrayList e(int i2, List list, String str) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            if (com.perfectcorp.perfectlib.ph.database.ymk.idsystem.a.f(YMKDatabase.b(), str2) && !TextUtils.isEmpty(str)) {
                arrayList.add(new com.perfectcorp.perfectlib.ph.template.a(str2, str, 0L));
            }
            arrayList2.add(str2);
        }
        StringBuilder sbQ = fc.q(i2, "[#", "] Filter out downloaded IDs; ids.size()=");
        sbQ.append(list.size());
        sbQ.append(", onlineIds.size()=");
        sbQ.append(arrayList2.size());
        Log.g(3, "IdSystemDataHelper", sbQ.toString());
        DBUtility.i(YMKDatabase.b(), new ys(1, arrayList));
        Log.g(3, "IdSystemDataHelper", "[#" + i2 + "] Insert downloaded IDs completed. downloadedIdSystemInfos.size()=" + arrayList.size());
        return arrayList2;
    }

    public static void f(TemplateUtils.b bVar, String str, String str2, YMKPrimitiveData.SourceType sourceType) {
        com.perfectcorp.perfectlib.ph.template.m mVar;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Iterator it = bVar.d.iterator();
        do {
            if (!it.hasNext()) {
                mVar = null;
                break;
            }
            mVar = (com.perfectcorp.perfectlib.ph.template.m) it.next();
        } while (!mVar.f41671a.equals(str));
        if (mVar != null) {
            return;
        }
        h(bVar, str, str2, sourceType);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:12:0x0020 A[RETURN] */
    public static boolean g(TemplateUtils.b bVar, String str) {
        for (com.perfectcorp.perfectlib.ph.template.d dVar : bVar.f41596e) {
            if (dVar.f41624a.equals(str)) {
                if (dVar != null) {
                    return true;
                }
                return false;
            }
        }
        dVar = null;
        if (dVar != null) {
            return true;
        }
        return false;
    }

    public static void h(TemplateUtils.b bVar, String str, String str2, YMKPrimitiveData.SourceType sourceType) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (((ImmutableList) f41499b).contains(BeautyMode.valueOfSkuFeatureType(str2))) {
            return;
        }
        bVar.t.put(str, new TemplateUtils.a(str, TemplateUtils.a.EnumC0180a.f41592a, TemplateConsts.d(str2), sourceType));
    }
}

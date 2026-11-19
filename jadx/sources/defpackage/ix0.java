package defpackage;

import android.util.Pair;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.network.ProgressCallback;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.DownloadCacheStrategy;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.SkuSetInfo;
import com.perfectcorp.perfectlib.exceptions.ContentIssueException;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.ph.database.ymk.skuset.a;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b;
import com.perfectcorp.perfectlib.ph.template.e;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.mixed.d;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.v;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ix0 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71218b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SkuHandler f71219c;
    public final /* synthetic */ ConcurrentHashMap d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f71220e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ AtomicInteger f71221f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ DownloadTaskCancelable f71222h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ boolean f71223i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ ConcurrentHashMap f71224j;

    public /* synthetic */ ix0(SkuHandler skuHandler, DownloadTaskCancelable downloadTaskCancelable, boolean z, ConcurrentHashMap concurrentHashMap, ConcurrentHashMap concurrentHashMap2, SkuHandler.DownloadSkuSetsCallback downloadSkuSetsCallback, AtomicInteger atomicInteger, int i2) {
        this.f71219c = skuHandler;
        this.f71222h = downloadTaskCancelable;
        this.f71223i = z;
        this.d = concurrentHashMap;
        this.f71224j = concurrentHashMap2;
        this.f71220e = downloadSkuSetsCallback;
        this.f71221f = atomicInteger;
        this.g = i2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        int i2 = this.f71218b;
        Object obj2 = this.f71220e;
        switch (i2) {
            case 0:
                final SkuHandler.DownloadSkuSetsCallback downloadSkuSetsCallback = (SkuHandler.DownloadSkuSetsCallback) obj2;
                Pair pair = (Pair) obj;
                final String str = (String) pair.first;
                b.c cVar = (b.c) pair.second;
                final String str2 = cVar.skuSetId;
                Optional optionalE = e.C0182e.e(str2);
                boolean zD = optionalE.d();
                SkuHandler skuHandler = this.f71219c;
                DownloadTaskCancelable downloadTaskCancelable = this.f71222h;
                Single singleI = (!zD || cVar.lastModified > ((a) optionalE.c()).f41331e) ? ApplyEffectUtility.i(Collections.singletonList(str2), DownloadCacheStrategy.UPDATE_FIRST, skuHandler.f39935b, downloadTaskCancelable, NetworkTaskManager.TaskPriority.LOW) : Observable.fromIterable(cVar.a()).map(new yw0(20)).flatMapSingle(new p3(skuHandler, downloadTaskCancelable, 29)).toList();
                final boolean z = this.f71223i;
                final ConcurrentHashMap concurrentHashMap = this.d;
                final ConcurrentHashMap concurrentHashMap2 = this.f71224j;
                final AtomicInteger atomicInteger = this.f71221f;
                final int i3 = this.g;
                return new v(singleI.f(new Consumer() { // from class: vx0
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                    public final void accept(Object obj3) {
                        String str3 = str2;
                        boolean z2 = z;
                        ConcurrentHashMap concurrentHashMap3 = concurrentHashMap;
                        String str4 = str;
                        try {
                            Optional optionalE2 = e.C0182e.e(str3);
                            List<Pair> listB = SkuSetInfo.b((a) optionalE2.c(), z2);
                            ArrayList<SkuSetInfo> arrayList = new ArrayList(listB.size());
                            for (Pair pair2 : listB) {
                                List list = (List) pair2.second;
                                if (list.isEmpty()) {
                                    concurrentHashMap3.put(((a) optionalE2.c()).f41328a, new ContentIssueException("SKU set item info is empty."));
                                    arrayList.clear();
                                    break;
                                }
                                arrayList.add(new SkuSetInfo((a) optionalE2.c(), (String) pair2.first, list));
                            }
                            if (!arrayList.isEmpty()) {
                                SkuSetInfo skuSetInfo = null;
                                for (SkuSetInfo skuSetInfo2 : arrayList) {
                                    if (Objects.equals(str4, skuSetInfo2.getGuid())) {
                                        skuSetInfo = skuSetInfo2;
                                    }
                                }
                                ConcurrentHashMap concurrentHashMap4 = concurrentHashMap2;
                                if (skuSetInfo != null) {
                                    concurrentHashMap4.put(str4, Collections.singletonList(skuSetInfo));
                                } else {
                                    concurrentHashMap4.put(str4, arrayList);
                                }
                            }
                        } catch (Throwable th) {
                            Log.e("SkuHandler", "[downloadSkuSets] get downloaded SkuSetInfo failed", th);
                            concurrentHashMap3.put(str4, th);
                        }
                        PfCommons.c(new ay0(downloadSkuSetsCallback, atomicInteger, i3, 0));
                    }
                }), new ta0(str, concurrentHashMap, downloadSkuSetsCallback, atomicInteger, i3, 5), null);
            case 1:
                SkuHandler.DownloadSkuSetsCallback downloadSkuSetsCallback2 = (SkuHandler.DownloadSkuSetsCallback) obj2;
                List list = (List) obj;
                Single list2 = Observable.fromIterable(list).map(new yw0(11)).toList();
                yw0 yw0Var = new yw0(8);
                list2.getClass();
                Single singleCollectInto = new d(list2, yw0Var).concatMapIterable(new zy0(6)).collectInto(new ConcurrentHashMap(), new yw0(12));
                ConcurrentHashMap concurrentHashMap3 = this.d;
                AtomicInteger atomicInteger2 = this.f71221f;
                int i4 = this.g;
                ta0 ta0Var = new ta0(list, concurrentHashMap3, downloadSkuSetsCallback2, atomicInteger2, i4, 2);
                singleCollectInto.getClass();
                return new d(singleCollectInto, ta0Var).flatMapSingle(new ix0(this.f71219c, this.f71222h, this.f71223i, concurrentHashMap3, this.f71224j, downloadSkuSetsCallback2, atomicInteger2, i4));
            default:
                ProgressCallback progressCallback = (ProgressCallback) obj2;
                Collection<Map.Entry> collection = (Collection) obj;
                ConcurrentHashMap concurrentHashMap4 = new ConcurrentHashMap();
                for (Map.Entry entry : collection) {
                    concurrentHashMap4.put((String) entry.getValue(), (String) entry.getKey());
                }
                Single list3 = Observable.fromIterable(collection).map(new yw0(24)).toList();
                SkuHandler skuHandler2 = this.f71219c;
                ConcurrentHashMap concurrentHashMap5 = this.d;
                boolean z2 = this.f71223i;
                ld ldVar = new ld(skuHandler2, concurrentHashMap4, concurrentHashMap5, z2, 2);
                list3.getClass();
                ImmutableList immutableListP = FluentIterable.n(collection).i(new uw(1, (Set) new t(list3, ldVar).c())).p();
                ImmutableList immutableListP2 = FluentIterable.n(immutableListP).r(new xx0(1)).p();
                int size = collection.size() - immutableListP2.size();
                AtomicInteger atomicInteger3 = this.f71221f;
                int i5 = this.g;
                if (size > 0) {
                    atomicInteger3.addAndGet(size);
                    PfCommons.c(new rx0(progressCallback, atomicInteger3, i5, 1));
                }
                if (immutableListP2.isEmpty()) {
                    return Observable.empty();
                }
                ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
                v vVar = new v(new m(SkuHandler.e(), new zw0(immutableListP2, 2)), new zw0(immutableListP2, 3), null);
                DownloadTaskCancelable downloadTaskCancelable2 = this.f71222h;
                ConcurrentHashMap concurrentHashMap6 = this.f71224j;
                return new m(new t(vVar, new by0(skuHandler2, downloadTaskCancelable2, immutableListP2, concurrentHashMap4, concurrentHashMap6, atomicInteger3, progressCallback, i5)), new cy0(skuHandler2, downloadTaskCancelable2, concurrentHashMap4, atomicInteger3, concurrentLinkedQueue, concurrentHashMap5, z2, progressCallback, i5, concurrentHashMap6, immutableListP)).l().observeOn(Schedulers.f43170c);
        }
    }

    public /* synthetic */ ix0(SkuHandler skuHandler, ConcurrentHashMap concurrentHashMap, SkuHandler.DownloadSkuSetsCallback downloadSkuSetsCallback, AtomicInteger atomicInteger, int i2, DownloadTaskCancelable downloadTaskCancelable, boolean z, ConcurrentHashMap concurrentHashMap2) {
        this.f71219c = skuHandler;
        this.d = concurrentHashMap;
        this.f71220e = downloadSkuSetsCallback;
        this.f71221f = atomicInteger;
        this.g = i2;
        this.f71222h = downloadTaskCancelable;
        this.f71223i = z;
        this.f71224j = concurrentHashMap2;
    }

    public /* synthetic */ ix0(SkuHandler skuHandler, ConcurrentHashMap concurrentHashMap, boolean z, AtomicInteger atomicInteger, ProgressCallback progressCallback, int i2, DownloadTaskCancelable downloadTaskCancelable, ConcurrentHashMap concurrentHashMap2) {
        this.f71219c = skuHandler;
        this.d = concurrentHashMap;
        this.f71223i = z;
        this.f71221f = atomicInteger;
        this.f71220e = progressCallback;
        this.g = i2;
        this.f71222h = downloadTaskCancelable;
        this.f71224j = concurrentHashMap2;
    }
}

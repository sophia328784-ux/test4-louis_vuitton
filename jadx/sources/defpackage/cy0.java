package defpackage;

import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.network.ProgressCallback;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.SkuDataForProtocol;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.h;
import com.perfectcorp.perfectlib.ph.template.SkuTemplateUtils;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.utility.FileDownloader;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.v;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class cy0 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68361b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SkuHandler f68362c;
    public final /* synthetic */ DownloadTaskCancelable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ConcurrentHashMap f68363e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ AtomicInteger f68364f;
    public final /* synthetic */ ConcurrentLinkedQueue g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ConcurrentHashMap f68365h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ boolean f68366i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ ProgressCallback f68367j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ int f68368k;
    public final /* synthetic */ ConcurrentHashMap l;
    public final /* synthetic */ Object m;

    public /* synthetic */ cy0(SkuHandler skuHandler, DownloadTaskCancelable downloadTaskCancelable, SkuDataForProtocol skuDataForProtocol, ConcurrentHashMap concurrentHashMap, AtomicInteger atomicInteger, ConcurrentLinkedQueue concurrentLinkedQueue, ConcurrentHashMap concurrentHashMap2, boolean z, ProgressCallback progressCallback, int i2, ConcurrentHashMap concurrentHashMap3) {
        this.f68362c = skuHandler;
        this.d = downloadTaskCancelable;
        this.m = skuDataForProtocol;
        this.f68363e = concurrentHashMap;
        this.f68364f = atomicInteger;
        this.g = concurrentLinkedQueue;
        this.f68365h = concurrentHashMap2;
        this.f68366i = z;
        this.f68367j = progressCallback;
        this.f68368k = i2;
        this.l = concurrentHashMap3;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        ArrayList arrayList;
        SkuHandler skuHandler;
        List list;
        DownloadTaskCancelable downloadTaskCancelable;
        switch (this.f68361b) {
            case 0:
                SkuHandler skuHandler2 = this.f68362c;
                DownloadTaskCancelable downloadTaskCancelable2 = this.d;
                ConcurrentHashMap concurrentHashMap = this.f68363e;
                AtomicInteger atomicInteger = this.f68364f;
                ConcurrentLinkedQueue concurrentLinkedQueue = this.g;
                ConcurrentHashMap concurrentHashMap2 = this.f68365h;
                boolean z = this.f68366i;
                ProgressCallback progressCallback = this.f68367j;
                int i2 = this.f68368k;
                ConcurrentHashMap concurrentHashMap3 = this.l;
                List list2 = (List) this.m;
                Optional optional = (Optional) obj;
                if (!optional.d()) {
                    return Single.h(Collections.EMPTY_LIST);
                }
                SkuDataForProtocol skuDataForProtocol = (SkuDataForProtocol) optional.c();
                downloadTaskCancelable2.c();
                synchronized (skuDataForProtocol.f39912a) {
                    try {
                        arrayList = new ArrayList();
                        Map mapH = skuDataForProtocol.f39915e.h();
                        Iterator it = skuDataForProtocol.f39914c.keySet().iterator();
                        while (true) {
                            skuHandler = skuHandler2;
                            if (!it.hasNext()) {
                                list = list2;
                                downloadTaskCancelable = downloadTaskCancelable2;
                            } else {
                                String str = (String) it.next();
                                if (MoreCollections.a((Collection) mapH.get(str))) {
                                    arrayList.add(str);
                                    Log.g(3, "SkuDataForProtocol", "SKU contains no DownloadComponent. skuGuid=" + str);
                                }
                                it = it;
                                downloadTaskCancelable2 = downloadTaskCancelable2;
                                skuHandler2 = skuHandler;
                                list2 = list2;
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    String str2 = (String) it2.next();
                    ArrayList arrayList2 = arrayList;
                    h hVarA = skuDataForProtocol.a(str2);
                    BeautyMode beautyModeC = SkuTemplateUtils.c(hVarA.type);
                    String str3 = (String) concurrentHashMap.get(str2);
                    Objects.requireNonNull(str3);
                    Log.g(3, "SkuHandler", "SKU no needs to download IDC. original GUID=" + str3 + ", SKU GUID=" + str2);
                    atomicInteger.incrementAndGet();
                    SkuHandler skuHandler3 = skuHandler;
                    boolean z2 = z;
                    concurrentLinkedQueue.add(new oy0(0, skuHandler3, concurrentHashMap2, str3, beautyModeC, hVarA, z2));
                    i2 = i2;
                    skuDataForProtocol = skuDataForProtocol;
                    arrayList = arrayList2;
                    z = z2;
                    concurrentHashMap3 = concurrentHashMap3;
                    it2 = it2;
                    skuHandler = skuHandler3;
                }
                int i3 = i2;
                SkuDataForProtocol skuDataForProtocol2 = skuDataForProtocol;
                ArrayList arrayList3 = arrayList;
                boolean z3 = z;
                SkuHandler skuHandler4 = skuHandler;
                ConcurrentHashMap concurrentHashMap4 = concurrentHashMap3;
                if (!arrayList3.isEmpty()) {
                    PfCommons.c(new rx0(progressCallback, atomicInteger, i3, 4));
                    Log.g(3, "SkuHandler", "SkuIdsWithoutDownloadComponent=" + arrayList3);
                }
                return new v(Observable.fromIterable(skuDataForProtocol2.f39919j).flatMapSingle(new cy0(skuHandler4, downloadTaskCancelable, skuDataForProtocol2, concurrentHashMap, atomicInteger, concurrentLinkedQueue, concurrentHashMap2, z3, progressCallback, i3, concurrentHashMap4)).toList().f(new tw0(downloadTaskCancelable, skuDataForProtocol2, concurrentLinkedQueue, 1)), new ta0(list, atomicInteger, concurrentHashMap4, progressCallback, i3, 6), null);
            default:
                final SkuHandler skuHandler5 = this.f68362c;
                final DownloadTaskCancelable downloadTaskCancelable3 = this.d;
                final SkuDataForProtocol skuDataForProtocol3 = (SkuDataForProtocol) this.m;
                final ConcurrentHashMap concurrentHashMap5 = this.f68363e;
                final AtomicInteger atomicInteger2 = this.f68364f;
                final ConcurrentLinkedQueue concurrentLinkedQueue2 = this.g;
                final ConcurrentHashMap concurrentHashMap6 = this.f68365h;
                final boolean z4 = this.f68366i;
                final ProgressCallback progressCallback2 = this.f68367j;
                final int i4 = this.f68368k;
                final SkuDataForProtocol.DownloadComponent downloadComponent = (SkuDataForProtocol.DownloadComponent) obj;
                return new v(new p(new ny0(downloadTaskCancelable3, downloadComponent, 2)).j(FileDownloader.d).f(new Consumer() { // from class: vy0
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                    public final void accept(Object obj2) {
                        ArrayList<String> arrayList4;
                        SkuHandler skuHandler6 = skuHandler5;
                        DownloadTaskCancelable downloadTaskCancelable4 = downloadTaskCancelable3;
                        SkuDataForProtocol skuDataForProtocol4 = skuDataForProtocol3;
                        SkuDataForProtocol.DownloadComponent downloadComponent2 = downloadComponent;
                        ConcurrentHashMap concurrentHashMap7 = concurrentHashMap5;
                        AtomicInteger atomicInteger3 = atomicInteger2;
                        ConcurrentLinkedQueue concurrentLinkedQueue3 = concurrentLinkedQueue2;
                        ConcurrentHashMap concurrentHashMap8 = concurrentHashMap6;
                        boolean z5 = z4;
                        ProgressCallback progressCallback3 = progressCallback2;
                        int i5 = i4;
                        downloadTaskCancelable4.c();
                        synchronized (skuDataForProtocol4.f39912a) {
                            try {
                                String strA = downloadComponent2.a();
                                arrayList4 = new ArrayList();
                                Collection collectionA = skuDataForProtocol4.f39916f.a(strA);
                                Set set = MoreCollections.f39434a;
                                if (collectionA == null) {
                                    collectionA = Collections.EMPTY_SET;
                                }
                                for (String str4 : ImmutableSet.t(collectionA).h()) {
                                    if (!skuDataForProtocol4.m.contains(str4)) {
                                        Set set2 = skuDataForProtocol4.f39915e.get((Object) str4);
                                        set2.remove(strA);
                                        if (set2.isEmpty()) {
                                            skuDataForProtocol4.m.add(str4);
                                            arrayList4.add(str4);
                                        }
                                    }
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                        for (String str5 : arrayList4) {
                            h hVarA2 = skuDataForProtocol4.a(str5);
                            BeautyMode beautyModeC2 = SkuTemplateUtils.c(hVarA2.type);
                            String str6 = (String) concurrentHashMap7.get(str5);
                            Objects.requireNonNull(str6);
                            Log.g(3, "SkuHandler", "Download SKU success cause by " + downloadComponent2.b() + ". original GUID=" + str6 + ", SKU GUID=" + str5);
                            atomicInteger3.incrementAndGet();
                            skuHandler6 = skuHandler6;
                            concurrentHashMap8 = concurrentHashMap8;
                            concurrentLinkedQueue3.add(new oy0(1, skuHandler6, concurrentHashMap8, str6, beautyModeC2, hVarA2, z5));
                        }
                        if (arrayList4.isEmpty()) {
                            return;
                        }
                        PfCommons.c(new rx0(progressCallback3, atomicInteger3, i5, 6));
                    }
                }), new by0(downloadTaskCancelable3, downloadComponent, skuDataForProtocol3, concurrentHashMap5, atomicInteger2, this.l, progressCallback2, i4), null);
        }
    }

    public /* synthetic */ cy0(SkuHandler skuHandler, DownloadTaskCancelable downloadTaskCancelable, ConcurrentHashMap concurrentHashMap, AtomicInteger atomicInteger, ConcurrentLinkedQueue concurrentLinkedQueue, ConcurrentHashMap concurrentHashMap2, boolean z, ProgressCallback progressCallback, int i2, ConcurrentHashMap concurrentHashMap3, ImmutableList immutableList) {
        this.f68362c = skuHandler;
        this.d = downloadTaskCancelable;
        this.f68363e = concurrentHashMap;
        this.f68364f = atomicInteger;
        this.g = concurrentLinkedQueue;
        this.f68365h = concurrentHashMap2;
        this.f68366i = z;
        this.f68367j = progressCallback;
        this.f68368k = i2;
        this.l = concurrentHashMap3;
        this.m = immutableList;
    }
}

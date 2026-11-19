package defpackage;

import android.util.Pair;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.network.ProgressCallback;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.LookHandler;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.exceptions.ContentIssueException;
import com.perfectcorp.perfectlib.exceptions.ProductMappingFailedException;
import com.perfectcorp.perfectlib.exceptions.SkuSetNotFoundException;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.i;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.functions.Predicate;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ta0 implements Function, Predicate {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80026b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Serializable f80027c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Serializable f80028e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f80029f;
    public final /* synthetic */ Object g;

    public /* synthetic */ ta0(int i2, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
        this.f80026b = 7;
        this.f80029f = i2;
        this.g = arrayList;
        this.f80027c = arrayList2;
        this.d = arrayList3;
        this.f80028e = arrayList4;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) throws Throwable {
        int i2 = this.f80026b;
        int i3 = 1;
        int i4 = 3;
        int i5 = this.f80029f;
        Serializable serializable = this.f80028e;
        Object obj2 = this.d;
        Serializable serializable2 = this.f80027c;
        Object obj3 = this.g;
        switch (i2) {
            case 0:
                ArrayList arrayList = (ArrayList) obj3;
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) serializable2;
                LookHandler.DownloadLooksCallback downloadLooksCallback = (LookHandler.DownloadLooksCallback) obj2;
                AtomicInteger atomicInteger = (AtomicInteger) serializable;
                Throwable th = (Throwable) obj;
                Log.e("LookHandler", "Get look metadata failed. guids=" + arrayList, th);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    concurrentHashMap.put((String) it.next(), th);
                    LookHandler.b(downloadLooksCallback, atomicInteger, i5);
                }
                return Collections.EMPTY_LIST;
            case 1:
                String str = (String) obj3;
                ConcurrentHashMap concurrentHashMap2 = (ConcurrentHashMap) serializable2;
                LookHandler.DownloadLooksCallback downloadLooksCallback2 = (LookHandler.DownloadLooksCallback) obj2;
                AtomicInteger atomicInteger2 = (AtomicInteger) serializable;
                Throwable th2 = (Throwable) obj;
                if (th2 instanceof SkipCallbackException) {
                    Log.c("LookHandler", "[downloadLooks] canceled. guid=" + str, th2);
                    throw th2;
                }
                Log.e("LookHandler", "[downloadLooks] download look failed. guid=" + str, th2);
                concurrentHashMap2.put(str, th2);
                LookHandler.b(downloadLooksCallback2, atomicInteger2, i5);
                return Optional.a();
            case 2:
                ConcurrentHashMap concurrentHashMap3 = (ConcurrentHashMap) obj;
                return Observable.fromIterable((List) obj3).filter(new ta0(concurrentHashMap3, (ConcurrentHashMap) serializable2, (SkuHandler.DownloadSkuSetsCallback) obj2, (AtomicInteger) serializable, this.f80029f)).map(new f8(concurrentHashMap3, i4));
            case 3:
            default:
                Log.g(3, "IdSystemDataHelper", "[#" + i5 + "] trigger #downloadPatternImages(); done");
                return new i.a((ArrayList) obj3, (ArrayList) serializable2, (ArrayList) obj2, (ArrayList) serializable, (ConcurrentHashMap) obj);
            case 4:
                AtomicInteger atomicInteger3 = (AtomicInteger) serializable;
                ConcurrentHashMap concurrentHashMap4 = (ConcurrentHashMap) serializable2;
                ProgressCallback progressCallback = (ProgressCallback) obj2;
                ConcurrentHashMap concurrentHashMap5 = (ConcurrentHashMap) obj;
                boolean z = false;
                for (String str2 : (HashSet) obj3) {
                    if (!concurrentHashMap5.containsKey(str2)) {
                        atomicInteger3.incrementAndGet();
                        concurrentHashMap4.put(str2, new ProductMappingFailedException(tr.g("Can't map GUID=", str2)));
                        z = true;
                    }
                }
                if (z) {
                    PfCommons.c(new rx0(progressCallback, atomicInteger3, i5, 2));
                }
                return concurrentHashMap5.entrySet();
            case 5:
                String str3 = (String) obj3;
                Throwable th3 = (Throwable) obj;
                Log.e("SkuHandler", "[downloadSkuSets] get downloaded SkuSetInfo failed, skuSetId=" + str3, th3);
                ((ConcurrentHashMap) serializable2).put(str3, th3);
                PfCommons.c(new ay0((SkuHandler.DownloadSkuSetsCallback) obj2, (AtomicInteger) serializable, i5, i3));
                return Collections.EMPTY_LIST;
            case 6:
                AtomicInteger atomicInteger4 = (AtomicInteger) serializable;
                ConcurrentHashMap concurrentHashMap6 = (ConcurrentHashMap) serializable2;
                ProgressCallback progressCallback2 = (ProgressCallback) obj2;
                Throwable th4 = (Throwable) obj;
                for (Map.Entry entry : (List) obj3) {
                    Log.e("SkuHandler", "Download SKU by GUID failed (insert DB). original GUID=" + ((String) entry.getKey()) + ", SKU GUID=" + ((String) entry.getValue()), th4);
                    atomicInteger4.incrementAndGet();
                    concurrentHashMap6.put((String) entry.getKey(), th4);
                }
                PfCommons.c(new rx0(progressCallback2, atomicInteger4, i5, 5));
                return Collections.EMPTY_LIST;
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Predicate
    public boolean test(Object obj) {
        ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.f80027c;
        ConcurrentHashMap concurrentHashMap2 = (ConcurrentHashMap) this.g;
        SkuHandler.DownloadSkuSetsCallback downloadSkuSetsCallback = (SkuHandler.DownloadSkuSetsCallback) this.d;
        AtomicInteger atomicInteger = (AtomicInteger) this.f80028e;
        Pair pair = (Pair) obj;
        String str = (String) pair.first;
        b.c cVar = (b.c) concurrentHashMap.get((String) pair.second);
        if (cVar == null) {
            Log.d("SkuHandler", "[downloadSkuSets] sku set not found, id=" + str);
            concurrentHashMap2.put(str, new SkuSetNotFoundException(tr.g("Can't find SKU set GUID=", str)));
            return false;
        }
        if (!cVar.a().isEmpty()) {
            return true;
        }
        concurrentHashMap2.put(str, new ContentIssueException("SKU set item is empty."));
        PfCommons.c(new ay0(downloadSkuSetsCallback, atomicInteger, this.f80029f, 2));
        return false;
    }

    public /* synthetic */ ta0(Object obj, ConcurrentHashMap concurrentHashMap, Object obj2, AtomicInteger atomicInteger, int i2, int i3) {
        this.f80026b = i3;
        this.g = obj;
        this.f80027c = concurrentHashMap;
        this.d = obj2;
        this.f80028e = atomicInteger;
        this.f80029f = i2;
    }

    public /* synthetic */ ta0(Collection collection, AtomicInteger atomicInteger, ConcurrentHashMap concurrentHashMap, ProgressCallback progressCallback, int i2, int i3) {
        this.f80026b = i3;
        this.g = collection;
        this.f80028e = atomicInteger;
        this.f80027c = concurrentHashMap;
        this.d = progressCallback;
        this.f80029f = i2;
    }

    public /* synthetic */ ta0(ConcurrentHashMap concurrentHashMap, ConcurrentHashMap concurrentHashMap2, SkuHandler.DownloadSkuSetsCallback downloadSkuSetsCallback, AtomicInteger atomicInteger, int i2) {
        this.f80026b = 3;
        this.f80027c = concurrentHashMap;
        this.g = concurrentHashMap2;
        this.d = downloadSkuSetsCallback;
        this.f80028e = atomicInteger;
        this.f80029f = i2;
    }
}

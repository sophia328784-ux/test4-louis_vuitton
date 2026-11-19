package defpackage;

import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.network.ProgressCallback;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.SkuDataForProtocol;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.exceptions.SkuNotFoundException;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.h;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class by0 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20987b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DownloadTaskCancelable f20988c;
    public final /* synthetic */ ConcurrentHashMap d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AtomicInteger f20989e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ConcurrentHashMap f20990f;
    public final /* synthetic */ ProgressCallback g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f20991h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f20992i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f20993j;

    public /* synthetic */ by0(SkuHandler skuHandler, DownloadTaskCancelable downloadTaskCancelable, ImmutableList immutableList, ConcurrentHashMap concurrentHashMap, ConcurrentHashMap concurrentHashMap2, AtomicInteger atomicInteger, ProgressCallback progressCallback, int i2) {
        this.f20992i = skuHandler;
        this.f20988c = downloadTaskCancelable;
        this.f20993j = immutableList;
        this.d = concurrentHashMap;
        this.f20990f = concurrentHashMap2;
        this.f20989e = atomicInteger;
        this.g = progressCallback;
        this.f20991h = i2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        ImmutableList<String> immutableListH;
        switch (this.f20987b) {
            case 0:
                SkuHandler skuHandler = (SkuHandler) this.f20992i;
                DownloadTaskCancelable downloadTaskCancelable = this.f20988c;
                ImmutableList<String> immutableList = (ImmutableList) this.f20993j;
                ConcurrentHashMap concurrentHashMap = this.d;
                ConcurrentHashMap concurrentHashMap2 = this.f20990f;
                AtomicInteger atomicInteger = this.f20989e;
                ProgressCallback progressCallback = this.g;
                int i2 = this.f20991h;
                Map map = (Map) obj;
                downloadTaskCancelable.c();
                bz bzVar = ImmutableList.f42200c;
                ImmutableList.Builder builder = new ImmutableList.Builder();
                boolean z = false;
                for (String str : immutableList) {
                    h hVar = (h) map.get(str);
                    if (hVar == null) {
                        String str2 = (String) concurrentHashMap.get(str);
                        Objects.requireNonNull(str2);
                        Log.d("SkuHandler", "No SKU metadata. original GUID=" + str2 + ", SKU GUID=" + str);
                        concurrentHashMap2.put(str2, new SkuNotFoundException(fc.i("Can't find original GUID=", str2, ", SKU GUID=", str)));
                        atomicInteger.incrementAndGet();
                        z = true;
                    } else {
                        builder.f(hVar);
                    }
                }
                if (z) {
                    PfCommons.c(new rx0(progressCallback, atomicInteger, i2, 3));
                }
                ImmutableList immutableListI = builder.i();
                if (!immutableListI.isEmpty()) {
                    try {
                        return Optional.e(SkuDataForProtocol.i(immutableListI, skuHandler.f39935b, null, null));
                    } catch (Throwable th) {
                        Log.e("SkuHandler", "Parse template from metadata failed. skuIds=" + FluentIterable.n(immutableListI).r(new xx0(4)), th);
                    }
                }
                return Optional.a();
            default:
                DownloadTaskCancelable downloadTaskCancelable2 = this.f20988c;
                SkuDataForProtocol.DownloadComponent downloadComponent = (SkuDataForProtocol.DownloadComponent) this.f20992i;
                SkuDataForProtocol skuDataForProtocol = (SkuDataForProtocol) this.f20993j;
                ConcurrentHashMap concurrentHashMap3 = this.d;
                AtomicInteger atomicInteger2 = this.f20989e;
                ConcurrentHashMap concurrentHashMap4 = this.f20990f;
                ProgressCallback progressCallback2 = this.g;
                int i3 = this.f20991h;
                Throwable th2 = (Throwable) obj;
                downloadTaskCancelable2.c();
                Log.e("SkuHandler", "Download IDC failed. GUID=" + downloadComponent.a(), th2);
                synchronized (skuDataForProtocol.f39912a) {
                    try {
                        Collection collectionA = skuDataForProtocol.f39916f.a(downloadComponent.a());
                        Set set = MoreCollections.f39434a;
                        if (collectionA == null) {
                            collectionA = Collections.EMPTY_SET;
                        }
                        immutableListH = ImmutableSet.t(collectionA).h();
                        for (String str3 : immutableListH) {
                            skuDataForProtocol.f39915e.a(str3);
                            skuDataForProtocol.d.a(str3);
                            skuDataForProtocol.f39914c.remove(str3);
                        }
                    } catch (Throwable th3) {
                        throw th3;
                    }
                    break;
                }
                for (String str4 : immutableListH) {
                    String str5 = (String) concurrentHashMap3.get(str4);
                    Objects.requireNonNull(str5);
                    Log.d("SkuHandler", "Download SKU failed cause by " + downloadComponent.b() + ". original GUID=" + str5 + ", SKU GUID=" + str4);
                    atomicInteger2.incrementAndGet();
                    concurrentHashMap4.put(str5, th2);
                }
                if (immutableListH.isEmpty()) {
                    return "";
                }
                PfCommons.c(new rx0(progressCallback2, atomicInteger2, i3, 7));
                return "";
        }
    }

    public /* synthetic */ by0(DownloadTaskCancelable downloadTaskCancelable, SkuDataForProtocol.DownloadComponent downloadComponent, SkuDataForProtocol skuDataForProtocol, ConcurrentHashMap concurrentHashMap, AtomicInteger atomicInteger, ConcurrentHashMap concurrentHashMap2, ProgressCallback progressCallback, int i2) {
        this.f20988c = downloadTaskCancelable;
        this.f20992i = downloadComponent;
        this.f20993j = skuDataForProtocol;
        this.d = concurrentHashMap;
        this.f20989e = atomicInteger;
        this.f20990f = concurrentHashMap2;
        this.g = progressCallback;
        this.f20991h = i2;
    }
}

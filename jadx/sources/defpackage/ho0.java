package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.os.LocaleList;
import android.text.TextUtils;
import android.util.Pair;
import com.perfectcorp.common.concurrent.CallingThread;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.network.HttpRequestProvider;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.rx.Singles;
import com.perfectcorp.common.utility.HttpRequest;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.AccessoryCamWrapper;
import com.perfectcorp.perfectlib.PhotoMakeup;
import com.perfectcorp.perfectlib.ProductInfo;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.SkuInfo;
import com.perfectcorp.perfectlib.exceptions.ProductMappingFailedException;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.ph.database.mcsdk.IdRow;
import com.perfectcorp.perfectlib.ph.database.mcsdk.ProductMappingDatabase;
import com.perfectcorp.perfectlib.ph.database.mcsdk.a;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuDao;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuItemDao;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.e;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.HttpRequestProviderAppender;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.NetworkManager;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.task.InitResponse;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.SingleEmitter;
import com.perfectcorp.thirdparty.io.reactivex.disposables.CompositeDisposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.ab;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.b;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.g;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.h;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.n;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.na0;
import defpackage.uw0;
import defpackage.y71;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ho0 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69757b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f69758c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f69759e;

    public /* synthetic */ ho0(Object obj, Object obj2, boolean z, int i2) {
        this.f69757b = i2;
        this.d = obj;
        this.f69759e = obj2;
        this.f69758c = z;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Map map;
        Map map2;
        int i2 = this.f69757b;
        int i3 = 5;
        int i4 = 3;
        boolean z = this.f69758c;
        Object obj = this.f69759e;
        Object obj2 = this.d;
        switch (i2) {
            case 0:
                return new PhotoMakeup((Bitmap) obj2, z, (AccessoryCamWrapper) obj);
            case 1:
                String str = (String) obj2;
                String str2 = (String) obj;
                Threads.b();
                if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                    throw new ProductMappingFailedException("productId and shadeId can not be empty");
                }
                ProductMappingDatabase productMappingDatabaseH = ProductMappingDatabase.h();
                productMappingDatabaseH.getClass();
                Objects.requireNonNull(str, "productId can't be null");
                Objects.requireNonNull(str2, "shadetId can't be null");
                Optional optionalJ = productMappingDatabaseH.j("productId=? AND shadetId=?", new String[]{str, str2});
                if (!optionalJ.d()) {
                    Log.g(5, "ProductMappingUtility", d21.l("Can not get mapped id for productId=", str, ", shadeId=", str2, ", continue to try SkuAndShadeIdMapping"));
                    a aVarH = a.h();
                    aVarH.getClass();
                    optionalJ = aVarH.j("productId=? AND shadetId=?", new String[]{str, str2});
                    if (!optionalJ.d()) {
                        Log.d("ProductMappingUtility", "can not get mapped id for productId=" + str + ", shadeId=" + str2);
                        if (z) {
                            throw new ProductMappingFailedException(fc.i("can not get mapped id for productId=", str, ", shadeId=", str2));
                        }
                        return IdRow.f41146f;
                    }
                }
                return (IdRow) optionalJ.c();
            case 2:
                SkuHandler skuHandler = (SkuHandler) obj2;
                ImmutableList immutableListI = (ImmutableList) obj;
                Log.g(3, "SkuHandler", "[getSkuInfosWithGuids] mappingEnabled=" + z);
                if (z) {
                    List listK = ProductMappingDatabase.h().k("shadetId", immutableListI);
                    map = (Map) Observable.fromIterable(listK).collectInto(new HashMap(), new yw0(i3)).c();
                    map2 = (Map) Observable.fromIterable(listK).collectInto(new HashMap(), new yw0(6)).c();
                    ImmutableList.Builder builder = new ImmutableList.Builder();
                    Iterator<E> it = immutableListI.iterator();
                    while (it.hasNext()) {
                        IdRow idRow = (IdRow) Observable.fromIterable(listK).filter(new t7((String) it.next(), 16)).firstElement().blockingGet();
                        if (idRow != null) {
                            builder.f(idRow.d);
                        }
                    }
                    immutableListI = builder.i();
                } else {
                    map = Collections.EMPTY_MAP;
                    map2 = map;
                }
                Log.g(3, "SkuHandler", "[getSkuInfosWithGuids] mappedSkuGuids size=" + immutableListI.size());
                SQLiteDatabase sQLiteDatabaseB = YMKDatabase.b();
                Threads.b();
                Cursor cursorRawQuery = null;
                try {
                    cursorRawQuery = sQLiteDatabaseB.rawQuery(DBUtility.d("SELECT * FROM " + YMKDatabase.a(sQLiteDatabaseB, "SkuItem") + " WHERE itemGuid IN (" + DBUtility.g(immutableListI) + ")"), null);
                    List<e> listA = SkuItemDao.a(cursorRawQuery);
                    IO.b(cursorRawQuery);
                    Log.g(3, "SkuHandler", "[getSkuInfosWithGuids] skuItems size=" + listA.size());
                    Map map3 = (Map) Observable.fromIterable(SkuDao.d(YMKDatabase.b(), (List) Observable.fromIterable(listA).map(new yw0(18)).toList().c())).collectInto(new HashMap(), new x7(skuHandler, z, map, 2)).c();
                    bz bzVar = ImmutableList.f42200c;
                    ImmutableList.Builder builder2 = new ImmutableList.Builder();
                    for (e eVar : listA) {
                        String str3 = eVar.f41293b;
                        String str4 = eVar.f41292a;
                        ProductInfo productInfo = (ProductInfo) map3.get(str3);
                        Objects.requireNonNull(productInfo);
                        AbstractSet abstractSetM = SkuHandler.m(productInfo.f39799e);
                        String str5 = z ? (String) map2.get(str4) : str4;
                        if (abstractSetM.contains(str4)) {
                            builder2.f(SkuInfo.a(productInfo, str5, eVar));
                        } else {
                            a.v(3, "[getSkuInfos] Filter out SKU by product mask. skuGuid=", str4, "SkuHandler");
                        }
                    }
                    ImmutableList immutableListI2 = builder2.i();
                    Log.g(3, "SkuHandler", "[getSkuInfosWithGuids] skuInfos size=" + immutableListI2.size());
                    return immutableListI2;
                } catch (Throwable th) {
                    try {
                        Log.e("SkuItemDao", "[get] error", th);
                        throw th;
                    } catch (Throwable th2) {
                        IO.b(cursorRawQuery);
                        throw th2;
                    }
                }
            case 3:
                final NetworkTaskManager.InitRequestHandler initRequestHandler = (NetworkTaskManager.InitRequestHandler) obj2;
                final List list = com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.a.d;
                Log.g(3, "SDKInitHandler", "[initParallelly] start. initDomains=" + list);
                final int size = list.size();
                final AtomicBoolean atomicBoolean = new AtomicBoolean();
                final AtomicInteger atomicInteger = new AtomicInteger();
                final CompositeDisposable compositeDisposable = new CompositeDisposable();
                final List listSynchronizedList = Collections.synchronizedList(new ArrayList());
                Log.g(3, "SDKInitHandler", "[initParallelly] create single");
                final boolean z2 = this.f69758c;
                g gVar = new g(new b(new com.perfectcorp.thirdparty.io.reactivex.g() { // from class: com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.c
                    @Override // com.perfectcorp.thirdparty.io.reactivex.g
                    public final void e(SingleEmitter singleEmitter) {
                        Object obj3 = a.f42002c;
                        Log.g(3, "SDKInitHandler", "[initParallelly] got emitter");
                        for (String str6 : list) {
                            Log.g(3, "SDKInitHandler", "[initParallelly] start init request. domain=" + str6);
                            final a.C0198a c0198a = new a.C0198a(str6, z2);
                            StringBuilder sb = new StringBuilder("[InitRequest][init] start. domain=");
                            final String str7 = c0198a.f42005a;
                            defpackage.a.A(sb, str7, 3, "SDKInitHandler");
                            Objects.requireNonNull(str7, "domain must not be null");
                            final boolean z3 = c0198a.f42006b;
                            final RequestTask.Builder builder3 = new RequestTask.Builder(new HttpRequestProviderAppender(new HttpRequestProvider() { // from class: u71
                                @Override // com.perfectcorp.common.network.HttpRequestProvider
                                public final HttpRequest get() {
                                    String str8 = str7;
                                    boolean z4 = z3;
                                    HttpRequest httpRequest = new HttpRequest(d21.j(str8, "/service/sdk/v2/init"));
                                    NetworkManager.b(httpRequest);
                                    httpRequest.a(com.perfectcorp.perfectlib.ymk.a.f41935a.f41938c, "apikey");
                                    if (z4) {
                                        httpRequest.a("develop", "mode");
                                    }
                                    httpRequest.a(LocaleList.getDefault().get(0).getCountry(), "country");
                                    return httpRequest;
                                }
                            }), new y71(0));
                            builder3.f39354e.f(new Pair("Cache-Control", "max-age=0, must-revalidate"));
                            Log.g(3, "SDKInitHandler", "[InitRequest][init] create single. domain=".concat(str7));
                            final NetworkTaskManager.InitRequestHandler initRequestHandler2 = initRequestHandler;
                            h hVar = new h(new t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new Callable() { // from class: com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.d
                                @Override // java.util.concurrent.Callable
                                public final Object call() {
                                    StringBuilder sb2 = new StringBuilder("[InitRequest][init] create init request task. domain=");
                                    String str8 = c0198a.f42005a;
                                    defpackage.a.A(sb2, str8, 3, "SDKInitHandler");
                                    Log.g(3, "RequestTask", "[build] start");
                                    RequestTask requestTask = new RequestTask(builder3, (byte) 0);
                                    Log.g(3, "RequestTask", "[build] end");
                                    Log.g(3, "SDKInitHandler", "[InitRequest][init] create init future. domain=" + str8);
                                    ListenableFuture listenableFutureA = initRequestHandler2.a(requestTask);
                                    defpackage.a.v(3, "[InitRequest][init] create init single. domain=", str8, "SDKInitHandler");
                                    com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.b bVarA = Singles.a(listenableFutureA, CallingThread.ANY);
                                    defpackage.a.v(3, "[InitRequest][init] return init future single. domain=", str8, "SDKInitHandler");
                                    return bVarA;
                                }
                            }).i(Schedulers.f43168a), new Function() { // from class: com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.e
                                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                                public final Object apply(Object obj4) {
                                    RequestTask.Response response = (RequestTask.Response) obj4;
                                    String str8 = c0198a.f42005a;
                                    if (response.f39357a < 400) {
                                        InitResponse initResponse = (InitResponse) response.f39358b;
                                        Objects.requireNonNull(initResponse);
                                        StringBuilder sb2 = new StringBuilder("[InitRequest][init] got response. domain=");
                                        sb2.append(str8);
                                        sb2.append(", response=");
                                        defpackage.a.A(sb2, initResponse.f41993a, 3, "SDKInitHandler");
                                        if (initResponse.f41995c != NetworkManager.ResponseStatus.OK) {
                                            throw new NetworkManager.StatusErrorException();
                                        }
                                    }
                                    return Pair.create(str8, response);
                                }
                            }), new Consumer() { // from class: com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.f
                                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                                public final void accept(Object obj4) {
                                    Log.e("SDKInitHandler", "InitRequest failed. domain=" + c0198a.f42005a, (Throwable) obj4);
                                }
                            });
                            Log.g(3, "SDKInitHandler", "[InitRequest][init] end. domain=".concat(str7));
                            SingleEmitter singleEmitter2 = singleEmitter;
                            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new na0(atomicBoolean, singleEmitter, 9), new uw0(listSynchronizedList, atomicInteger, size, singleEmitter2, 1));
                            hVar.a(consumerSingleObserver);
                            Log.g(3, "SDKInitHandler", "[initParallelly] add init request disposable");
                            compositeDisposable.b(consumerSingleObserver);
                            singleEmitter = singleEmitter2;
                        }
                        Log.g(3, "SDKInitHandler", "[initParallelly] exit loop");
                    }
                }), new xw(compositeDisposable, 13));
                Log.g(3, "SDKInitHandler", "[initParallelly] end");
                return gVar;
            default:
                List list2 = (List) obj;
                Pattern pattern = com.perfectcorp.perfectlib.ph.unit.sku.a.f41721a;
                return new n(new ab((ArrayList) obj2, new a61(15)), new p7(list2, z, i4)).j(list2);
        }
    }

    public /* synthetic */ ho0(Object obj, boolean z, Object obj2, int i2) {
        this.f69757b = i2;
        this.d = obj;
        this.f69758c = z;
        this.f69759e = obj2;
    }
}

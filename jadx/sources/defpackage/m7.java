package defpackage;

import android.database.sqlite.SQLiteDatabase;
import android.os.CancellationSignal;
import android.util.Pair;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import com.google.android.gms.tasks.OnFailureListener;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.network.ProgressCallback;
import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.Configuration;
import com.perfectcorp.perfectlib.DownloadCacheStrategy;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.hc.preferences.SkuHandlerPreferences;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.ph.database.ymk.makeup.b;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuDao;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.h;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.f;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$p;
import com.perfectcorp.perfectlib.ymk.model.SkuBeautyMode$FeatureType;
import com.perfectcorp.perfectlib.ymk.utility.FileDownloader;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.collect.Multimap;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.mixed.d;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.o;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class m7 implements Function, OnFailureListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76195b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f76196c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f76197e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f76198f;

    public /* synthetic */ m7(DownloadTaskCancelable downloadTaskCancelable, ProgressCallback progressCallback, DownloadCacheStrategy downloadCacheStrategy, Configuration.ImageSource imageSource) {
        this.f76195b = 1;
        this.f76196c = downloadTaskCancelable;
        this.f76198f = progressCallback;
        this.d = downloadCacheStrategy;
        this.f76197e = imageSource;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        int i2 = this.f76195b;
        int i3 = 7;
        int i4 = 0;
        Object obj2 = this.f76198f;
        Object obj3 = this.f76196c;
        Object obj4 = this.f76197e;
        Object obj5 = this.d;
        switch (i2) {
            case 0:
                final DownloadCacheStrategy downloadCacheStrategy = (DownloadCacheStrategy) obj5;
                final Configuration.ImageSource imageSource = (Configuration.ImageSource) obj4;
                final DownloadTaskCancelable downloadTaskCancelable = (DownloadTaskCancelable) obj3;
                final NetworkTaskManager.TaskPriority taskPriority = (NetworkTaskManager.TaskPriority) obj2;
                final String str = (String) obj;
                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                return new t(new p(new Callable() { // from class: u7
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return ApplyEffectUtility.h(str, downloadCacheStrategy, imageSource, downloadTaskCancelable, taskPriority, false, null).k();
                    }
                }), new v7(0)).j(FileDownloader.d);
            case 1:
                DownloadTaskCancelable downloadTaskCancelable2 = (DownloadTaskCancelable) obj3;
                b bVar = (b) obj;
                ImmutableSet immutableSet2 = ApplyEffectUtility.f39471a;
                downloadTaskCancelable2.c();
                return ApplyEffectUtility.m(bVar, (ProgressCallback) obj2, (DownloadCacheStrategy) obj5, (Configuration.ImageSource) obj4, downloadTaskCancelable2);
            case 2:
            default:
                SkuHandler skuHandler = (SkuHandler) obj5;
                ProgressCallback progressCallback = (ProgressCallback) obj4;
                DownloadTaskCancelable downloadTaskCancelable3 = (DownloadTaskCancelable) obj3;
                AtomicInteger atomicInteger = (AtomicInteger) obj2;
                List<h> list = (List) obj;
                for (h hVar : list) {
                    SQLiteDatabase sQLiteDatabaseC = YMKDatabase.c();
                    DBUtility.i(sQLiteDatabaseC, new gx0(sQLiteDatabaseC, hVar, 1));
                }
                PfCommons.c(new px0(progressCallback, 2));
                return new m(new p(new wx0(skuHandler, downloadTaskCancelable3, list, i4)), new y81(downloadTaskCancelable3, progressCallback, atomicInteger, 17)).l();
            case 3:
                Collection collection = (Collection) obj5;
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) obj4;
                ConcurrentHashMap concurrentHashMap2 = (ConcurrentHashMap) obj3;
                ConcurrentHashMap concurrentHashMap3 = (ConcurrentHashMap) obj2;
                List list2 = (List) obj;
                if (collection.isEmpty()) {
                    return Single.h(list2);
                }
                com.perfectcorp.perfectlib.ph.kernelctrl.sku.h.a.C0179a c0179a = new com.perfectcorp.perfectlib.ph.kernelctrl.sku.h.a.C0179a();
                c0179a.d = NetworkTaskManager.TaskPriority.NORMAL;
                c0179a.f41574a = false;
                c0179a.f41575b = false;
                c0179a.f41576c = false;
                int i5 = 15;
                SingleSource singleSourceCollectInto = new o(com.perfectcorp.perfectlib.ph.kernelctrl.sku.h.a(collection, 0, new com.perfectcorp.perfectlib.ph.kernelctrl.sku.h.a(c0179a)), new yw0(i5)).collectInto(concurrentHashMap, new yw0(16));
                c8 c8Var = new c8(list2, i3);
                singleSourceCollectInto.getClass();
                return new d(singleSourceCollectInto, c8Var).map(new y81(concurrentHashMap2, concurrentHashMap, concurrentHashMap3, i5)).toList();
            case 4:
                DownloadTaskCancelable downloadTaskCancelable4 = (DownloadTaskCancelable) obj3;
                ConcurrentHashMap concurrentHashMap4 = (ConcurrentHashMap) obj5;
                Multimap multimap = (Multimap) obj4;
                Multimap multimap2 = (Multimap) obj2;
                String str2 = (String) obj;
                if (str2.equals(SkuBeautyMode$FeatureType.BACKGROUND.toString())) {
                    return new t(SkuHandler.e(), new y81(downloadTaskCancelable4, str2, concurrentHashMap4, 19)).f(new ey0(multimap, 2));
                }
                String string = SkuHandlerPreferences.f40330a.getString("KEY_LIST_MESSAGE_DIGEST_".concat(str2), "");
                Log.g(3, "SkuHandler", fc.i("[syncServerByProtocol] type=", str2, ", messageDigest=", string));
                return new t(new c$p(str2, "").c(), new m7(downloadTaskCancelable4, (Serializable) string, (Object) str2, (Object) concurrentHashMap4, 5)).f(new ey0(multimap2, 3));
            case 5:
                String str3 = (String) obj4;
                ConcurrentHashMap concurrentHashMap5 = (ConcurrentHashMap) obj2;
                RequestTask.Response response = (RequestTask.Response) obj;
                ((DownloadTaskCancelable) obj3).c();
                f fVar = (f) response.f39358b;
                Objects.requireNonNull(fVar);
                String strA = fVar.a();
                if (Objects.equals((String) obj5, strA)) {
                    Log.g(3, "SkuHandler", "[syncServerByProtocol] Get sku tree returned with the same message digest. type=" + str3);
                    return Pair.create(0, Collections.EMPTY_LIST);
                }
                StringBuilder sbR = pq0.r("[syncServerByProtocol] Get sku tree returned with response. type=", str3, ", responseCode=");
                sbR.append(response.f39357a);
                Log.g(3, "SkuHandler", sbR.toString());
                List listB = fVar.b();
                fc.z(listB, new StringBuilder("[syncServerByProtocol] Get sku tree returned skus.size()="), 3, "SkuHandler");
                concurrentHashMap5.put(str3, strA);
                Map mapF = SkuDao.f(YMKDatabase.b(), str3);
                ImmutableList immutableListP = FluentIterable.n(mapF.keySet()).i(new uw(3, FluentIterable.n(listB).r(new xx0(6)).q())).p();
                SQLiteDatabase sQLiteDatabaseC2 = YMKDatabase.c();
                Log.g(3, "SkuDbHelper", "[markAsDeleted] start, skuGuids=" + immutableListP);
                DBUtility.i(sQLiteDatabaseC2, new eq0(sQLiteDatabaseC2, immutableListP, 1));
                ImmutableSet immutableSetQ = FluentIterable.n(listB).i(new dy0(mapF, 1)).r(new xx0(7)).q();
                Log.g(3, "SkuHandler", "[syncServerByProtocol] retiredIdList.size()=" + immutableListP.size() + ", toBeDownloadedSkuIds.size()=" + immutableSetQ.size());
                return Pair.create(Integer.valueOf(SkuBeautyMode$FeatureType.a(str3)), immutableSetQ);
        }
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) {
        CredentialProviderPlayServicesImpl.onClearCredential$lambda$4((CredentialProviderPlayServicesImpl) this.d, (CancellationSignal) this.f76197e, (Executor) this.f76196c, (CredentialManagerCallback) this.f76198f, exc);
    }

    public /* synthetic */ m7(DownloadTaskCancelable downloadTaskCancelable, Serializable serializable, Object obj, Object obj2, int i2) {
        this.f76195b = i2;
        this.f76196c = downloadTaskCancelable;
        this.d = serializable;
        this.f76197e = obj;
        this.f76198f = obj2;
    }

    public /* synthetic */ m7(Object obj, Object obj2, Object obj3, Object obj4, int i2) {
        this.f76195b = i2;
        this.d = obj;
        this.f76197e = obj2;
        this.f76196c = obj3;
        this.f76198f = obj4;
    }
}

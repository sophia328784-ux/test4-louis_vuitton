package defpackage;

import android.app.Activity;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.SurfaceView;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessor;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.os.CancellationSignal;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.media3.common.util.Consumer;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.transition.Transition;
import com.batch.android.BatchPushRegistration;
import com.batch.android.e.c0;
import com.batch.android.j1.g;
import com.batch.android.j1.h;
import com.batch.android.v0.j;
import com.batch.android.v0.k;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.scheduling.DefaultScheduler;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import com.google.android.filament.View;
import com.google.android.filament.gltfio.FilamentAsset;
import com.google.android.gms.tasks.CancellationTokenSource;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.android.play.core.review.ReviewManager;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.network.BaseDownloadHandle;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.network.ProgressCallback;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.Triple;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.Configuration;
import com.perfectcorp.perfectlib.DownloadCacheStrategy;
import com.perfectcorp.perfectlib.LookHandler;
import com.perfectcorp.perfectlib.MakeupItemStatus;
import com.perfectcorp.perfectlib.SkuDataForProtocol;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.ymk.DatabaseOpenHelper;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.makeupcam.template.TemplateConsts;
import com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a;
import com.perfectcorp.perfectlib.ph.database.ymk.makeup.b;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuDao;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.c;
import com.perfectcorp.perfectlib.ph.template.e;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$p;
import com.perfectcorp.perfectlib.ymk.model.SkuBeautyMode$FeatureType;
import com.perfectcorp.perfectlib.ymk.utility.FileDownloader;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import com.perfectcorp.thirdparty.com.google.common.collect.Multimap;
import com.perfectcorp.thirdparty.com.google.common.collect.Sets;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.functions.Predicate;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.f;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.w;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerHelper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class y81 implements OnCompleteListener, Function, Continuation, OnFailureListener, SynchronizationGuard.CriticalSection, CallbackToFutureAdapter.Resolver, CancellationSignal.OnCancelListener, View.OnPickCallback, Consumer, Predicate, h, c0.c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81324b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f81325c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f81326e;

    public /* synthetic */ y81(DualSurfaceProcessor dualSurfaceProcessor, DynamicRange dynamicRange) {
        this.f81324b = 8;
        Map map = Collections.EMPTY_MAP;
        this.f81325c = dualSurfaceProcessor;
        this.d = dynamicRange;
        this.f81326e = map;
    }

    @Override // com.google.android.filament.View.OnPickCallback
    public void a(View.PickingQueryResult pickingQueryResult) {
        Lv3dViewerHelper lv3dViewerHelper = (Lv3dViewerHelper) this.f81325c;
        SurfaceView surfaceView = (SurfaceView) this.d;
        MotionEvent motionEvent = (MotionEvent) this.f81326e;
        pickingQueryResult.getClass();
        FilamentAsset filamentAsset = lv3dViewerHelper.d0;
        if (filamentAsset == null) {
            Intrinsics.h("shoeAsset");
            throw null;
        }
        boolean zG = ArraysKt.g(filamentAsset.a(), pickingQueryResult.f28606a);
        lv3dViewerHelper.a0 = zG;
        if (zG) {
            int[] iArr = new int[2];
            surfaceView.getLocationOnScreen(iArr);
            int i2 = iArr[0];
            int i3 = iArr[1];
            float rawX = motionEvent.getRawX() - i2;
            float rawY = motionEvent.getRawY() - i3;
            lv3dViewerHelper.N = rawX;
            lv3dViewerHelper.O = rawY;
            lv3dViewerHelper.Y = false;
            lv3dViewerHelper.x.invoke(Boolean.TRUE);
        }
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        MediaSourceEventListener.EventDispatcher eventDispatcher = (MediaSourceEventListener.EventDispatcher) this.f81325c;
        ((MediaSourceEventListener) obj).e(eventDispatcher.f15520a, (MediaSource.MediaPeriodId) this.d, (MediaLoadData) this.f81326e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        ConcurrentHashMap concurrentHashMap;
        t tVar;
        ey0 ey0Var;
        int iValueOf;
        Object obj2;
        int i2 = this.f81324b;
        int i3 = 12;
        int i4 = 1;
        boolean z = false;
        Object obj3 = this.f81326e;
        Object obj4 = this.d;
        Object obj5 = this.f81325c;
        switch (i2) {
            case 1:
                DownloadTaskCancelable downloadTaskCancelable = (DownloadTaskCancelable) obj5;
                Configuration.ImageSource imageSource = (Configuration.ImageSource) obj4;
                ProgressCallback progressCallback = (ProgressCallback) obj3;
                com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar = (com.perfectcorp.perfectlib.ph.database.ymk.sku.h) obj;
                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                Set setSingleton = Collections.singleton(hVar);
                SQLiteDatabase writableDatabase = DatabaseOpenHelper.Union.f40272j.f40274i.getWritableDatabase();
                Optional optionalA = SkuDao.a(YMKDatabase.b(), hVar.skuGUID, false);
                return !optionalA.d() ? ApplyEffectUtility.n(hVar.skuGUID, downloadTaskCancelable, NetworkTaskManager.TaskPriority.NORMAL, imageSource, false, progressCallback) : Single.h((Sku) optionalA.c());
            case 2:
                SkuDataForProtocol.DownloadComponent downloadComponent = (SkuDataForProtocol.DownloadComponent) obj;
                ImmutableSet immutableSet2 = ApplyEffectUtility.f39471a;
                return downloadComponent.a((String) obj5, (NetworkTaskManager.TaskPriority) obj4, (DownloadTaskCancelable) obj3).j(downloadComponent.a()).j(FileDownloader.d);
            case 3:
                String str = (String) obj5;
                Configuration.ImageSource imageSource2 = (Configuration.ImageSource) obj4;
                DownloadTaskCancelable downloadTaskCancelable2 = (DownloadTaskCancelable) obj3;
                b bVar = (b) obj;
                if (bVar.m <= LookHandler.e(bVar)) {
                    Log.g(3, "LookCacheFirstThenUpdateStrategy", "Look is up-to-date. lookGuid=" + str);
                    a.d(str);
                    return Single.h(bVar);
                }
                a.c(new a.C0136a(str, a.c.LOOK, bVar.f41225a.toString(), a.b.f41168a));
                Log.g(3, "LookCacheFirstThenUpdateStrategy", "[startLookUpdateTask] Updating outdated look. lookGuid=" + str);
                c.C0166c c0166cA = com.perfectcorp.perfectlib.ph.camera.panel.a.a(bVar);
                c0166cA.g = false;
                c0166cA.f41466h = false;
                c0166cA.f41467i = false;
                DownloadCacheStrategy downloadCacheStrategy = DownloadCacheStrategy.CACHE_FIRST_THEN_UPDATE;
                Objects.requireNonNull(downloadCacheStrategy);
                c0166cA.f41468j = downloadCacheStrategy;
                Objects.requireNonNull(imageSource2);
                c0166cA.f41469k = imageSource2;
                if (downloadTaskCancelable2 == null) {
                    downloadTaskCancelable2 = DownloadTaskCancelable.f40351e;
                }
                c0166cA.l = downloadTaskCancelable2;
                NetworkTaskManager.TaskPriority taskPriority = NetworkTaskManager.TaskPriority.LOW;
                Objects.requireNonNull(taskPriority, "priority can't be null");
                c0166cA.d = taskPriority;
                Single singleD = ((BaseDownloadHandle) c0166cA.b()).d(null, null);
                x1 x1Var = new x1(28);
                singleD.getClass();
                return new w(singleD, x1Var);
            case 10:
                DownloadTaskCancelable downloadTaskCancelable3 = (DownloadTaskCancelable) obj4;
                b bVar2 = (b) obj;
                downloadTaskCancelable3.c();
                return new t(new p(new qx0((LookHandler) obj5, bVar2, downloadTaskCancelable3, (LookHandler.DownloadCallback) obj3, 2)), new v40(i3)).j(FileDownloader.d).i(Schedulers.f43170c);
            case 13:
                NetworkTaskManager.TaskPriority taskPriority2 = (NetworkTaskManager.TaskPriority) obj3;
                com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar2 = (com.perfectcorp.perfectlib.ph.database.ymk.sku.h) obj;
                Log.g(3, "SkuCacheStrategyHelper", "[downloadSkuByProtocolMethod] start id=" + hVar2.skuGUID);
                return new f(new t(new m(Single.h(SkuDataForProtocol.i(Collections.singleton(hVar2), (Configuration.ImageSource) obj5, null, null)), new cx0(hVar2, taskPriority2, (DownloadTaskCancelable) obj4, 0)), new ln0(hVar2, i3)), new bx0(hVar2, 1));
            case 15:
                ConcurrentHashMap concurrentHashMap2 = (ConcurrentHashMap) obj4;
                ConcurrentHashMap concurrentHashMap3 = (ConcurrentHashMap) obj3;
                String str2 = (String) obj;
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b.c cVar = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b.c) ((ConcurrentHashMap) obj5).get(str2);
                Objects.requireNonNull(cVar);
                boolean z2 = false;
                boolean z3 = false;
                for (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b.a aVar : cVar.a()) {
                    com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar3 = (com.perfectcorp.perfectlib.ph.database.ymk.sku.h) concurrentHashMap2.get(aVar.skuGuid);
                    Objects.requireNonNull(hVar3);
                    if (com.perfectcorp.perfectlib.ph.database.ymk.sku.h.e.b(hVar3.statusCode) != com.perfectcorp.perfectlib.ph.database.ymk.sku.h.e.OK) {
                        Log.d("SkuHandler", "[checkNeedToUpdateWithSkuSetGuids] SKU id=" + aVar.skuGuid + " not found in SKU set id=" + cVar.skuSetId);
                        z3 = true;
                    } else {
                        Optional optionalA2 = SkuDao.a(YMKDatabase.b(), aVar.skuGuid, z);
                        if (optionalA2.d()) {
                            concurrentHashMap = concurrentHashMap3;
                            if (((Sku) optionalA2.c()).f41269j < hVar3.lastModified) {
                            }
                            z = false;
                            concurrentHashMap3 = concurrentHashMap;
                        } else {
                            concurrentHashMap = concurrentHashMap3;
                        }
                        StringBuilder sb = new StringBuilder("[checkNeedToUpdateWithSkuSetGuids] SKU id=");
                        sb.append(aVar.skuGuid);
                        sb.append(" not found in SKU set id=");
                        a.A(sb, cVar.skuSetId, 3, "SkuHandler");
                        z2 = true;
                        z = false;
                        concurrentHashMap3 = concurrentHashMap;
                    }
                }
                concurrentHashMap3.put(str2, (z2 || z3) ? MakeupItemStatus.OUTDATED : MakeupItemStatus.UPDATED);
                return str2;
            case 16:
                DownloadTaskCancelable downloadTaskCancelable4 = (DownloadTaskCancelable) obj5;
                Multimap multimap = (Multimap) obj4;
                Multimap multimap2 = (Multimap) obj3;
                String str3 = (String) obj;
                if (str3.equals(SkuBeautyMode$FeatureType.BACKGROUND.toString())) {
                    tVar = new t(SkuHandler.e(), new q7(downloadTaskCancelable4, str3, i4));
                    ey0Var = new ey0(multimap, 0);
                } else {
                    tVar = new t(new c$p(str3, "").c(), new q7(downloadTaskCancelable4, str3, 2));
                    ey0Var = new ey0(multimap2, 1);
                }
                return tVar.f(ey0Var);
            case 17:
                DownloadTaskCancelable downloadTaskCancelable5 = (DownloadTaskCancelable) obj5;
                ProgressCallback progressCallback2 = (ProgressCallback) obj4;
                AtomicInteger atomicInteger = (AtomicInteger) obj3;
                SkuDataForProtocol skuDataForProtocol = (SkuDataForProtocol) obj;
                ConcurrentHashMap concurrentHashMap4 = skuDataForProtocol.f39917h;
                Set set = skuDataForProtocol.f39919j;
                Iterator it = concurrentHashMap4.values().iterator();
                while (it.hasNext()) {
                    com.perfectcorp.perfectlib.ph.database.ymk.background.b.d.i(YMKDatabase.c(), (com.perfectcorp.perfectlib.ph.database.ymk.background.a) it.next());
                }
                downloadTaskCancelable5.c();
                int size = set.size();
                PfCommons.c(new px0(progressCallback2, 5));
                return Observable.fromIterable(set).filter(new yw0(26)).flatMapSingle(new ua0(downloadTaskCancelable5, i4)).doOnNext(new hy0(atomicInteger, size, progressCallback2, null == true ? 1 : 0)).toList().f(new o2(skuDataForProtocol, 17));
            case 18:
                ConcurrentHashMap concurrentHashMap5 = (ConcurrentHashMap) obj4;
                ConcurrentHashMap concurrentHashMap6 = (ConcurrentHashMap) obj;
                Set setE = Sets.e();
                Single list = Observable.fromIterable((List) obj5).filter(new y81(concurrentHashMap6, concurrentHashMap5, setE, 14)).toList();
                m7 m7Var = new m7(setE, (ConcurrentHashMap) obj3, concurrentHashMap6, concurrentHashMap5, 3);
                list.getClass();
                return new m(list, m7Var);
            default:
                String str4 = (String) obj4;
                ConcurrentHashMap concurrentHashMap7 = (ConcurrentHashMap) obj3;
                Triple triple = (Triple) obj;
                ((DownloadTaskCancelable) obj5).c();
                if (((Integer) triple.f39436a).intValue() == 304) {
                    Log.g(3, "SkuHandler", "[syncServerByProtocol] Get sku tree returned with HTTP status code 304. type=" + str4);
                    iValueOf = 0;
                    obj2 = Collections.EMPTY_LIST;
                } else {
                    concurrentHashMap7.put(str4, (String) triple.f39437b);
                    iValueOf = Integer.valueOf(SkuBeautyMode$FeatureType.a(str4));
                    obj2 = (Set) triple.f39438c;
                }
                return Pair.create(iValueOf, obj2);
        }
    }

    public void b() {
        Runnable runnable = (Runnable) this.f81325c;
        Transition transition = (Transition) this.d;
        Runnable runnable2 = (Runnable) this.f81326e;
        if (runnable != null) {
            runnable.run();
        } else {
            transition.cancel();
            runnable2.run();
        }
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object d(Task task) {
        TaskCompletionSource taskCompletionSource = (TaskCompletionSource) this.f81325c;
        AtomicBoolean atomicBoolean = (AtomicBoolean) this.d;
        CancellationTokenSource cancellationTokenSource = (CancellationTokenSource) this.f81326e;
        if (task.isSuccessful()) {
            taskCompletionSource.d(task.getResult());
        } else if (task.getException() != null) {
            taskCompletionSource.c(task.getException());
        } else if (atomicBoolean.getAndSet(true)) {
            cancellationTokenSource.a();
        }
        return Tasks.f(null);
    }

    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
    public Object execute() {
        DefaultScheduler defaultScheduler = (DefaultScheduler) this.f81325c;
        TransportContext transportContext = (TransportContext) this.d;
        defaultScheduler.d.D1(transportContext, (EventInternal) this.f81326e);
        defaultScheduler.f28042a.a(transportContext, 1);
        return null;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object i(CallbackToFutureAdapter.Completer completer) {
        int i2 = this.f81324b;
        int i3 = 2;
        Object obj = this.d;
        Object obj2 = this.f81325c;
        switch (i2) {
            case 7:
                DefaultSurfaceProcessor defaultSurfaceProcessor = (DefaultSurfaceProcessor) obj2;
                Map map = Collections.EMPTY_MAP;
                defaultSurfaceProcessor.e(new xo(defaultSurfaceProcessor, (DynamicRange) obj, completer), new e5(i3));
                break;
            default:
                DualSurfaceProcessor dualSurfaceProcessor = (DualSurfaceProcessor) obj2;
                Map map2 = Collections.EMPTY_MAP;
                dualSurfaceProcessor.e(new xo(dualSurfaceProcessor, (DynamicRange) obj, completer), new e5(i3));
                break;
        }
        return "Init GlRenderer";
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void onComplete(Task task) {
        com.batch.android.b.f.a((c0) this.f81325c, (ReviewManager) this.d, (Activity) this.f81326e, task);
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) {
        CredentialProviderPlayServicesImpl.onClearCredential$lambda$1((android.os.CancellationSignal) this.f81325c, (Executor) this.d, (CredentialManagerCallback) this.f81326e, exc);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Predicate
    public boolean test(Object obj) {
        ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.f81325c;
        ConcurrentHashMap concurrentHashMap2 = (ConcurrentHashMap) this.d;
        Collection collection = (Collection) this.f81326e;
        String str = (String) obj;
        com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b.c cVar = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b.c) concurrentHashMap.get(str);
        if (cVar == null) {
            concurrentHashMap2.put(str, MakeupItemStatus.NOT_FOUND);
            return false;
        }
        float fA = TemplateConsts.a(cVar.makeupVersion, -1.0f);
        if (fA > SkuBeautyMode$FeatureType.a(cVar.type) || fA < 1.0f) {
            concurrentHashMap2.put(str, MakeupItemStatus.NOT_SUPPORTED);
            return false;
        }
        Optional optionalE = e.C0182e.e(str);
        if (!optionalE.d() || cVar.lastModified > ((com.perfectcorp.perfectlib.ph.database.ymk.skuset.a) optionalE.c()).f41331e) {
            concurrentHashMap2.put(str, MakeupItemStatus.OUTDATED);
            return false;
        }
        collection.addAll(Lists.c(cVar.a(), new g7(29)));
        return true;
    }

    public /* synthetic */ y81(DefaultSurfaceProcessor defaultSurfaceProcessor, DynamicRange dynamicRange) {
        this.f81324b = 7;
        Map map = Collections.EMPTY_MAP;
        this.f81325c = defaultSurfaceProcessor;
        this.d = dynamicRange;
        this.f81326e = map;
    }

    public /* synthetic */ y81(Object obj, Object obj2, Object obj3, int i2) {
        this.f81324b = i2;
        this.f81325c = obj;
        this.d = obj2;
        this.f81326e = obj3;
    }

    @Override // com.batch.android.j1.h
    public void a(g gVar) {
        ((j) this.f81325c).a((BatchPushRegistration) this.d, (Context) this.f81326e, gVar);
    }

    @Override // com.batch.android.e.c0.c
    public void a(c0 c0Var) {
        ((k) this.f81325c).a((Context) this.d, (ArrayList) this.f81326e, c0Var);
    }
}

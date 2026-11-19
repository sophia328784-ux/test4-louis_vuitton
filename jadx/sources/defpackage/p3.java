package defpackage;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Pair;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.appcompat.app.AppCompatActivity;
import androidx.camera.core.CameraX;
import androidx.camera.core.SafeCloseImageReaderProxy;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.imagecapture.NoMetadataImageReader;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.core.processing.OpenGlRenderer;
import androidx.camera.core.processing.util.GLUtils;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.fragment.app.Fragment;
import androidx.media3.common.FlagSet;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.analytics.DefaultAnalyticsCollector;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.work.DirectExecutor;
import androidx.work.impl.utils.taskexecutor.SerialExecutor;
import com.appsflyer.AppsFlyerLib;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;
import com.google.firebase.messaging.EnhancedIntentService;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.network.BaseDownloadHandle;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.network.ProgressCallback;
import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.reflect.Proxies;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.DownloadCacheStrategy;
import com.perfectcorp.perfectlib.FaceAttributeAnalyzer;
import com.perfectcorp.perfectlib.JsExecutor;
import com.perfectcorp.perfectlib.RecommendationHandler;
import com.perfectcorp.perfectlib.SkuDataForProtocol;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.b0;
import com.perfectcorp.perfectlib.e0;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.ph.database.ymk.makeup.a;
import com.perfectcorp.perfectlib.ph.database.ymk.makeup.b;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.c;
import com.perfectcorp.perfectlib.rh.utility.networkcache.d$a;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.NetworkTaskManagerHolder;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.SingleEmitter;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposables;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.functions.Predicate;
import com.perfectcorp.thirdparty.io.reactivex.g;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.f;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.i;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.k;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import com.sightcall.pratik.permission.PermissionExtensionsKt;
import com.sightcall.universal.model.Session;
import com.sightcall.universal.scenario.steps.AgentUsecaseStep;
import com.sightcall.universal.scenario.steps.FetchReferenceStep;
import com.vuitton.android.data.repository.FirebaseAnalyticsRepositoryImpl;
import io.reactivex.rxjava3.functions.Consumer;
import java.io.File;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class p3 implements ActivityResultCallback, Consumer, Function, CallbackToFutureAdapter.Resolver, Config.OptionMatcher, ComponentFactory, ListenerSet.IterationFinishedEvent, ListenerSet.Event, SurfaceRequest.TransformationInfoListener, OnCompleteListener, androidx.media3.common.util.Consumer, ImageReaderProxy.OnImageAvailableListener, Deferred.DeferredHandler, Predicate, g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78736b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f78737c;
    public final /* synthetic */ Object d;

    public /* synthetic */ p3(FirebaseAnalyticsRepositoryImpl firebaseAnalyticsRepositoryImpl, Task task, Task task2) {
        this.f78736b = 14;
        this.f78737c = task;
        this.d = task2;
    }

    @Override // androidx.media3.common.util.ListenerSet.IterationFinishedEvent
    public void a(Object obj, FlagSet flagSet) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        analyticsListener.e((Player) this.d, new AnalyticsListener.Events(flagSet, ((DefaultAnalyticsCollector) this.f78737c).f14817f));
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) throws Throwable {
        int i2 = this.f78736b;
        Object obj2 = this.d;
        Object obj3 = this.f78737c;
        switch (i2) {
            case 1:
                ((AgentUsecaseStep) obj3).lambda$onFetchUsecaseSuccess$1((Session) obj2, (Boolean) obj);
                break;
            case 13:
                ((FetchReferenceStep) obj3).lambda$onReferenceReady$1((Session) obj2, (Boolean) obj);
                break;
            default:
                MediaSourceEventListener.EventDispatcher eventDispatcher = (MediaSourceEventListener.EventDispatcher) obj3;
                ((MediaSourceEventListener) obj).k0(eventDispatcher.f15520a, eventDispatcher.f15521b, (MediaLoadData) obj2);
                break;
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        f fVar;
        int i2 = this.f78736b;
        int i3 = 0;
        int i4 = 1;
        int i5 = 3;
        Object obj2 = this.d;
        Object obj3 = this.f78737c;
        switch (i2) {
            case 2:
                Map.Entry entry = (Map.Entry) obj;
                List list = ApplyEffectCtrl.G;
                return Observable.fromCallable(new h7((LinkedBlockingDeque) obj3, entry, (LinkedBlockingDeque) obj2)).subscribeOn(ApplyEffectCtrl.N);
            case 3:
                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                return new Pair((String) obj3, (SkuDataForProtocol) obj2);
            case 7:
                b bVar = (b) obj3;
                File file = (File) obj2;
                a.b(YMKDatabase.c(), bVar.f41226b, bVar);
                return file;
            case 12:
                return new i(new e0((FaceAttributeAnalyzer) obj3, (Bitmap) obj2, i3));
            case 24:
                final RecommendationHandler.SyncServerCallback syncServerCallback = (RecommendationHandler.SyncServerCallback) obj3;
                DownloadTaskCancelable downloadTaskCancelable = (DownloadTaskCancelable) obj2;
                SkuHandler skuHandler = SkuHandler.getInstance();
                Objects.requireNonNull(skuHandler);
                List listB = ((com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.shadefinder.a) obj).a().b();
                ProgressCallback progressCallback = new ProgressCallback() { // from class: com.perfectcorp.perfectlib.a4
                    @Override // com.perfectcorp.common.network.ProgressCallback
                    public final void a(double d) {
                        ((ShadeFinderRecommendationHandler.AnonymousClass1) syncServerCallback).progress(d * 0.75d);
                    }
                };
                Log.g(3, "ShadeFinderRecommendationHandler", "[syncServerInternal] Sync all foundation SKUs.");
                Objects.requireNonNull(listB, "recommendedGuids can't be null");
                ProgressCallback progressCallback2 = (ProgressCallback) Proxies.a(ProgressCallback.class, progressCallback);
                Log.g(3, "SkuHandler", "[downloadFoundationProducts] start, size=" + listB.size());
                DownloadTaskCancelable downloadTaskCancelable2 = new DownloadTaskCancelable("downloadFoundationProducts");
                SkuHandler.h(downloadTaskCancelable2);
                skuHandler.j(downloadTaskCancelable2);
                SkuHandler.h(downloadTaskCancelable2);
                if (listB.isEmpty()) {
                    Log.g(3, "SkuHandler", "[downloadFoundationProducts] recommended GUID list is empty.");
                    PfCommons.c(new px0(progressCallback2, 8));
                    com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g gVar = com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g.f42660b;
                    jx0 jx0Var = new jx0(skuHandler, downloadTaskCancelable2, 2);
                    gVar.getClass();
                    fVar = new f(gVar, jx0Var);
                } else {
                    fVar = new f(new e(new b0(skuHandler, downloadTaskCancelable2, listB, progressCallback2, 1)).i(Schedulers.f43170c), new jx0(skuHandler, downloadTaskCancelable2, i5));
                }
                Pair pairCreate = Pair.create(fVar, downloadTaskCancelable2);
                DownloadTaskCancelable downloadTaskCancelable3 = (DownloadTaskCancelable) pairCreate.second;
                Objects.requireNonNull(downloadTaskCancelable3);
                downloadTaskCancelable.b(Disposables.a(new er0(downloadTaskCancelable3, i4)));
                return (com.perfectcorp.thirdparty.io.reactivex.b) pairCreate.first;
            case 25:
                return new k(new d$a((List) obj).c().f(new na0((RecommendationHandler.SyncServerCallback) obj3, (ArrayList) obj2, i5)));
            case 27:
                return ((BaseDownloadHandle) com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a.a(((SkuDataForProtocol.IdSystemFiles) obj3).f39928a, (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a) obj, (NetworkTaskManager.TaskPriority) obj2).a(NetworkTaskManagerHolder.a())).d(null, null);
            case 28:
                String str = (String) obj2;
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.f fVar2 = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.f) ((RequestTask.Response) obj).f39358b;
                Objects.requireNonNull(fVar2);
                String strA = fVar2.a();
                a.A(fc.s("[checkSkuTreeNeedToUpdate] featureType=", (String) obj3, ", messageDigest=", str, ", newMessageDigest="), strA, 3, "SkuHandler");
                return Boolean.valueOf(!Objects.equals(str, strA));
            default:
                return ApplyEffectUtility.h((String) obj, DownloadCacheStrategy.UPDATE_FIRST, ((SkuHandler) obj3).f39935b, (DownloadTaskCancelable) obj2, NetworkTaskManager.TaskPriority.LOW, false, null);
        }
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void b(Object obj) {
        int i2 = this.f78736b;
        Object obj2 = this.d;
        Object obj3 = this.f78737c;
        switch (i2) {
            case 0:
                Function1 function1 = (Function1) obj3;
                Function0 function0 = (Function0) obj2;
                ActivityResult activityResult = (ActivityResult) obj;
                activityResult.getClass();
                if (activityResult.f731b != -1) {
                    function0.mo47invoke();
                } else {
                    function1.invoke(activityResult.f732c);
                }
                break;
            case 20:
                PermissionExtensionsKt.registerForPermissions$lambda$0((Function2) obj3, (AppCompatActivity) obj2, (Map) obj);
                break;
            default:
                PermissionExtensionsKt.registerForPermissions$lambda$1((Function2) obj3, (Fragment) obj2, (Map) obj);
                break;
        }
    }

    @Override // com.google.firebase.components.ComponentFactory
    public Object c(ComponentContainer componentContainer) {
        String str = (String) this.f78737c;
        Component component = (Component) this.d;
        try {
            Trace.beginSection(str);
            return component.f34382f.c(componentContainer);
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy.OnImageAvailableListener
    public void d(ImageReaderProxy imageReaderProxy) {
        int i2 = this.f78736b;
        Object obj = this.d;
        Object obj2 = this.f78737c;
        switch (i2) {
            case 18:
                ((ImageReaderProxy.OnImageAvailableListener) obj).d((NoMetadataImageReader) obj2);
                break;
            default:
                ((ImageReaderProxy.OnImageAvailableListener) obj).d((SafeCloseImageReaderProxy) obj2);
                break;
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.g
    public void e(SingleEmitter singleEmitter) {
        try {
            ((JsExecutor) this.f78737c).executeJs((String) this.d, new qw0(singleEmitter, 0));
        } catch (Throwable th) {
            singleEmitter.a(th);
        }
    }

    @Override // androidx.camera.core.SurfaceRequest.TransformationInfoListener
    public void f(SurfaceRequest.TransformationInfo transformationInfo) {
        DefaultSurfaceProcessor defaultSurfaceProcessor = (DefaultSurfaceProcessor) this.f78737c;
        SurfaceRequest surfaceRequest = (SurfaceRequest) this.d;
        GLUtils.InputFormat inputFormat = GLUtils.InputFormat.DEFAULT;
        if (surfaceRequest.f1975c.a() && transformationInfo.e()) {
            inputFormat = GLUtils.InputFormat.YUV;
        }
        OpenGlRenderer openGlRenderer = defaultSurfaceProcessor.f2531b;
        GLUtils.d(openGlRenderer.f2541a, true);
        GLUtils.c(openGlRenderer.f2543c);
        if (openGlRenderer.l != inputFormat) {
            openGlRenderer.l = inputFormat;
            openGlRenderer.k(openGlRenderer.m);
        }
    }

    @Override // com.google.firebase.inject.Deferred.DeferredHandler
    public void g(Provider provider) {
        Deferred.DeferredHandler deferredHandler = (Deferred.DeferredHandler) this.f78737c;
        Deferred.DeferredHandler deferredHandler2 = (Deferred.DeferredHandler) this.d;
        deferredHandler.g(provider);
        deferredHandler2.g(provider);
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object i(CallbackToFutureAdapter.Completer completer) {
        int i2 = this.f78736b;
        Object obj = this.d;
        Object obj2 = this.f78737c;
        switch (i2) {
            case 4:
                CameraX cameraX = (CameraX) obj2;
                Context context = (Context) obj;
                Executor executor = cameraX.d;
                executor.execute(new androidx.camera.core.b(1, SystemClock.elapsedRealtime(), context, cameraX, completer, executor));
                return "CameraX initInternal";
            default:
                AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                completer.a(new x90(atomicBoolean, 0), DirectExecutor.INSTANCE);
                ((SerialExecutor) obj2).execute(new b5(atomicBoolean, completer, (b41) obj, 15));
                return "setForegroundAsync";
        }
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        int i2 = this.f78736b;
        Object obj2 = this.d;
        Object obj3 = this.f78737c;
        switch (i2) {
            case 9:
                ((AnalyticsListener) obj).d((AnalyticsListener.EventTime) obj3, (MediaLoadData) obj2);
                break;
            default:
                ((Player.Listener) obj).L(((Integer) obj2).intValue(), (MediaItem) obj3);
                break;
        }
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void onComplete(Task task) {
        int i2 = this.f78736b;
        Object obj = this.d;
        Object obj2 = this.f78737c;
        switch (i2) {
            case 11:
                int i3 = EnhancedIntentService.f35236b;
                ((EnhancedIntentService) obj2).a((Intent) obj);
                break;
            default:
                Task task2 = (Task) obj2;
                Task task3 = (Task) obj;
                int i4 = FirebaseAnalyticsRepositoryImpl.g;
                task.getClass();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                try {
                    Result.Companion companion = Result.INSTANCE;
                    String str = (String) task2.getResult();
                    if (str != null) {
                        linkedHashMap.put("app_instance_id", str);
                    }
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    new Result.Failure(th);
                }
                try {
                    Long l = (Long) task3.getResult();
                    if (l != null) {
                        linkedHashMap.put("ga_session_id", Long.valueOf(l.longValue()));
                    }
                } catch (Throwable th2) {
                    Result.Companion companion3 = Result.INSTANCE;
                    new Result.Failure(th2);
                }
                if (!linkedHashMap.isEmpty()) {
                    AppsFlyerLib.getInstance().setAdditionalData(linkedHashMap);
                }
                break;
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Predicate
    public boolean test(Object obj) {
        Map map = (Map) this.f78737c;
        ConcurrentLinkedQueue concurrentLinkedQueue = (ConcurrentLinkedQueue) this.d;
        com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.e.a aVar = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.e.a) obj;
        c cVar = (c) map.get(aVar.a());
        if (cVar == null || cVar.f41287b < aVar.b()) {
            return true;
        }
        concurrentLinkedQueue.remove(aVar.a());
        return false;
    }

    public /* synthetic */ p3(Object obj, Object obj2, int i2) {
        this.f78736b = i2;
        this.f78737c = obj;
        this.d = obj2;
    }
}

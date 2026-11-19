package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.util.Range;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.arch.core.util.Function;
import androidx.camera.camera2.internal.Camera2CameraControlImpl;
import androidx.camera.camera2.internal.Camera2PresenceSource;
import androidx.camera.core.CameraX;
import androidx.camera.core.ZoomState;
import androidx.camera.core.impl.AdapterCameraInfo;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CameraRepository;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.internal.ImmutableZoomState;
import androidx.camera.video.internal.audio.AudioSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.audio.AudioCapabilities;
import androidx.media3.exoplayer.audio.AudioCapabilitiesReceiver;
import androidx.media3.exoplayer.audio.AudioTrackAudioOutputProvider;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.share.SessionReadyListener;
import com.batch.android.Batch;
import com.batch.android.LoggerDelegate;
import com.batch.android.LoggerLevel;
import com.batch.android.j1.b;
import com.batch.android.j1.c;
import com.batch.android.j1.g;
import com.batch.android.j1.h;
import com.canhub.cropper.CropImageIntentChooser;
import com.dynatrace.android.agent.CommunicationManager;
import com.dynatrace.android.agent.conf.ConfigurationPublisher;
import com.dynatrace.android.agent.data.Session;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.crashlytics.AnalyticsDeferredProxy;
import com.google.firebase.crashlytics.CrashlyticsRegistrar;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent;
import com.google.firebase.crashlytics.internal.CrashlyticsNativeComponentDeferredProxy;
import com.google.firebase.crashlytics.internal.DevelopmentPlatformProvider;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.RemoteConfigDeferredProxy;
import com.google.firebase.crashlytics.internal.common.AppData;
import com.google.firebase.crashlytics.internal.common.BuildIdInfo;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.common.CrashlyticsAppQualitySessionsSubscriber;
import com.google.firebase.crashlytics.internal.common.CrashlyticsCore;
import com.google.firebase.crashlytics.internal.common.DataCollectionArbiter;
import com.google.firebase.crashlytics.internal.common.IdManager;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import com.google.firebase.crashlytics.internal.network.HttpRequestFactory;
import com.google.firebase.crashlytics.internal.persistence.FileStore;
import com.google.firebase.crashlytics.internal.settings.SettingsController;
import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.remoteconfig.interop.FirebaseRemoteConfigInterop;
import com.google.firebase.sessions.api.FirebaseSessionsDependencies;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.ObjectConstructor;
import com.perfectcorp.perfectlib.CameraFrame;
import com.perfectcorp.perfectlib.MakeupCam;
import com.perfectcorp.perfectlib.ShadeFinder;
import com.vuitton.android.presentation.chat.ChatCoordinator;
import com.vuitton.android.presentation.chat.ChatLifecycleObserver;
import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffFragment;
import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormFragment;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.utils.CameraController;
import com.vuitton.core.infrastructure.perfectcorp.PfCamera;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class s3 implements Function, SessionReadyListener, OnSuccessListener, Arrangement.SpacingAlignmentCalculator, CallbackToFutureAdapter.Resolver, AudioCapabilitiesReceiver.Listener, c, h, PfCamera.PreviewCallback, ActivityResultCallback, ConfigurationPublisher.ConfigurationTransform, ObjectConstructor, Deferred.DeferredHandler, ComponentFactory, Continuation, ListenerSet.Event {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79695b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f79696c;

    public /* synthetic */ s3(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
        this.f79695b = 26;
        this.f79696c = decoderCounters;
    }

    @Override // com.batch.android.j1.c
    public void a(b bVar) {
        int i2 = this.f79695b;
        Object obj = this.f79696c;
        switch (i2) {
            case 7:
                Batch.a((EnumSet) obj, bVar);
                break;
            case 10:
                bVar.a((LoggerLevel) obj);
                break;
            default:
                bVar.a((LoggerDelegate) obj);
                break;
        }
    }

    @Override // androidx.arch.core.util.Function
    /* JADX INFO: renamed from: apply */
    public Object mo0apply(Object obj) {
        Range range = (Range) this.f79696c;
        ZoomState zoomState = (ZoomState) obj;
        return ImmutableZoomState.e(zoomState.d(), ((Float) range.getUpper()).floatValue(), ((Float) range.getLower()).floatValue(), AdapterCameraInfo.z(zoomState.d(), ((Float) range.getLower()).floatValue(), ((Float) range.getUpper()).floatValue()));
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void b(Object obj) {
        Uri data;
        Bundle extras;
        ContentResolver contentResolver;
        Bundle extras2;
        int i2 = this.f79695b;
        String string = null;
        Object obj2 = this.f79696c;
        switch (i2) {
            case 17:
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                ChatCoordinator chatCoordinator = ((ChatLifecycleObserver) obj2).f50689b;
                if (!zBooleanValue) {
                    if (chatCoordinator.c()) {
                        chatCoordinator.f50678b.f49646a.f();
                    }
                } else if (chatCoordinator.c()) {
                    chatCoordinator.f50678b.f49646a.e();
                }
                break;
            case 25:
                CropImageIntentChooser cropImageIntentChooser = (CropImageIntentChooser) obj2;
                ActivityResult activityResult = (ActivityResult) obj;
                int i3 = CropImageIntentChooser.g;
                CropImageIntentChooser.ResultCallback resultCallback = cropImageIntentChooser.f25060b;
                activityResult.getClass();
                if (activityResult.f731b != -1) {
                    resultCallback.b();
                } else {
                    Intent intent = activityResult.f732c;
                    if (intent == null || (data = intent.getData()) == null) {
                        data = cropImageIntentChooser.f25062e;
                    }
                    resultCallback.a(data);
                }
                break;
            case 28:
                DistantRepairFormBffFragment distantRepairFormBffFragment = (DistantRepairFormBffFragment) obj2;
                ActivityResult activityResult2 = (ActivityResult) obj;
                DistantRepairFormBffFragment.Companion companion = DistantRepairFormBffFragment.M;
                activityResult2.getClass();
                if (activityResult2.f731b == -1) {
                    Intent intent2 = activityResult2.f732c;
                    if (intent2 != null && (extras = intent2.getExtras()) != null) {
                        string = extras.getString("IMAGE_RESULT");
                    }
                    Uri uri = Uri.parse(string != null ? string : "");
                    try {
                        Result.Companion companion2 = Result.INSTANCE;
                        distantRepairFormBffFragment.requireContext().getContentResolver().takePersistableUriPermission(uri, 1);
                    } catch (Throwable th) {
                        Result.Companion companion3 = Result.INSTANCE;
                        new Result.Failure(th);
                    }
                    distantRepairFormBffFragment.L.invoke(uri);
                }
                break;
            default:
                DistantRepairFormFragment distantRepairFormFragment = (DistantRepairFormFragment) obj2;
                ActivityResult activityResult3 = (ActivityResult) obj;
                DistantRepairFormFragment.Companion companion4 = DistantRepairFormFragment.M;
                activityResult3.getClass();
                if (activityResult3.f731b == -1) {
                    Intent intent3 = activityResult3.f732c;
                    if (intent3 != null && (extras2 = intent3.getExtras()) != null) {
                        string = extras2.getString("IMAGE_RESULT");
                    }
                    Uri uri2 = Uri.parse(string != null ? string : "");
                    try {
                        Result.Companion companion5 = Result.INSTANCE;
                        Context context = distantRepairFormFragment.getContext();
                        if (context != null && (contentResolver = context.getContentResolver()) != null) {
                            contentResolver.takePersistableUriPermission(uri2, 1);
                        }
                    } catch (Throwable th2) {
                        Result.Companion companion6 = Result.INSTANCE;
                        new Result.Failure(th2);
                    }
                    distantRepairFormFragment.L.invoke(uri2);
                }
                break;
        }
    }

    @Override // com.google.firebase.components.ComponentFactory
    public Object c(ComponentContainer componentContainer) {
        long j2;
        int i2;
        FirebaseCrashlytics firebaseCrashlytics;
        CrashlyticsRegistrar crashlyticsRegistrar = (CrashlyticsRegistrar) this.f79696c;
        int i3 = CrashlyticsRegistrar.d;
        CrashlyticsWorkers.d.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        FirebaseApp firebaseApp = (FirebaseApp) componentContainer.a(FirebaseApp.class);
        FirebaseInstallationsApi firebaseInstallationsApi = (FirebaseInstallationsApi) componentContainer.a(FirebaseInstallationsApi.class);
        Deferred deferredI = componentContainer.i(CrashlyticsNativeComponent.class);
        Deferred deferredI2 = componentContainer.i(AnalyticsConnector.class);
        Deferred deferredI3 = componentContainer.i(FirebaseRemoteConfigInterop.class);
        ExecutorService executorService = (ExecutorService) componentContainer.e(crashlyticsRegistrar.f34471a);
        ExecutorService executorService2 = (ExecutorService) componentContainer.e(crashlyticsRegistrar.f34472b);
        ExecutorService executorService3 = (ExecutorService) componentContainer.e(crashlyticsRegistrar.f34473c);
        firebaseApp.a();
        Context context = firebaseApp.f34330a;
        String packageName = context.getPackageName();
        Logger logger = Logger.f34483b;
        logger.a(4);
        CrashlyticsWorkers crashlyticsWorkers = new CrashlyticsWorkers(executorService, executorService2);
        FileStore fileStore = new FileStore(context);
        DataCollectionArbiter dataCollectionArbiter = new DataCollectionArbiter(firebaseApp);
        IdManager idManager = new IdManager(context, packageName, firebaseInstallationsApi, dataCollectionArbiter);
        CrashlyticsNativeComponentDeferredProxy crashlyticsNativeComponentDeferredProxy = new CrashlyticsNativeComponentDeferredProxy(deferredI);
        AnalyticsDeferredProxy analyticsDeferredProxy = new AnalyticsDeferredProxy(deferredI2);
        CrashlyticsAppQualitySessionsSubscriber crashlyticsAppQualitySessionsSubscriber = new CrashlyticsAppQualitySessionsSubscriber(dataCollectionArbiter, fileStore);
        FirebaseSessionsDependencies.d(crashlyticsAppQualitySessionsSubscriber);
        CrashlyticsCore crashlyticsCore = new CrashlyticsCore(firebaseApp, idManager, crashlyticsNativeComponentDeferredProxy, dataCollectionArbiter, new i5(analyticsDeferredProxy), new i5(analyticsDeferredProxy), fileStore, crashlyticsAppQualitySessionsSubscriber, new RemoteConfigDeferredProxy(deferredI3), crashlyticsWorkers);
        firebaseApp.a();
        String str = firebaseApp.f34332c.f34346b;
        int iE = CommonUtils.e(context, "com.google.firebase.crashlytics.mapping_file_id", "string");
        if (iE == 0) {
            iE = CommonUtils.e(context, "com.crashlytics.android.build_id", "string");
        }
        String string = iE != 0 ? context.getResources().getString(iE) : null;
        ArrayList<BuildIdInfo> arrayList = new ArrayList();
        int iE2 = CommonUtils.e(context, "com.google.firebase.crashlytics.build_ids_lib", "array");
        int iE3 = CommonUtils.e(context, "com.google.firebase.crashlytics.build_ids_arch", "array");
        int iE4 = CommonUtils.e(context, "com.google.firebase.crashlytics.build_ids_build_id", "array");
        if (iE2 == 0 || iE3 == 0 || iE4 == 0) {
            j2 = jCurrentTimeMillis;
            i2 = 3;
            String.format("Could not find resources: %d %d %d", Integer.valueOf(iE2), Integer.valueOf(iE3), Integer.valueOf(iE4));
            logger.a(3);
        } else {
            String[] stringArray = context.getResources().getStringArray(iE2);
            String[] stringArray2 = context.getResources().getStringArray(iE3);
            String[] stringArray3 = context.getResources().getStringArray(iE4);
            if (stringArray.length == stringArray3.length && stringArray2.length == stringArray3.length) {
                int i4 = 0;
                while (i4 < stringArray3.length) {
                    arrayList.add(new BuildIdInfo(stringArray[i4], stringArray2[i4], stringArray3[i4]));
                    i4++;
                    jCurrentTimeMillis = jCurrentTimeMillis;
                }
                j2 = jCurrentTimeMillis;
                i2 = 3;
            } else {
                j2 = jCurrentTimeMillis;
                String.format("Lengths did not match: %d %d %d", Integer.valueOf(stringArray.length), Integer.valueOf(stringArray2.length), Integer.valueOf(stringArray3.length));
                i2 = 3;
                logger.a(3);
            }
        }
        Logger.f34483b.a(i2);
        for (BuildIdInfo buildIdInfo : arrayList) {
            Logger logger2 = Logger.f34483b;
            String str2 = buildIdInfo.f34505a;
            logger2.a(i2);
        }
        DevelopmentPlatformProvider developmentPlatformProvider = new DevelopmentPlatformProvider(context);
        try {
            String packageName2 = context.getPackageName();
            String strD = idManager.d();
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName2, 0);
            String string2 = Long.toString(packageInfo.getLongVersionCode());
            String str3 = packageInfo.versionName;
            if (str3 == null) {
                str3 = "0.0";
            }
            AppData appData = new AppData(str, string, arrayList, strD, packageName2, string2, str3, developmentPlatformProvider);
            Logger.f34483b.a(2);
            SettingsController settingsControllerC = SettingsController.c(context, str, idManager, new HttpRequestFactory(), appData.f34497f, appData.g, fileStore, dataCollectionArbiter);
            settingsControllerC.e(crashlyticsWorkers).d(executorService3, new az(2));
            if (crashlyticsCore.d(appData, settingsControllerC)) {
                crashlyticsCore.o.f34590a.a(new uq(crashlyticsCore, settingsControllerC, 0));
            }
            firebaseCrashlytics = new FirebaseCrashlytics(crashlyticsCore);
        } catch (PackageManager.NameNotFoundException unused) {
            Logger.f34483b.b();
            firebaseCrashlytics = null;
        }
        if (System.currentTimeMillis() - j2 > 16) {
            Logger.f34483b.a(i2);
        }
        return firebaseCrashlytics;
    }

    @Override // com.google.gson.internal.ObjectConstructor
    public Object construct() {
        int i2 = this.f79695b;
        Object obj = this.f79696c;
        switch (i2) {
            case 19:
                return ConstructorConstructor.lambda$newUnsafeAllocator$19((Class) obj);
            default:
                return ConstructorConstructor.lambda$newDefaultConstructor$9((Constructor) obj);
        }
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object d(Task task) {
        int i2 = this.f79695b;
        Object obj = this.f79696c;
        switch (i2) {
            case 23:
                return (Task) ((Callable) obj).call();
            default:
                ((Runnable) obj).run();
                return Tasks.f(null);
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioCapabilitiesReceiver.Listener
    public void e(AudioCapabilities audioCapabilities) {
        AudioTrackAudioOutputProvider audioTrackAudioOutputProvider = (AudioTrackAudioOutputProvider) this.f79696c;
        audioTrackAudioOutputProvider.b();
        AudioCapabilities audioCapabilities2 = audioTrackAudioOutputProvider.f14966h;
        if (audioCapabilities2 == null || audioCapabilities.equals(audioCapabilities2)) {
            return;
        }
        audioTrackAudioOutputProvider.f14966h = audioCapabilities;
        ListenerSet listenerSet = audioTrackAudioOutputProvider.f14965f;
        if (listenerSet != null) {
            listenerSet.f(-1, new v7(23));
        }
    }

    @Override // androidx.compose.foundation.layout.Arrangement.SpacingAlignmentCalculator
    public int f(int i2, LayoutDirection layoutDirection) {
        int i3 = this.f79695b;
        Object obj = this.f79696c;
        switch (i3) {
            case 3:
                Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                return ((Alignment.Horizontal) obj).a(0, i2, layoutDirection);
            default:
                Arrangement$Start$1 arrangement$Start$2 = Arrangement.f4918a;
                return ((Alignment.Vertical) obj).a(0, i2);
        }
    }

    @Override // com.google.firebase.inject.Deferred.DeferredHandler
    public void g(Provider provider) {
        CrashlyticsNativeComponentDeferredProxy crashlyticsNativeComponentDeferredProxy = (CrashlyticsNativeComponentDeferredProxy) this.f79696c;
        Logger.f34483b.a(3);
        crashlyticsNativeComponentDeferredProxy.f34478b.set((CrashlyticsNativeComponent) provider.get());
    }

    @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera.PreviewCallback
    public void h(byte[] bArr) {
        CameraController cameraController = (CameraController) this.f79696c;
        if (bArr == null) {
            int i2 = CameraController.f62313i;
            return;
        }
        CameraFrame cameraFrame = new CameraFrame(bArr, cameraController.f62317e, cameraController.f62318f, cameraController.g);
        MakeupCam makeupCam = cameraController.f62315b;
        if (makeupCam != null) {
            makeupCam.sendCameraBuffer(cameraFrame);
        }
        ShadeFinder shadeFinder = cameraController.f62316c;
        if (shadeFinder != null) {
            shadeFinder.sendCameraBuffer(cameraFrame);
        }
        cameraController.g = false;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object i(final CallbackToFutureAdapter.Completer completer) {
        ListenableFuture listenableFutureA;
        int i2 = this.f79695b;
        Object obj = this.f79696c;
        switch (i2) {
            case 5:
                final AudioSource audioSource = (AudioSource) obj;
                audioSource.f2886a.execute(new Runnable() { // from class: androidx.camera.video.internal.audio.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        CallbackToFutureAdapter.Completer completer2 = completer;
                        AudioSource audioSource2 = audioSource;
                        audioSource2.getClass();
                        try {
                            int iOrdinal = audioSource2.g.ordinal();
                            if (iOrdinal == 0 || iOrdinal == 1) {
                                audioSource2.b(null);
                                audioSource2.f2889e.release();
                                audioSource2.d.release();
                                audioSource2.d();
                                audioSource2.c(AudioSource.InternalState.RELEASED);
                            }
                            completer2.b(null);
                        } catch (Throwable th) {
                            completer2.d(th);
                        }
                    }
                });
                return "AudioSource-release";
            case 12:
                Camera2CameraControlImpl camera2CameraControlImpl = (Camera2CameraControlImpl) obj;
                camera2CameraControlImpl.f1417c.execute(new r6(camera2CameraControlImpl, completer, 9));
                return "updateSessionConfigAsync";
            case 13:
                Camera2PresenceSource camera2PresenceSource = (Camera2PresenceSource) obj;
                int i3 = Camera2PresenceSource.f1526i;
                camera2PresenceSource.g.execute(new r6(camera2PresenceSource, completer, 12));
                return "FetchData for CameraAvailability";
            case 15:
                CameraRepository cameraRepository = (CameraRepository) obj;
                synchronized (cameraRepository.f2250a) {
                    cameraRepository.f2253e = completer;
                    break;
                }
                return "CameraRepository-deinit";
            default:
                CameraX cameraX = (CameraX) obj;
                cameraX.n.d();
                CameraRepository cameraRepository2 = cameraX.f1898a;
                synchronized (cameraRepository2.f2250a) {
                    try {
                        boolean zIsEmpty = cameraRepository2.f2251b.isEmpty();
                        listenableFutureA = cameraRepository2.d;
                        if (!zIsEmpty) {
                            int i4 = 15;
                            if (listenableFutureA == null) {
                                listenableFutureA = CallbackToFutureAdapter.a(new s3(cameraRepository2, i4));
                                cameraRepository2.d = listenableFutureA;
                            }
                            cameraRepository2.f2252c.addAll(cameraRepository2.f2251b.values());
                            for (CameraInternal cameraInternal : cameraRepository2.f2251b.values()) {
                                cameraInternal.release().addListener(new r6(cameraRepository2, cameraInternal, i4), CameraXExecutors.a());
                            }
                            cameraRepository2.f2251b.clear();
                        } else if (listenableFutureA == null) {
                            listenableFutureA = Futures.g(null);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                listenableFutureA.addListener(new r6(cameraX, completer, 16), cameraX.d);
                return "CameraX shutdownInternal";
        }
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        int i2 = this.f79695b;
        Object obj2 = this.f79696c;
        switch (i2) {
            case 26:
                ((AnalyticsListener) obj).a((DecoderCounters) obj2);
                break;
            default:
                ((AnalyticsListener) obj).c((MediaLoadData) obj2);
                break;
        }
    }

    @Override // com.appsflyer.share.SessionReadyListener
    public void onSessionReady() {
        ((AppsFlyerLib) this.f79696c).start();
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        ((c1) this.f79696c).invoke(obj);
    }

    public /* synthetic */ s3(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
        this.f79695b = 27;
        this.f79696c = mediaLoadData;
    }

    public /* synthetic */ s3(Object obj, int i2) {
        this.f79695b = i2;
        this.f79696c = obj;
    }

    @Override // com.batch.android.j1.h
    public void a(g gVar) {
        int i2 = this.f79695b;
        Object obj = this.f79696c;
        switch (i2) {
            case 8:
                ((AtomicBoolean) obj).set(true);
                break;
            default:
                Batch.a((StringBuilder) obj, gVar);
                break;
        }
    }

    @Override // com.dynatrace.android.agent.conf.ConfigurationPublisher.ConfigurationTransform
    public ConfigurationPublisher.ConfigurationUpdate.Builder a(ConfigurationPublisher.ConfigurationUpdate.Builder builder) {
        Session session = (Session) this.f79696c;
        String str = CommunicationManager.w;
        builder.f27375i = session.g();
        return builder;
    }
}

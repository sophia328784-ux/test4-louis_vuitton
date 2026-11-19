package defpackage;

import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.media.AudioTrack;
import android.os.Handler;
import android.view.View;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraPresenceProvider;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.core.processing.SurfaceProcessorNode;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessor;
import androidx.camera.video.VideoCapture;
import androidx.camera.video.internal.audio.AudioSource;
import androidx.camera.video.internal.audio.AudioStream;
import androidx.camera.video.internal.audio.BufferedAudioStream;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import androidx.fragment.app.FragmentTransitionImpl;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.Observer;
import androidx.media3.common.Format;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.audio.AudioTrackAudioOutput;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.KeyRequestInfo;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import androidx.media3.session.SessionResult;
import androidx.media3.session.g0;
import androidx.work.Logger;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.Processor;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.CancelWorkRunnable;
import com.batch.android.g1.c;
import com.batch.android.q.f;
import com.batch.android.s.a;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.material.tabs.TabLayout;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.SettableFuture;
import com.google.firebase.messaging.EnhancedIntentService;
import com.lightup.sdk.device.devicemanagement.BLEDevice;
import com.lightup.sdk.device.features.Feature;
import com.lightup.sdk.device.model.device.BLEDeviceStateListener;
import com.perfectcorp.perfectlib.MakeupCam;
import com.perfectcorp.perfectlib.PupilData;
import com.perfectcorp.perfectlib.PupilQualityCheck;
import com.sightcall.universal.internal.ui.CallActivity;
import com.sightcall.universal.media.Media;
import com.sightcall.universal.media.Metadata;
import com.sightcall.universal.media.UploaderService;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListActivity;
import com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListActivity$initPager$pagerAdapter$1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import lv.nfc.reader.TagNfcExecutor;
import lv.nfc.reader.TagNfcExecutorCallback;
import lv.nfc.reader.data.models.LVTagInput;
import net.rtccloud.sdk.VideoModule;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class b5 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20750b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f20751c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f20752e;

    public /* synthetic */ b5(Object obj, Object obj2, Object obj3, int i2) {
        this.f20750b = i2;
        this.f20751c = obj;
        this.d = obj2;
        this.f20752e = obj3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        CameraInfoInternal cameraInfoInternal;
        LiveData liveDataC;
        int i2 = 0;
        Object obj = null;
        boolean zBooleanValue = true;
        switch (this.f20750b) {
            case 0:
                TabLayout tabLayout = (TabLayout) this.f20751c;
                AirportListActivity airportListActivity = (AirportListActivity) this.d;
                AirportListActivity$initPager$pagerAdapter$1 airportListActivity$initPager$pagerAdapter$1 = (AirportListActivity$initPager$pagerAdapter$1) this.f20752e;
                AirportListActivity.Companion companion = AirportListActivity.r;
                int tabCount = tabLayout.getTabCount();
                if (tabCount < 0) {
                    return;
                }
                while (true) {
                    TabLayout.Tab tabH = tabLayout.h(i2);
                    if (tabH != null) {
                        tabH.setContentDescription(airportListActivity.getString(R.string.content_description_tab, airportListActivity$initPager$pagerAdapter$1.c(i2), String.valueOf(i2 + 1), String.valueOf(tabLayout.getTabCount())));
                    }
                    if (i2 == tabCount) {
                        return;
                    } else {
                        i2++;
                    }
                }
                break;
            case 1:
                AudioRendererEventListener.EventDispatcher eventDispatcher = (AudioRendererEventListener.EventDispatcher) this.f20751c;
                Format format = (Format) this.d;
                DecoderReuseEvaluation decoderReuseEvaluation = (DecoderReuseEvaluation) this.f20752e;
                AudioRendererEventListener audioRendererEventListener = eventDispatcher.f14926b;
                String str = Util.f14242a;
                audioRendererEventListener.p(format, decoderReuseEvaluation);
                return;
            case 2:
                AudioSource audioSource = (AudioSource) this.f20751c;
                Executor executor = (Executor) this.d;
                AudioSource.AudioSourceCallback audioSourceCallback = (AudioSource.AudioSourceCallback) this.f20752e;
                int iOrdinal = audioSource.g.ordinal();
                if (iOrdinal == 0) {
                    audioSource.f2893j = executor;
                    audioSource.f2894k = audioSourceCallback;
                    return;
                } else {
                    if (iOrdinal == 1 || iOrdinal == 2) {
                        md.h("The audio recording callback must be registered before the audio source is started.");
                        return;
                    }
                    return;
                }
            case 3:
                AudioTrack audioTrack = (AudioTrack) this.f20751c;
                Handler handler = (Handler) this.d;
                ListenerSet listenerSet = (ListenerSet) this.f20752e;
                int i3 = 11;
                try {
                    audioTrack.flush();
                    audioTrack.release();
                    if (handler.getLooper().getThread().isAlive()) {
                        handler.post(new z1(listenerSet, i3));
                    }
                    synchronized (AudioTrackAudioOutput.q) {
                        try {
                            int i4 = AudioTrackAudioOutput.s - 1;
                            AudioTrackAudioOutput.s = i4;
                            if (i4 == 0) {
                                ScheduledExecutorService scheduledExecutorService = AudioTrackAudioOutput.r;
                                scheduledExecutorService.getClass();
                                scheduledExecutorService.shutdown();
                                AudioTrackAudioOutput.r = null;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                        break;
                    }
                    return;
                } catch (Throwable th2) {
                    if (handler.getLooper().getThread().isAlive()) {
                        handler.post(new z1(listenerSet, i3));
                    }
                    synchronized (AudioTrackAudioOutput.q) {
                        try {
                            int i5 = AudioTrackAudioOutput.s - 1;
                            AudioTrackAudioOutput.s = i5;
                            if (i5 == 0) {
                                ScheduledExecutorService scheduledExecutorService2 = AudioTrackAudioOutput.r;
                                scheduledExecutorService2.getClass();
                                scheduledExecutorService2.shutdown();
                                AudioTrackAudioOutput.r = null;
                            }
                            throw th2;
                        } catch (Throwable th3) {
                            throw th3;
                        }
                    }
                }
            case 4:
                ((BufferedAudioStream) this.f20751c).g.a((AudioStream.AudioStreamCallback) this.d, (Executor) this.f20752e);
                return;
            case 5:
                ((CallActivity) this.f20751c).lambda$switchUserUi$17((VideoModule) this.d, (VideoModule.CameraSource) this.f20752e);
                return;
            case 6:
                ArrayList arrayList = (ArrayList) this.f20751c;
                Observer observer = (Observer) this.d;
                String str2 = (String) this.f20752e;
                int i6 = CameraPresenceProvider.l;
                try {
                    for (Object obj2 : arrayList) {
                        if (Intrinsics.c(((CameraInfoInternal) obj2).b(), str2)) {
                            obj = obj2;
                            cameraInfoInternal = (CameraInfoInternal) obj;
                            if (cameraInfoInternal != null || (liveDataC = cameraInfoInternal.c()) == null) {
                                return;
                            }
                            liveDataC.removeObserver(observer);
                            return;
                        }
                    }
                    cameraInfoInternal = (CameraInfoInternal) obj;
                    if (cameraInfoInternal != null) {
                        return;
                    } else {
                        return;
                    }
                } catch (IllegalArgumentException unused) {
                    return;
                }
            case 7:
                WorkDatabase workDatabase = (WorkDatabase) this.f20751c;
                String str3 = (String) this.d;
                WorkManagerImpl workManagerImpl = (WorkManagerImpl) this.f20752e;
                Iterator it = workDatabase.D().i(str3).iterator();
                while (it.hasNext()) {
                    CancelWorkRunnable.a(workManagerImpl, (String) it.next());
                }
                return;
            case 8:
                FragmentTransitionImpl fragmentTransitionImpl = (FragmentTransitionImpl) this.f20751c;
                View view = (View) this.d;
                Rect rect = (Rect) this.f20752e;
                fragmentTransitionImpl.getClass();
                FragmentTransitionImpl.j(view, rect);
                return;
            case 9:
                DefaultSurfaceProcessor defaultSurfaceProcessor = (DefaultSurfaceProcessor) this.f20751c;
                Runnable runnable = (Runnable) this.d;
                Runnable runnable2 = (Runnable) this.f20752e;
                if (defaultSurfaceProcessor.f2538k) {
                    runnable.run();
                    return;
                } else {
                    runnable2.run();
                    return;
                }
            case 10:
                DrmSessionEventListener.EventDispatcher eventDispatcher2 = (DrmSessionEventListener.EventDispatcher) this.f20751c;
                ((DrmSessionEventListener) this.d).a0(eventDispatcher2.f15079a, eventDispatcher2.f15080b, (Exception) this.f20752e);
                return;
            case 11:
                DrmSessionEventListener.EventDispatcher eventDispatcher3 = (DrmSessionEventListener.EventDispatcher) this.f20751c;
                DrmSessionEventListener drmSessionEventListener = (DrmSessionEventListener) this.d;
                KeyRequestInfo keyRequestInfo = (KeyRequestInfo) this.f20752e;
                int i7 = eventDispatcher3.f15079a;
                MediaSource.MediaPeriodId mediaPeriodId = eventDispatcher3.f15080b;
                drmSessionEventListener.getClass();
                drmSessionEventListener.T(i7, mediaPeriodId, keyRequestInfo);
                return;
            case 12:
                DualSurfaceProcessor dualSurfaceProcessor = (DualSurfaceProcessor) this.f20751c;
                Runnable runnable3 = (Runnable) this.d;
                Runnable runnable4 = (Runnable) this.f20752e;
                if (dualSurfaceProcessor.g) {
                    runnable3.run();
                    return;
                } else {
                    runnable4.run();
                    return;
                }
            case 13:
                EnhancedIntentService enhancedIntentService = (EnhancedIntentService) this.f20751c;
                Intent intent = (Intent) this.d;
                TaskCompletionSource taskCompletionSource = (TaskCompletionSource) this.f20752e;
                int i8 = EnhancedIntentService.f35236b;
                try {
                    enhancedIntentService.handleIntent(intent);
                    return;
                } finally {
                    taskCompletionSource.b(null);
                }
            case 14:
                ((Feature) this.f20751c).onBLEDeviceStateChange((BLEDeviceStateListener.StateChangeType) this.d, (BLEDevice.DeviceStateBundle) this.f20752e);
                return;
            case 15:
                AtomicBoolean atomicBoolean = (AtomicBoolean) this.f20751c;
                CallbackToFutureAdapter.Completer completer = (CallbackToFutureAdapter.Completer) this.d;
                b41 b41Var = (b41) this.f20752e;
                if (atomicBoolean.get()) {
                    return;
                }
                try {
                    b41Var.mo47invoke();
                    completer.b(null);
                    return;
                } catch (Throwable th4) {
                    completer.d(th4);
                    return;
                }
            case 16:
                ((MakeupCam.PupilAnalysisCallback) this.f20751c).onAnalyze((PupilData) this.d, (PupilQualityCheck) this.f20752e);
                return;
            case 17:
                Processor processor = (Processor) this.f20751c;
                ListenableFuture listenableFuture = (ListenableFuture) this.d;
                WorkerWrapper workerWrapper = (WorkerWrapper) this.f20752e;
                int i9 = Processor.l;
                processor.getClass();
                try {
                    zBooleanValue = ((Boolean) listenableFuture.get()).booleanValue();
                    break;
                } catch (InterruptedException | ExecutionException unused2) {
                }
                synchronized (processor.f20317k) {
                    try {
                        WorkGenerationalId workGenerationalIdA = WorkSpecKt.a(workerWrapper.f20354a);
                        String str4 = workGenerationalIdA.f20499a;
                        if (processor.d(str4) == workerWrapper) {
                            processor.c(str4);
                        }
                        Logger loggerA = Logger.a();
                        int i10 = Processor.l;
                        loggerA.getClass();
                        Iterator it2 = processor.f20316j.iterator();
                        while (it2.hasNext()) {
                            ((ExecutionListener) it2.next()).c(workGenerationalIdA, zBooleanValue);
                        }
                    } catch (Throwable th5) {
                        throw th5;
                    }
                    break;
                }
                return;
            case 18:
                ((SurfaceProcessorNode) this.f20751c).a((SurfaceEdge) this.d, (Map.Entry) this.f20752e);
                return;
            case 19:
                ((TagNfcExecutor) this.f20751c).lambda$scanTag$0((LVTagInput) this.d, (TagNfcExecutorCallback) this.f20752e);
                return;
            case 20:
                UploaderService.lambda$onUploadError$1((Media) this.f20751c, (Context) this.d, (Metadata) this.f20752e);
                return;
            case 21:
                ListenableFuture listenableFuture2 = (ListenableFuture) this.f20751c;
                SettableFuture settableFuture = (SettableFuture) this.d;
                AsyncFunction asyncFunction = (AsyncFunction) this.f20752e;
                String str5 = Util.f14242a;
                try {
                    try {
                        settableFuture.setFuture(asyncFunction.apply(Futures.d(listenableFuture2)));
                        return;
                    } catch (Throwable th6) {
                        settableFuture.setException(th6);
                        return;
                    }
                } catch (Error | RuntimeException e2) {
                    settableFuture.setException(e2);
                    return;
                } catch (CancellationException unused3) {
                    settableFuture.cancel(false);
                    return;
                } catch (ExecutionException e3) {
                    e = e3;
                    Throwable cause = e.getCause();
                    if (cause != null) {
                        e = cause;
                    }
                    settableFuture.setException(e);
                    return;
                }
            case 22:
                SettableFuture settableFuture2 = (SettableFuture) this.f20751c;
                g0 g0Var = (g0) this.d;
                SessionResult sessionResult = (SessionResult) this.f20752e;
                String str6 = Util.f14242a;
                try {
                    if (settableFuture2.isCancelled()) {
                        return;
                    }
                    g0Var.run();
                    settableFuture2.set(sessionResult);
                    return;
                } catch (Throwable th7) {
                    settableFuture2.setException(th7);
                    return;
                }
            case 23:
                AtomicBoolean atomicBoolean2 = (AtomicBoolean) this.f20751c;
                SessionConfig.Builder builder = (SessionConfig.Builder) this.d;
                CameraCaptureCallback cameraCaptureCallback = (CameraCaptureCallback) this.f20752e;
                VideoCapture.Defaults defaults = VideoCapture.F;
                Preconditions.f("Surface update cancellation should only occur on main thread.", Threads.b());
                atomicBoolean2.set(true);
                builder.o(cameraCaptureCallback);
                return;
            case 24:
                VideoRendererEventListener.EventDispatcher eventDispatcher4 = (VideoRendererEventListener.EventDispatcher) this.f20751c;
                Format format2 = (Format) this.d;
                DecoderReuseEvaluation decoderReuseEvaluation2 = (DecoderReuseEvaluation) this.f20752e;
                VideoRendererEventListener videoRendererEventListener = eventDispatcher4.f15989b;
                String str7 = Util.f14242a;
                videoRendererEventListener.D(format2, decoderReuseEvaluation2);
                return;
            case 25:
                AtomicBoolean atomicBoolean3 = (AtomicBoolean) this.f20751c;
                CallbackToFutureAdapter.Completer completer2 = (CallbackToFutureAdapter.Completer) this.d;
                Function0 function0 = (Function0) this.f20752e;
                if (atomicBoolean3.get()) {
                    return;
                }
                try {
                    completer2.b(function0.mo47invoke());
                    return;
                } catch (Throwable th8) {
                    completer2.d(th8);
                    return;
                }
            case 26:
                ((a) this.f20751c).a((Context) this.d, (c) this.f20752e);
                return;
            default:
                ((f) this.f20751c).a((com.batch.android.n1.c) this.d, (String) this.f20752e);
                return;
        }
    }
}

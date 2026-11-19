package defpackage;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.TotalCaptureResult;
import android.media.AudioManager;
import android.view.Surface;
import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedDispatcher;
import androidx.camera.camera2.internal.Camera2CameraControlImpl;
import androidx.camera.camera2.internal.Camera2PresenceSource;
import androidx.camera.camera2.internal.CameraUnavailableExceptionHelper;
import androidx.camera.camera2.internal.compat.CameraAccessExceptionCompat;
import androidx.camera.core.CameraExecutor;
import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.CameraUnavailableException;
import androidx.camera.core.CameraX;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CameraPresenceProvider;
import androidx.camera.core.impl.CameraRepository;
import androidx.camera.core.impl.ConstantObservable;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.video.internal.audio.AudioSource;
import androidx.camera.video.internal.encoder.Encoder;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.credentials.CreatePasswordResponse;
import androidx.credentials.CreatePublicKeyCredentialResponse;
import androidx.credentials.CreateRestoreCredentialResponse;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.GetCredentialResponse;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.exceptions.GetCredentialUnknownException;
import androidx.credentials.playservices.controllers.BeginSignIn.CredentialProviderBeginSignInController;
import androidx.credentials.playservices.controllers.CreatePassword.CredentialProviderCreatePasswordController;
import androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController;
import androidx.lifecycle.Observer;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.common.util.BackgroundThreadStateHandler;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.CodecParameters;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.constraints.ConstraintListener;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import androidx.work.impl.utils.CancelWorkRunnable;
import com.google.common.base.Function;
import com.perfectcorp.common.network.DownloadReport;
import com.perfectcorp.common.network.ProgressCallback;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.ph.database.ymk.idsystem.a;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.sightcall.advancedannotations.domain.drawer.annotation.Annotation;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r6 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79255b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f79256c;
    public final /* synthetic */ Object d;

    public /* synthetic */ r6(Object obj, Object obj2, int i2) {
        this.f79255b = i2;
        this.f79256c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        int i2 = 0;
        switch (this.f79255b) {
            case 0:
                Annotation.fadeOut$lambda$0((Annotation) this.f79256c, (Function0) this.d);
                return;
            case 1:
                ProgressCallback progressCallback = (ProgressCallback) this.f79256c;
                DownloadReport.ProgressReport progressReport = (DownloadReport.ProgressReport) this.d;
                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                progressCallback.a(((Double) progressReport.f39309b).doubleValue());
                return;
            case 2:
                Context context = (Context) this.f79256c;
                ConditionVariable conditionVariable = (ConditionVariable) this.d;
                AudioManagerCompat.f14047a = (AudioManager) context.getSystemService("audio");
                conditionVariable.d();
                return;
            case 3:
                AudioRendererEventListener.EventDispatcher eventDispatcher = (AudioRendererEventListener.EventDispatcher) this.f79256c;
                String str = (String) this.d;
                AudioRendererEventListener audioRendererEventListener = eventDispatcher.f14926b;
                String str2 = Util.f14242a;
                audioRendererEventListener.g(str);
                return;
            case 4:
                AudioRendererEventListener.EventDispatcher eventDispatcher2 = (AudioRendererEventListener.EventDispatcher) this.f79256c;
                CodecParameters codecParameters = (CodecParameters) this.d;
                AudioRendererEventListener audioRendererEventListener2 = eventDispatcher2.f14926b;
                String str3 = Util.f14242a;
                audioRendererEventListener2.v(codecParameters);
                return;
            case 5:
                AudioSource audioSource = (AudioSource) this.f79256c;
                Encoder.ByteBufferInput byteBufferInput = (Encoder.ByteBufferInput) this.d;
                int iOrdinal = audioSource.g.ordinal();
                if (iOrdinal == 0 || iOrdinal == 1) {
                    if (audioSource.l != byteBufferInput) {
                        audioSource.b(byteBufferInput);
                        return;
                    }
                    return;
                } else {
                    if (iOrdinal != 2) {
                        return;
                    }
                    md.h("AudioSource is released");
                    return;
                }
            case 6:
                ((AudioSource.AudioSourceCallback) this.d).b(((AudioSource) this.f79256c).t);
                return;
            case 7:
                ((AudioSource.AudioSourceCallback) this.f79256c).onError((Throwable) this.d);
                return;
            case 8:
                BackgroundThreadStateHandler backgroundThreadStateHandler = (BackgroundThreadStateHandler) this.f79256c;
                Object objApply = ((Function) this.d).apply(backgroundThreadStateHandler.f14138e);
                backgroundThreadStateHandler.f14138e = objApply;
                nc ncVar = new nc(backgroundThreadStateHandler, objApply, 1);
                HandlerWrapper handlerWrapper = backgroundThreadStateHandler.f14136b;
                if (handlerWrapper.h().getThread().isAlive()) {
                    handlerWrapper.k(ncVar);
                    return;
                }
                return;
            case 9:
                final Camera2CameraControlImpl camera2CameraControlImpl = (Camera2CameraControlImpl) this.f79256c;
                CallbackToFutureAdapter.Completer completer = (CallbackToFutureAdapter.Completer) this.d;
                final long jX = camera2CameraControlImpl.x();
                Futures.i(completer, CallbackToFutureAdapter.a(new CallbackToFutureAdapter.Resolver() { // from class: mi
                    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                    public final Object i(final CallbackToFutureAdapter.Completer completer2) {
                        final long j2 = jX;
                        camera2CameraControlImpl.n(new Camera2CameraControlImpl.CaptureResultListener() { // from class: ni
                            @Override // androidx.camera.camera2.internal.Camera2CameraControlImpl.CaptureResultListener
                            public final boolean a(TotalCaptureResult totalCaptureResult) {
                                if (!Camera2CameraControlImpl.u(totalCaptureResult, j2)) {
                                    return false;
                                }
                                completer2.b(null);
                                return true;
                            }
                        });
                        return "waitForSessionUpdateId:" + j2;
                    }
                }));
                return;
            case 10:
                Surface surface = (Surface) this.f79256c;
                SurfaceTexture surfaceTexture = (SurfaceTexture) this.d;
                surface.release();
                surfaceTexture.release();
                return;
            case 11:
                ((SessionConfig.ErrorListener) this.f79256c).a((SessionConfig) this.d, SessionConfig.SessionError.SESSION_ERROR_SURFACE_NEEDS_RESET);
                return;
            case 12:
                Camera2PresenceSource camera2PresenceSource = (Camera2PresenceSource) this.f79256c;
                CallbackToFutureAdapter.Completer completer2 = (CallbackToFutureAdapter.Completer) this.d;
                int i3 = Camera2PresenceSource.f1526i;
                try {
                    String[] strArrB = camera2PresenceSource.f1527f.f1704a.b();
                    strArrB.getClass();
                    ArrayList arrayList = new ArrayList(strArrB.length);
                    int length = strArrB.length;
                    while (i2 < length) {
                        String str4 = strArrB[i2];
                        CameraIdentifier.Companion companion = CameraIdentifier.f1888c;
                        str4.getClass();
                        companion.getClass();
                        arrayList.add(CameraIdentifier.Companion.a(str4, null, null));
                        i2++;
                    }
                    CollectionsKt.K(arrayList, null, null, null, null, 63);
                    camera2PresenceSource.g(arrayList, null);
                    completer2.b(arrayList);
                    return;
                } catch (CameraAccessExceptionCompat e2) {
                    CameraUnavailableException cameraUnavailableExceptionA = CameraUnavailableExceptionHelper.a(e2);
                    camera2PresenceSource.g(null, cameraUnavailableExceptionA);
                    completer2.d(cameraUnavailableExceptionA);
                    return;
                }
            case 13:
                CameraInternal cameraInternal = (CameraInternal) this.f79256c;
                Observer observer = (Observer) this.d;
                int i4 = CameraPresenceProvider.l;
                cameraInternal.k().c().removeObserver(observer);
                return;
            case 14:
                CameraInfoInternal cameraInfoInternal = (CameraInfoInternal) this.f79256c;
                zi ziVar = (zi) this.d;
                int i5 = CameraPresenceProvider.l;
                cameraInfoInternal.c().observeForever(ziVar);
                return;
            case 15:
                CameraRepository cameraRepository = (CameraRepository) this.f79256c;
                CameraInternal cameraInternal2 = (CameraInternal) this.d;
                synchronized (cameraRepository.f2250a) {
                    try {
                        cameraRepository.f2252c.remove(cameraInternal2);
                        if (cameraRepository.f2252c.isEmpty()) {
                            cameraRepository.f2253e.getClass();
                            cameraRepository.f2253e.b(null);
                            cameraRepository.f2253e = null;
                            cameraRepository.d = null;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return;
            case 16:
                CameraX cameraX = (CameraX) this.f79256c;
                CallbackToFutureAdapter.Completer completer3 = (CallbackToFutureAdapter.Completer) this.d;
                cameraX.g.shutdown();
                if (cameraX.f1902f != null) {
                    Executor executor = cameraX.d;
                    if (executor instanceof CameraExecutor) {
                        CameraExecutor cameraExecutor = (CameraExecutor) executor;
                        synchronized (cameraExecutor.f1884b) {
                            try {
                                if (!cameraExecutor.f1885c.isShutdown()) {
                                    cameraExecutor.f1885c.shutdown();
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    }
                    cameraX.f1902f.quit();
                    break;
                }
                completer3.b(null);
                return;
            case 17:
                WorkManagerImpl workManagerImpl = (WorkManagerImpl) this.f79256c;
                String string = ((UUID) this.d).toString();
                string.getClass();
                CancelWorkRunnable.a(workManagerImpl, string);
                return;
            case 18:
                ComponentActivity componentActivity = (ComponentActivity) this.f79256c;
                OnBackPressedDispatcher onBackPressedDispatcher = (OnBackPressedDispatcher) this.d;
                int i6 = ComponentActivity.g;
                componentActivity.getF13561b().a(new bn(onBackPressedDispatcher, componentActivity, i2));
                return;
            case 19:
                ConstantObservable constantObservable = (ConstantObservable) this.f79256c;
                Observable.Observer observer2 = (Observable.Observer) this.d;
                ConstantObservable constantObservable2 = ConstantObservable.f2281b;
                try {
                    observer2.a(constantObservable.f2282a.get());
                    return;
                } catch (InterruptedException | ExecutionException e3) {
                    observer2.onError(e3);
                    return;
                }
            case 20:
                List list = (List) this.f79256c;
                ConstraintTracker constraintTracker = (ConstraintTracker) this.d;
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((ConstraintListener) it.next()).a(constraintTracker.f20466e);
                }
                return;
            case 21:
                TemplateUtils.c cVar = (TemplateUtils.c) this.f79256c;
                String str5 = (String) this.d;
                TemplateUtils.j(cVar);
                a.c(YMKDatabase.c(), new com.perfectcorp.perfectlib.ph.template.a(str5));
                return;
            case 22:
                CredentialProviderBeginSignInController credentialProviderBeginSignInController = (CredentialProviderBeginSignInController) this.f79256c;
                credentialProviderBeginSignInController.g().onResult((GetCredentialResponse) this.d);
                return;
            case 23:
                ((CredentialProviderBeginSignInController) this.f79256c).g().a(((Ref$ObjectRef) this.d).f71921b);
                return;
            case 24:
                CredentialProviderBeginSignInController credentialProviderBeginSignInController2 = (CredentialProviderBeginSignInController) this.f79256c;
                credentialProviderBeginSignInController2.g().a((GetCredentialUnknownException) this.d);
                return;
            case 25:
                ((CredentialManagerCallback) this.f79256c).a(this.d);
                return;
            case 26:
                CredentialProviderCreatePasswordController credentialProviderCreatePasswordController = (CredentialProviderCreatePasswordController) this.f79256c;
                CreateCredentialException createCredentialException = (CreateCredentialException) this.d;
                CredentialManagerCallback credentialManagerCallback = credentialProviderCreatePasswordController.f12444f;
                if (credentialManagerCallback != null) {
                    credentialManagerCallback.a(createCredentialException);
                    return;
                } else {
                    Intrinsics.h("callback");
                    throw null;
                }
            case 27:
                CredentialProviderCreatePasswordController credentialProviderCreatePasswordController2 = (CredentialProviderCreatePasswordController) this.f79256c;
                CreatePasswordResponse createPasswordResponse = (CreatePasswordResponse) this.d;
                CredentialManagerCallback credentialManagerCallback2 = credentialProviderCreatePasswordController2.f12444f;
                if (credentialManagerCallback2 != null) {
                    credentialManagerCallback2.onResult(createPasswordResponse);
                    return;
                } else {
                    Intrinsics.h("callback");
                    throw null;
                }
            case 28:
                CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController = (CredentialProviderCreatePublicKeyCredentialController) this.f79256c;
                CreatePublicKeyCredentialResponse createPublicKeyCredentialResponse = (CreatePublicKeyCredentialResponse) this.d;
                CredentialManagerCallback credentialManagerCallback3 = credentialProviderCreatePublicKeyCredentialController.f12454f;
                if (credentialManagerCallback3 != null) {
                    credentialManagerCallback3.onResult(createPublicKeyCredentialResponse);
                    return;
                } else {
                    Intrinsics.h("callback");
                    throw null;
                }
            default:
                ((CredentialManagerCallback) this.f79256c).onResult((CreateRestoreCredentialResponse) this.d);
                return;
        }
    }
}

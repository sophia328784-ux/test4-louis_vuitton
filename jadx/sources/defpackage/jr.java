package defpackage;

import android.app.job.JobParameters;
import android.bluetooth.BluetoothGatt;
import android.graphics.SurfaceTexture;
import android.media.ImageWriter;
import android.util.Size;
import android.view.Surface;
import androidx.camera.core.LegacySessionConfig;
import androidx.camera.core.SurfaceOutput;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.featuregroup.impl.ResolvedFeatureGroup;
import androidx.camera.core.impl.LiveDataObservable;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.core.processing.OpenGlRenderer;
import androidx.camera.core.processing.concurrent.DualOpenGlRenderer;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessor;
import androidx.camera.core.processing.util.GLUtils;
import androidx.camera.video.internal.BufferProvider;
import androidx.camera.video.internal.encoder.Encoder;
import androidx.camera.video.internal.encoder.EncoderImpl;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Consumer;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.GetCredentialResponse;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.exceptions.GetCredentialUnknownException;
import androidx.credentials.exceptions.GetCredentialUnsupportedException;
import androidx.credentials.playservices.controllers.GetRestoreCredential.CredentialProviderGetDigitalCredentialController;
import androidx.credentials.playservices.controllers.GetSignInIntent.CredentialProviderGetSignInIntentController;
import androidx.fragment.app.DefaultSpecialEffectsController;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.SpecialEffectsController;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.firebase.events.Event;
import com.google.firebase.events.EventHandler;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.ImageDownload;
import com.lightup.sdk.device.enums.PairOrientation;
import com.lp.ble.entity.LPBluetoothDevice;
import com.lp.ble.manager.LPBLEManager;
import com.lp.ble.manager.LPConnectBLEListener;
import com.vuitton.android.presentation.screen.connectivity.lightup.LightUpActivity;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.lightup.sneakers.SneakerDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.ScanMainBottomSheet;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.ScanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$1;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.a;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.bledevicelist.LVBLEDeviceListFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.bledevicelist.LVBLEDeviceListFragment$onBLEDeviceClick$1$1;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.bledevicelist.LVBluetoothDeviceAdapter;
import defpackage.f50;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.android.HandlerContext;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class jr implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71455b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f71456c;
    public final /* synthetic */ Object d;

    public /* synthetic */ jr(Object obj, Object obj2, int i2) {
        this.f71455b = i2;
        this.f71456c = obj;
        this.d = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() throws Exception {
        int i2 = this.f71455b;
        int i3 = 1;
        Object obj = this.d;
        Object obj2 = this.f71456c;
        switch (i2) {
            case 0:
                ((CredentialProviderGetDigitalCredentialController) obj2).f().onResult((GetCredentialResponse) obj);
                break;
            case 1:
                ((CredentialManagerCallback) obj2).a((GetCredentialException) obj);
                break;
            case 2:
                ((CredentialManagerCallback) obj2).onResult((GetCredentialResponse) obj);
                break;
            case 3:
                ((CredentialProviderGetSignInIntentController) obj2).h().onResult((GetCredentialResponse) obj);
                break;
            case 4:
                ((CredentialProviderGetSignInIntentController) obj2).h().a(((Ref$ObjectRef) obj).f71921b);
                break;
            case 5:
                ((CredentialProviderGetSignInIntentController) obj2).h().a((GetCredentialUnknownException) obj);
                break;
            case 6:
                ((CredentialProviderGetSignInIntentController) obj2).h().a((GetCredentialUnsupportedException) obj);
                break;
            case 7:
                SpecialEffectsController.Operation operation = (SpecialEffectsController.Operation) obj;
                int i4 = DefaultSpecialEffectsController.f13189h;
                operation.getClass();
                ((DefaultSpecialEffectsController) obj2).a(operation);
                break;
            case 8:
                DefaultSurfaceProcessor defaultSurfaceProcessor = (DefaultSurfaceProcessor) obj2;
                SurfaceOutput surfaceOutput = (SurfaceOutput) obj;
                Surface surfaceR0 = surfaceOutput.R0(defaultSurfaceProcessor.d, new aj(defaultSurfaceProcessor, surfaceOutput, i3));
                defaultSurfaceProcessor.f2531b.g(surfaceR0);
                defaultSurfaceProcessor.f2536i.put(surfaceOutput, surfaceR0);
                break;
            case 9:
                final DefaultSurfaceProcessor defaultSurfaceProcessor2 = (DefaultSurfaceProcessor) obj2;
                final SurfaceRequest surfaceRequest = (SurfaceRequest) obj;
                defaultSurfaceProcessor2.f2537j++;
                OpenGlRenderer openGlRenderer = defaultSurfaceProcessor2.f2531b;
                GLUtils.d(openGlRenderer.f2541a, true);
                GLUtils.c(openGlRenderer.f2543c);
                final SurfaceTexture surfaceTexture = new SurfaceTexture(openGlRenderer.m);
                Size size = surfaceRequest.f1974b;
                surfaceTexture.setDefaultBufferSize(size.getWidth(), size.getHeight());
                final Surface surface = new Surface(surfaceTexture);
                Executor executor = defaultSurfaceProcessor2.d;
                surfaceRequest.b(executor, new p3(defaultSurfaceProcessor2, surfaceRequest, 10));
                surfaceRequest.a(surface, executor, new Consumer() { // from class: bt
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj3) {
                        DefaultSurfaceProcessor defaultSurfaceProcessor3 = defaultSurfaceProcessor2;
                        SurfaceRequest surfaceRequest2 = surfaceRequest;
                        SurfaceTexture surfaceTexture2 = surfaceTexture;
                        Surface surface2 = surface;
                        synchronized (surfaceRequest2.f1973a) {
                            surfaceRequest2.o = null;
                            surfaceRequest2.p = null;
                        }
                        surfaceTexture2.setOnFrameAvailableListener(null);
                        surfaceTexture2.release();
                        surface2.release();
                        defaultSurfaceProcessor3.f2537j--;
                        defaultSurfaceProcessor3.d();
                    }
                });
                surfaceTexture.setOnFrameAvailableListener(defaultSurfaceProcessor2, defaultSurfaceProcessor2.f2533e);
                break;
            case 10:
                final DualSurfaceProcessor dualSurfaceProcessor = (DualSurfaceProcessor) obj2;
                SurfaceRequest surfaceRequest2 = (SurfaceRequest) obj;
                dualSurfaceProcessor.f2586f++;
                DualOpenGlRenderer dualOpenGlRenderer = dualSurfaceProcessor.f2583b;
                boolean z = surfaceRequest2.f1977f;
                Size size2 = surfaceRequest2.f1974b;
                GLUtils.d(dualOpenGlRenderer.f2541a, true);
                GLUtils.c(dualOpenGlRenderer.f2543c);
                final SurfaceTexture surfaceTexture2 = new SurfaceTexture(z ? dualOpenGlRenderer.n : dualOpenGlRenderer.o);
                surfaceTexture2.setDefaultBufferSize(size2.getWidth(), size2.getHeight());
                final Surface surface2 = new Surface(surfaceTexture2);
                surfaceRequest2.a(surface2, dualSurfaceProcessor.d, new Consumer() { // from class: fv
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj3) {
                        SurfaceTexture surfaceTexture3 = surfaceTexture2;
                        surfaceTexture3.setOnFrameAvailableListener(null);
                        surfaceTexture3.release();
                        surface2.release();
                        DualSurfaceProcessor dualSurfaceProcessor2 = dualSurfaceProcessor;
                        dualSurfaceProcessor2.f2586f--;
                        dualSurfaceProcessor2.d();
                    }
                });
                if (!z) {
                    dualSurfaceProcessor.f2590k = surfaceTexture2;
                    surfaceTexture2.setOnFrameAvailableListener(dualSurfaceProcessor, dualSurfaceProcessor.f2585e);
                } else {
                    dualSurfaceProcessor.f2589j = surfaceTexture2;
                }
                break;
            case 11:
                DualSurfaceProcessor dualSurfaceProcessor2 = (DualSurfaceProcessor) obj2;
                SurfaceOutput surfaceOutput2 = (SurfaceOutput) obj;
                Surface surfaceR1 = surfaceOutput2.R0(dualSurfaceProcessor2.d, new aj(dualSurfaceProcessor2, surfaceOutput2, 2));
                dualSurfaceProcessor2.f2583b.g(surfaceR1);
                dualSurfaceProcessor2.f2588i.put(surfaceOutput2, surfaceR1);
                break;
            case 12:
                ((EncoderImpl) obj2).m.remove((CallbackToFutureAdapter.Completer) obj);
                break;
            case 13:
                ((Observable.Observer) ((Map.Entry) obj2).getKey()).a((BufferProvider.State) obj);
                break;
            case 14:
                ((Observable.Observer) obj2).a((BufferProvider.State) obj);
                break;
            case 15:
                ((Encoder.SurfaceInput.OnSurfaceUpdateListener) obj2).a((Surface) obj);
                break;
            case 16:
                ((EventHandler) ((Map.Entry) obj2).getKey()).a((Event) obj);
                break;
            case 17:
                TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj;
                try {
                    taskCompletionSource.b(((FirebaseMessaging) obj2).a());
                } catch (Exception e2) {
                    taskCompletionSource.a(e2);
                    return;
                }
                break;
            case 18:
                ((CallbackToFutureAdapter.Completer) obj2).b(null);
                ((ListenableFuture) obj).cancel(true);
                break;
            case 19:
                int i5 = HandlerContext.f74723f;
                ((CancellableContinuationImpl) obj2).resumeUndispatched((HandlerContext) obj, Unit.f71739a);
                break;
            case 20:
                TaskCompletionSource taskCompletionSource2 = (TaskCompletionSource) obj;
                try {
                    taskCompletionSource2.b(((ImageDownload) obj2).h());
                } catch (Exception e3) {
                    taskCompletionSource2.a(e3);
                    return;
                }
                break;
            case 21:
                ((r71) obj2).onImageReleased((ImageWriter) obj);
                break;
            case 22:
                int i6 = JobInfoSchedulerService.f28066b;
                ((JobInfoSchedulerService) obj2).jobFinished((JobParameters) obj, false);
                break;
            case 23:
                LVBLEDeviceListFragment lVBLEDeviceListFragment = (LVBLEDeviceListFragment) obj2;
                LPBluetoothDevice lPBluetoothDevice = (LPBluetoothDevice) obj;
                LVBLEDeviceListFragment.Companion companion = LVBLEDeviceListFragment.N;
                lVBLEDeviceListFragment.W();
                FragmentActivity activity = lVBLEDeviceListFragment.getActivity();
                if (activity != null) {
                    activity.runOnUiThread(new f50(lVBLEDeviceListFragment, i3));
                }
                FragmentActivity activity2 = lVBLEDeviceListFragment.getActivity();
                if (activity2 != null) {
                    activity2.runOnUiThread(new f50(lVBLEDeviceListFragment, 3));
                }
                final LVBLEDeviceListFragment$onBLEDeviceClick$1$1 lVBLEDeviceListFragment$onBLEDeviceClick$1$1 = new LVBLEDeviceListFragment$onBLEDeviceClick$1$1(lVBLEDeviceListFragment, lPBluetoothDevice);
                lPBluetoothDevice.getClass();
                LPBLEManager.getInstance().connectBLE(lPBluetoothDevice, new LPConnectBLEListener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkBLEHelper$connectToBLE$1
                    @Override // com.lp.ble.manager.LPConnectBLEListener, com.lp.ble.BLEGattListener
                    public final void onConnectFail(Exception exc) {
                        exc.getClass();
                        LVBLEDeviceListFragment lVBLEDeviceListFragment2 = lVBLEDeviceListFragment$onBLEDeviceClick$1$1.f56639a;
                        LVBLEDeviceListFragment.Companion companion2 = LVBLEDeviceListFragment.N;
                        lVBLEDeviceListFragment2.W();
                        FragmentActivity activity3 = lVBLEDeviceListFragment2.getActivity();
                        if (activity3 != null) {
                            activity3.runOnUiThread(new f50(lVBLEDeviceListFragment2, 4));
                        }
                    }

                    @Override // com.lp.ble.manager.LPConnectBLEListener, com.lp.ble.BLEGattListener
                    public final void onConnectSuccess(BluetoothGatt bluetoothGatt, int i7) {
                        bluetoothGatt.getClass();
                        LVBLEDeviceListFragment$onBLEDeviceClick$1$1 lVBLEDeviceListFragment$onBLEDeviceClick$1$2 = lVBLEDeviceListFragment$onBLEDeviceClick$1$1;
                        ScanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$1 scanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$1 = lVBLEDeviceListFragment$onBLEDeviceClick$1$2.f56639a.L;
                        if (scanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$1 != null) {
                            LPBluetoothDevice lPBluetoothDevice2 = lVBLEDeviceListFragment$onBLEDeviceClick$1$2.f56640b;
                            lPBluetoothDevice2.getClass();
                            ScanMainBottomSheet scanMainBottomSheet = scanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$1.f56605a;
                            FragmentActivity activity3 = scanMainBottomSheet.getActivity();
                            if (activity3 != null) {
                                activity3.runOnUiThread(new a(scanMainBottomSheet, lPBluetoothDevice2, 1));
                            }
                        }
                    }

                    @Override // com.lp.ble.manager.LPConnectBLEListener, com.lp.ble.BLEGattListener
                    public final void onDisConnected(boolean z2, BluetoothGatt bluetoothGatt, int i7) {
                    }

                    @Override // com.lp.ble.manager.LPConnectBLEListener, com.lp.ble.BLEGattListener
                    public final void onFailed(int i7, String str) {
                    }

                    @Override // com.lp.ble.manager.LPConnectBLEListener, com.lp.ble.BLEGattListener
                    public final void onReConnectBLE(BluetoothGatt bluetoothGatt, int i7) {
                    }

                    @Override // com.lp.ble.manager.LPConnectBLEListener, com.lp.ble.BLEGattListener
                    public final void onStartConnect() {
                    }
                });
                break;
            case 24:
                ArrayList arrayList = (ArrayList) obj;
                LVBLEDeviceListFragment.Companion companion2 = LVBLEDeviceListFragment.N;
                RecyclerView.Adapter adapter = ((LVBLEDeviceListFragment) obj2).V().f51320e.getAdapter();
                LVBluetoothDeviceAdapter lVBluetoothDeviceAdapter = adapter instanceof LVBluetoothDeviceAdapter ? (LVBluetoothDeviceAdapter) adapter : null;
                if (lVBluetoothDeviceAdapter != null) {
                    ArrayList arrayList2 = lVBluetoothDeviceAdapter.f56643c;
                    arrayList2.clear();
                    arrayList2.addAll(arrayList);
                    lVBluetoothDeviceAdapter.notifyDataSetChanged();
                }
                break;
            case 25:
                ResolvedFeatureGroup resolvedFeatureGroup = (ResolvedFeatureGroup) obj2;
                LegacySessionConfig legacySessionConfig = (LegacySessionConfig) obj;
                HashSet hashSet = new HashSet();
                if (resolvedFeatureGroup != null) {
                    hashSet.addAll(resolvedFeatureGroup.f2024a);
                }
                legacySessionConfig.g.getClass();
                break;
            case 26:
                PairOrientation pairOrientation = (PairOrientation) obj;
                LightUpActivity.Companion companion3 = LightUpActivity.t;
                LightUpDetailFragment lightUpDetailFragmentQ = ((LightUpActivity) obj2).Q();
                if (lightUpDetailFragmentQ != null && lightUpDetailFragmentQ.isAdded() && !lightUpDetailFragmentQ.isHidden()) {
                    ((SneakerDetailFragment) lightUpDetailFragmentQ).H0(pairOrientation);
                    break;
                }
                break;
            case 27:
                Observable.Observer observer = (Observable.Observer) obj;
                LiveDataObservable.Result result = (LiveDataObservable.Result) ((LiveDataObservable) obj2).f2308a.getValue();
                if (result != null) {
                    observer.a(result.f2311a);
                    break;
                }
                break;
            case 28:
                CallbackToFutureAdapter.Completer completer = (CallbackToFutureAdapter.Completer) obj;
                LiveDataObservable.Result result2 = (LiveDataObservable.Result) ((LiveDataObservable) obj2).f2308a.getValue();
                if (result2 != null) {
                    completer.b(result2.f2311a);
                } else {
                    completer.d(new IllegalStateException("Observable has not yet been initialized with a value."));
                }
                break;
            default:
                LiveDataObservable.Result result3 = (LiveDataObservable.Result) obj;
                Observable.Observer observer2 = (Observable.Observer) ((Map.Entry) obj2).getKey();
                result3.getClass();
                observer2.a(result3.f2311a);
                break;
        }
    }
}

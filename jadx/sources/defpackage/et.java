package defpackage;

import android.R;
import android.widget.Toast;
import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessor;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessorNode;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.fragment.app.strictmode.Violation;
import androidx.media3.exoplayer.hls.HlsSampleStreamWrapper;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.session.MediaController;
import androidx.media3.session.MediaSessionService;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieTask;
import com.airbnb.lottie.model.layer.CompositionLayer;
import com.google.android.exoplayer2.ui.DefaultTimeBar;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.snackbar.Snackbar;
import com.google.common.collect.Ordering;
import com.google.common.util.concurrent.ListenableFuture;
import com.lightup.sdk.device.features.Feature;
import com.lightup.sdk.device.features.FeatureStore;
import com.linkplay.core.device.LPDevice;
import com.linkplay.core.service.nsd.NSDCustomServiceManager;
import com.perfectcorp.common.network.DownloadHandle;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.LookHandler;
import com.perfectcorp.perfectlib.LookInfo;
import com.perfectcorp.perfectlib.core.FrameProcessingThread;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.sightcall.livetranslation.LiveTranslationAPIImpl;
import com.sightcall.livetranslation.history.HistoryViewHolder;
import com.vuitton.android.presentation.screen.connectivity.faq.FaqActivity;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.pairing.DeviceDetectedBottomSheet;
import com.vuitton.android.presentation.screen.options.OptionsActivity;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import java.util.Collections;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Semaphore;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class et implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68938b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f68939c;

    public /* synthetic */ et(FragmentStrictMode.Policy policy, Violation violation) {
        this.f68938b = 12;
        this.f68939c = policy;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        int i2 = this.f68938b;
        Object obj = this.f68939c;
        switch (i2) {
            case 0:
                int i3 = DefaultTimeBar.K;
                ((DefaultTimeBar) obj).e(false);
                return;
            case 1:
                int i4 = androidx.media3.ui.DefaultTimeBar.Q;
                ((androidx.media3.ui.DefaultTimeBar) obj).f(false);
                return;
            case 2:
                Ordering ordering = DefaultTrackSelector.f15687k;
                ((DefaultTrackSelector) obj).q();
                return;
            case 3:
                ((ListenableFuture) obj).cancel(true);
                return;
            case 4:
                DeviceDetectedBottomSheet.Companion companion = DeviceDetectedBottomSheet.S;
                Snackbar.f(((DeviceDetectedBottomSheet) obj).requireActivity().findViewById(R.id.content), com.vuitton.android.R.string.error_loading_light_up_device_info, -1).h();
                return;
            case 5:
                DownloadHandle downloadHandle = (DownloadHandle) obj;
                DownloadTaskCancelable downloadTaskCancelable = DownloadTaskCancelable.f40351e;
                Log.g(3, "DownloadTaskCancelable", "[toDisposable] cancel handle=" + downloadHandle);
                downloadHandle.cancel();
                Log.g(3, "DownloadTaskCancelable", "[toDisposable] cancel handle=" + downloadHandle + "handle.isCancelled()=" + downloadHandle.isCancelled());
                return;
            case 6:
                DualSurfaceProcessor dualSurfaceProcessor = (DualSurfaceProcessor) obj;
                dualSurfaceProcessor.g = true;
                dualSurfaceProcessor.d();
                return;
            case 7:
                DualSurfaceProcessorNode.Out out = ((DualSurfaceProcessorNode) obj).d;
                if (out != null) {
                    Iterator<SurfaceEdge> it = out.values().iterator();
                    while (it.hasNext()) {
                        it.next().c();
                    }
                    return;
                }
                return;
            case 8:
                FaqActivity.Companion companion2 = FaqActivity.t;
                Snackbar.f(((FaqActivity) obj).findViewById(R.id.content), com.vuitton.android.R.string.error_generic, -1).h();
                return;
            case 9:
                FeatureStore featureStore = (FeatureStore) obj;
                synchronized (featureStore.f35978a) {
                    try {
                        ListIterator listIterator = featureStore.f35978a.listIterator();
                        while (listIterator.hasNext()) {
                            if (((Feature) listIterator.next()).isCompleted()) {
                                listIterator.remove();
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return;
            case 10:
                ((Fragment) obj).lambda$performCreateView$0();
                return;
            case 11:
                Iterator it2 = ((FragmentManager) obj).o.iterator();
                while (it2.hasNext()) {
                    ((FragmentManager.OnBackStackChangedListener) it2.next()).getClass();
                }
                return;
            case 12:
                FragmentStrictMode.Policy policy = FragmentStrictMode.f13391a;
                ((FragmentStrictMode.Policy) obj).f13393b.a();
                return;
            case 13:
                Violation violation = (Violation) obj;
                FragmentStrictMode.Policy policy2 = FragmentStrictMode.f13391a;
                throw violation;
            case 14:
                ((FrameProcessingThread) obj).a();
                return;
            case 15:
                HistoryViewHolder.buildContentView$lambda$1((HistoryViewHolder) obj);
                return;
            case 16:
                ((HlsSampleStreamWrapper.Callback) obj).b();
                return;
            case 17:
                ((DownloadTaskCancelable) obj).cancel();
                return;
            case 18:
                Job job = (Job) obj;
                if (job != null) {
                    job.cancel(null);
                    return;
                }
                return;
            case 19:
                LiveTranslationAPIImpl._init_$lambda$0((LiveTranslationAPIImpl) obj);
                return;
            case 20:
                Map<String, LookInfo> map = Collections.EMPTY_MAP;
                ((LookHandler.DownloadLooksCallback) obj).onComplete(map, map);
                return;
            case 21:
                LottieDrawable lottieDrawable = (LottieDrawable) obj;
                Semaphore semaphore = lottieDrawable.L;
                CompositionLayer compositionLayer = lottieDrawable.o;
                if (compositionLayer == null) {
                    return;
                }
                try {
                    semaphore.acquire();
                    compositionLayer.r(lottieDrawable.f21759c.c());
                    break;
                } catch (InterruptedException unused) {
                } finally {
                    semaphore.release();
                }
                return;
            case 22:
                Executor executor = LottieTask.f21783e;
                ((LottieTask) obj).c();
                return;
            case 23:
                ((MainThreadDisposable) obj).onDispose();
                return;
            case 24:
                MaterialButton.a((MaterialButton) obj);
                return;
            case 25:
                ((MediaController) obj).release();
                return;
            case 26:
                synchronized (((MediaSessionService) obj).f17467c) {
                    break;
                }
                return;
            case 27:
                NSDCustomServiceManager.serviceLost$lambda$0((LPDevice) obj);
                return;
            case 28:
                ((Disposable) obj).dispose();
                return;
            default:
                OptionsActivity optionsActivity = (OptionsActivity) obj;
                OptionsActivity.Companion companion3 = OptionsActivity.u;
                Toast.makeText(optionsActivity, optionsActivity.getString(com.vuitton.android.R.string.mylv_lvpass_menu_disconnectfrommylv_popup_acknowledgement), 1).show();
                return;
        }
    }

    public /* synthetic */ et(Object obj, int i2) {
        this.f68938b = i2;
        this.f68939c = obj;
    }

    public /* synthetic */ et(String str, Violation violation) {
        this.f68938b = 13;
        this.f68939c = violation;
    }
}

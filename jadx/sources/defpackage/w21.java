package defpackage;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.view.View;
import android.widget.FrameLayout;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.imagecapture.RequestWithCallback;
import androidx.camera.core.imagecapture.TakePictureManagerImpl;
import androidx.camera.core.imagecapture.TakePictureRequest;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.lifecycle.a;
import androidx.camera.video.VideoCapture;
import androidx.constraintlayout.motion.widget.ViewTransition;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.Util;
import androidx.media3.common.util.WakeLockManager;
import androidx.media3.common.util.c;
import androidx.media3.exoplayer.CodecParameters;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import androidx.room.TransactionExecutor;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.background.greedy.TimeLimiter;
import com.batch.android.v0.d;
import com.batch.android.v0.f;
import com.batch.android.v0.i;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.SettableFuture;
import com.linkplay.ota2.model.OTAStatus;
import com.perfectcorp.perfectlib.ph.database.ymk.background.b;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.sightcall.universal.internal.util.Views;
import com.sightcall.universal.media.Media;
import com.sightcall.universal.media.UploaderService;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.common.TrunkUpdateLoadingDialogFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailFragment;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class w21 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80736b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f80737c;
    public final /* synthetic */ Object d;

    public /* synthetic */ w21(Object obj, Object obj2, int i2) {
        this.f80736b = i2;
        this.f80737c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f80736b;
        Object obj = this.d;
        Object obj2 = this.f80737c;
        switch (i2) {
            case 0:
                ((TakePictureManagerImpl) obj2).f2132e.remove((RequestWithCallback) obj);
                return;
            case 1:
                TakePictureRequest takePictureRequest = (TakePictureRequest) obj2;
                ImageCaptureException imageCaptureException = (ImageCaptureException) obj;
                boolean z = takePictureRequest.d() != null;
                i = takePictureRequest.f() != null ? 1 : 0;
                if (z && i == 0) {
                    Objects.requireNonNull(takePictureRequest.d());
                    return;
                }
                if (i == 0 || z) {
                    md.k("One and only one callback is allowed.");
                    return;
                }
                ImageCapture.OnImageSavedCallback onImageSavedCallbackF = takePictureRequest.f();
                Objects.requireNonNull(onImageSavedCallbackF);
                onImageSavedCallbackF.onError(imageCaptureException);
                return;
            case 2:
                Objects.requireNonNull(((TakePictureRequest) obj2).d());
                Objects.requireNonNull((ImageProxy) obj);
                return;
            case 3:
                TakePictureRequest takePictureRequest2 = (TakePictureRequest) obj2;
                Bitmap bitmap = (Bitmap) obj;
                if (takePictureRequest2.f() != null) {
                    takePictureRequest2.f().onPostviewBitmapAvailable(bitmap);
                    return;
                } else {
                    if (takePictureRequest2.d() != null) {
                        takePictureRequest2.d().getClass();
                        return;
                    }
                    return;
                }
            case 4:
                ImageCapture.OutputFileResults outputFileResults = (ImageCapture.OutputFileResults) obj;
                ImageCapture.OnImageSavedCallback onImageSavedCallbackF2 = ((TakePictureRequest) obj2).f();
                Objects.requireNonNull(onImageSavedCallbackF2);
                Objects.requireNonNull(outputFileResults);
                onImageSavedCallbackF2.onImageSaved(outputFileResults);
                return;
            case 5:
                TemplateUtils.h((SQLiteDatabase) obj2, (TemplateUtils.c) obj);
                return;
            case 6:
                CountDownLatch countDownLatch = (CountDownLatch) obj;
                try {
                    ((a) obj2).run();
                    return;
                } finally {
                    countDownLatch.countDown();
                }
            case 7:
                ((TimeLimiter) obj2).f20403b.d((StartStopToken) obj, 3);
                return;
            case 8:
                TransactionExecutor transactionExecutor = (TransactionExecutor) obj;
                try {
                    ((Runnable) obj2).run();
                    return;
                } finally {
                    transactionExecutor.h();
                }
            case 9:
                UploaderService.lambda$onParseFail$0((Media) obj2, (Context) obj);
                return;
            case 10:
                ListenableFuture listenableFuture = (ListenableFuture) obj;
                String str = Util.f14242a;
                if (((SettableFuture) obj2).isCancelled()) {
                    listenableFuture.cancel(false);
                    return;
                }
                return;
            case 11:
                VideoCapture videoCapture = (VideoCapture) obj2;
                if (((DeferrableSurface) obj) == videoCapture.q) {
                    videoCapture.H();
                    return;
                }
                return;
            case 12:
                VideoRendererEventListener videoRendererEventListener = ((VideoRendererEventListener.EventDispatcher) obj2).f15989b;
                String str2 = Util.f14242a;
                videoRendererEventListener.c((String) obj);
                return;
            case 13:
                VideoRendererEventListener videoRendererEventListener2 = ((VideoRendererEventListener.EventDispatcher) obj2).f15989b;
                String str3 = Util.f14242a;
                videoRendererEventListener2.b((VideoSize) obj);
                return;
            case 14:
                VideoRendererEventListener videoRendererEventListener3 = ((VideoRendererEventListener.EventDispatcher) obj2).f15989b;
                String str4 = Util.f14242a;
                videoRendererEventListener3.q((Exception) obj);
                return;
            case 15:
                VideoRendererEventListener videoRendererEventListener4 = ((VideoRendererEventListener.EventDispatcher) obj2).f15989b;
                String str5 = Util.f14242a;
                videoRendererEventListener4.h((CodecParameters) obj);
                return;
            case 16:
                ViewTransition viewTransition = (ViewTransition) obj2;
                View[] viewArr = (View[]) obj;
                if (viewTransition.p != -1) {
                    for (View view : viewArr) {
                        view.setTag(viewTransition.p, Long.valueOf(System.nanoTime()));
                    }
                }
                if (viewTransition.q != -1) {
                    for (View view2 : viewArr) {
                        view2.setTag(viewTransition.q, null);
                    }
                    return;
                }
                return;
            case 17:
                Views.layoutOver$lambda$0((View) obj2, (View) obj);
                return;
            case 18:
                AtomicBoolean atomicBoolean = (AtomicBoolean) obj;
                WakeLockManager.WakeLockManagerInternal wakeLockManagerInternal = ((WakeLockManager) obj2).f14251a;
                wakeLockManagerInternal.getClass();
                if (atomicBoolean.get()) {
                    new Thread(new c(wakeLockManagerInternal, atomicBoolean, 2), "ExoPlayer:WakeLockManager").start();
                    return;
                }
                return;
            case 19:
                OTAStatus oTAStatus = (OTAStatus) obj2;
                WifiDeviceDetailFragment wifiDeviceDetailFragment = (WifiDeviceDetailFragment) obj;
                if (oTAStatus.getRebootPercent() > 0) {
                    TrunkUpdateLoadingDialogFragment trunkUpdateLoadingDialogFragment = wifiDeviceDetailFragment.G;
                    if (trunkUpdateLoadingDialogFragment != null) {
                        trunkUpdateLoadingDialogFragment.O(TrunkUpdateLoadingDialogFragment.UpdateStatus.REBOOT);
                        return;
                    }
                    return;
                }
                int updatePercent = oTAStatus.getUpdatePercent();
                TrunkUpdateLoadingDialogFragment trunkUpdateLoadingDialogFragment2 = wifiDeviceDetailFragment.G;
                if (updatePercent > 0) {
                    if (trunkUpdateLoadingDialogFragment2 != null) {
                        trunkUpdateLoadingDialogFragment2.O(TrunkUpdateLoadingDialogFragment.UpdateStatus.INSTALL);
                        return;
                    }
                    return;
                } else {
                    if (trunkUpdateLoadingDialogFragment2 != null) {
                        trunkUpdateLoadingDialogFragment2.O(TrunkUpdateLoadingDialogFragment.UpdateStatus.DOWNLOAD);
                        return;
                    }
                    return;
                }
            case 20:
                ((com.batch.android.t0.a) obj2).a((Context) obj);
                return;
            case 21:
                ((com.batch.android.a) obj2).a((View) obj);
                return;
            case 22:
                ((com.batch.android.s.a) obj2).d((Context) obj);
                return;
            case 23:
                ((com.batch.android.a) obj2).b((FrameLayout) obj);
                return;
            case 24:
                b.d.i((SQLiteDatabase) obj2, (com.perfectcorp.perfectlib.ph.database.ymk.background.a) obj);
                return;
            case 25:
                ((com.batch.android.u.c) obj2).b((com.batch.android.t.b) obj);
                return;
            case 26:
                ((d) obj2).b((Context) obj);
                return;
            case 27:
                ((f) obj2).b((Context) obj);
                return;
            case 28:
                ((f) obj2).c((com.batch.android.x.d) obj);
                return;
            default:
                ((i) obj2).b((Context) obj);
                return;
        }
    }
}

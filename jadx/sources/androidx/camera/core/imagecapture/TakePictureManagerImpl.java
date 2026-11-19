package androidx.camera.core.imagecapture;

import androidx.camera.core.CaptureBundles;
import androidx.camera.core.ForwardingImageProxy;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.Logger;
import androidx.camera.core.SafeCloseImageReaderProxy;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CaptureBundle;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.CaptureStage;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ImageCaptureConfig;
import androidx.camera.core.impl.ImmediateSurface;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.internal.compat.quirk.DeviceQuirks;
import androidx.camera.core.internal.compat.quirk.ImageCaptureRotationOptionQuirk;
import androidx.camera.core.internal.utils.ImageUtil;
import androidx.core.util.Pair;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.v21;
import defpackage.w21;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class TakePictureManagerImpl implements TakePictureManager, ForwardingImageProxy.OnImageCloseListener, TakePictureRequest.RetryControl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageCaptureControl f2130b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ImagePipeline f2131c;
    public RequestWithCallback d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f2132e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayDeque f2129a = new ArrayDeque();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f2133f = false;

    public TakePictureManagerImpl(ImageCaptureControl imageCaptureControl) {
        Threads.a();
        this.f2130b = imageCaptureControl;
        this.f2132e = new ArrayList();
    }

    @Override // androidx.camera.core.imagecapture.TakePictureManager
    public final void a() {
        int i2;
        Threads.a();
        ImageCaptureException imageCaptureException = new ImageCaptureException(3, "Camera is closed.", null);
        ArrayDeque arrayDeque = this.f2129a;
        Iterator it = arrayDeque.iterator();
        while (true) {
            i2 = 1;
            if (!it.hasNext()) {
                break;
            }
            TakePictureRequest takePictureRequest = (TakePictureRequest) it.next();
            takePictureRequest.a().execute(new w21(takePictureRequest, imageCaptureException, i2));
        }
        arrayDeque.clear();
        for (RequestWithCallback requestWithCallback : new ArrayList(this.f2132e)) {
            requestWithCallback.getClass();
            Threads.a();
            if (!requestWithCallback.d.isDone()) {
                Threads.a();
                requestWithCallback.g = true;
                ListenableFuture listenableFuture = requestWithCallback.f2120i;
                Objects.requireNonNull(listenableFuture);
                listenableFuture.cancel(true);
                requestWithCallback.f2117e.d(imageCaptureException);
                requestWithCallback.f2118f.b(null);
                Threads.a();
                TakePictureRequest takePictureRequest2 = requestWithCallback.f2114a;
                takePictureRequest2.a().execute(new w21(takePictureRequest2, imageCaptureException, i2));
            }
        }
    }

    @Override // androidx.camera.core.imagecapture.TakePictureManager
    public final void b(TakePictureRequest takePictureRequest) {
        Threads.a();
        this.f2129a.offer(takePictureRequest);
        d();
    }

    @Override // androidx.camera.core.imagecapture.TakePictureManager
    public final void c(ImagePipeline imagePipeline) {
        Threads.a();
        this.f2131c = imagePipeline;
        imagePipeline.getClass();
        Threads.a();
        CaptureNode captureNode = imagePipeline.f2092c;
        captureNode.getClass();
        Threads.a();
        Preconditions.f("The ImageReader is not initialized.", captureNode.f2076b != null);
        SafeCloseImageReaderProxy safeCloseImageReaderProxy = captureNode.f2076b;
        synchronized (safeCloseImageReaderProxy.f1957a) {
            safeCloseImageReaderProxy.f1961f = this;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void d() {
        TakePictureRequest takePictureRequest;
        CameraCaptureCallback cameraCaptureCallback;
        ImmediateSurface immediateSurface;
        Threads.a();
        if (this.d == null && !this.f2133f) {
            ImagePipeline imagePipeline = this.f2131c;
            imagePipeline.getClass();
            Threads.a();
            if (imagePipeline.f2092c.a() == 0 || (takePictureRequest = (TakePictureRequest) this.f2129a.poll()) == null) {
                return;
            }
            RequestWithCallback requestWithCallback = new RequestWithCallback(takePictureRequest, this);
            ListenableFuture listenableFuture = requestWithCallback.f2116c;
            int i2 = 0;
            boolean z = true;
            Preconditions.f(null, !(this.d != null));
            this.d = requestWithCallback;
            Threads.a();
            listenableFuture.addListener(new v21(this, i2), CameraXExecutors.a());
            this.f2132e.add(requestWithCallback);
            Threads.a();
            requestWithCallback.d.addListener(new w21(this, requestWithCallback, i2), CameraXExecutors.a());
            ImagePipeline imagePipeline2 = this.f2131c;
            Threads.a();
            imagePipeline2.getClass();
            Threads.a();
            CaptureBundle captureBundle = (CaptureBundle) imagePipeline2.f2090a.f(ImageCaptureConfig.P, CaptureBundles.a());
            Objects.requireNonNull(captureBundle);
            int i3 = ImagePipeline.f2089f;
            ImagePipeline.f2089f = i3 + 1;
            AutoValue_CaptureNode_In autoValue_CaptureNode_In = imagePipeline2.f2093e;
            ArrayList arrayList = new ArrayList();
            String strValueOf = String.valueOf(captureBundle.hashCode());
            List<CaptureStage> listA = captureBundle.a();
            Objects.requireNonNull(listA);
            for (CaptureStage captureStage : listA) {
                CaptureConfig.Builder builder = new CaptureConfig.Builder();
                int i4 = i2;
                CaptureConfig captureConfig = imagePipeline2.f2091b;
                builder.f2276c = captureConfig.f2270c;
                builder.c(captureConfig.f2269b);
                builder.a(takePictureRequest.k());
                ImmediateSurface immediateSurface2 = autoValue_CaptureNode_In.f2085c;
                Objects.requireNonNull(immediateSurface2);
                builder.d(immediateSurface2);
                int i5 = autoValue_CaptureNode_In.g;
                ArrayList arrayList2 = autoValue_CaptureNode_In.f2046h;
                ImagePipeline imagePipeline3 = imagePipeline2;
                CaptureBundle captureBundle2 = captureBundle;
                if (arrayList2.size() > 1 && (immediateSurface = autoValue_CaptureNode_In.d) != null) {
                    builder.d(immediateSurface);
                }
                ImmediateSurface immediateSurface3 = autoValue_CaptureNode_In.f2086e;
                boolean z2 = immediateSurface3 != null ? 1 : i4;
                if (z2 != 0) {
                    Objects.requireNonNull(immediateSurface3);
                    builder.d(immediateSurface3);
                }
                builder.d = z2;
                if (ImageUtil.c(i5) || i5 == 32) {
                    ImagePipeline.g.getClass();
                    if (((ImageCaptureRotationOptionQuirk) DeviceQuirks.f2499a.b(ImageCaptureRotationOptionQuirk.class)) != null) {
                        Config.Option option = CaptureConfig.f2265i;
                    } else {
                        builder.f2275b.o(CaptureConfig.f2265i, Integer.valueOf(takePictureRequest.h()));
                    }
                    builder.f2275b.o(CaptureConfig.f2266j, Integer.valueOf(((takePictureRequest.f() != null ? 1 : i4) == 0 || !TransformUtils.c(takePictureRequest.c(), autoValue_CaptureNode_In.f2045f)) ? takePictureRequest.e() : takePictureRequest.b() == 0 ? 100 : 95));
                }
                builder.c(captureStage.a().f2269b);
                builder.g.f2362a.put(strValueOf, Integer.valueOf(i4));
                builder.g.f2362a.put("CAPTURE_CONFIG_ID_KEY", Integer.valueOf(i3));
                builder.b(autoValue_CaptureNode_In.f2083a);
                if (arrayList2.size() > 1 && (cameraCaptureCallback = autoValue_CaptureNode_In.f2084b) != null) {
                    builder.b(cameraCaptureCallback);
                }
                arrayList.add(builder.e());
                z = true;
                i2 = i4;
                imagePipeline2 = imagePipeline3;
                captureBundle = captureBundle2;
            }
            int i6 = i2;
            boolean z3 = z;
            Pair pair = new Pair(new CameraRequest(arrayList, requestWithCallback), new ProcessingRequest(captureBundle, takePictureRequest, requestWithCallback, listenableFuture, i3));
            final CameraRequest cameraRequest = (CameraRequest) pair.f12138a;
            Objects.requireNonNull(cameraRequest);
            ProcessingRequest processingRequest = (ProcessingRequest) pair.f12139b;
            Objects.requireNonNull(processingRequest);
            ImagePipeline imagePipeline4 = this.f2131c;
            imagePipeline4.getClass();
            Threads.a();
            imagePipeline4.f2093e.l.accept(processingRequest);
            Threads.a();
            ImageCaptureControl imageCaptureControl = this.f2130b;
            imageCaptureControl.b();
            ListenableFuture listenableFutureA = imageCaptureControl.a(cameraRequest.f2073a);
            Futures.a(listenableFutureA, new FutureCallback<Void>() { // from class: androidx.camera.core.imagecapture.TakePictureManagerImpl.1
                @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                public final void onFailure(Throwable th) {
                    CameraRequest cameraRequest2 = cameraRequest;
                    if (cameraRequest2.f2074b.isAborted()) {
                        return;
                    }
                    int iB = ((CaptureConfig) cameraRequest2.f2073a.get(0)).b();
                    boolean z4 = th instanceof ImageCaptureException;
                    TakePictureManagerImpl takePictureManagerImpl = TakePictureManagerImpl.this;
                    ImagePipeline imagePipeline5 = takePictureManagerImpl.f2131c;
                    if (z4) {
                        AutoValue_TakePictureManager_CaptureError autoValue_TakePictureManager_CaptureError = new AutoValue_TakePictureManager_CaptureError(iB, (ImageCaptureException) th);
                        imagePipeline5.getClass();
                        Threads.a();
                        imagePipeline5.f2093e.m.accept(autoValue_TakePictureManager_CaptureError);
                    } else {
                        AutoValue_TakePictureManager_CaptureError autoValue_TakePictureManager_CaptureError2 = new AutoValue_TakePictureManager_CaptureError(iB, new ImageCaptureException(2, "Failed to submit capture request", th));
                        imagePipeline5.getClass();
                        Threads.a();
                        imagePipeline5.f2093e.m.accept(autoValue_TakePictureManager_CaptureError2);
                    }
                    takePictureManagerImpl.f2130b.c();
                }

                @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                public final void onSuccess(Object obj) {
                    TakePictureManagerImpl.this.f2130b.c();
                }
            }, CameraXExecutors.c());
            Threads.a();
            if (requestWithCallback.f2120i != null) {
                z3 = i6;
            }
            Preconditions.f("CaptureRequestFuture can only be set once.", z3);
            requestWithCallback.f2120i = listenableFutureA;
        }
    }

    public final void e(TakePictureRequest takePictureRequest) {
        Threads.a();
        Logger.c(3, "TakePictureManagerImpl");
        this.f2129a.addFirst(takePictureRequest);
        d();
    }

    @Override // androidx.camera.core.ForwardingImageProxy.OnImageCloseListener
    public final void f(ForwardingImageProxy forwardingImageProxy) {
        CameraXExecutors.c().execute(new v21(this, 1));
    }

    @Override // androidx.camera.core.imagecapture.TakePictureManager
    public final void pause() {
        Threads.a();
        this.f2133f = true;
        RequestWithCallback requestWithCallback = this.d;
        if (requestWithCallback != null) {
            Threads.a();
            if (requestWithCallback.d.isDone()) {
                return;
            }
            ImageCaptureException imageCaptureException = new ImageCaptureException(3, "The request is aborted silently and retried.", null);
            Threads.a();
            requestWithCallback.g = true;
            ListenableFuture listenableFuture = requestWithCallback.f2120i;
            Objects.requireNonNull(listenableFuture);
            listenableFuture.cancel(true);
            requestWithCallback.f2117e.d(imageCaptureException);
            requestWithCallback.f2118f.b(null);
            requestWithCallback.f2115b.e(requestWithCallback.f2114a);
        }
    }

    @Override // androidx.camera.core.imagecapture.TakePictureManager
    public final void resume() {
        Threads.a();
        this.f2133f = false;
        d();
    }
}

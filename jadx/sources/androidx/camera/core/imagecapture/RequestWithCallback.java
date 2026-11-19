package androidx.camera.core.imagecapture;

import androidx.camera.core.ImageCapture;
import androidx.camera.core.imagecapture.RequestWithCallback;
import androidx.camera.core.impl.utils.Threads;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes.dex */
public class RequestWithCallback implements TakePictureCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TakePictureRequest f2114a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TakePictureManagerImpl f2115b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ListenableFuture f2116c;
    public final ListenableFuture d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CallbackToFutureAdapter.Completer f2117e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public CallbackToFutureAdapter.Completer f2118f;
    public boolean g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f2119h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ListenableFuture f2120i;

    public RequestWithCallback(TakePictureRequest takePictureRequest, TakePictureManagerImpl takePictureManagerImpl) {
        final int i2 = 0;
        this.f2114a = takePictureRequest;
        this.f2115b = takePictureManagerImpl;
        this.f2116c = CallbackToFutureAdapter.a(new CallbackToFutureAdapter.Resolver(this) { // from class: dt0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ RequestWithCallback f68661c;

            {
                this.f68661c = this;
            }

            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object i(CallbackToFutureAdapter.Completer completer) {
                int i3 = i2;
                RequestWithCallback requestWithCallback = this.f68661c;
                switch (i3) {
                    case 0:
                        requestWithCallback.f2117e = completer;
                        return "CaptureCompleteFuture";
                    default:
                        requestWithCallback.f2118f = completer;
                        return "RequestCompleteFuture";
                }
            }
        });
        final int i3 = 1;
        this.d = CallbackToFutureAdapter.a(new CallbackToFutureAdapter.Resolver(this) { // from class: dt0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ RequestWithCallback f68661c;

            {
                this.f68661c = this;
            }

            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object i(CallbackToFutureAdapter.Completer completer) {
                int i4 = i3;
                RequestWithCallback requestWithCallback = this.f68661c;
                switch (i4) {
                    case 0:
                        requestWithCallback.f2117e = completer;
                        return "CaptureCompleteFuture";
                    default:
                        requestWithCallback.f2118f = completer;
                        return "RequestCompleteFuture";
                }
            }
        });
    }

    public final void a() {
        TakePictureRequest takePictureRequest = this.f2114a;
        if (!takePictureRequest.m() || takePictureRequest.l()) {
            if (!takePictureRequest.m()) {
                Preconditions.f("The callback can only complete once.", !this.d.isDone());
            }
            this.f2118f.b(null);
        }
    }

    public final void b() {
        Threads.a();
        if (this.g || this.f2119h) {
            return;
        }
        this.f2119h = true;
        ImageCapture.OnImageSavedCallback onImageSavedCallbackF = this.f2114a.f();
        if (onImageSavedCallbackF != null) {
            onImageSavedCallbackF.onCaptureStarted();
        }
    }

    @Override // androidx.camera.core.imagecapture.TakePictureCallback
    public final boolean isAborted() {
        return this.g;
    }
}

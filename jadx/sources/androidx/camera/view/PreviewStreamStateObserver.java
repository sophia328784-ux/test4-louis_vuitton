package androidx.camera.view;

import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.FutureChain;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.lifecycle.MutableLiveData;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class PreviewStreamStateObserver implements Observable.Observer<CameraInternal.State> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CameraInfoInternal f3127a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableLiveData f3128b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PreviewView.StreamState f3129c;
    public final PreviewViewImplementation d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public FutureChain f3130e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f3131f = false;

    /* JADX WARN: Multi-variable type inference failed */
    public PreviewStreamStateObserver(CameraInfoInternal cameraInfoInternal, MutableLiveData mutableLiveData, PreviewViewImplementation previewViewImplementation) {
        this.f3127a = cameraInfoInternal;
        this.f3128b = mutableLiveData;
        this.d = previewViewImplementation;
        synchronized (this) {
            this.f3129c = (PreviewView.StreamState) mutableLiveData.getValue();
        }
    }

    @Override // androidx.camera.core.impl.Observable.Observer
    public final void a(Object obj) {
        CameraInternal.State state = (CameraInternal.State) obj;
        if (state == CameraInternal.State.CLOSING || state == CameraInternal.State.CLOSED || state == CameraInternal.State.RELEASING || state == CameraInternal.State.RELEASED) {
            b(PreviewView.StreamState.IDLE);
            if (this.f3131f) {
                this.f3131f = false;
                FutureChain futureChain = this.f3130e;
                if (futureChain != null) {
                    futureChain.cancel(false);
                    this.f3130e = null;
                    return;
                }
                return;
            }
            return;
        }
        if ((state == CameraInternal.State.OPENING || state == CameraInternal.State.OPEN || state == CameraInternal.State.PENDING_OPEN) && !this.f3131f) {
            b(PreviewView.StreamState.IDLE);
            final ArrayList arrayList = new ArrayList();
            final CameraInfoInternal cameraInfoInternal = this.f3127a;
            FutureChain futureChainTransform = FutureChain.from(CallbackToFutureAdapter.a(new b(cameraInfoInternal, this, arrayList))).transformAsync(new a(this), CameraXExecutors.a()).transform(new a(this), CameraXExecutors.a());
            this.f3130e = futureChainTransform;
            Futures.a(futureChainTransform, new FutureCallback<Void>() { // from class: androidx.camera.view.PreviewStreamStateObserver.1
                @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                public final void onFailure(Throwable th) {
                    this.f3130e = null;
                    ArrayList arrayList2 = arrayList;
                    if (arrayList2.isEmpty()) {
                        return;
                    }
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        ((CameraInfoInternal) cameraInfoInternal).m((CameraCaptureCallback) it.next());
                    }
                    arrayList2.clear();
                }

                @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                public final void onSuccess(Object obj2) {
                    this.f3130e = null;
                }
            }, CameraXExecutors.a());
            this.f3131f = true;
        }
    }

    public final void b(PreviewView.StreamState streamState) {
        synchronized (this) {
            try {
                if (this.f3129c.equals(streamState)) {
                    return;
                }
                this.f3129c = streamState;
                Objects.toString(streamState);
                Logger.c(3, "StreamStateObserver");
                this.f3128b.postValue(streamState);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.impl.Observable.Observer
    public final void onError(Throwable th) {
        FutureChain futureChain = this.f3130e;
        if (futureChain != null) {
            futureChain.cancel(false);
            this.f3130e = null;
        }
        b(PreviewView.StreamState.IDLE);
    }
}

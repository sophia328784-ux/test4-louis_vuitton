package androidx.camera.view;

import androidx.arch.core.util.Function;
import androidx.camera.core.impl.utils.futures.AsyncFunction;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements AsyncFunction, Function, CallbackToFutureAdapter.Resolver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f3184b;

    public /* synthetic */ a(Object obj) {
        this.f3184b = obj;
    }

    @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
    public ListenableFuture apply(Object obj) {
        return ((PreviewStreamStateObserver) this.f3184b).d.g();
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object i(CallbackToFutureAdapter.Completer completer) {
        ((TextureViewImplementation) this.f3184b).f3180k.set(completer);
        return "textureViewImpl_waitForNextFrame";
    }

    @Override // androidx.arch.core.util.Function
    /* JADX INFO: renamed from: apply */
    public Object mo0apply(Object obj) {
        ((PreviewStreamStateObserver) this.f3184b).b(PreviewView.StreamState.STREAMING);
        return null;
    }
}

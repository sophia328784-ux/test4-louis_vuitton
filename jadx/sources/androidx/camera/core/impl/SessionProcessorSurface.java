package androidx.camera.core.impl;

import android.view.Surface;
import androidx.camera.core.impl.utils.futures.Futures;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes.dex */
public final class SessionProcessorSurface extends DeferrableSurface {
    public final Surface o;

    public SessionProcessorSurface(Surface surface, int i2) {
        this.o = surface;
    }

    @Override // androidx.camera.core.impl.DeferrableSurface
    public final ListenableFuture f() {
        return Futures.g(this.o);
    }
}

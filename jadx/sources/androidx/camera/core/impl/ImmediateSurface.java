package androidx.camera.core.impl;

import android.util.Size;
import android.view.Surface;
import androidx.camera.core.impl.utils.futures.Futures;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes.dex */
public final class ImmediateSurface extends DeferrableSurface {
    public final Surface o;

    public ImmediateSurface(Surface surface, Size size, int i2) {
        super(size, i2);
        this.o = surface;
    }

    @Override // androidx.camera.core.impl.DeferrableSurface
    public final ListenableFuture f() {
        return Futures.g(this.o);
    }

    public ImmediateSurface(Surface surface) {
        this.o = surface;
    }
}

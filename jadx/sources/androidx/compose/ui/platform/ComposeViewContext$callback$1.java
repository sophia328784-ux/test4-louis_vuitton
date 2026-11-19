package androidx.compose.ui.platform;

import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.view.ViewTreeObserver;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.res.ResourceIdCache;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"androidx/compose/ui/platform/ComposeViewContext$callback$1", "Landroid/content/ComponentCallbacks2;", "Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ComposeViewContext$callback$1 implements ComponentCallbacks2, ViewTreeObserver.OnWindowFocusChangeListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ComposeViewContext f10025b;

    public ComposeViewContext$callback$1(ComposeViewContext composeViewContext) {
        this.f10025b = composeViewContext;
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        this.f10025b.d(configuration);
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        ComposeViewContext composeViewContext = this.f10025b;
        composeViewContext.f10013f.f10230a.clear();
        ResourceIdCache resourceIdCache = composeViewContext.g;
        synchronized (resourceIdCache) {
            resourceIdCache.f10235a.c();
        }
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i2) {
        ComposeViewContext composeViewContext = this.f10025b;
        composeViewContext.f10013f.f10230a.clear();
        ResourceIdCache resourceIdCache = composeViewContext.g;
        synchronized (resourceIdCache) {
            resourceIdCache.f10235a.c();
        }
    }

    @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
    public final void onWindowFocusChanged(boolean z) {
        ((SnapshotMutableStateImpl) this.f10025b.s.f10114b).setValue(Boolean.valueOf(z));
    }
}

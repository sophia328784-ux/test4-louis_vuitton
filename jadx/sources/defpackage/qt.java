package defpackage;

import androidx.compose.runtime.MutableState;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.NavBackStackEntry;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerComposableKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerHelper;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerUiModel;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class qt implements LifecycleEventObserver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79156b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f79157c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f79158e;

    public /* synthetic */ qt(Lv3dViewerHelper lv3dViewerHelper, boolean z, MutableState mutableState) {
        this.d = lv3dViewerHelper;
        this.f79157c = z;
        this.f79158e = mutableState;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        int i2 = this.f79156b;
        Object obj = this.f79158e;
        boolean z = this.f79157c;
        Object obj2 = this.d;
        switch (i2) {
            case 0:
                List list = (List) obj2;
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                if (z && !list.contains(navBackStackEntry)) {
                    list.add(navBackStackEntry);
                }
                if (event == Lifecycle.Event.ON_START && !list.contains(navBackStackEntry)) {
                    list.add(navBackStackEntry);
                }
                if (event == Lifecycle.Event.ON_STOP) {
                    list.remove(navBackStackEntry);
                }
                break;
            default:
                Lv3dViewerHelper lv3dViewerHelper = (Lv3dViewerHelper) obj2;
                MutableState mutableState = (MutableState) obj;
                Lv3dViewerUiModel lv3dViewerUiModel = Lv3dViewerComposableKt.f58587a;
                int i3 = Lv3dViewerComposableKt.WhenMappings.f58597a[event.ordinal()];
                if (i3 == 1) {
                    lv3dViewerHelper.q.postFrameCallback(lv3dViewerHelper.l0);
                    mutableState.setValue(Boolean.valueOf(z));
                    break;
                } else if (i3 == 2) {
                    lv3dViewerHelper.q.removeFrameCallback(lv3dViewerHelper.l0);
                    mutableState.setValue(Boolean.FALSE);
                    break;
                }
                break;
        }
    }

    public /* synthetic */ qt(boolean z, List list, NavBackStackEntry navBackStackEntry) {
        this.f79157c = z;
        this.d = list;
        this.f79158e = navBackStackEntry;
    }
}

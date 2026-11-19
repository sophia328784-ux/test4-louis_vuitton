package defpackage;

import android.content.Context;
import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedDispatcher;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.core.view.MenuHostHelper;
import androidx.core.view.MenuProvider;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.fragment.FragmentNavigator;
import com.google.accompanist.permissions.MutablePermissionState;
import com.google.accompanist.permissions.PermissionStatus;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.screen.cart.NativeCartNavHostKt;
import com.vuitton.android.presentation.screen.cart.NativeCartViewModel;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerComposableKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerHelper;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerUiModel;
import com.vuitton.android.presentation.screen.story.components.StoryComposableKt;
import com.vuitton.android.presentation.screen.story.models.StoryViewState;
import com.vuitton.android.presentation.utils.SecurityUtils;
import java.util.List;
import java.util.Objects;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class bn implements LifecycleEventObserver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20904b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f20905c;
    public final /* synthetic */ Object d;

    public /* synthetic */ bn(Object obj, Object obj2, int i2) {
        this.f20904b = i2;
        this.f20905c = obj;
        this.d = obj2;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        int i2 = this.f20904b;
        Object obj = this.d;
        Object obj2 = this.f20905c;
        switch (i2) {
            case 0:
                ComponentActivity.o((OnBackPressedDispatcher) obj2, (ComponentActivity) obj, lifecycleOwner, event);
                break;
            case 1:
                FragmentNavigator fragmentNavigator = (FragmentNavigator) obj2;
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                int i3 = FragmentNavigator.f18300j;
                if (event == Lifecycle.Event.ON_RESUME && ((List) fragmentNavigator.b().f18213e.getValue()).contains(navBackStackEntry)) {
                    if (FragmentNavigator.n()) {
                        Objects.toString(navBackStackEntry);
                        Objects.toString(lifecycleOwner);
                    }
                    fragmentNavigator.b().b(navBackStackEntry);
                }
                if (event == Lifecycle.Event.ON_DESTROY) {
                    if (FragmentNavigator.n()) {
                        Objects.toString(navBackStackEntry);
                        Objects.toString(lifecycleOwner);
                    }
                    fragmentNavigator.b().b(navBackStackEntry);
                }
                break;
            case 2:
                MutableState mutableState = (MutableState) obj;
                if (event == ((Lifecycle.Event) obj2)) {
                    ((Function0) mutableState.getF10755b()).mo47invoke();
                }
                break;
            case 3:
                Lv3dCardViewerHelper lv3dCardViewerHelper = (Lv3dCardViewerHelper) obj2;
                MutableState mutableState2 = (MutableState) obj;
                Lv3dCardViewerUiModel lv3dCardViewerUiModel = Lv3dCardViewerComposableKt.f58553a;
                int i4 = Lv3dCardViewerComposableKt.WhenMappings.f58567a[event.ordinal()];
                if (i4 == 1) {
                    lv3dCardViewerHelper.q.postFrameCallback(lv3dCardViewerHelper.T);
                    mutableState2.setValue(Boolean.TRUE);
                    break;
                } else if (i4 == 2) {
                    lv3dCardViewerHelper.q.removeFrameCallback(lv3dCardViewerHelper.T);
                    mutableState2.setValue(Boolean.FALSE);
                    break;
                }
                break;
            case 4:
                MenuHostHelper menuHostHelper = (MenuHostHelper) obj2;
                MenuProvider menuProvider = (MenuProvider) obj;
                menuHostHelper.getClass();
                if (event == Lifecycle.Event.ON_DESTROY) {
                    menuHostHelper.c(menuProvider);
                }
                break;
            case 5:
                Context context = (Context) obj2;
                NativeCartViewModel nativeCartViewModel = (NativeCartViewModel) obj;
                int i5 = NativeCartNavHostKt.WhenMappings.f54864a[event.ordinal()];
                if (i5 == 1) {
                    SecurityUtils.b(ContextExtKt.b(context));
                    break;
                } else if (i5 == 2) {
                    SecurityUtils.a(ContextExtKt.b(context));
                    break;
                } else if (i5 == 3) {
                    nativeCartViewModel.H8();
                    break;
                }
                break;
            case 6:
                Lifecycle.Event event2 = (Lifecycle.Event) obj2;
                MutablePermissionState mutablePermissionState = (MutablePermissionState) obj;
                mutablePermissionState.getClass();
                MutableState mutableState3 = mutablePermissionState.d;
                if (event == event2 && !Intrinsics.c((PermissionStatus) ((SnapshotMutableStateImpl) mutableState3).getF10755b(), PermissionStatus.Granted.f27777a)) {
                    ((SnapshotMutableStateImpl) mutableState3).setValue(mutablePermissionState.a());
                    break;
                }
                break;
            default:
                ((MutableState) obj).setValue(Boolean.valueOf(StoryComposableKt.WhenMappings.f65131a[event.ordinal()] != 1 ? ((StoryViewState) obj2).f65178h : true));
                break;
        }
    }
}

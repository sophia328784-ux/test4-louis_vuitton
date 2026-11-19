package defpackage;

import androidx.compose.ui.platform.AbstractComposeView;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.fragment.FragmentNavigator;
import androidx.navigation.internal.NavBackStackEntryImpl;
import androidx.navigation.internal.NavControllerImpl;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import com.vuitton.android.presentation.screen.account.lvpass.components.QRCodeComposableKt;
import com.vuitton.android.presentation.screen.account.userworldwideid.UserWorldwideIdViewModel;
import java.util.Objects;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k2 implements LifecycleEventObserver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71526b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f71527c;

    public /* synthetic */ k2(Object obj, int i2) {
        this.f71526b = i2;
        this.f71527c = obj;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        int i2 = this.f71526b;
        Object obj = this.f71527c;
        switch (i2) {
            case 0:
                ((Function1) obj).invoke(event);
                break;
            case 1:
                FragmentNavigator fragmentNavigator = (FragmentNavigator) obj;
                int i3 = FragmentNavigator.f18300j;
                if (event == Lifecycle.Event.ON_DESTROY) {
                    Fragment fragment = (Fragment) lifecycleOwner;
                    Object obj2 = null;
                    for (Object obj3 : (Iterable) fragmentNavigator.b().f18214f.getValue()) {
                        if (Intrinsics.c(((NavBackStackEntry) obj3).g, fragment.getTag())) {
                            obj2 = obj3;
                        }
                    }
                    NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj2;
                    if (navBackStackEntry != null) {
                        if (FragmentNavigator.n()) {
                            navBackStackEntry.toString();
                            Objects.toString(lifecycleOwner);
                        }
                        fragmentNavigator.b().b(navBackStackEntry);
                    }
                }
                break;
            case 2:
                ((MutableStateFlow) obj).setValue(event.a());
                break;
            case 3:
                NavControllerImpl navControllerImpl = (NavControllerImpl) obj;
                int i4 = NavControllerImpl.B;
                navControllerImpl.r = event.a();
                if (navControllerImpl.f18334c != null) {
                    for (NavBackStackEntry navBackStackEntry2 : CollectionsKt.z0(navControllerImpl.f18336f)) {
                        navBackStackEntry2.getClass();
                        NavBackStackEntryImpl navBackStackEntryImpl = navBackStackEntry2.f18117i;
                        navBackStackEntryImpl.getClass();
                        NavBackStackEntry navBackStackEntry3 = navBackStackEntryImpl.f18318a;
                        Lifecycle.State stateA = event.a();
                        navBackStackEntry3.getClass();
                        stateA.getClass();
                        navBackStackEntry3.f18114e = stateA;
                        navBackStackEntryImpl.d = event.a();
                        navBackStackEntryImpl.c();
                    }
                }
                break;
            case 4:
                UserWorldwideIdViewModel userWorldwideIdViewModel = (UserWorldwideIdViewModel) obj;
                int i5 = QRCodeComposableKt.WhenMappings.f52485a[event.ordinal()];
                if (i5 == 1) {
                    userWorldwideIdViewModel.k7();
                    break;
                } else if (i5 == 2) {
                    userWorldwideIdViewModel.f5();
                    break;
                }
                break;
            case 5:
                SavedStateRegistryImpl savedStateRegistryImpl = (SavedStateRegistryImpl) obj;
                int i6 = SavedStateRegistryImpl.f19793i;
                if (event == Lifecycle.Event.ON_START) {
                    savedStateRegistryImpl.f19799h = true;
                } else if (event == Lifecycle.Event.ON_STOP) {
                    savedStateRegistryImpl.f19799h = false;
                }
                break;
            default:
                AbstractComposeView abstractComposeView = (AbstractComposeView) obj;
                if (event == Lifecycle.Event.ON_DESTROY) {
                    abstractComposeView.e();
                }
                break;
        }
    }
}

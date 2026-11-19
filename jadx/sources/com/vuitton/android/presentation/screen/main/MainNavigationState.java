package com.vuitton.android.presentation.screen.main;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.navigation.NavHostController;
import androidx.navigation.NavOptions;
import androidx.navigation.NavOptionsBuilderKt;
import com.vuitton.android.core.type.SystemIcons;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import com.vuitton.android.presentation.screen.main.navigation.CartRoute;
import com.vuitton.android.presentation.screen.main.navigation.CatalogDeepLinkType;
import com.vuitton.android.presentation.screen.main.navigation.CatalogRoute;
import com.vuitton.android.presentation.screen.main.navigation.FeedRoute;
import com.vuitton.android.presentation.screen.main.navigation.ServiceRoute;
import com.vuitton.android.presentation.screen.main.navigation.WishlistRoute;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeLaunchMode;
import defpackage.tb0;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/MainNavigationState;", "", "Landroidx/navigation/NavHostController;", "navController", "", "isECommerce", "Lkotlin/Function1;", "Lcom/vuitton/android/core/type/SystemIcons;", "", "updateSystemBarIcons", "<init>", "(Landroidx/navigation/NavHostController;ZLkotlin/jvm/functions/Function1;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class MainNavigationState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NavHostController f59095a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f59096b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function1 f59097c;
    public final ArrayList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableState f59098e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public MainTopLevelDestination f59099f;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f59100a;

        static {
            int[] iArr = new int[MainTopLevelDestination.values().length];
            try {
                iArr[MainTopLevelDestination.FEED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MainTopLevelDestination.CATALOG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[MainTopLevelDestination.SERVICES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[MainTopLevelDestination.WISHLIST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[MainTopLevelDestination.CART.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f59100a = iArr;
        }
    }

    public MainNavigationState(NavHostController navHostController, boolean z, Function1<? super SystemIcons, Unit> function1) {
        navHostController.getClass();
        function1.getClass();
        this.f59095a = navHostController;
        this.f59096b = z;
        this.f59097c = function1;
        EnumEntries enumEntriesE = MainTopLevelDestination.e();
        ArrayList arrayList = new ArrayList();
        for (Object obj : enumEntriesE) {
            if (!Intrinsics.c(((MainTopLevelDestination) obj).getRoute(), Reflection.f71922a.b(CartRoute.class)) || this.f59096b) {
                arrayList.add(obj);
            }
        }
        this.d = arrayList;
        this.f59098e = SnapshotStateKt.g(Boolean.FALSE);
        for (Object obj2 : arrayList) {
            if (((Boolean) ((MainTopLevelDestination) obj2).getIsPreviousSelected().getF10755b()).booleanValue()) {
                this.f59099f = (MainTopLevelDestination) obj2;
            }
        }
        obj2 = null;
        this.f59099f = (MainTopLevelDestination) obj2;
    }

    public final NavDestination a(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) SnapshotStateKt.a(FlowKt.a(this.f59095a.f18122b.A), null, null, composer, 48, 2).getF10755b();
        if (navBackStackEntry != null) {
            return navBackStackEntry.f18113c;
        }
        return null;
    }

    public final MainTopLevelDestination b() {
        Object next;
        Iterator<E> it = MainTopLevelDestination.e().iterator();
        while (it.hasNext()) {
            next = it.next();
            MainTopLevelDestination mainTopLevelDestination = (MainTopLevelDestination) next;
            NavDestination navDestinationI = this.f59095a.f18122b.i();
            if (navDestinationI != null) {
                NavDestination.Companion companion = NavDestination.g;
                KClass route = mainTopLevelDestination.getRoute();
                companion.getClass();
                if (NavDestination.Companion.c(navDestinationI, route)) {
                    return (MainTopLevelDestination) next;
                }
            }
        }
        next = null;
        return (MainTopLevelDestination) next;
    }

    public final MainTopLevelDestination c(Composer composer, int i2) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        composer.L(-1698680855);
        for (Object obj : MainTopLevelDestination.e()) {
            MainTopLevelDestination mainTopLevelDestination = (MainTopLevelDestination) obj;
            NavDestination navDestinationA = a(composer);
            if (navDestinationA != null) {
                NavDestination.Companion companion = NavDestination.g;
                KClass route = mainTopLevelDestination.getRoute();
                companion.getClass();
                if (NavDestination.Companion.c(navDestinationA, route)) {
                    MainTopLevelDestination mainTopLevelDestination2 = (MainTopLevelDestination) obj;
                    composer.F();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    return mainTopLevelDestination2;
                }
            }
        }
        obj = null;
        MainTopLevelDestination mainTopLevelDestination3 = (MainTopLevelDestination) obj;
        composer.F();
        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
        return mainTopLevelDestination3;
    }

    public final void d(MainTopLevelDestination mainTopLevelDestination, CatalogRoute catalogRoute) {
        MutableState isPreviousSelected;
        MutableState isPreviousSelected2;
        mainTopLevelDestination.getClass();
        if (mainTopLevelDestination != b() || mainTopLevelDestination == MainTopLevelDestination.CATALOG) {
            NavOptions navOptionsA = NavOptionsBuilderKt.a(new tb0(this, 1));
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                ((MainTopLevelDestination) it.next()).v(false);
            }
            MainTopLevelDestination mainTopLevelDestinationB = b();
            if (mainTopLevelDestinationB != null && (isPreviousSelected2 = mainTopLevelDestinationB.getIsPreviousSelected()) != null) {
                isPreviousSelected2.setValue(Boolean.TRUE);
            }
            MainTopLevelDestination mainTopLevelDestination2 = this.f59099f;
            if (mainTopLevelDestination2 != null && (isPreviousSelected = mainTopLevelDestination2.getIsPreviousSelected()) != null) {
                isPreviousSelected.setValue(Boolean.FALSE);
            }
            this.f59099f = b();
            int i2 = WhenMappings.f59100a[mainTopLevelDestination.ordinal()];
            NavHostController navHostController = this.f59095a;
            if (i2 == 1) {
                navHostController.getClass();
                NavController.d(navHostController, FeedRoute.INSTANCE, navOptionsA, 4);
                return;
            }
            if (i2 == 2) {
                navHostController.getClass();
                NavController.d(navHostController, catalogRoute == null ? new CatalogRoute((CatalogDeepLinkType) null, (String) null, (String) null, (StoreModeLaunchMode) null, (List) null, (String) null, false, (String) null, (String) null, (String) null, (String) null, (String) null, 4095, (DefaultConstructorMarker) null) : catalogRoute, navOptionsA, 4);
                return;
            }
            if (i2 == 3) {
                navHostController.getClass();
                NavController.d(navHostController, ServiceRoute.INSTANCE, navOptionsA, 4);
            } else if (i2 == 4) {
                navHostController.getClass();
                NavController.d(navHostController, WishlistRoute.INSTANCE, navOptionsA, 4);
            } else if (i2 != 5) {
                v40.g();
            } else {
                navHostController.getClass();
                NavController.d(navHostController, CartRoute.INSTANCE, navOptionsA, 4);
            }
        }
    }

    public final void e(boolean z) {
        ((SnapshotMutableStateImpl) this.f59098e).setValue(Boolean.valueOf(z));
    }

    public final void f(boolean z) {
        MutableState showNavBar;
        MainTopLevelDestination mainTopLevelDestinationB = b();
        if (mainTopLevelDestinationB == null || (showNavBar = mainTopLevelDestinationB.getShowNavBar()) == null) {
            return;
        }
        showNavBar.setValue(Boolean.valueOf(z));
    }

    public final void g(boolean z) {
        this.f59097c.invoke(new SystemIcons(z));
    }
}

package androidx.navigation.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.window.DialogProperties;
import androidx.navigation.FloatingWindow;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Navigator.Name("dialog")
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0005\u0006B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Landroidx/navigation/compose/DialogNavigator;", "Landroidx/navigation/Navigator;", "Landroidx/navigation/compose/DialogNavigator$Destination;", "<init>", "()V", "Destination", "Companion", "navigation-compose_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DialogNavigator extends Navigator<Destination> {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/navigation/compose/DialogNavigator$Companion;", "", "", "NAME", "Ljava/lang/String;", "navigation-compose_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public DialogNavigator() {
        super("dialog");
    }

    @Override // androidx.navigation.Navigator
    public final NavDestination a() {
        ComposableSingletons$DialogNavigatorKt.f18230a.getClass();
        return new Destination(this, null, ComposableSingletons$DialogNavigatorKt.f18231b, 2, null);
    }

    @Override // androidx.navigation.Navigator
    public final void d(List list, NavOptions navOptions) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            b().g((NavBackStackEntry) it.next());
        }
    }

    @Override // androidx.navigation.Navigator
    public final void i(NavBackStackEntry navBackStackEntry, boolean z) {
        b().e(navBackStackEntry, z);
        int iH = CollectionsKt.H((Iterable) b().f18214f.getValue(), navBackStackEntry);
        int i2 = 0;
        for (Object obj : (Iterable) b().f18214f.getValue()) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt.t0();
                throw null;
            }
            NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) obj;
            if (i2 > iH) {
                b().b(navBackStackEntry2);
            }
            i2 = i3;
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B2\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0017\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007¢\u0006\u0002\b\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/navigation/compose/DialogNavigator$Destination;", "Landroidx/navigation/NavDestination;", "Landroidx/navigation/FloatingWindow;", "Landroidx/navigation/compose/DialogNavigator;", "navigator", "Landroidx/compose/ui/window/DialogProperties;", "dialogProperties", "Lkotlin/Function1;", "Landroidx/navigation/NavBackStackEntry;", "", "Landroidx/compose/runtime/Composable;", "content", "<init>", "(Landroidx/navigation/compose/DialogNavigator;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function3;)V", "navigation-compose_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Destination extends NavDestination implements FloatingWindow {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final DialogProperties f18256h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Function3 f18257i;

        public /* synthetic */ Destination(DialogNavigator dialogNavigator, DialogProperties dialogProperties, Function3 function3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(dialogNavigator, (i2 & 2) != 0 ? new DialogProperties(false, false, false, 7, (DefaultConstructorMarker) null) : dialogProperties, function3);
        }

        public Destination(DialogNavigator dialogNavigator, DialogProperties dialogProperties, Function3<? super NavBackStackEntry, ? super Composer, ? super Integer, Unit> function3) {
            super(dialogNavigator);
            this.f18256h = dialogProperties;
            this.f18257i = function3;
        }
    }
}

package androidx.navigation.compose;

import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import java.util.Iterator;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Navigator.Name("composable")
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0005\u0006B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Landroidx/navigation/compose/ComposeNavigator;", "Landroidx/navigation/Navigator;", "Landroidx/navigation/compose/ComposeNavigator$Destination;", "<init>", "()V", "Destination", "Companion", "navigation-compose_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ComposeNavigator extends Navigator<Destination> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableState f18233c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/navigation/compose/ComposeNavigator$Companion;", "", "", "NAME", "Ljava/lang/String;", "navigation-compose_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public ComposeNavigator() {
        super("composable");
        this.f18233c = SnapshotStateKt.g(Boolean.FALSE);
    }

    @Override // androidx.navigation.Navigator
    public final NavDestination a() {
        ComposableSingletons$ComposeNavigatorKt.f18227a.getClass();
        return new Destination(this, (Function4<? super AnimatedContentScope, NavBackStackEntry, ? super Composer, ? super Integer, Unit>) ComposableSingletons$ComposeNavigatorKt.f18228b);
    }

    @Override // androidx.navigation.Navigator
    public final void d(List list, NavOptions navOptions) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            b().h((NavBackStackEntry) it.next());
        }
        ((SnapshotMutableStateImpl) this.f18233c).setValue(Boolean.FALSE);
    }

    @Override // androidx.navigation.Navigator
    public final void i(NavBackStackEntry navBackStackEntry, boolean z) {
        b().e(navBackStackEntry, z);
        ((SnapshotMutableStateImpl) this.f18233c).setValue(Boolean.TRUE);
    }

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B8\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012'\u0010\u000b\u001a#\u0012\u0004\u0012\u00020\u0005\u0012\t\u0012\u00070\u0006¢\u0006\u0002\b\u0007\u0012\u0004\u0012\u00020\b0\u0004¢\u0006\u0002\b\t¢\u0006\u0002\b\n¢\u0006\u0004\b\f\u0010\rB/\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u001c\u0010\u000b\u001a\u0018\u0012\u0004\u0012\u00020\u0006\u0012\t\u0012\u00070\b¢\u0006\u0002\b\u00070\u000e¢\u0006\u0002\b\t¢\u0006\u0004\b\f\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/navigation/compose/ComposeNavigator$Destination;", "Landroidx/navigation/NavDestination;", "Landroidx/navigation/compose/ComposeNavigator;", "navigator", "Lkotlin/Function2;", "Landroidx/compose/animation/AnimatedContentScope;", "Landroidx/navigation/NavBackStackEntry;", "Lkotlin/jvm/JvmSuppressWildcards;", "", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "content", "<init>", "(Landroidx/navigation/compose/ComposeNavigator;Lkotlin/jvm/functions/Function4;)V", "Lkotlin/Function1;", "(Landroidx/navigation/compose/ComposeNavigator;Lkotlin/jvm/functions/Function3;)V", "navigation-compose_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Destination extends NavDestination {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Function4 f18234h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Function1 f18235i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Function1 f18236j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public Function1 f18237k;
        public Function1 l;

        @Deprecated
        public Destination(ComposeNavigator composeNavigator, final Function3 function3) {
            this(composeNavigator, (Function4<? super AnimatedContentScope, NavBackStackEntry, ? super Composer, ? super Integer, Unit>) new ComposableLambdaImpl(1587956030, true, new Function4<AnimatedContentScope, NavBackStackEntry, Composer, Integer, Unit>() { // from class: androidx.navigation.compose.ComposeNavigator.Destination.1
                @Override // kotlin.jvm.functions.Function4
                public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
                    int iIntValue = ((Number) obj4).intValue();
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Integer numValueOf = Integer.valueOf((iIntValue >> 3) & 14);
                    function3.A((NavBackStackEntry) obj2, (Composer) obj3, numValueOf);
                    return Unit.f71739a;
                }
            }));
        }

        public Destination(ComposeNavigator composeNavigator, Function4<? super AnimatedContentScope, NavBackStackEntry, ? super Composer, ? super Integer, Unit> function4) {
            super(composeNavigator);
            this.f18234h = function4;
        }
    }
}

package androidx.navigation.compose;

import androidx.collection.MutableObjectFloatMap;
import androidx.collection.ObjectFloatMapKt;
import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.runtime.saveable.SaveableStateHolderKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.NavHostController;
import androidx.navigation.NavType;
import androidx.navigation.Navigator;
import androidx.navigation.NavigatorProvider;
import androidx.navigation.compose.ComposeNavigator;
import androidx.navigation.compose.NavHostKt;
import androidx.navigation.compose.internal.NavComposeUtils_androidKt;
import androidx.navigation.internal.NavControllerImpl;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import defpackage.ag0;
import defpackage.k0;
import defpackage.k4;
import defpackage.k60;
import defpackage.lg0;
import defpackage.md;
import defpackage.nk;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004¨\u0006\t²\u0006\u0012\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00008\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0004\u001a\u00020\u00038\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0006\u001a\u00020\u00058\n@\nX\u008a\u008e\u0002²\u0006\u0012\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00010\u00008\nX\u008a\u0084\u0002²\u0006\u0012\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00010\u00008\nX\u008a\u0084\u0002"}, d2 = {"", "Landroidx/navigation/NavBackStackEntry;", "currentBackStack", "", "progress", "", "inPredictiveBack", "allVisibleEntries", "visibleEntries", "navigation-compose_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class NavHostKt {
    /* JADX WARN: Failed to analyze thrown exceptions
    java.util.ConcurrentModificationException
    	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1043)
    	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:997)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:130)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
     */
    public static final void a(final NavHostController navHostController, final NavGraph navGraph, Modifier modifier, final Alignment alignment, final Function1 function1, final Function1 function2, final Function1 function3, final Function1 function4, final Function1 function5, Composer composer, final int i2) {
        int i3;
        final Alignment alignment2;
        Function1 function6;
        final ComposeNavigator composeNavigator;
        MutableState mutableState;
        GapComposer gapComposer;
        Modifier modifier2;
        DialogNavigator dialogNavigator;
        boolean z;
        boolean z2;
        ComposeNavigator composeNavigator2;
        MutableState mutableState2;
        Object obj;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "NavHost");
        }
        final Modifier modifier3 = modifierE;
        GapComposer gapComposerH = composer.h(-1964664536);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(navHostController) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(navGraph) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(modifier3) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            alignment2 = alignment;
            i3 |= gapComposerH.K(alignment2) ? 2048 : 1024;
        } else {
            alignment2 = alignment;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function1) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            function6 = function2;
            i3 |= gapComposerH.y(function6) ? 131072 : 65536;
        } else {
            function6 = function2;
        }
        if ((i2 & 1572864) == 0) {
            i3 |= gapComposerH.y(function3) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i3 |= gapComposerH.y(function4) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i3 |= gapComposerH.y(function5) ? 67108864 : 33554432;
        }
        if ((i3 & 38347923) == 38347922 && gapComposerH.i()) {
            gapComposerH.D();
            gapComposer = gapComposerH;
        } else {
            gapComposerH.y0();
            if ((i2 & 1) != 0 && !gapComposerH.h0()) {
                gapComposerH.D();
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LifecycleOwner lifecycleOwner = (LifecycleOwner) gapComposerH.k(LocalLifecycleOwnerKt.f13562a);
            ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(gapComposerH);
            if (viewModelStoreOwnerA == null) {
                md.k("NavHost requires a ViewModelStoreOwner to be provided via LocalViewModelStoreOwner");
                return;
            }
            navHostController.j(viewModelStoreOwnerA.getF13587c());
            NavControllerImpl navControllerImpl = navHostController.f18122b;
            navGraph.getClass();
            navControllerImpl.getClass();
            NavigatorProvider navigatorProvider = navControllerImpl.t;
            navControllerImpl.v(navGraph, null);
            Navigator navigatorC = navigatorProvider.c("composable");
            ComposeNavigator composeNavigator3 = navigatorC instanceof ComposeNavigator ? (ComposeNavigator) navigatorC : null;
            if (composeNavigator3 == null) {
                RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    final int i4 = 2;
                    final Function1 function7 = function6;
                    recomposeScopeImplB0.d = new Function2() { // from class: kg0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj2, Object obj3) {
                            switch (i4) {
                                case 0:
                                    ((Integer) obj3).getClass();
                                    NavHostKt.a(navHostController, navGraph, modifier3, alignment2, function1, function7, function3, function4, function5, (Composer) obj2, RecomposeScopeImplKt.a(i2 | 1));
                                    break;
                                case 1:
                                    ((Integer) obj3).getClass();
                                    NavHostKt.a(navHostController, navGraph, modifier3, alignment2, function1, function7, function3, function4, function5, (Composer) obj2, RecomposeScopeImplKt.a(i2 | 1));
                                    break;
                                default:
                                    ((Integer) obj3).getClass();
                                    NavHostKt.a(navHostController, navGraph, modifier3, alignment2, function1, function7, function3, function4, function5, (Composer) obj2, RecomposeScopeImplKt.a(i2 | 1));
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    return;
                }
                return;
            }
            MutableState mutableStateB = SnapshotStateKt.b(composeNavigator3.b().f18213e, gapComposerH);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = PrimitiveSnapshotStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                gapComposerH.q(objX);
            }
            MutableFloatState mutableFloatState = (MutableFloatState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX2);
            }
            final MutableState mutableState3 = (MutableState) objX2;
            NavigatorProvider navigatorProvider2 = navigatorProvider;
            int i5 = 0;
            boolean z3 = ((List) mutableStateB.getF10755b()).size() > 1;
            boolean zK = gapComposerH.K(mutableStateB) | gapComposerH.y(composeNavigator3);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$1) {
                ComposeNavigator composeNavigator4 = composeNavigator3;
                objX3 = new NavHostKt$NavHost$25$1(composeNavigator4, mutableStateB, mutableFloatState, mutableState3, null);
                composeNavigator = composeNavigator4;
                mutableState = mutableStateB;
                gapComposerH.q(objX3);
            } else {
                ComposeNavigator composeNavigator5 = composeNavigator3;
                mutableState = mutableStateB;
                composeNavigator = composeNavigator5;
            }
            NavComposeUtils_androidKt.a(z3, (Function2) objX3, gapComposerH, 0);
            boolean zY = gapComposerH.y(navHostController) | gapComposerH.y(lifecycleOwner);
            Object objX4 = gapComposerH.x();
            if (zY || objX4 == composer$Companion$Empty$1) {
                objX4 = new k60(navHostController, lifecycleOwner, 27);
                gapComposerH.q(objX4);
            }
            EffectsKt.c(lifecycleOwner, (Function1) objX4, gapComposerH);
            final SaveableStateHolder saveableStateHolderA = SaveableStateHolderKt.a(gapComposerH);
            MutableState mutableStateB2 = SnapshotStateKt.b(navControllerImpl.f18339j, gapComposerH);
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = SnapshotStateKt.e(new lg0(mutableStateB2, i5));
                gapComposerH.q(objX5);
            }
            State state = (State) objX5;
            final NavBackStackEntry navBackStackEntry = (NavBackStackEntry) CollectionsKt.N((List) state.getF10755b());
            Object objX6 = gapComposerH.x();
            if (objX6 == composer$Companion$Empty$1) {
                int i6 = ObjectFloatMapKt.f3339a;
                objX6 = new MutableObjectFloatMap(0, 1, null);
                gapComposerH.q(objX6);
            }
            MutableObjectFloatMap mutableObjectFloatMap = (MutableObjectFloatMap) objX6;
            if (navBackStackEntry != 0) {
                gapComposerH.L(-1797250687);
                boolean zY2 = gapComposerH.y(composeNavigator) | ((((i3 & 3670016) ^ 1572864) > 1048576 && gapComposerH.K(function3)) || (i3 & 1572864) == 1048576) | ((i3 & 57344) == 16384);
                Object objX7 = gapComposerH.x();
                if (zY2 || objX7 == composer$Companion$Empty$1) {
                    final int i7 = 1;
                    z = false;
                    z2 = true;
                    Function1 function8 = new Function1() { // from class: ig0
                        /* JADX WARN: Code duplicated, block: B:21:0x006a  */
                        /* JADX WARN: Code duplicated, block: B:34:0x00a2  */
                        /* JADX WARN: Code duplicated, block: B:53:0x0104  */
                        /* JADX WARN: Code duplicated, block: B:66:0x013c  */
                        /* JADX WARN: Code duplicated, block: B:88:? A[RETURN, SYNTHETIC] */
                        /* JADX WARN: Code duplicated, block: B:90:? A[RETURN, SYNTHETIC] */
                        /* JADX WARN: Code duplicated, block: B:91:? A[RETURN, SYNTHETIC] */
                        /* JADX WARN: Code duplicated, block: B:93:? A[RETURN, SYNTHETIC] */
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            Function1 function9;
                            Function1 function10;
                            Function1 function11;
                            Function1 function12;
                            int i8 = i7;
                            Object obj3 = null;
                            MutableState mutableState4 = mutableState3;
                            Function1 function13 = function1;
                            Function1 function14 = function3;
                            ComposeNavigator composeNavigator6 = composeNavigator;
                            AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj2;
                            switch (i8) {
                                case 0:
                                    NavDestination navDestination = ((NavBackStackEntry) animatedContentTransitionScope.getF4003a()).f18113c;
                                    navDestination.getClass();
                                    ComposeNavigator.Destination destination = (ComposeNavigator.Destination) navDestination;
                                    if (((Boolean) ((SnapshotMutableStateImpl) composeNavigator6.f18233c).getF10755b()).booleanValue() || ((Boolean) mutableState4.getF10755b()).booleanValue()) {
                                        NavDestination.g.getClass();
                                        for (NavDestination navDestination2 : NavDestination.Companion.b(destination)) {
                                            ExitTransition exitTransition = (!(navDestination2 instanceof ComposeNavigator.Destination) || (function9 = ((ComposeNavigator.Destination) navDestination2).l) == null) ? null : (ExitTransition) function9.invoke(animatedContentTransitionScope);
                                            if (exitTransition != null) {
                                                obj3 = exitTransition;
                                                if (obj3 == null) {
                                                    return (ExitTransition) function14.invoke(animatedContentTransitionScope);
                                                }
                                                return obj3;
                                            }
                                        }
                                        if (obj3 == null) {
                                            return (ExitTransition) function14.invoke(animatedContentTransitionScope);
                                        }
                                        return obj3;
                                    }
                                    NavDestination.g.getClass();
                                    for (NavDestination navDestination3 : NavDestination.Companion.b(destination)) {
                                        ExitTransition exitTransition2 = (!(navDestination3 instanceof ComposeNavigator.Destination) || (function10 = ((ComposeNavigator.Destination) navDestination3).f18236j) == null) ? null : (ExitTransition) function10.invoke(animatedContentTransitionScope);
                                        if (exitTransition2 != null) {
                                            obj3 = exitTransition2;
                                            if (obj3 == null) {
                                                return (ExitTransition) function13.invoke(animatedContentTransitionScope);
                                            }
                                            return obj3;
                                        }
                                    }
                                    if (obj3 == null) {
                                        return (ExitTransition) function13.invoke(animatedContentTransitionScope);
                                    }
                                    return obj3;
                                default:
                                    NavDestination navDestination4 = ((NavBackStackEntry) animatedContentTransitionScope.getF4004b()).f18113c;
                                    navDestination4.getClass();
                                    ComposeNavigator.Destination destination2 = (ComposeNavigator.Destination) navDestination4;
                                    if (((Boolean) ((SnapshotMutableStateImpl) composeNavigator6.f18233c).getF10755b()).booleanValue() || ((Boolean) mutableState4.getF10755b()).booleanValue()) {
                                        NavDestination.g.getClass();
                                        for (NavDestination navDestination5 : NavDestination.Companion.b(destination2)) {
                                            EnterTransition enterTransition = (!(navDestination5 instanceof ComposeNavigator.Destination) || (function11 = ((ComposeNavigator.Destination) navDestination5).f18237k) == null) ? null : (EnterTransition) function11.invoke(animatedContentTransitionScope);
                                            if (enterTransition != null) {
                                                obj3 = enterTransition;
                                                if (obj3 == null) {
                                                    return (EnterTransition) function14.invoke(animatedContentTransitionScope);
                                                }
                                                return obj3;
                                            }
                                        }
                                        if (obj3 == null) {
                                            return (EnterTransition) function14.invoke(animatedContentTransitionScope);
                                        }
                                        return obj3;
                                    }
                                    NavDestination.g.getClass();
                                    for (NavDestination navDestination6 : NavDestination.Companion.b(destination2)) {
                                        EnterTransition enterTransition2 = (!(navDestination6 instanceof ComposeNavigator.Destination) || (function12 = ((ComposeNavigator.Destination) navDestination6).f18235i) == null) ? null : (EnterTransition) function12.invoke(animatedContentTransitionScope);
                                        if (enterTransition2 != null) {
                                            obj3 = enterTransition2;
                                            if (obj3 == null) {
                                                return (EnterTransition) function13.invoke(animatedContentTransitionScope);
                                            }
                                            return obj3;
                                        }
                                    }
                                    if (obj3 == null) {
                                        return (EnterTransition) function13.invoke(animatedContentTransitionScope);
                                    }
                                    return obj3;
                            }
                        }
                    };
                    gapComposerH.q(function8);
                    objX7 = function8;
                } else {
                    z = false;
                    z2 = true;
                }
                Function1 function9 = (Function1) objX7;
                boolean zY3 = gapComposerH.y(composeNavigator) | (((((29360128 & i3) ^ 12582912) <= 8388608 || !gapComposerH.K(function4)) && (i3 & 12582912) != 8388608) ? z : z2) | ((458752 & i3) == 131072 ? z2 : z);
                Object objX8 = gapComposerH.x();
                if (zY3 || objX8 == composer$Companion$Empty$1) {
                    final int i8 = 0;
                    Function1 function10 = new Function1() { // from class: ig0
                        /* JADX WARN: Code duplicated, block: B:21:0x006a  */
                        /* JADX WARN: Code duplicated, block: B:34:0x00a2  */
                        /* JADX WARN: Code duplicated, block: B:53:0x0104  */
                        /* JADX WARN: Code duplicated, block: B:66:0x013c  */
                        /* JADX WARN: Code duplicated, block: B:88:? A[RETURN, SYNTHETIC] */
                        /* JADX WARN: Code duplicated, block: B:90:? A[RETURN, SYNTHETIC] */
                        /* JADX WARN: Code duplicated, block: B:91:? A[RETURN, SYNTHETIC] */
                        /* JADX WARN: Code duplicated, block: B:93:? A[RETURN, SYNTHETIC] */
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            Function1 function11;
                            Function1 function12;
                            Function1 function13;
                            Function1 function14;
                            int i9 = i8;
                            Object obj3 = null;
                            MutableState mutableState4 = mutableState3;
                            Function1 function15 = function2;
                            Function1 function16 = function4;
                            ComposeNavigator composeNavigator6 = composeNavigator;
                            AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj2;
                            switch (i9) {
                                case 0:
                                    NavDestination navDestination = ((NavBackStackEntry) animatedContentTransitionScope.getF4003a()).f18113c;
                                    navDestination.getClass();
                                    ComposeNavigator.Destination destination = (ComposeNavigator.Destination) navDestination;
                                    if (((Boolean) ((SnapshotMutableStateImpl) composeNavigator6.f18233c).getF10755b()).booleanValue() || ((Boolean) mutableState4.getF10755b()).booleanValue()) {
                                        NavDestination.g.getClass();
                                        for (NavDestination navDestination2 : NavDestination.Companion.b(destination)) {
                                            ExitTransition exitTransition = (!(navDestination2 instanceof ComposeNavigator.Destination) || (function11 = ((ComposeNavigator.Destination) navDestination2).l) == null) ? null : (ExitTransition) function11.invoke(animatedContentTransitionScope);
                                            if (exitTransition != null) {
                                                obj3 = exitTransition;
                                                if (obj3 == null) {
                                                    return (ExitTransition) function16.invoke(animatedContentTransitionScope);
                                                }
                                                return obj3;
                                            }
                                        }
                                        if (obj3 == null) {
                                            return (ExitTransition) function16.invoke(animatedContentTransitionScope);
                                        }
                                        return obj3;
                                    }
                                    NavDestination.g.getClass();
                                    for (NavDestination navDestination3 : NavDestination.Companion.b(destination)) {
                                        ExitTransition exitTransition2 = (!(navDestination3 instanceof ComposeNavigator.Destination) || (function12 = ((ComposeNavigator.Destination) navDestination3).f18236j) == null) ? null : (ExitTransition) function12.invoke(animatedContentTransitionScope);
                                        if (exitTransition2 != null) {
                                            obj3 = exitTransition2;
                                            if (obj3 == null) {
                                                return (ExitTransition) function15.invoke(animatedContentTransitionScope);
                                            }
                                            return obj3;
                                        }
                                    }
                                    if (obj3 == null) {
                                        return (ExitTransition) function15.invoke(animatedContentTransitionScope);
                                    }
                                    return obj3;
                                default:
                                    NavDestination navDestination4 = ((NavBackStackEntry) animatedContentTransitionScope.getF4004b()).f18113c;
                                    navDestination4.getClass();
                                    ComposeNavigator.Destination destination2 = (ComposeNavigator.Destination) navDestination4;
                                    if (((Boolean) ((SnapshotMutableStateImpl) composeNavigator6.f18233c).getF10755b()).booleanValue() || ((Boolean) mutableState4.getF10755b()).booleanValue()) {
                                        NavDestination.g.getClass();
                                        for (NavDestination navDestination5 : NavDestination.Companion.b(destination2)) {
                                            EnterTransition enterTransition = (!(navDestination5 instanceof ComposeNavigator.Destination) || (function13 = ((ComposeNavigator.Destination) navDestination5).f18237k) == null) ? null : (EnterTransition) function13.invoke(animatedContentTransitionScope);
                                            if (enterTransition != null) {
                                                obj3 = enterTransition;
                                                if (obj3 == null) {
                                                    return (EnterTransition) function16.invoke(animatedContentTransitionScope);
                                                }
                                                return obj3;
                                            }
                                        }
                                        if (obj3 == null) {
                                            return (EnterTransition) function16.invoke(animatedContentTransitionScope);
                                        }
                                        return obj3;
                                    }
                                    NavDestination.g.getClass();
                                    for (NavDestination navDestination6 : NavDestination.Companion.b(destination2)) {
                                        EnterTransition enterTransition2 = (!(navDestination6 instanceof ComposeNavigator.Destination) || (function14 = ((ComposeNavigator.Destination) navDestination6).f18235i) == null) ? null : (EnterTransition) function14.invoke(animatedContentTransitionScope);
                                        if (enterTransition2 != null) {
                                            obj3 = enterTransition2;
                                            if (obj3 == null) {
                                                return (EnterTransition) function15.invoke(animatedContentTransitionScope);
                                            }
                                            return obj3;
                                        }
                                    }
                                    if (obj3 == null) {
                                        return (EnterTransition) function15.invoke(animatedContentTransitionScope);
                                    }
                                    return obj3;
                            }
                        }
                    };
                    gapComposerH.q(function10);
                    objX8 = function10;
                }
                Function1 function11 = (Function1) objX8;
                boolean z4 = (234881024 & i3) == 67108864 ? z2 : z;
                Object objX9 = gapComposerH.x();
                if (z4 || objX9 == composer$Companion$Empty$1) {
                    objX9 = new k0(function5, 20);
                    gapComposerH.q(objX9);
                }
                Function1 function12 = (Function1) objX9;
                Boolean bool = Boolean.TRUE;
                boolean zY4 = gapComposerH.y(composeNavigator);
                Object objX10 = gapComposerH.x();
                if (zY4 || objX10 == composer$Companion$Empty$1) {
                    objX10 = new k60(state, composeNavigator, 26);
                    gapComposerH.q(objX10);
                }
                EffectsKt.c(bool, (Function1) objX10, gapComposerH);
                Object objX11 = gapComposerH.x();
                if (objX11 == composer$Companion$Empty$1) {
                    objX11 = new SeekableTransitionState(navBackStackEntry);
                    gapComposerH.q(objX11);
                }
                final SeekableTransitionState seekableTransitionState = (SeekableTransitionState) objX11;
                Transition transitionE = TransitionKt.e(seekableTransitionState, "entry", gapComposerH, SeekableTransitionState.t | 48, 0);
                if (((Boolean) mutableState3.getF10755b()).booleanValue()) {
                    gapComposerH.L(-1795016672);
                    Float fValueOf = Float.valueOf(mutableFloatState.a());
                    boolean zK2 = gapComposerH.K(mutableState) | gapComposerH.y(seekableTransitionState);
                    Object objX12 = gapComposerH.x();
                    if (zK2 || objX12 == composer$Companion$Empty$1) {
                        objX12 = new NavHostKt$NavHost$28$1(seekableTransitionState, mutableState, mutableFloatState, null);
                        gapComposerH.q(objX12);
                    }
                    EffectsKt.e(gapComposerH, fValueOf, (Function2) objX12);
                    gapComposerH.Z(false);
                    dialogNavigator = null;
                } else {
                    state = state;
                    gapComposerH.L(-1794598265);
                    boolean zY5 = gapComposerH.y(seekableTransitionState) | gapComposerH.y(navBackStackEntry) | gapComposerH.K(transitionE);
                    Object objX13 = gapComposerH.x();
                    if (zY5 || objX13 == composer$Companion$Empty$1) {
                        dialogNavigator = null;
                        objX13 = new NavHostKt$NavHost$29$1(seekableTransitionState, navBackStackEntry, transitionE, null);
                        gapComposerH.q(objX13);
                    } else {
                        dialogNavigator = null;
                    }
                    EffectsKt.e(gapComposerH, navBackStackEntry, (Function2) objX13);
                    gapComposerH.Z(false);
                }
                boolean zY6 = gapComposerH.y(mutableObjectFloatMap) | gapComposerH.y(composeNavigator) | gapComposerH.K(function9) | gapComposerH.K(function11) | gapComposerH.K(function12);
                Object objX14 = gapComposerH.x();
                if (zY6 || objX14 == composer$Companion$Empty$1) {
                    ComposeNavigator composeNavigator6 = composeNavigator;
                    objX14 = new nk(mutableObjectFloatMap, composeNavigator6, function9, function11, function12, state, mutableState3);
                    composeNavigator2 = composeNavigator6;
                    mutableState2 = mutableState3;
                    gapComposerH.q(objX14);
                } else {
                    composeNavigator2 = composeNavigator;
                    mutableState2 = mutableState3;
                }
                Function1 function13 = (Function1) objX14;
                Object objX15 = gapComposerH.x();
                if (objX15 == composer$Companion$Empty$1) {
                    objX15 = new ag0(14);
                    gapComposerH.q(objX15);
                }
                final MutableState mutableState4 = mutableState2;
                final State state2 = state;
                AnimatedContentKt.a(transitionE, modifier3, function13, alignment, (Function1) objX15, ComposableLambdaKt.b(820763100, new Function4<AnimatedContentScope, NavBackStackEntry, Composer, Integer, Unit>() { // from class: androidx.navigation.compose.NavHostKt$NavHost$32
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj2, Object obj3, Object obj4, Object obj5) {
                        Object objPrevious;
                        final AnimatedContentScope animatedContentScope = (AnimatedContentScope) obj2;
                        final NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) obj3;
                        Composer composer2 = (Composer) obj4;
                        ((Number) obj5).intValue();
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        boolean zC = Intrinsics.c(((SnapshotMutableStateImpl) seekableTransitionState.f3922c).getF10755b(), navBackStackEntry);
                        if (!((Boolean) mutableState4.getF10755b()).booleanValue() && !zC) {
                            List list = (List) state2.getF10755b();
                            ListIterator listIterator = list.listIterator(list.size());
                            do {
                                if (!listIterator.hasPrevious()) {
                                    objPrevious = null;
                                    break;
                                }
                                objPrevious = listIterator.previous();
                            } while (!Intrinsics.c(navBackStackEntry2, (NavBackStackEntry) objPrevious));
                            navBackStackEntry2 = (NavBackStackEntry) objPrevious;
                        }
                        if (navBackStackEntry2 == null) {
                            composer2.L(105930796);
                        } else {
                            composer2.L(-1520603531);
                            NavBackStackEntryProviderKt.a(navBackStackEntry2, saveableStateHolderA, ComposableLambdaKt.b(-1263531443, new Function2<Composer, Integer, Unit>() { // from class: androidx.navigation.compose.NavHostKt$NavHost$32.1
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj6, Object obj7) {
                                    Composer composer3 = (Composer) obj6;
                                    if ((((Number) obj7).intValue() & 3) == 2 && composer3.i()) {
                                        composer3.D();
                                    } else {
                                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                        NavBackStackEntry navBackStackEntry3 = navBackStackEntry2;
                                        NavDestination navDestination = navBackStackEntry3.f18113c;
                                        navDestination.getClass();
                                        ((ComposeNavigator.Destination) navDestination).f18234h.g(animatedContentScope, navBackStackEntry3, composer3, 0);
                                    }
                                    return Unit.f71739a;
                                }
                            }, composer2), composer2, KyberEngine.KyberPolyBytes);
                        }
                        composer2.F();
                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposerH, ((i3 >> 3) & 112) | 221184 | (i3 & 7168));
                modifier2 = modifier3;
                gapComposer = gapComposerH;
                Object objA = transitionE.f3988a.a();
                Object f10755b = ((SnapshotMutableStateImpl) transitionE.d).getF10755b();
                boolean zK3 = gapComposer.K(transitionE) | gapComposer.y(navHostController) | gapComposer.y(navBackStackEntry) | gapComposer.y(composeNavigator2) | gapComposer.y(mutableObjectFloatMap);
                Object objX16 = gapComposer.x();
                if (zK3 || objX16 == composer$Companion$Empty$1) {
                    ComposeNavigator composeNavigator7 = composeNavigator2;
                    obj = f10755b;
                    NavHostKt$NavHost$33$1 navHostKt$NavHost$33$1 = new NavHostKt$NavHost$33$1(transitionE, navHostController, navBackStackEntry, mutableObjectFloatMap, state2, composeNavigator7, null);
                    gapComposer.q(navHostKt$NavHost$33$1);
                    objX16 = navHostKt$NavHost$33$1;
                } else {
                    obj = f10755b;
                }
                EffectsKt.g(objA, obj, (Function2) objX16, gapComposer);
                gapComposer.Z(false);
            } else {
                gapComposer = gapComposerH;
                modifier2 = modifier3;
                navigatorProvider2 = navigatorProvider2;
                dialogNavigator = null;
                gapComposer.L(-1789446406);
                gapComposer.Z(false);
            }
            Navigator navigatorC2 = navigatorProvider2.c("dialog");
            DialogNavigator dialogNavigator2 = navigatorC2 instanceof DialogNavigator ? (DialogNavigator) navigatorC2 : dialogNavigator;
            if (dialogNavigator2 == null) {
                RecomposeScopeImpl recomposeScopeImplB1 = gapComposer.b0();
                if (recomposeScopeImplB1 != null) {
                    final int i9 = 0;
                    final Modifier modifier4 = modifier2;
                    recomposeScopeImplB1.d = new Function2() { // from class: kg0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj2, Object obj3) {
                            switch (i9) {
                                case 0:
                                    ((Integer) obj3).getClass();
                                    NavHostKt.a(navHostController, navGraph, modifier4, alignment, function1, function2, function3, function4, function5, (Composer) obj2, RecomposeScopeImplKt.a(i2 | 1));
                                    break;
                                case 1:
                                    ((Integer) obj3).getClass();
                                    NavHostKt.a(navHostController, navGraph, modifier4, alignment, function1, function2, function3, function4, function5, (Composer) obj2, RecomposeScopeImplKt.a(i2 | 1));
                                    break;
                                default:
                                    ((Integer) obj3).getClass();
                                    NavHostKt.a(navHostController, navGraph, modifier4, alignment, function1, function2, function3, function4, function5, (Composer) obj2, RecomposeScopeImplKt.a(i2 | 1));
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    return;
                }
                return;
            }
            modifier3 = modifier2;
            DialogHostKt.a(dialogNavigator2, gapComposer, 0);
        }
        RecomposeScopeImpl recomposeScopeImplB2 = gapComposer.b0();
        if (recomposeScopeImplB2 != null) {
            final int i10 = 1;
            recomposeScopeImplB2.d = new Function2() { // from class: kg0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    switch (i10) {
                        case 0:
                            ((Integer) obj3).getClass();
                            NavHostKt.a(navHostController, navGraph, modifier3, alignment, function1, function2, function3, function4, function5, (Composer) obj2, RecomposeScopeImplKt.a(i2 | 1));
                            break;
                        case 1:
                            ((Integer) obj3).getClass();
                            NavHostKt.a(navHostController, navGraph, modifier3, alignment, function1, function2, function3, function4, function5, (Composer) obj2, RecomposeScopeImplKt.a(i2 | 1));
                            break;
                        default:
                            ((Integer) obj3).getClass();
                            NavHostKt.a(navHostController, navGraph, modifier3, alignment, function1, function2, function3, function4, function5, (Composer) obj2, RecomposeScopeImplKt.a(i2 | 1));
                            break;
                    }
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0142  */
    /* JADX WARN: Code duplicated, block: B:103:0x0151  */
    /* JADX WARN: Code duplicated, block: B:105:0x0157  */
    /* JADX WARN: Code duplicated, block: B:106:0x0164  */
    /* JADX WARN: Code duplicated, block: B:108:0x016a  */
    /* JADX WARN: Code duplicated, block: B:110:0x0170  */
    /* JADX WARN: Code duplicated, block: B:112:0x0176  */
    /* JADX WARN: Code duplicated, block: B:114:0x0183  */
    /* JADX WARN: Code duplicated, block: B:117:0x0188  */
    /* JADX WARN: Code duplicated, block: B:120:0x018f  */
    /* JADX WARN: Code duplicated, block: B:124:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:125:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:128:0x01bf A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:129:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:133:0x0204  */
    /* JADX WARN: Code duplicated, block: B:135:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x007c  */
    /* JADX WARN: Code duplicated, block: B:45:0x0080  */
    /* JADX WARN: Code duplicated, block: B:47:0x0083  */
    /* JADX WARN: Code duplicated, block: B:49:0x008b  */
    /* JADX WARN: Code duplicated, block: B:50:0x008e  */
    /* JADX WARN: Code duplicated, block: B:54:0x0098  */
    /* JADX WARN: Code duplicated, block: B:56:0x009c  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:73:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:77:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:80:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:86:0x0107  */
    /* JADX WARN: Code duplicated, block: B:88:0x0116  */
    /* JADX WARN: Code duplicated, block: B:98:0x013a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:99:0x013c  */
    public static final void b(final NavHostController navHostController, final Object obj, Modifier modifier, Alignment alignment, Map map, Function1 function1, Function1 function2, Function1 function3, Function1 function4, final Function1 function5, Composer composer, final int i2, final int i3) {
        int i4;
        int i5;
        Function1 function6;
        int i6;
        Function1 function7;
        Function1 function8;
        char c2;
        int i7;
        Modifier modifier2;
        int i8;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Modifier dTFunctionNameModifier;
        Alignment alignment2;
        Function1 function9;
        Function1 function10;
        Function1 function11;
        Function1 function12;
        int i9;
        Function1 function13;
        Map map2;
        Function1 function14;
        Modifier modifier3;
        Object objX;
        Object objX2;
        boolean z;
        boolean z2;
        Object objX3;
        final Function1 function15;
        final Function1 function16;
        final Function1 function17;
        final Alignment alignment3;
        final Function1 function18;
        final Map map3;
        final Modifier modifier4;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "NavHost");
        }
        GapComposer gapComposerH = composer.h(-1476019057);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.y(navHostController) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(obj) ? 32 : 16;
        }
        int i10 = i3 & 4;
        if (i10 != 0) {
            i4 |= KyberEngine.KyberPolyBytes;
        } else if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(modifierE) ? 256 : 128;
        }
        int i11 = 224256 | i4;
        int i12 = i3 & 64;
        if (i12 == 0) {
            if ((1572864 & i2) == 0) {
                i11 |= gapComposerH.y(function1) ? 1048576 : 524288;
            }
            i5 = i3 & 128;
            if (i5 != 0) {
                if ((12582912 & i2) == 0) {
                    function6 = function2;
                    if (gapComposerH.y(function6)) {
                        i6 = 8388608;
                    } else {
                        i6 = 4194304;
                    }
                    i11 |= i6;
                }
                if ((i2 & 100663296) == 0) {
                    if ((i3 & 256) == 0) {
                        function7 = function3;
                        int i13 = gapComposerH.y(function7) ? 67108864 : 33554432;
                        i11 |= i13;
                    } else {
                        function7 = function3;
                    }
                    i11 |= i13;
                } else {
                    function7 = function3;
                }
                if ((i2 & 805306368) == 0) {
                    if ((i3 & 512) == 0) {
                        function8 = function4;
                        int i14 = gapComposerH.y(function8) ? PKIFailureInfo.duplicateCertReq : 268435456;
                        i11 |= i14;
                    } else {
                        function8 = function4;
                    }
                    i11 |= i14;
                } else {
                    function8 = function4;
                }
                if (gapComposerH.y(function5)) {
                    c2 = ' ';
                } else {
                    c2 = 16;
                }
                i7 = 6 | c2;
                modifier2 = modifierE;
                if ((i11 & 306783379) != 306783378 && (i7 & 19) == 18 && gapComposerH.i()) {
                    gapComposerH.D();
                    modifier4 = modifier2;
                    alignment3 = alignment;
                    function15 = function7;
                    function18 = function6;
                    map3 = map;
                    function17 = function8;
                    function16 = function1;
                } else {
                    gapComposerH.y0();
                    i8 = i2 & 1;
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i8 != 0 || gapComposerH.h0()) {
                        if (i10 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("NavHost");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        Alignment.f8582a.getClass();
                        alignment2 = Alignment.Companion.f8584b;
                        Map mapC = MapsKt.c();
                        if (i12 != 0) {
                            objX2 = gapComposerH.x();
                            if (objX2 == composer$Companion$Empty$1) {
                                objX2 = new ag0(12);
                                gapComposerH.q(objX2);
                            }
                            function9 = (Function1) objX2;
                        } else {
                            dTFunctionNameModifier = dTFunctionNameModifier;
                            function9 = function1;
                        }
                        if (i5 != 0) {
                            objX = gapComposerH.x();
                            if (objX == composer$Companion$Empty$1) {
                                objX = new ag0(13);
                                gapComposerH.q(objX);
                            }
                            function10 = (Function1) objX;
                        } else {
                            function10 = function6;
                        }
                        if ((i3 & 256) != 0) {
                            i11 &= -234881025;
                            function7 = function9;
                        }
                        if ((i3 & 512) != 0) {
                            i11 &= -1879048193;
                            function8 = function10;
                        }
                        Function1 function19 = function8;
                        function11 = function7;
                        function12 = function10;
                        i9 = i11;
                        function13 = function19;
                        map2 = mapC;
                        function14 = function9;
                        modifier3 = dTFunctionNameModifier;
                    } else {
                        gapComposerH.D();
                        if ((i3 & 256) != 0) {
                            i11 &= -234881025;
                        }
                        if ((i3 & 512) != 0) {
                            i11 &= -1879048193;
                        }
                        modifier3 = modifier2;
                        alignment2 = alignment;
                        function14 = function1;
                        i9 = i11;
                        function13 = function8;
                        function11 = function7;
                        function12 = function6;
                        map2 = map;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    boolean zK = gapComposerH.K(null) | gapComposerH.K(obj);
                    Modifier modifier5 = modifier3;
                    if ((i7 & 112) == 32) {
                        z = true;
                    } else {
                        z = false;
                    }
                    z2 = zK | z;
                    objX3 = gapComposerH.x();
                    if (z2 || objX3 == composer$Companion$Empty$1) {
                        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navHostController.f18122b.t, obj, (KClass<?>) null, (Map<KType, NavType<?>>) map2);
                        function5.invoke(navGraphBuilder);
                        objX3 = navGraphBuilder.c();
                        gapComposerH.q(objX3);
                    }
                    NavGraph navGraph = (NavGraph) objX3;
                    int i15 = i9 & 8078;
                    int i16 = i9 >> 6;
                    int i17 = i15 | (57344 & i16) | (458752 & i16) | (3670016 & i16) | (i16 & 29360128) | 100663296;
                    Alignment alignment4 = alignment2;
                    a(navHostController, navGraph, modifier5, alignment4, function14, function12, function11, function13, null, gapComposerH, i17);
                    function15 = function11;
                    function16 = function14;
                    function17 = function13;
                    alignment3 = alignment4;
                    function18 = function12;
                    map3 = map2;
                    modifier4 = modifier5;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: jg0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj2, Object obj3) {
                            ((Integer) obj3).getClass();
                            NavHostKt.b(navHostController, obj, modifier4, alignment3, map3, function16, function18, function15, function17, function5, (Composer) obj2, RecomposeScopeImplKt.a(i2 | 1), i3);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i11 |= 12582912;
            function6 = function2;
            if ((i2 & 100663296) == 0) {
                if ((i3 & 256) == 0) {
                    function7 = function3;
                    if (gapComposerH.y(function7)) {
                    }
                    i11 |= i13;
                } else {
                    function7 = function3;
                }
                i11 |= i13;
            } else {
                function7 = function3;
            }
            if ((i2 & 805306368) == 0) {
                if ((i3 & 512) == 0) {
                    function8 = function4;
                    if (gapComposerH.y(function8)) {
                    }
                    i11 |= i14;
                } else {
                    function8 = function4;
                }
                i11 |= i14;
            } else {
                function8 = function4;
            }
            if (gapComposerH.y(function5)) {
                c2 = ' ';
            } else {
                c2 = 16;
            }
            i7 = 6 | c2;
            modifier2 = modifierE;
            if ((i11 & 306783379) != 306783378) {
                gapComposerH.y0();
                i8 = i2 & 1;
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i8 != 0) {
                    if (i10 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("NavHost");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    Alignment.f8582a.getClass();
                    alignment2 = Alignment.Companion.f8584b;
                    Map mapC2 = MapsKt.c();
                    if (i12 != 0) {
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new ag0(12);
                            gapComposerH.q(objX2);
                        }
                        function9 = (Function1) objX2;
                    } else {
                        dTFunctionNameModifier = dTFunctionNameModifier;
                        function9 = function1;
                    }
                    if (i5 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new ag0(13);
                            gapComposerH.q(objX);
                        }
                        function10 = (Function1) objX;
                    } else {
                        function10 = function6;
                    }
                    if ((i3 & 256) != 0) {
                        i11 &= -234881025;
                        function7 = function9;
                    }
                    if ((i3 & 512) != 0) {
                        i11 &= -1879048193;
                        function8 = function10;
                    }
                    Function1 function110 = function8;
                    function11 = function7;
                    function12 = function10;
                    i9 = i11;
                    function13 = function110;
                    map2 = mapC2;
                    function14 = function9;
                    modifier3 = dTFunctionNameModifier;
                } else {
                    if (i10 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("NavHost");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    Alignment.f8582a.getClass();
                    alignment2 = Alignment.Companion.f8584b;
                    Map mapC3 = MapsKt.c();
                    if (i12 != 0) {
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new ag0(12);
                            gapComposerH.q(objX2);
                        }
                        function9 = (Function1) objX2;
                    } else {
                        dTFunctionNameModifier = dTFunctionNameModifier;
                        function9 = function1;
                    }
                    if (i5 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new ag0(13);
                            gapComposerH.q(objX);
                        }
                        function10 = (Function1) objX;
                    } else {
                        function10 = function6;
                    }
                    if ((i3 & 256) != 0) {
                        i11 &= -234881025;
                        function7 = function9;
                    }
                    if ((i3 & 512) != 0) {
                        i11 &= -1879048193;
                        function8 = function10;
                    }
                    Function1 function111 = function8;
                    function11 = function7;
                    function12 = function10;
                    i9 = i11;
                    function13 = function111;
                    map2 = mapC3;
                    function14 = function9;
                    modifier3 = dTFunctionNameModifier;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                boolean zK2 = gapComposerH.K(null) | gapComposerH.K(obj);
                Modifier modifier6 = modifier3;
                if ((i7 & 112) == 32) {
                    z = true;
                } else {
                    z = false;
                }
                z2 = zK2 | z;
                objX3 = gapComposerH.x();
                if (z2) {
                    NavGraphBuilder navGraphBuilder2 = new NavGraphBuilder(navHostController.f18122b.t, obj, (KClass<?>) null, (Map<KType, NavType<?>>) map2);
                    function5.invoke(navGraphBuilder2);
                    objX3 = navGraphBuilder2.c();
                    gapComposerH.q(objX3);
                } else {
                    NavGraphBuilder navGraphBuilder3 = new NavGraphBuilder(navHostController.f18122b.t, obj, (KClass<?>) null, (Map<KType, NavType<?>>) map2);
                    function5.invoke(navGraphBuilder3);
                    objX3 = navGraphBuilder3.c();
                    gapComposerH.q(objX3);
                }
                NavGraph navGraph2 = (NavGraph) objX3;
                int i18 = i9 & 8078;
                int i19 = i9 >> 6;
                int i110 = i18 | (57344 & i19) | (458752 & i19) | (3670016 & i19) | (i19 & 29360128) | 100663296;
                Alignment alignment5 = alignment2;
                a(navHostController, navGraph2, modifier6, alignment5, function14, function12, function11, function13, null, gapComposerH, i110);
                function15 = function11;
                function16 = function14;
                function17 = function13;
                alignment3 = alignment5;
                function18 = function12;
                map3 = map2;
                modifier4 = modifier6;
            } else {
                gapComposerH.y0();
                i8 = i2 & 1;
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i8 != 0) {
                    if (i10 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("NavHost");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    Alignment.f8582a.getClass();
                    alignment2 = Alignment.Companion.f8584b;
                    Map mapC4 = MapsKt.c();
                    if (i12 != 0) {
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new ag0(12);
                            gapComposerH.q(objX2);
                        }
                        function9 = (Function1) objX2;
                    } else {
                        dTFunctionNameModifier = dTFunctionNameModifier;
                        function9 = function1;
                    }
                    if (i5 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new ag0(13);
                            gapComposerH.q(objX);
                        }
                        function10 = (Function1) objX;
                    } else {
                        function10 = function6;
                    }
                    if ((i3 & 256) != 0) {
                        i11 &= -234881025;
                        function7 = function9;
                    }
                    if ((i3 & 512) != 0) {
                        i11 &= -1879048193;
                        function8 = function10;
                    }
                    Function1 function112 = function8;
                    function11 = function7;
                    function12 = function10;
                    i9 = i11;
                    function13 = function112;
                    map2 = mapC4;
                    function14 = function9;
                    modifier3 = dTFunctionNameModifier;
                } else {
                    if (i10 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("NavHost");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    Alignment.f8582a.getClass();
                    alignment2 = Alignment.Companion.f8584b;
                    Map mapC5 = MapsKt.c();
                    if (i12 != 0) {
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new ag0(12);
                            gapComposerH.q(objX2);
                        }
                        function9 = (Function1) objX2;
                    } else {
                        dTFunctionNameModifier = dTFunctionNameModifier;
                        function9 = function1;
                    }
                    if (i5 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new ag0(13);
                            gapComposerH.q(objX);
                        }
                        function10 = (Function1) objX;
                    } else {
                        function10 = function6;
                    }
                    if ((i3 & 256) != 0) {
                        i11 &= -234881025;
                        function7 = function9;
                    }
                    if ((i3 & 512) != 0) {
                        i11 &= -1879048193;
                        function8 = function10;
                    }
                    Function1 function113 = function8;
                    function11 = function7;
                    function12 = function10;
                    i9 = i11;
                    function13 = function113;
                    map2 = mapC5;
                    function14 = function9;
                    modifier3 = dTFunctionNameModifier;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                boolean zK3 = gapComposerH.K(null) | gapComposerH.K(obj);
                Modifier modifier7 = modifier3;
                if ((i7 & 112) == 32) {
                    z = true;
                } else {
                    z = false;
                }
                z2 = zK3 | z;
                objX3 = gapComposerH.x();
                if (z2) {
                    NavGraphBuilder navGraphBuilder4 = new NavGraphBuilder(navHostController.f18122b.t, obj, (KClass<?>) null, (Map<KType, NavType<?>>) map2);
                    function5.invoke(navGraphBuilder4);
                    objX3 = navGraphBuilder4.c();
                    gapComposerH.q(objX3);
                } else {
                    NavGraphBuilder navGraphBuilder5 = new NavGraphBuilder(navHostController.f18122b.t, obj, (KClass<?>) null, (Map<KType, NavType<?>>) map2);
                    function5.invoke(navGraphBuilder5);
                    objX3 = navGraphBuilder5.c();
                    gapComposerH.q(objX3);
                }
                NavGraph navGraph3 = (NavGraph) objX3;
                int i111 = i9 & 8078;
                int i112 = i9 >> 6;
                int i113 = i111 | (57344 & i112) | (458752 & i112) | (3670016 & i112) | (i112 & 29360128) | 100663296;
                Alignment alignment6 = alignment2;
                a(navHostController, navGraph3, modifier7, alignment6, function14, function12, function11, function13, null, gapComposerH, i113);
                function15 = function11;
                function16 = function14;
                function17 = function13;
                alignment3 = alignment6;
                function18 = function12;
                map3 = map2;
                modifier4 = modifier7;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: jg0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        ((Integer) obj3).getClass();
                        NavHostKt.b(navHostController, obj, modifier4, alignment3, map3, function16, function18, function15, function17, function5, (Composer) obj2, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i11 = 1797120 | i4;
        i5 = i3 & 128;
        if (i5 != 0) {
            if ((12582912 & i2) == 0) {
                function6 = function2;
                if (gapComposerH.y(function6)) {
                    i6 = 8388608;
                } else {
                    i6 = 4194304;
                }
                i11 |= i6;
            }
            if ((i2 & 100663296) == 0) {
                if ((i3 & 256) == 0) {
                    function7 = function3;
                    if (gapComposerH.y(function7)) {
                    }
                    i11 |= i13;
                } else {
                    function7 = function3;
                }
                i11 |= i13;
            } else {
                function7 = function3;
            }
            if ((i2 & 805306368) == 0) {
                if ((i3 & 512) == 0) {
                    function8 = function4;
                    if (gapComposerH.y(function8)) {
                    }
                    i11 |= i14;
                } else {
                    function8 = function4;
                }
                i11 |= i14;
            } else {
                function8 = function4;
            }
            if (gapComposerH.y(function5)) {
                c2 = ' ';
            } else {
                c2 = 16;
            }
            i7 = 6 | c2;
            modifier2 = modifierE;
            if ((i11 & 306783379) != 306783378) {
                gapComposerH.y0();
                i8 = i2 & 1;
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i8 != 0) {
                    if (i10 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("NavHost");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    Alignment.f8582a.getClass();
                    alignment2 = Alignment.Companion.f8584b;
                    Map mapC6 = MapsKt.c();
                    if (i12 != 0) {
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new ag0(12);
                            gapComposerH.q(objX2);
                        }
                        function9 = (Function1) objX2;
                    } else {
                        dTFunctionNameModifier = dTFunctionNameModifier;
                        function9 = function1;
                    }
                    if (i5 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new ag0(13);
                            gapComposerH.q(objX);
                        }
                        function10 = (Function1) objX;
                    } else {
                        function10 = function6;
                    }
                    if ((i3 & 256) != 0) {
                        i11 &= -234881025;
                        function7 = function9;
                    }
                    if ((i3 & 512) != 0) {
                        i11 &= -1879048193;
                        function8 = function10;
                    }
                    Function1 function114 = function8;
                    function11 = function7;
                    function12 = function10;
                    i9 = i11;
                    function13 = function114;
                    map2 = mapC6;
                    function14 = function9;
                    modifier3 = dTFunctionNameModifier;
                } else {
                    if (i10 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("NavHost");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    Alignment.f8582a.getClass();
                    alignment2 = Alignment.Companion.f8584b;
                    Map mapC7 = MapsKt.c();
                    if (i12 != 0) {
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new ag0(12);
                            gapComposerH.q(objX2);
                        }
                        function9 = (Function1) objX2;
                    } else {
                        dTFunctionNameModifier = dTFunctionNameModifier;
                        function9 = function1;
                    }
                    if (i5 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new ag0(13);
                            gapComposerH.q(objX);
                        }
                        function10 = (Function1) objX;
                    } else {
                        function10 = function6;
                    }
                    if ((i3 & 256) != 0) {
                        i11 &= -234881025;
                        function7 = function9;
                    }
                    if ((i3 & 512) != 0) {
                        i11 &= -1879048193;
                        function8 = function10;
                    }
                    Function1 function115 = function8;
                    function11 = function7;
                    function12 = function10;
                    i9 = i11;
                    function13 = function115;
                    map2 = mapC7;
                    function14 = function9;
                    modifier3 = dTFunctionNameModifier;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                boolean zK4 = gapComposerH.K(null) | gapComposerH.K(obj);
                Modifier modifier8 = modifier3;
                if ((i7 & 112) == 32) {
                    z = true;
                } else {
                    z = false;
                }
                z2 = zK4 | z;
                objX3 = gapComposerH.x();
                if (z2) {
                    NavGraphBuilder navGraphBuilder6 = new NavGraphBuilder(navHostController.f18122b.t, obj, (KClass<?>) null, (Map<KType, NavType<?>>) map2);
                    function5.invoke(navGraphBuilder6);
                    objX3 = navGraphBuilder6.c();
                    gapComposerH.q(objX3);
                } else {
                    NavGraphBuilder navGraphBuilder7 = new NavGraphBuilder(navHostController.f18122b.t, obj, (KClass<?>) null, (Map<KType, NavType<?>>) map2);
                    function5.invoke(navGraphBuilder7);
                    objX3 = navGraphBuilder7.c();
                    gapComposerH.q(objX3);
                }
                NavGraph navGraph4 = (NavGraph) objX3;
                int i114 = i9 & 8078;
                int i115 = i9 >> 6;
                int i116 = i114 | (57344 & i115) | (458752 & i115) | (3670016 & i115) | (i115 & 29360128) | 100663296;
                Alignment alignment7 = alignment2;
                a(navHostController, navGraph4, modifier8, alignment7, function14, function12, function11, function13, null, gapComposerH, i116);
                function15 = function11;
                function16 = function14;
                function17 = function13;
                alignment3 = alignment7;
                function18 = function12;
                map3 = map2;
                modifier4 = modifier8;
            } else {
                gapComposerH.y0();
                i8 = i2 & 1;
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i8 != 0) {
                    if (i10 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("NavHost");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    Alignment.f8582a.getClass();
                    alignment2 = Alignment.Companion.f8584b;
                    Map mapC8 = MapsKt.c();
                    if (i12 != 0) {
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new ag0(12);
                            gapComposerH.q(objX2);
                        }
                        function9 = (Function1) objX2;
                    } else {
                        dTFunctionNameModifier = dTFunctionNameModifier;
                        function9 = function1;
                    }
                    if (i5 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new ag0(13);
                            gapComposerH.q(objX);
                        }
                        function10 = (Function1) objX;
                    } else {
                        function10 = function6;
                    }
                    if ((i3 & 256) != 0) {
                        i11 &= -234881025;
                        function7 = function9;
                    }
                    if ((i3 & 512) != 0) {
                        i11 &= -1879048193;
                        function8 = function10;
                    }
                    Function1 function116 = function8;
                    function11 = function7;
                    function12 = function10;
                    i9 = i11;
                    function13 = function116;
                    map2 = mapC8;
                    function14 = function9;
                    modifier3 = dTFunctionNameModifier;
                } else {
                    if (i10 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("NavHost");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    Alignment.f8582a.getClass();
                    alignment2 = Alignment.Companion.f8584b;
                    Map mapC9 = MapsKt.c();
                    if (i12 != 0) {
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new ag0(12);
                            gapComposerH.q(objX2);
                        }
                        function9 = (Function1) objX2;
                    } else {
                        dTFunctionNameModifier = dTFunctionNameModifier;
                        function9 = function1;
                    }
                    if (i5 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new ag0(13);
                            gapComposerH.q(objX);
                        }
                        function10 = (Function1) objX;
                    } else {
                        function10 = function6;
                    }
                    if ((i3 & 256) != 0) {
                        i11 &= -234881025;
                        function7 = function9;
                    }
                    if ((i3 & 512) != 0) {
                        i11 &= -1879048193;
                        function8 = function10;
                    }
                    Function1 function117 = function8;
                    function11 = function7;
                    function12 = function10;
                    i9 = i11;
                    function13 = function117;
                    map2 = mapC9;
                    function14 = function9;
                    modifier3 = dTFunctionNameModifier;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                boolean zK5 = gapComposerH.K(null) | gapComposerH.K(obj);
                Modifier modifier9 = modifier3;
                if ((i7 & 112) == 32) {
                    z = true;
                } else {
                    z = false;
                }
                z2 = zK5 | z;
                objX3 = gapComposerH.x();
                if (z2) {
                    NavGraphBuilder navGraphBuilder8 = new NavGraphBuilder(navHostController.f18122b.t, obj, (KClass<?>) null, (Map<KType, NavType<?>>) map2);
                    function5.invoke(navGraphBuilder8);
                    objX3 = navGraphBuilder8.c();
                    gapComposerH.q(objX3);
                } else {
                    NavGraphBuilder navGraphBuilder9 = new NavGraphBuilder(navHostController.f18122b.t, obj, (KClass<?>) null, (Map<KType, NavType<?>>) map2);
                    function5.invoke(navGraphBuilder9);
                    objX3 = navGraphBuilder9.c();
                    gapComposerH.q(objX3);
                }
                NavGraph navGraph5 = (NavGraph) objX3;
                int i117 = i9 & 8078;
                int i118 = i9 >> 6;
                int i119 = i117 | (57344 & i118) | (458752 & i118) | (3670016 & i118) | (i118 & 29360128) | 100663296;
                Alignment alignment8 = alignment2;
                a(navHostController, navGraph5, modifier9, alignment8, function14, function12, function11, function13, null, gapComposerH, i119);
                function15 = function11;
                function16 = function14;
                function17 = function13;
                alignment3 = alignment8;
                function18 = function12;
                map3 = map2;
                modifier4 = modifier9;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: jg0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        ((Integer) obj3).getClass();
                        NavHostKt.b(navHostController, obj, modifier4, alignment3, map3, function16, function18, function15, function17, function5, (Composer) obj2, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i11 |= 12582912;
        function6 = function2;
        if ((i2 & 100663296) == 0) {
            if ((i3 & 256) == 0) {
                function7 = function3;
                if (gapComposerH.y(function7)) {
                }
                i11 |= i13;
            } else {
                function7 = function3;
            }
            i11 |= i13;
        } else {
            function7 = function3;
        }
        if ((i2 & 805306368) == 0) {
            if ((i3 & 512) == 0) {
                function8 = function4;
                if (gapComposerH.y(function8)) {
                }
                i11 |= i14;
            } else {
                function8 = function4;
            }
            i11 |= i14;
        } else {
            function8 = function4;
        }
        if (gapComposerH.y(function5)) {
            c2 = ' ';
        } else {
            c2 = 16;
        }
        i7 = 6 | c2;
        modifier2 = modifierE;
        if ((i11 & 306783379) != 306783378) {
            gapComposerH.y0();
            i8 = i2 & 1;
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i8 != 0) {
                if (i10 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("NavHost");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                Alignment.f8582a.getClass();
                alignment2 = Alignment.Companion.f8584b;
                Map mapC10 = MapsKt.c();
                if (i12 != 0) {
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new ag0(12);
                        gapComposerH.q(objX2);
                    }
                    function9 = (Function1) objX2;
                } else {
                    dTFunctionNameModifier = dTFunctionNameModifier;
                    function9 = function1;
                }
                if (i5 != 0) {
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new ag0(13);
                        gapComposerH.q(objX);
                    }
                    function10 = (Function1) objX;
                } else {
                    function10 = function6;
                }
                if ((i3 & 256) != 0) {
                    i11 &= -234881025;
                    function7 = function9;
                }
                if ((i3 & 512) != 0) {
                    i11 &= -1879048193;
                    function8 = function10;
                }
                Function1 function118 = function8;
                function11 = function7;
                function12 = function10;
                i9 = i11;
                function13 = function118;
                map2 = mapC10;
                function14 = function9;
                modifier3 = dTFunctionNameModifier;
            } else {
                if (i10 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("NavHost");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                Alignment.f8582a.getClass();
                alignment2 = Alignment.Companion.f8584b;
                Map mapC11 = MapsKt.c();
                if (i12 != 0) {
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new ag0(12);
                        gapComposerH.q(objX2);
                    }
                    function9 = (Function1) objX2;
                } else {
                    dTFunctionNameModifier = dTFunctionNameModifier;
                    function9 = function1;
                }
                if (i5 != 0) {
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new ag0(13);
                        gapComposerH.q(objX);
                    }
                    function10 = (Function1) objX;
                } else {
                    function10 = function6;
                }
                if ((i3 & 256) != 0) {
                    i11 &= -234881025;
                    function7 = function9;
                }
                if ((i3 & 512) != 0) {
                    i11 &= -1879048193;
                    function8 = function10;
                }
                Function1 function119 = function8;
                function11 = function7;
                function12 = function10;
                i9 = i11;
                function13 = function119;
                map2 = mapC11;
                function14 = function9;
                modifier3 = dTFunctionNameModifier;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey6 = ComposerKt.f7940a;
            boolean zK6 = gapComposerH.K(null) | gapComposerH.K(obj);
            Modifier modifier10 = modifier3;
            if ((i7 & 112) == 32) {
                z = true;
            } else {
                z = false;
            }
            z2 = zK6 | z;
            objX3 = gapComposerH.x();
            if (z2) {
                NavGraphBuilder navGraphBuilder10 = new NavGraphBuilder(navHostController.f18122b.t, obj, (KClass<?>) null, (Map<KType, NavType<?>>) map2);
                function5.invoke(navGraphBuilder10);
                objX3 = navGraphBuilder10.c();
                gapComposerH.q(objX3);
            } else {
                NavGraphBuilder navGraphBuilder11 = new NavGraphBuilder(navHostController.f18122b.t, obj, (KClass<?>) null, (Map<KType, NavType<?>>) map2);
                function5.invoke(navGraphBuilder11);
                objX3 = navGraphBuilder11.c();
                gapComposerH.q(objX3);
            }
            NavGraph navGraph6 = (NavGraph) objX3;
            int i1110 = i9 & 8078;
            int i1111 = i9 >> 6;
            int i1112 = i1110 | (57344 & i1111) | (458752 & i1111) | (3670016 & i1111) | (i1111 & 29360128) | 100663296;
            Alignment alignment9 = alignment2;
            a(navHostController, navGraph6, modifier10, alignment9, function14, function12, function11, function13, null, gapComposerH, i1112);
            function15 = function11;
            function16 = function14;
            function17 = function13;
            alignment3 = alignment9;
            function18 = function12;
            map3 = map2;
            modifier4 = modifier10;
        } else {
            gapComposerH.y0();
            i8 = i2 & 1;
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i8 != 0) {
                if (i10 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("NavHost");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                Alignment.f8582a.getClass();
                alignment2 = Alignment.Companion.f8584b;
                Map mapC12 = MapsKt.c();
                if (i12 != 0) {
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new ag0(12);
                        gapComposerH.q(objX2);
                    }
                    function9 = (Function1) objX2;
                } else {
                    dTFunctionNameModifier = dTFunctionNameModifier;
                    function9 = function1;
                }
                if (i5 != 0) {
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new ag0(13);
                        gapComposerH.q(objX);
                    }
                    function10 = (Function1) objX;
                } else {
                    function10 = function6;
                }
                if ((i3 & 256) != 0) {
                    i11 &= -234881025;
                    function7 = function9;
                }
                if ((i3 & 512) != 0) {
                    i11 &= -1879048193;
                    function8 = function10;
                }
                Function1 function1110 = function8;
                function11 = function7;
                function12 = function10;
                i9 = i11;
                function13 = function1110;
                map2 = mapC12;
                function14 = function9;
                modifier3 = dTFunctionNameModifier;
            } else {
                if (i10 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("NavHost");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                Alignment.f8582a.getClass();
                alignment2 = Alignment.Companion.f8584b;
                Map mapC13 = MapsKt.c();
                if (i12 != 0) {
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new ag0(12);
                        gapComposerH.q(objX2);
                    }
                    function9 = (Function1) objX2;
                } else {
                    dTFunctionNameModifier = dTFunctionNameModifier;
                    function9 = function1;
                }
                if (i5 != 0) {
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new ag0(13);
                        gapComposerH.q(objX);
                    }
                    function10 = (Function1) objX;
                } else {
                    function10 = function6;
                }
                if ((i3 & 256) != 0) {
                    i11 &= -234881025;
                    function7 = function9;
                }
                if ((i3 & 512) != 0) {
                    i11 &= -1879048193;
                    function8 = function10;
                }
                Function1 function1111 = function8;
                function11 = function7;
                function12 = function10;
                i9 = i11;
                function13 = function1111;
                map2 = mapC13;
                function14 = function9;
                modifier3 = dTFunctionNameModifier;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey7 = ComposerKt.f7940a;
            boolean zK7 = gapComposerH.K(null) | gapComposerH.K(obj);
            Modifier modifier11 = modifier3;
            if ((i7 & 112) == 32) {
                z = true;
            } else {
                z = false;
            }
            z2 = zK7 | z;
            objX3 = gapComposerH.x();
            if (z2) {
                NavGraphBuilder navGraphBuilder12 = new NavGraphBuilder(navHostController.f18122b.t, obj, (KClass<?>) null, (Map<KType, NavType<?>>) map2);
                function5.invoke(navGraphBuilder12);
                objX3 = navGraphBuilder12.c();
                gapComposerH.q(objX3);
            } else {
                NavGraphBuilder navGraphBuilder13 = new NavGraphBuilder(navHostController.f18122b.t, obj, (KClass<?>) null, (Map<KType, NavType<?>>) map2);
                function5.invoke(navGraphBuilder13);
                objX3 = navGraphBuilder13.c();
                gapComposerH.q(objX3);
            }
            NavGraph navGraph7 = (NavGraph) objX3;
            int i1113 = i9 & 8078;
            int i1114 = i9 >> 6;
            int i1115 = i1113 | (57344 & i1114) | (458752 & i1114) | (3670016 & i1114) | (i1114 & 29360128) | 100663296;
            Alignment alignment10 = alignment2;
            a(navHostController, navGraph7, modifier11, alignment10, function14, function12, function11, function13, null, gapComposerH, i1115);
            function15 = function11;
            function16 = function14;
            function17 = function13;
            alignment3 = alignment10;
            function18 = function12;
            map3 = map2;
            modifier4 = modifier11;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: jg0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    NavHostKt.b(navHostController, obj, modifier4, alignment3, map3, function16, function18, function15, function17, function5, (Composer) obj2, RecomposeScopeImplKt.a(i2 | 1), i3);
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Failed to analyze thrown exceptions
    java.util.ConcurrentModificationException
    	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1043)
    	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:997)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:130)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
     */
    public static final void c(NavHostController navHostController, String str, Modifier modifier, Alignment alignment, Function1 function1, Function1 function2, Function1 function3, Function1 function4, Function1 function5, Composer composer, int i2) {
        int i3;
        Function1 function6;
        Function1 function7;
        Function1 function8;
        Alignment alignment2;
        Alignment alignment3;
        Modifier modifier2;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "NavHost");
        }
        GapComposer gapComposerH = composer.h(1840250294);
        if ((i2 & 6) == 0) {
            i3 = i2 | (gapComposerH.y(navHostController) ? 4 : 2);
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(str) ? 32 : 16;
        }
        int i4 = i3 | 28032;
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            function6 = function1;
            i4 |= gapComposerH.y(function6) ? 131072 : 65536;
        } else {
            function6 = function1;
        }
        if ((i2 & 1572864) == 0) {
            i4 |= gapComposerH.y(function2) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            function7 = function3;
            i4 |= gapComposerH.y(function7) ? 8388608 : 4194304;
        } else {
            function7 = function3;
        }
        if ((i2 & 100663296) == 0) {
            function8 = function4;
            i4 |= gapComposerH.y(function8) ? 67108864 : 33554432;
        } else {
            function8 = function4;
        }
        int i5 = i4 | 805306368;
        char c2 = gapComposerH.y(function5) ? (char) 4 : (char) 2;
        if ((306783379 & i5) == 306783378 && (c2 & 3) == 2 && gapComposerH.i()) {
            gapComposerH.D();
            alignment3 = alignment;
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                dTFunctionNameModifier = new DTFunctionNameModifier("NavHost");
                Alignment.f8582a.getClass();
                alignment2 = Alignment.Companion.f8584b;
            } else {
                gapComposerH.D();
                alignment2 = alignment;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z = ((i5 & 57344) == 16384) | ((i5 & 112) == 32) | ((c2 & 14) == 4);
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navHostController.f18122b.t, str, (String) null);
                function5.invoke(navGraphBuilder);
                objX = navGraphBuilder.c();
                gapComposerH.q(objX);
            }
            int i6 = i5 & 8078;
            int i7 = i5 >> 3;
            int i8 = (i7 & 234881024) | (57344 & i7) | i6 | (458752 & i7) | (3670016 & i7) | (29360128 & i7);
            Alignment alignment4 = alignment2;
            Modifier modifier3 = dTFunctionNameModifier;
            a(navHostController, (NavGraph) objX, modifier3, alignment4, function6, function2, function7, function8, null, gapComposerH, i8);
            alignment3 = alignment4;
            modifier2 = modifier3;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new k4(navHostController, str, modifier2, alignment3, function1, function2, function3, function4, function5, i2);
        }
    }
}

package androidx.compose.animation;

import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LookaheadScope;
import androidx.compose.ui.platform.InspectableValueKt;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/animation/SharedTransitionScopeImpl;", "Landroidx/compose/animation/SharedTransitionScope;", "Landroidx/compose/ui/layout/LookaheadScope;", "lookaheadScope", "Lkotlinx/coroutines/CoroutineScope;", "coroutineScope", "<init>", "(Landroidx/compose/ui/layout/LookaheadScope;Lkotlinx/coroutines/CoroutineScope;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SharedTransitionScopeImpl implements SharedTransitionScope, LookaheadScope {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LookaheadScope f3683b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CoroutineScope f3684c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public LayoutCoordinates f3686f;
    public LayoutCoordinates g;
    public final MutableState d = SnapshotStateKt.g(Boolean.FALSE);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Function0 f3685e = new Function0<Unit>() { // from class: androidx.compose.animation.SharedTransitionScopeImpl$observeAnimatingBlock$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final Object mo47invoke() {
            Iterable iterableValues = this.f3689c.f3688i.c().f8496c.values();
            if (!(iterableValues instanceof Collection) || !((Collection) iterableValues).isEmpty()) {
                Iterator it = iterableValues.iterator();
                while (it.hasNext() && !((SharedElement) it.next()).d()) {
                }
            }
            return Unit.f71739a;
        }
    };

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SnapshotStateList f3687h = new SnapshotStateList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final SnapshotStateMap f3688i = new SnapshotStateMap();

    public SharedTransitionScopeImpl(LookaheadScope lookaheadScope, CoroutineScope coroutineScope) {
        this.f3683b = lookaheadScope;
        this.f3684c = coroutineScope;
    }

    public final void a() {
        Iterable<SharedElement> iterableValues = this.f3688i.c().f8496c.values();
        boolean z = false;
        for (SharedElement sharedElement : iterableValues) {
            z = z || (sharedElement.a() && sharedElement.d());
            sharedElement.e();
        }
        if (z != j()) {
            ((SnapshotMutableStateImpl) this.d).setValue(Boolean.valueOf(z));
            if (z) {
                return;
            }
            for (SharedElement sharedElement2 : iterableValues) {
                if (sharedElement2.c().size() > 1) {
                    List listC = sharedElement2.c();
                    int i2 = SharedElementKt.f3672a;
                    int size = listC.size();
                    int i3 = 0;
                    while (true) {
                        if (i3 < size) {
                            if (((SharedElementEntry) listC.get(i3)).c().b()) {
                                break;
                            } else {
                                i3++;
                            }
                        }
                    }
                }
                SharedTransitionStateMachine sharedTransitionStateMachine = sharedElement2.f3655c;
                sharedTransitionStateMachine.getClass();
                sharedTransitionStateMachine.f3718e = StateChangeRequest.NoRequest;
                sharedTransitionStateMachine.f3717c = ((SnapshotMutableIntStateImpl) sharedTransitionStateMachine.d).f();
                ((SnapshotMutableStateImpl) sharedTransitionStateMachine.f3716b).setValue(NoMatchFound.f3641a);
            }
        }
    }

    @Override // androidx.compose.ui.layout.LookaheadScope
    public final long c(LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2) {
        return this.f3683b.c(layoutCoordinates, layoutCoordinates2);
    }

    @Override // androidx.compose.animation.SharedTransitionScope
    public final Modifier h(Modifier modifier, SharedTransitionScope.SharedContentState sharedContentState, AnimatedVisibilityScope animatedVisibilityScope, SharedTransitionScopeKt$ParentClip$1 sharedTransitionScopeKt$ParentClip$1) {
        return ComposedModifierKt.a(modifier, InspectableValueKt.f10100a, new SharedTransitionScopeImpl$sharedBoundsImpl$1(sharedContentState, animatedVisibilityScope.getF3532a(), SharedTransitionScopeImpl$sharedElement$1.f3703c, this, true, sharedTransitionScopeKt$ParentClip$1));
    }

    @Override // androidx.compose.animation.SharedTransitionScope
    public final boolean j() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.d).getF10755b()).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.animation.SharedTransitionScope
    public final Modifier l(Modifier modifier, Function0 function0) {
        return modifier.o(new SkipToLookaheadSizeElement(null, function0, 1, 0 == true ? 1 : 0));
    }

    @Override // androidx.compose.ui.layout.LookaheadScope
    public final LayoutCoordinates y(LayoutCoordinates layoutCoordinates) {
        return this.f3683b.y(layoutCoordinates);
    }

    @Override // androidx.compose.animation.SharedTransitionScope
    public final Modifier z(Modifier modifier, final SharedTransitionScope.SharedContentState sharedContentState, final AnimatedVisibilityScope animatedVisibilityScope, final EnterTransition enterTransition, final ExitTransition exitTransition, final ScaleToBoundsImpl scaleToBoundsImpl, SharedTransitionScopeKt$ParentClip$1 sharedTransitionScopeKt$ParentClip$1) {
        SharedTransitionScopeImpl$sharedBoundsImpl$1 sharedTransitionScopeImpl$sharedBoundsImpl$1 = new SharedTransitionScopeImpl$sharedBoundsImpl$1(sharedContentState, animatedVisibilityScope.getF3532a(), SharedTransitionScopeImpl$sharedBounds$1.f3692c, this, false, sharedTransitionScopeKt$ParentClip$1);
        Function1 function1 = InspectableValueKt.f10100a;
        return ComposedModifierKt.a(ComposedModifierKt.a(modifier, function1, sharedTransitionScopeImpl$sharedBoundsImpl$1), function1, new Function3<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.animation.SharedTransitionScopeImpl$sharedBounds$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public final Object A(Object obj, Object obj2, Object obj3) {
                Composer composer = (Composer) obj2;
                ((Number) obj3).intValue();
                composer.L(-233734437);
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Transition f3532a = animatedVisibilityScope.getF3532a();
                final SharedTransitionScope.SharedContentState sharedContentState2 = sharedContentState;
                boolean zY = composer.y(sharedContentState2);
                Object objX = composer.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (zY || objX == composer$Companion$Empty$1) {
                    objX = new Function0<Boolean>() { // from class: androidx.compose.animation.SharedTransitionScopeImpl$sharedBounds$2$1$1
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            SharedElement sharedElementE;
                            SharedElementEntry sharedElementEntry = (SharedElementEntry) ((SnapshotMutableStateImpl) sharedContentState2.f3681c).getF10755b();
                            return Boolean.valueOf((sharedElementEntry == null || (sharedElementE = sharedElementEntry.e()) == null) ? false : sharedElementE.a());
                        }
                    };
                    composer.q(objX);
                }
                Modifier modifierA = EnterExitTransitionKt.a(f3532a, enterTransition, exitTransition, (Function0) objX, "enter/exit for " + sharedContentState2.f3679a, composer, 0, 4);
                composer.L(-1039792755);
                boolean zY2 = composer.y(sharedContentState2);
                Object objX2 = composer.x();
                if (zY2 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new Function0<Boolean>() { // from class: androidx.compose.animation.SharedTransitionScopeImpl$sharedBounds$2$2$1
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            SharedElement sharedElementE;
                            SharedElementEntry sharedElementEntry = (SharedElementEntry) ((SnapshotMutableStateImpl) sharedContentState2.f3681c).getF10755b();
                            return Boolean.valueOf((sharedElementEntry == null || (sharedElementE = sharedElementEntry.e()) == null) ? false : sharedElementE.a());
                        }
                    };
                    composer.q(objX2);
                }
                final Function0 function0 = (Function0) objX2;
                Function0 function2 = SkipToLookaheadSizeNodeKt.f3743a;
                ScaleToBoundsImpl scaleToBoundsImpl2 = scaleToBoundsImpl;
                ContentScale contentScale = scaleToBoundsImpl2.f3645a;
                ContentScale.f9447a.getClass();
                boolean zC = Intrinsics.c(contentScale, ContentScale.Companion.f9449b);
                Modifier modifierA2 = Modifier.Companion.f8607b;
                if (zC) {
                    modifierA2 = GraphicsLayerModifierKt.a(modifierA2, new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.animation.SkipToLookaheadSizeNodeKt$createContentScaleModifier$1
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj4) {
                            ((GraphicsLayerScope) obj4).o(((Boolean) function0.mo47invoke()).booleanValue());
                            return Unit.f71739a;
                        }
                    });
                }
                Modifier modifierO = modifierA2.o(new SkipToLookaheadSizeElement(scaleToBoundsImpl2, function0));
                composer.F();
                Modifier modifierO2 = modifierA.o(modifierO);
                composer.F();
                return modifierO2;
            }
        });
    }
}

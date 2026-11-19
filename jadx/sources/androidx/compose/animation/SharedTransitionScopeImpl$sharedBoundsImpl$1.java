package androidx.compose.animation;

import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionState;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import defpackage.dw0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.TypeIntrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "Landroidx/compose/ui/Modifier;", "invoke", "(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;"}, k = 3, mv = {2, 1, 0}, xi = 48)
final class SharedTransitionScopeImpl$sharedBoundsImpl$1 extends Lambda implements Function3<Modifier, Composer, Integer, Modifier> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SharedTransitionScope.SharedContentState f3698c;
    public final /* synthetic */ Transition d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f3699e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ SharedTransitionScopeImpl f3700f;
    public final /* synthetic */ SharedTransitionScope.PlaceholderSize g = SharedTransitionScope$PlaceholderSize$Companion$ContentSize$1.f3678b;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ boolean f3701h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ SharedTransitionScope.OverlayClip f3702i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharedTransitionScopeImpl$sharedBoundsImpl$1(SharedTransitionScope.SharedContentState sharedContentState, Transition transition, Function1 function1, SharedTransitionScopeImpl sharedTransitionScopeImpl, boolean z, SharedTransitionScope.OverlayClip overlayClip) {
        super(3);
        this.f3698c = sharedContentState;
        this.d = transition;
        this.f3699e = function1;
        this.f3700f = sharedTransitionScopeImpl;
        this.f3701h = z;
        this.f3702i = overlayClip;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        Composer composer;
        Transition transitionE;
        boolean z;
        SharedTransitionScope.SharedContentState sharedContentState;
        SharedTransitionScope.OverlayClip overlayClip;
        Modifier modifier = (Modifier) obj;
        Composer composer2 = (Composer) obj2;
        ((Number) obj3).intValue();
        composer2.L(-1539505585);
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Object obj4 = this.f3698c.f3679a;
        composer2.A(-1996110647, obj4);
        Object objX = composer2.x();
        SharedTransitionScopeImpl sharedTransitionScopeImpl = this.f3700f;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        if (objX == composer$Companion$Empty$1) {
            SnapshotStateMap snapshotStateMap = sharedTransitionScopeImpl.f3688i;
            SharedElement sharedElement = (SharedElement) snapshotStateMap.get(obj4);
            if (sharedElement == null) {
                sharedElement = new SharedElement(obj4, sharedTransitionScopeImpl);
                snapshotStateMap.put(obj4, sharedElement);
            }
            objX = sharedElement;
            composer2.q(objX);
        }
        SharedElement sharedElement2 = (SharedElement) objX;
        Transition transition = this.d;
        composer2.A(-1996106866, transition);
        Function1 function1 = this.f3699e;
        if (transition != null) {
            TransitionState transitionState = transition.f3988a;
            composer2.L(-1749734647);
            String string = obj4.toString();
            boolean zK = composer2.K(transition);
            Object objX2 = composer2.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                objX2 = transitionState.a();
                composer2.q(objX2);
            }
            if (transition.i()) {
                objX2 = transitionState.a();
            }
            composer2.L(1498260051);
            Boolean bool = (Boolean) function1.invoke(objX2);
            bool.getClass();
            composer2.F();
            Object f10755b = ((SnapshotMutableStateImpl) transition.d).getF10755b();
            composer2.L(1498260051);
            Boolean bool2 = (Boolean) function1.invoke(f10755b);
            bool2.getClass();
            composer2.F();
            composer = composer2;
            transitionE = androidx.compose.animation.core.TransitionKt.b(transition, bool, bool2, string, composer, 0);
            composer.F();
        } else {
            composer = composer2;
            composer.L(-1749482679);
            function1.getClass();
            boolean z2 = true;
            TypeIntrinsics.e(1, function1);
            Boolean bool3 = (Boolean) function1.invoke(Unit.f71739a);
            boolean zBooleanValue = bool3.booleanValue();
            Object objX3 = composer.x();
            if (objX3 == composer$Companion$Empty$1) {
                if (sharedElement2.c().isEmpty()) {
                    z2 = zBooleanValue;
                } else if (zBooleanValue) {
                    z2 = false;
                }
                objX3 = new MutableTransitionState(Boolean.valueOf(z2));
                composer.q(objX3);
            }
            MutableTransitionState mutableTransitionState = (MutableTransitionState) objX3;
            mutableTransitionState.g(bool3);
            transitionE = androidx.compose.animation.core.TransitionKt.e(mutableTransitionState, null, composer, 0, 2);
            composer.F();
        }
        composer.A(-1996043323, Boolean.valueOf(sharedTransitionScopeImpl.j()));
        Rect.Companion companion = Rect.f8809e;
        Composer composer3 = composer;
        Transition.DeferredAnimation deferredAnimationC = androidx.compose.animation.core.TransitionKt.c(transitionE, VectorConvertersKt.f4042i, null, composer3, 0, 2);
        composer3.I();
        boolean zK2 = composer3.K(transitionE);
        Object objX4 = composer3.x();
        dw0 dw0Var = SharedTransitionDefaults.f3673a;
        if (zK2 || objX4 == composer$Companion$Empty$1) {
            BoundsAnimation boundsAnimation = new BoundsAnimation(sharedTransitionScopeImpl, transitionE, deferredAnimationC, dw0Var, sharedElement2.f3658h);
            composer3.q(boundsAnimation);
            objX4 = boundsAnimation;
        }
        BoundsAnimation boundsAnimation2 = (BoundsAnimation) objX4;
        if (!Intrinsics.c((Transition.DeferredAnimation) ((SnapshotMutableStateImpl) boundsAnimation2.d).getF10755b(), deferredAnimationC)) {
            ((SnapshotMutableStateImpl) boundsAnimation2.d).setValue(deferredAnimationC);
            ((SnapshotMutableStateImpl) boundsAnimation2.g).setValue(null);
            boundsAnimation2.f3539f = BoundsAnimationKt.f3543a;
        }
        ((SnapshotMutableStateImpl) boundsAnimation2.f3538e).setValue(dw0Var);
        composer3.I();
        Object objX5 = composer3.x();
        SharedTransitionScope$PlaceholderSize$Companion$ContentSize$1 sharedTransitionScope$PlaceholderSize$Companion$ContentSize$1 = SharedTransitionScope$PlaceholderSize$Companion$ContentSize$1.f3678b;
        boolean z3 = this.f3701h;
        SharedTransitionScope.SharedContentState sharedContentState2 = this.f3698c;
        SharedTransitionScope.OverlayClip overlayClip2 = this.f3702i;
        if (objX5 == composer$Companion$Empty$1) {
            z = z3;
            SharedElementEntry sharedElementEntry = new SharedElementEntry(sharedElement2, boundsAnimation2, sharedTransitionScope$PlaceholderSize$Companion$ContentSize$1, z, overlayClip2, true, sharedContentState2, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            overlayClip = overlayClip2;
            sharedContentState = sharedContentState2;
            composer3.q(sharedElementEntry);
            objX5 = sharedElementEntry;
        } else {
            z = z3;
            sharedContentState = sharedContentState2;
            overlayClip = overlayClip2;
        }
        SharedElementEntry sharedElementEntry2 = (SharedElementEntry) objX5;
        ((SnapshotMutableStateImpl) sharedContentState.f3681c).setValue(sharedElementEntry2);
        ((SnapshotMutableStateImpl) sharedElementEntry2.f3666e).setValue(sharedElement2);
        ((SnapshotMutableStateImpl) sharedElementEntry2.f3668h).setValue(Boolean.valueOf(z));
        ((SnapshotMutableStateImpl) sharedElementEntry2.f3667f).setValue(boundsAnimation2);
        ((SnapshotMutableStateImpl) sharedElementEntry2.g).setValue(sharedTransitionScope$PlaceholderSize$Companion$ContentSize$1);
        ((SnapshotMutableStateImpl) sharedElementEntry2.f3669i).setValue(overlayClip);
        ((SnapshotMutableFloatStateImpl) sharedElementEntry2.f3665c).w(0.0f);
        ((SnapshotMutableStateImpl) sharedElementEntry2.d).setValue(Boolean.TRUE);
        ((SnapshotMutableStateImpl) sharedElementEntry2.f3670j).setValue(sharedContentState);
        composer3.I();
        Modifier modifierO = modifier.o(new SharedBoundsNodeElement(sharedElementEntry2));
        composer3.F();
        return modifierO;
    }
}

package androidx.compose.animation;

import androidx.collection.MutableScatterMap;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LookaheadScope;
import androidx.compose.ui.layout.LookaheadScopeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"animation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SharedTransitionScopeKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SpringSpec f3704a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SharedTransitionScopeKt$ParentClip$1 f3705b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final MutableScatterMap f3706c;

    static {
        Rect.Companion companion = Rect.f8809e;
        f3704a = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 1, VisibilityThresholdsKt.f4089a);
        f3705b = new SharedTransitionScopeKt$ParentClip$1();
        f3706c = new MutableScatterMap(0, 1, null);
    }

    public static final void a(final Modifier modifier, final Function3 function3, Composer composer, final int i2) {
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "SharedTransitionLayout");
        }
        GapComposer gapComposerH = composer.h(646379026);
        int i3 = i2 | 6;
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            modifier = new DTFunctionNameModifier("SharedTransitionLayout");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            b(ComposableLambdaKt.b(1948801580, new Function4<SharedTransitionScope, Modifier, Composer, Integer, Unit>() { // from class: androidx.compose.animation.SharedTransitionScopeKt$SharedTransitionLayout$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(4);
                }

                @Override // kotlin.jvm.functions.Function4
                public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
                    int i4;
                    SharedTransitionScope sharedTransitionScope = (SharedTransitionScope) obj;
                    Modifier modifier2 = (Modifier) obj2;
                    Composer composer2 = (Composer) obj3;
                    int iIntValue = ((Number) obj4).intValue();
                    if ((iIntValue & 6) == 0) {
                        i4 = (composer2.K(sharedTransitionScope) ? 4 : 2) | iIntValue;
                    } else {
                        i4 = iIntValue;
                    }
                    if ((iIntValue & 48) == 0) {
                        i4 |= composer2.K(modifier2) ? 32 : 16;
                    }
                    if (composer2.p(i4 & 1, (i4 & 147) != 146)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier modifierO = modifier.o(modifier2);
                        Alignment.f8582a.getClass();
                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        int iHashCode = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierO);
                        ComposeUiNode.b0.getClass();
                        Function0 function0 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function0);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Updater.a(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                        Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                        function3.A(sharedTransitionScope, composer2, Integer.valueOf(i4 & 14));
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 6);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>(function3, i2) { // from class: androidx.compose.animation.SharedTransitionScopeKt$SharedTransitionLayout$2
                public final /* synthetic */ Function3 d;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    int iA = RecomposeScopeImplKt.a(49);
                    SharedTransitionScopeKt.a(this.f3708c, this.d, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i2) {
        GapComposer gapComposerH = composer.h(1908320054);
        if (gapComposerH.p(i2 & 1, (i2 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LookaheadScopeKt.a(ComposableLambdaKt.b(2062852661, new Function3<LookaheadScope, Composer, Integer, Unit>() { // from class: androidx.compose.animation.SharedTransitionScopeKt$SharedTransitionScope$1
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    LookaheadScope lookaheadScope = (LookaheadScope) obj;
                    Composer composer2 = (Composer) obj2;
                    ((Number) obj3).intValue();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Object objX = composer2.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = EffectsKt.j(EmptyCoroutineContext.f71840b, composer2);
                        composer2.q(objX);
                    }
                    CoroutineScope coroutineScope = (CoroutineScope) objX;
                    Object objX2 = composer2.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new SharedTransitionScopeImpl(lookaheadScope, coroutineScope);
                        composer2.q(objX2);
                    }
                    SharedTransitionScopeImpl sharedTransitionScopeImpl = (SharedTransitionScopeImpl) objX2;
                    composableLambdaImpl.g(sharedTransitionScopeImpl, new SharedTransitionScopeRootModifierElement(sharedTransitionScopeImpl), composer2, 6);
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 6);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>(i2) { // from class: androidx.compose.animation.SharedTransitionScopeKt$SharedTransitionScope$2
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    int iA = RecomposeScopeImplKt.a(7);
                    SharedTransitionScopeKt.b(this.f3710c, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}

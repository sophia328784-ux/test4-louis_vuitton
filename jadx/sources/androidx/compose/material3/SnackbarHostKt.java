package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AccessibilityManager;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import defpackage.ag;
import defpackage.fc;
import defpackage.md;
import defpackage.og0;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004*b\b\u0002\u0010\u0007\"-\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u00020\u0001¢\u0006\u0002\b\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00020\u0000¢\u0006\u0002\b\u00032-\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u00020\u0001¢\u0006\u0002\b\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00020\u0000¢\u0006\u0002\b\u0003¨\u0006\b"}, d2 = {"Lkotlin/Function1;", "Lkotlin/Function0;", "", "Landroidx/compose/runtime/Composable;", "Lkotlin/ParameterName;", "name", "content", "FadeInFadeOutTransition", "material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class SnackbarHostKt {

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f7282a;

        static {
            int[] iArr = new int[SnackbarDuration.values().length];
            try {
                iArr[SnackbarDuration.Indefinite.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SnackbarDuration.Long.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SnackbarDuration.Short.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f7282a = iArr;
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static final void a(final SnackbarData snackbarData, Modifier modifier, final Function3 function3, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "FadeInFadeOutWithScale");
        }
        GapComposer gapComposerH = composer.h(-977568115);
        int i3 = (i2 & 6) == 0 ? (gapComposerH.K(snackbarData) ? 4 : 2) | i2 : i2;
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(modifierE) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function3) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i4 = Strings.f7646a;
            final String strA = Strings_androidKt.a(gapComposerH, R.string.m3c_snackbar_pane_title);
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new FadeInFadeOutState();
                gapComposerH.q(objX);
            }
            final FadeInFadeOutState fadeInFadeOutState = (FadeInFadeOutState) objX;
            Object obj = fadeInFadeOutState.f6962a;
            ArrayList arrayList = fadeInFadeOutState.f6963b;
            if (Intrinsics.c(snackbarData, obj)) {
                gapComposerH.L(1443908949);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1154891761);
                fadeInFadeOutState.f6962a = snackbarData;
                ArrayList arrayList2 = new ArrayList(arrayList.size());
                int size = arrayList.size();
                for (int i5 = 0; i5 < size; i5++) {
                    arrayList2.add((SnackbarData) ((FadeInFadeOutAnimationItem) arrayList.get(i5)).f6960a);
                }
                ArrayList arrayList3 = new ArrayList(arrayList2);
                if (!arrayList3.contains(snackbarData)) {
                    arrayList3.add(snackbarData);
                }
                arrayList.clear();
                ArrayList arrayList4 = new ArrayList(arrayList3.size());
                int size2 = arrayList3.size();
                for (int i6 = 0; i6 < size2; i6++) {
                    Object obj2 = arrayList3.get(i6);
                    if (obj2 != null) {
                        arrayList4.add(obj2);
                    }
                }
                int size3 = arrayList4.size();
                for (int i7 = 0; i7 < size3; i7++) {
                    final SnackbarData snackbarData2 = (SnackbarData) arrayList4.get(i7);
                    arrayList.add(new FadeInFadeOutAnimationItem(snackbarData2, ComposableLambdaKt.b(-1952400805, new Function3<Function2<? super Composer, ? super Integer, ? extends Unit>, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SnackbarHostKt$FadeInFadeOutWithScale$1$1
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj3, Object obj4, Object obj5) {
                            Function2 function2 = (Function2) obj3;
                            Composer composer2 = (Composer) obj4;
                            int iIntValue = ((Number) obj5).intValue();
                            int i8 = 2;
                            if ((iIntValue & 6) == 0) {
                                iIntValue |= composer2.y(function2) ? 4 : 2;
                            }
                            if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                SnackbarData snackbarData3 = snackbarData;
                                Object obj6 = snackbarData2;
                                boolean zC = Intrinsics.c(obj6, snackbarData3);
                                FiniteAnimationSpec finiteAnimationSpecA = MotionSchemeKt.a(MotionSchemeKeyTokens.FastEffects, composer2);
                                boolean zK = composer2.K(obj6);
                                Object obj7 = fadeInFadeOutState;
                                boolean zY = zK | composer2.y(obj7);
                                Object objX2 = composer2.x();
                                Object obj8 = Composer.Companion.f7939a;
                                if (zY || objX2 == obj8) {
                                    objX2 = new c(obj6, obj7, i8);
                                    composer2.q(objX2);
                                }
                                Function0 function0 = (Function0) objX2;
                                Object objX3 = composer2.x();
                                if (objX3 == obj8) {
                                    objX3 = AnimatableKt.a(!zC ? 1.0f : Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                    composer2.q(objX3);
                                }
                                Animatable animatable = (Animatable) objX3;
                                Boolean boolValueOf = Boolean.valueOf(zC);
                                boolean zY2 = composer2.y(animatable) | composer2.b(zC) | composer2.y(finiteAnimationSpecA) | composer2.K(function0);
                                Object objX4 = composer2.x();
                                if (zY2 || objX4 == obj8) {
                                    Object snackbarHostKt$animatedOpacity$2$1 = new SnackbarHostKt$animatedOpacity$2$1(animatable, zC, finiteAnimationSpecA, function0, null);
                                    composer2.q(snackbarHostKt$animatedOpacity$2$1);
                                    objX4 = snackbarHostKt$animatedOpacity$2$1;
                                }
                                EffectsKt.e(composer2, boolValueOf, (Function2) objX4);
                                AnimationState animationState = animatable.f3774c;
                                FiniteAnimationSpec finiteAnimationSpecA2 = MotionSchemeKt.a(MotionSchemeKeyTokens.FastSpatial, composer2);
                                Object objX5 = composer2.x();
                                if (objX5 == obj8) {
                                    objX5 = AnimatableKt.a(zC ? 0.8f : 1.0f);
                                    composer2.q(objX5);
                                }
                                Animatable animatable2 = (Animatable) objX5;
                                Boolean boolValueOf2 = Boolean.valueOf(zC);
                                boolean zY3 = composer2.y(animatable2) | composer2.b(zC) | composer2.y(finiteAnimationSpecA2);
                                Object objX6 = composer2.x();
                                if (zY3 || objX6 == obj8) {
                                    objX6 = new SnackbarHostKt$animatedScale$1$1(animatable2, zC, finiteAnimationSpecA2, null);
                                    composer2.q(objX6);
                                }
                                EffectsKt.e(composer2, boolValueOf2, (Function2) objX6);
                                AnimationState animationState2 = animatable2.f3774c;
                                Modifier modifierB = GraphicsLayerModifierKt.b(Modifier.Companion.f8607b, ((Number) ((SnapshotMutableStateImpl) animationState2.f3818c).getF10755b()).floatValue(), ((Number) ((SnapshotMutableStateImpl) animationState2.f3818c).getF10755b()).floatValue(), ((Number) ((SnapshotMutableStateImpl) animationState.f3818c).getF10755b()).floatValue(), Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 131064);
                                boolean zB = composer2.b(zC) | composer2.K(obj6);
                                Object obj9 = strA;
                                boolean zK2 = zB | composer2.K(obj9);
                                Object objX7 = composer2.x();
                                if (zK2 || objX7 == obj8) {
                                    objX7 = new ag(zC, obj9, obj6, 9);
                                    composer2.q(objX7);
                                }
                                Modifier modifierB2 = SemanticsModifierKt.b(modifierB, false, (Function1) objX7);
                                Alignment.f8582a.getClass();
                                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                int iG = composer2.G();
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier modifierC = ComposedModifierKt.c(composer2, modifierB2);
                                ComposeUiNode.b0.getClass();
                                Function0 function1 = ComposeUiNode.Companion.f9641b;
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function1);
                                } else {
                                    composer2.o();
                                }
                                Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                Function2 function4 = ComposeUiNode.Companion.g;
                                if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                                    fc.A(function4, iG, composer2, iG);
                                }
                                Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                                function2.invoke(composer2, Integer.valueOf(iIntValue & 14));
                                composer2.r();
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH)));
                }
                gapComposerH.Z(false);
            }
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int iG = gapComposerH.G();
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Function2 function2 = ComposeUiNode.Companion.g;
            if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG))) {
                defpackage.a.t(iG, gapComposerH, iG, function2);
            }
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            RecomposeScopeImpl recomposeScopeImplU = gapComposerH.u();
            if (recomposeScopeImplU == null) {
                md.k("no recompose scope found");
                return;
            }
            gapComposerH.E(recomposeScopeImplU);
            fadeInFadeOutState.f6964c = recomposeScopeImplU;
            gapComposerH.L(-1888182177);
            int size4 = arrayList.size();
            for (int i8 = 0; i8 < size4; i8++) {
                FadeInFadeOutAnimationItem fadeInFadeOutAnimationItem = (FadeInFadeOutAnimationItem) arrayList.get(i8);
                final SnackbarData snackbarData3 = (SnackbarData) fadeInFadeOutAnimationItem.f6960a;
                Function3 function4 = fadeInFadeOutAnimationItem.f6961b;
                gapComposerH.A(1325010085, snackbarData3);
                function4.A(ComposableLambdaKt.b(-1893791890, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SnackbarHostKt$FadeInFadeOutWithScale$2$1$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj3, Object obj4) {
                        Composer composer2 = (Composer) obj3;
                        int iIntValue = ((Number) obj4).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                            SnackbarData snackbarData4 = snackbarData3;
                            snackbarData4.getClass();
                            function3.A(snackbarData4, composer2, 0);
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposerH, 6);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(false);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new og0(snackbarData, modifierE, function3, i2);
        }
    }

    public static final void b(SnackbarHostState snackbarHostState, Modifier modifier, Function3 function3, Composer composer, int i2, int i3) {
        int i4;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "SnackbarHost");
        }
        GapComposer gapComposerH = composer.h(-1077081618);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(snackbarHostState) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i5 = i3 & 2;
        if (i5 != 0) {
            i4 |= 48;
        } else if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(modifier) ? 32 : 16;
        }
        int i6 = i4 | KyberEngine.KyberPolyBytes;
        if (gapComposerH.p(i6 & 1, (i6 & 147) != 146)) {
            if (i5 != 0) {
                modifier = new DTFunctionNameModifier("SnackbarHost");
            }
            ComposableSingletons$SnackbarHostKt.f6724a.getClass();
            function3 = ComposableSingletons$SnackbarHostKt.f6725b;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            SnackbarData snackbarData = (SnackbarData) ((SnapshotMutableStateImpl) snackbarHostState.f7291b).getF10755b();
            AccessibilityManager accessibilityManager = (AccessibilityManager) gapComposerH.k(CompositionLocalsKt.f10026a);
            boolean zK = gapComposerH.K(snackbarData) | gapComposerH.y(accessibilityManager);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new SnackbarHostKt$SnackbarHost$1$1(snackbarData, accessibilityManager, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, snackbarData, (Function2) objX);
            a((SnackbarData) ((SnapshotMutableStateImpl) snackbarHostState.f7291b).getF10755b(), modifier, function3, gapComposerH, i6 & 1008);
        } else {
            gapComposerH.D();
        }
        Modifier modifier2 = modifier;
        Function3 function4 = function3;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new defpackage.h(snackbarHostState, modifier2, function4, i2, i3);
        }
    }
}

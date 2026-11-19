package androidx.compose.animation;

import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionState;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.runtime.snapshots.StateListIterator;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import defpackage.c;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"animation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class AnimatedContentKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f3414a;

    static {
        IntSize.Companion companion = IntSize.f11020b;
        f3414a = -9223372034707292160L;
    }

    public static final void a(final Transition transition, Modifier modifier, final Function1 function1, final Alignment alignment, final Function1 function2, final Function4 function4, Composer composer, final int i2) {
        int i3;
        GapComposer gapComposer;
        Function1 function3;
        AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl;
        SnapshotStateList snapshotStateList;
        AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl2;
        Modifier dTFunctionNameModifier;
        Transition.DeferredAnimation deferredAnimationC;
        GapComposer gapComposer2;
        boolean z;
        final Transition transition2 = transition;
        Modifier modifierE = modifier;
        final Function1 function5 = function1;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "AnimatedContent");
        }
        final Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(511725103);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(transition2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(modifier2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function5) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.K(alignment) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function2) ? 16384 : 8192;
        }
        final Function4 function6 = function4;
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function6) ? 131072 : 65536;
        }
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LayoutDirection layoutDirection = (LayoutDirection) gapComposerH.k(CompositionLocalsKt.n);
            int i4 = i3 & 14;
            boolean z2 = i4 == 4;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z2 || objX == composer$Companion$Empty$1) {
                objX = new AnimatedContentTransitionScopeImpl(transition2, alignment, layoutDirection);
                gapComposerH.q(objX);
            }
            AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl3 = (AnimatedContentTransitionScopeImpl) objX;
            boolean z3 = i4 == 4;
            Object objX2 = gapComposerH.x();
            Object obj = objX2;
            if (z3 || objX2 == composer$Companion$Empty$1) {
                Object[] objArr = {transition2.f3988a.a()};
                SnapshotStateList snapshotStateList2 = new SnapshotStateList();
                snapshotStateList2.addAll(ArraysKt.W(objArr));
                gapComposerH.q(snapshotStateList2);
                obj = snapshotStateList2;
            }
            final SnapshotStateList snapshotStateList3 = (SnapshotStateList) obj;
            boolean z4 = i4 == 4;
            Object objX3 = gapComposerH.x();
            if (z4 || objX3 == composer$Companion$Empty$1) {
                objX3 = ScatterMapKt.b();
                gapComposerH.q(objX3);
            }
            MutableScatterMap mutableScatterMap = (MutableScatterMap) objX3;
            TransitionState transitionState = transition2.f3988a;
            MutableState mutableState = transition2.d;
            if (!snapshotStateList3.contains(transitionState.a())) {
                snapshotStateList3.clear();
                snapshotStateList3.add(transitionState.a());
            }
            SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) mutableState;
            if (Intrinsics.c(transitionState.a(), snapshotMutableStateImpl.getF10755b())) {
                if (snapshotStateList3.size() != 1 || !Intrinsics.c(snapshotStateList3.get(0), transitionState.a())) {
                    snapshotStateList3.clear();
                    snapshotStateList3.add(transitionState.a());
                }
                if (mutableScatterMap.f3364e != 1 || mutableScatterMap.c(transitionState.a())) {
                    mutableScatterMap.h();
                }
                animatedContentTransitionScopeImpl3.f3459b = alignment;
                animatedContentTransitionScopeImpl3.f3460c = layoutDirection;
            }
            if (!Intrinsics.c(transitionState.a(), snapshotMutableStateImpl.getF10755b()) && !snapshotStateList3.contains(snapshotMutableStateImpl.getF10755b())) {
                ListIterator listIterator = snapshotStateList3.listIterator();
                int i5 = 0;
                while (true) {
                    StateListIterator stateListIterator = (StateListIterator) listIterator;
                    ListIterator listIterator2 = listIterator;
                    if (!stateListIterator.hasNext()) {
                        i5 = -1;
                        break;
                    } else {
                        if (Intrinsics.c(function2.invoke(stateListIterator.next()), function2.invoke(snapshotMutableStateImpl.getF10755b()))) {
                            break;
                        }
                        i5++;
                        listIterator = listIterator2;
                    }
                }
                if (i5 == -1) {
                    snapshotStateList3.add(snapshotMutableStateImpl.getF10755b());
                } else {
                    snapshotStateList3.set(i5, snapshotMutableStateImpl.getF10755b());
                }
            }
            if (mutableScatterMap.c(snapshotMutableStateImpl.getF10755b()) && mutableScatterMap.c(transitionState.a())) {
                gapComposerH.L(1968995539);
                gapComposerH.Z(false);
                function3 = function5;
                animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl3;
            } else {
                gapComposerH.L(1966410449);
                mutableScatterMap.h();
                int size = snapshotStateList3.size();
                int i6 = 0;
                while (i6 < size) {
                    final Object obj2 = snapshotStateList3.get(i6);
                    int i7 = i6;
                    final AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl4 = animatedContentTransitionScopeImpl3;
                    mutableScatterMap.o(obj2, ComposableLambdaKt.b(-23915175, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedContentKt$AnimatedContent$6$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj3, Object obj4) {
                            ExitTransition exitTransition;
                            Composer composer2 = (Composer) obj3;
                            int iIntValue = ((Number) obj4).intValue();
                            if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                Object objX4 = composer2.x();
                                Function1 function7 = function5;
                                final AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl5 = animatedContentTransitionScopeImpl4;
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (objX4 == composer$Companion$Empty$2) {
                                    objX4 = (ContentTransform) function7.invoke(animatedContentTransitionScopeImpl5);
                                    composer2.q(objX4);
                                }
                                final ContentTransform contentTransform = (ContentTransform) objX4;
                                Transition transition3 = transition2;
                                Transition.Segment segmentF = transition3.f();
                                MutableState mutableState2 = transition3.d;
                                Object f4004b = segmentF.getF4004b();
                                final Object obj5 = obj2;
                                boolean zB = composer2.b(Intrinsics.c(f4004b, obj5));
                                Object objX5 = composer2.x();
                                if (zB || objX5 == composer$Companion$Empty$2) {
                                    if (Intrinsics.c(transition3.f().getF4004b(), obj5)) {
                                        ExitTransition.f3629a.getClass();
                                        exitTransition = ExitTransition.f3630b;
                                    } else {
                                        exitTransition = ((ContentTransform) function7.invoke(animatedContentTransitionScopeImpl5)).f3553b;
                                    }
                                    objX5 = exitTransition;
                                    composer2.q(objX5);
                                }
                                final ExitTransition exitTransition2 = (ExitTransition) objX5;
                                Object objX6 = composer2.x();
                                if (objX6 == composer$Companion$Empty$2) {
                                    objX6 = new AnimatedContentTransitionScopeImpl.ChildData(Intrinsics.c(obj5, ((SnapshotMutableStateImpl) mutableState2).getF10755b()));
                                    composer2.q(objX6);
                                }
                                AnimatedContentTransitionScopeImpl.ChildData childData = (AnimatedContentTransitionScopeImpl.ChildData) objX6;
                                EnterTransition enterTransition = contentTransform.f3552a;
                                boolean zY = composer2.y(contentTransform);
                                Object objX7 = composer2.x();
                                if (zY || objX7 == composer$Companion$Empty$2) {
                                    objX7 = new Function3<MeasureScope, Measurable, Constraints, MeasureResult>() { // from class: androidx.compose.animation.AnimatedContentKt$AnimatedContent$6$1$1$1
                                        {
                                            super(3);
                                        }

                                        @Override // kotlin.jvm.functions.Function3
                                        public final Object A(Object obj6, Object obj7, Object obj8) {
                                            final Placeable placeableT = ((Measurable) obj7).T(((Constraints) obj8).f10999a);
                                            int i8 = placeableT.f9548b;
                                            int i9 = placeableT.f9549c;
                                            final ContentTransform contentTransform2 = contentTransform;
                                            return ((MeasureScope) obj6).V0(i8, i9, MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.AnimatedContentKt$AnimatedContent$6$1$1$1.1
                                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                {
                                                    super(1);
                                                }

                                                @Override // kotlin.jvm.functions.Function1
                                                public final Object invoke(Object obj9) {
                                                    ((Placeable.PlacementScope) obj9).j(placeableT, 0, 0, ((SnapshotMutableFloatStateImpl) contentTransform2.f3554c).a());
                                                    return Unit.f71739a;
                                                }
                                            });
                                        }
                                    };
                                    composer2.q(objX7);
                                }
                                Modifier modifierA = LayoutModifierKt.a(Modifier.Companion.f8607b, (Function3) objX7);
                                ((SnapshotMutableStateImpl) childData.f3463b).setValue(Boolean.valueOf(Intrinsics.c(obj5, ((SnapshotMutableStateImpl) mutableState2).getF10755b())));
                                Modifier modifierO = modifierA.o(childData);
                                boolean zY2 = composer2.y(obj5);
                                Object objX8 = composer2.x();
                                if (zY2 || objX8 == composer$Companion$Empty$2) {
                                    objX8 = new Function1<Object, Boolean>() { // from class: androidx.compose.animation.AnimatedContentKt$AnimatedContent$6$1$3$1
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(1);
                                        }

                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj6) {
                                            return Boolean.valueOf(Intrinsics.c(obj6, obj5));
                                        }
                                    };
                                    composer2.q(objX8);
                                }
                                Function1 function8 = (Function1) objX8;
                                boolean zK = composer2.K(exitTransition2);
                                Object objX9 = composer2.x();
                                if (zK || objX9 == composer$Companion$Empty$2) {
                                    objX9 = new Function2<EnterExitState, EnterExitState, Boolean>() { // from class: androidx.compose.animation.AnimatedContentKt$AnimatedContent$6$1$4$1
                                        {
                                            super(2);
                                        }

                                        @Override // kotlin.jvm.functions.Function2
                                        public final Object invoke(Object obj6, Object obj7) {
                                            EnterExitState enterExitState = (EnterExitState) obj6;
                                            EnterExitState enterExitState2 = (EnterExitState) obj7;
                                            EnterExitState enterExitState3 = EnterExitState.PostExit;
                                            return Boolean.valueOf(enterExitState == enterExitState3 && enterExitState2 == enterExitState3 && !exitTransition2.getD().f3757f);
                                        }
                                    };
                                    composer2.q(objX9);
                                }
                                final SnapshotStateList snapshotStateList4 = snapshotStateList3;
                                final Function4 function9 = function6;
                                AnimatedVisibilityKt.a(transition2, function8, modifierO, enterTransition, exitTransition2, (Function2) objX9, ComposableLambdaKt.b(-143346359, new Function3<AnimatedVisibilityScope, Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedContentKt$AnimatedContent$6$1.5
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(3);
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
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object A(Object obj6, Object obj7, Object obj8) {
                                        AnimatedVisibilityScope animatedVisibilityScope = (AnimatedVisibilityScope) obj6;
                                        Composer composer3 = (Composer) obj7;
                                        int iIntValue2 = ((Number) obj8).intValue();
                                        if ((iIntValue2 & 6) == 0) {
                                            iIntValue2 |= (iIntValue2 & 8) == 0 ? composer3.K(animatedVisibilityScope) : composer3.y(animatedVisibilityScope) ? 4 : 2;
                                        }
                                        if (composer3.p(iIntValue2 & 1, (iIntValue2 & 19) != 18)) {
                                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                            final SnapshotStateList snapshotStateList5 = snapshotStateList4;
                                            boolean zK2 = composer3.K(snapshotStateList5);
                                            final Object obj9 = obj5;
                                            boolean zY3 = zK2 | composer3.y(obj9);
                                            final AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl6 = animatedContentTransitionScopeImpl5;
                                            boolean zY4 = zY3 | composer3.y(animatedContentTransitionScopeImpl6);
                                            Object objX10 = composer3.x();
                                            Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
                                            if (zY4 || objX10 == composer$Companion$Empty$3) {
                                                objX10 = new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.animation.AnimatedContentKt$AnimatedContent$6$1$5$1$1
                                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                    {
                                                        super(1);
                                                    }

                                                    @Override // kotlin.jvm.functions.Function1
                                                    public final Object invoke(Object obj10) {
                                                        final SnapshotStateList snapshotStateList6 = snapshotStateList5;
                                                        final Object obj11 = obj9;
                                                        final AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl7 = animatedContentTransitionScopeImpl6;
                                                        return new DisposableEffectResult() { // from class: androidx.compose.animation.AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1
                                                            @Override // androidx.compose.runtime.DisposableEffectResult
                                                            public final void dispose() {
                                                                SnapshotStateList snapshotStateList7 = snapshotStateList6;
                                                                Object obj12 = obj11;
                                                                snapshotStateList7.remove(obj12);
                                                                animatedContentTransitionScopeImpl7.f3461e.m(obj12);
                                                            }
                                                        };
                                                    }
                                                };
                                                composer3.q(objX10);
                                            }
                                            EffectsKt.c(animatedVisibilityScope, (Function1) objX10, composer3);
                                            MutableScatterMap mutableScatterMap2 = animatedContentTransitionScopeImpl6.f3461e;
                                            animatedVisibilityScope.getClass();
                                            mutableScatterMap2.o(obj9, ((AnimatedVisibilityScopeImpl) animatedVisibilityScope).f3533b);
                                            Object objX11 = composer3.x();
                                            if (objX11 == composer$Companion$Empty$3) {
                                                objX11 = new AnimatedContentScopeImpl(animatedVisibilityScope);
                                                composer3.q(objX11);
                                            }
                                            function9.g((AnimatedContentScopeImpl) objX11, obj9, composer3, 0);
                                        } else {
                                            composer3.D();
                                        }
                                        return Unit.f71739a;
                                    }
                                }, composer2), composer2, 12582912);
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH));
                    function6 = function4;
                    function5 = function5;
                    animatedContentTransitionScopeImpl3 = animatedContentTransitionScopeImpl4;
                    i6 = i7 + 1;
                    transition2 = transition;
                }
                function3 = function5;
                animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl3;
                gapComposerH.Z(false);
            }
            boolean zK = gapComposerH.K(transition.f()) | gapComposerH.K(animatedContentTransitionScopeImpl);
            Object objX4 = gapComposerH.x();
            if (zK || objX4 == composer$Companion$Empty$1) {
                objX4 = (ContentTransform) function3.invoke(animatedContentTransitionScopeImpl);
                gapComposerH.q(objX4);
            }
            ContentTransform contentTransform = (ContentTransform) objX4;
            Transition transition3 = animatedContentTransitionScopeImpl.f3458a;
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            boolean zK2 = gapComposerH.K(animatedContentTransitionScopeImpl);
            Object objX5 = gapComposerH.x();
            if (zK2 || objX5 == composer$Companion$Empty$1) {
                objX5 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX5);
            }
            MutableState mutableState2 = (MutableState) objX5;
            MutableState mutableStateL = SnapshotStateKt.l(contentTransform.d, gapComposerH);
            if (Intrinsics.c(transition3.f3988a.a(), ((SnapshotMutableStateImpl) transition3.d).getF10755b())) {
                mutableState2.setValue(Boolean.FALSE);
            } else if (mutableStateL.getF10755b() != null) {
                mutableState2.setValue(Boolean.TRUE);
            }
            if (((Boolean) mutableState2.getF10755b()).booleanValue()) {
                gapComposerH.L(1353077497);
                AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl5 = animatedContentTransitionScopeImpl;
                Transition transition4 = animatedContentTransitionScopeImpl5.f3458a;
                IntSize.Companion companion = IntSize.f11020b;
                snapshotStateList = snapshotStateList3;
                animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl5;
                GapComposer gapComposer3 = gapComposerH;
                deferredAnimationC = androidx.compose.animation.core.TransitionKt.c(transition4, VectorConvertersKt.f4041h, null, gapComposer3, 0, 2);
                boolean zK3 = gapComposer3.K(deferredAnimationC);
                Object objX6 = gapComposer3.x();
                if (zK3 || objX6 == composer$Companion$Empty$1) {
                    SizeTransform sizeTransform = (SizeTransform) mutableStateL.getF10755b();
                    objX6 = (sizeTransform == null || sizeTransform.getF3734a()) ? ClipKt.b(new DTFunctionNameModifier("createSizeAnimationModifier$animation")) : new DTFunctionNameModifier("createSizeAnimationModifier$animation");
                    gapComposer3.q(objX6);
                }
                dTFunctionNameModifier = (Modifier) objX6;
                gapComposer3.Z(false);
                gapComposer2 = gapComposer3;
            } else {
                snapshotStateList = snapshotStateList3;
                GapComposer gapComposer4 = gapComposerH;
                animatedContentTransitionScopeImpl2 = animatedContentTransitionScopeImpl;
                gapComposer4.L(1353343539);
                gapComposer4.Z(false);
                animatedContentTransitionScopeImpl2.f3462f = null;
                dTFunctionNameModifier = new DTFunctionNameModifier("createSizeAnimationModifier$animation");
                deferredAnimationC = null;
                gapComposer2 = gapComposer4;
            }
            Modifier modifierO = modifier2.o(dTFunctionNameModifier.o(new AnimatedContentTransitionScopeImpl.SizeModifierElement(deferredAnimationC, mutableStateL, animatedContentTransitionScopeImpl2)));
            Object objX7 = gapComposer2.x();
            if (objX7 == composer$Companion$Empty$1) {
                objX7 = new AnimatedContentMeasurePolicy(animatedContentTransitionScopeImpl2);
                gapComposer2.q(objX7);
            }
            AnimatedContentMeasurePolicy animatedContentMeasurePolicy = (AnimatedContentMeasurePolicy) objX7;
            int iHashCode = Long.hashCode(gapComposer2.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposer2.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposer2, modifierO);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposer2.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer2.B();
            if (gapComposer2.S) {
                gapComposer2.C(function0);
            } else {
                gapComposer2.o();
            }
            Updater.c(gapComposer2, animatedContentMeasurePolicy, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposer2, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.a(gapComposer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposer2, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposer2, modifierC, ComposeUiNode.Companion.d);
            gapComposer2.L(-860173498);
            int size2 = snapshotStateList.size();
            int i8 = 0;
            while (i8 < size2) {
                SnapshotStateList snapshotStateList4 = snapshotStateList;
                Object obj3 = snapshotStateList4.get(i8);
                gapComposer2.A(-2026002954, function2.invoke(obj3));
                Function2 function7 = (Function2) mutableScatterMap.e(obj3);
                if (function7 == null) {
                    gapComposer2.L(1618454323);
                    z = false;
                } else {
                    z = false;
                    gapComposer2.L(-2026001778);
                    function7.invoke(gapComposer2, 0);
                }
                gapComposer2.Z(z);
                gapComposer2.Z(z);
                i8++;
                snapshotStateList = snapshotStateList4;
            }
            gapComposer2.Z(false);
            gapComposer2.Z(true);
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
            gapComposer = gapComposer2;
        } else {
            GapComposer gapComposer5 = gapComposerH;
            gapComposer5.D();
            gapComposer = gapComposer5;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedContentKt$AnimatedContent$9
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj4, Object obj5) {
                    ((Number) obj5).intValue();
                    AnimatedContentKt.a(transition, modifier2, function1, alignment, function2, function4, (Composer) obj4, RecomposeScopeImplKt.a(i2 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0068  */
    /* JADX WARN: Code duplicated, block: B:41:0x006d  */
    /* JADX WARN: Code duplicated, block: B:43:0x0071  */
    /* JADX WARN: Code duplicated, block: B:45:0x0079  */
    /* JADX WARN: Code duplicated, block: B:46:0x007c  */
    /* JADX WARN: Code duplicated, block: B:50:0x0089  */
    /* JADX WARN: Code duplicated, block: B:52:0x008f  */
    /* JADX WARN: Code duplicated, block: B:53:0x0092  */
    /* JADX WARN: Code duplicated, block: B:57:0x009e  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:62:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:67:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:73:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:78:0x0102  */
    /* JADX WARN: Code duplicated, block: B:81:0x0112  */
    /* JADX WARN: Code duplicated, block: B:83:? A[RETURN, SYNTHETIC] */
    public static final void b(final Object obj, Modifier modifier, Function1 function1, Alignment alignment, String str, Function1 function2, final Function4 function4, Composer composer, final int i2, final int i3) {
        int i4;
        Function1 function3;
        int i5;
        int i6;
        String str2;
        int i7;
        int i8;
        boolean z;
        final Alignment alignment2;
        final Modifier modifier2;
        final String str3;
        final Function1 function5;
        final Function1 function6;
        RecomposeScopeImpl recomposeScopeImplB0;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Function1 function7;
        Object objX;
        Object objX2;
        int i9;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "AnimatedContent");
        }
        GapComposer gapComposerH = composer.h(1501828832);
        if ((i2 & 6) == 0) {
            i4 = ((i2 & 8) == 0 ? gapComposerH.K(obj) : gapComposerH.y(obj) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i10 = i3 & 2;
        if (i10 != 0) {
            i4 |= 48;
        } else if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(dTFunctionNameModifier) ? 32 : 16;
        }
        int i11 = i3 & 4;
        if (i11 == 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                function3 = function1;
                i4 |= gapComposerH.y(function3) ? 256 : 128;
            }
            i5 = i4 | 3072;
            i6 = i3 & 16;
            if (i6 != 0) {
                if ((i2 & 24576) == 0) {
                    str2 = str;
                    if (gapComposerH.K(str2)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i5 |= i7;
                }
                i8 = i5 | ImageMetadata.EDGE_MODE;
                if ((1572864 & i2) == 0) {
                    if (gapComposerH.y(function4)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i8 |= i9;
                }
                if ((599187 & i8) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i8 & 1, z)) {
                    if (i10 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("AnimatedContent");
                    }
                    Modifier modifier3 = dTFunctionNameModifier;
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i11 != 0) {
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = AnimatedContentKt$AnimatedContent$1$1.f3415c;
                            gapComposerH.q(objX2);
                        }
                        function7 = (Function1) objX2;
                    } else {
                        function7 = function3;
                    }
                    Alignment.f8582a.getClass();
                    BiasAlignment biasAlignment = Alignment.Companion.f8584b;
                    String str4 = i6 == 0 ? str2 : "AnimatedContent";
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = AnimatedContentKt$AnimatedContent$2$1.f3416c;
                        gapComposerH.q(objX);
                    }
                    Function1 function8 = (Function1) objX;
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    int i12 = i8 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.f(obj, str4, gapComposerH, (i8 & 14) | ((i8 >> 9) & 112)), modifier3, function7, biasAlignment, function8, function4, gapComposerH, (i8 & 8176) | (57344 & i12) | (i12 & ImageMetadata.JPEG_GPS_COORDINATES));
                    str3 = str4;
                    modifier2 = modifier3;
                    function5 = function7;
                    alignment2 = biasAlignment;
                    function6 = function8;
                } else {
                    gapComposerH.D();
                    alignment2 = alignment;
                    modifier2 = dTFunctionNameModifier;
                    str3 = str2;
                    function5 = function3;
                    function6 = function2;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedContentKt$AnimatedContent$3
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj2, Object obj3) {
                            ((Number) obj3).intValue();
                            AnimatedContentKt.b(obj, modifier2, function5, alignment2, str3, function6, function4, (Composer) obj2, RecomposeScopeImplKt.a(i2 | 1), i3);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i5 = i4 | 27648;
            str2 = str;
            i8 = i5 | ImageMetadata.EDGE_MODE;
            if ((1572864 & i2) == 0) {
                if (gapComposerH.y(function4)) {
                    i9 = 1048576;
                } else {
                    i9 = 524288;
                }
                i8 |= i9;
            }
            if ((599187 & i8) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i8 & 1, z)) {
                if (i10 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("AnimatedContent");
                }
                Modifier modifier4 = dTFunctionNameModifier;
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i11 != 0) {
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = AnimatedContentKt$AnimatedContent$1$1.f3415c;
                        gapComposerH.q(objX2);
                    }
                    function7 = (Function1) objX2;
                } else {
                    function7 = function3;
                }
                Alignment.f8582a.getClass();
                BiasAlignment biasAlignment2 = Alignment.Companion.f8584b;
                if (i6 == 0) {
                }
                objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = AnimatedContentKt$AnimatedContent$2$1.f3416c;
                    gapComposerH.q(objX);
                }
                Function1 function9 = (Function1) objX;
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                int i13 = i8 >> 3;
                a(androidx.compose.animation.core.TransitionKt.f(obj, str4, gapComposerH, (i8 & 14) | ((i8 >> 9) & 112)), modifier4, function7, biasAlignment2, function9, function4, gapComposerH, (i8 & 8176) | (57344 & i13) | (i13 & ImageMetadata.JPEG_GPS_COORDINATES));
                str3 = str4;
                modifier2 = modifier4;
                function5 = function7;
                alignment2 = biasAlignment2;
                function6 = function9;
            } else {
                gapComposerH.D();
                alignment2 = alignment;
                modifier2 = dTFunctionNameModifier;
                str3 = str2;
                function5 = function3;
                function6 = function2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedContentKt$AnimatedContent$3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        ((Number) obj3).intValue();
                        AnimatedContentKt.b(obj, modifier2, function5, alignment2, str3, function6, function4, (Composer) obj2, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i4 |= KyberEngine.KyberPolyBytes;
        function3 = function1;
        i5 = i4 | 3072;
        i6 = i3 & 16;
        if (i6 != 0) {
            if ((i2 & 24576) == 0) {
                str2 = str;
                if (gapComposerH.K(str2)) {
                    i7 = 16384;
                } else {
                    i7 = 8192;
                }
                i5 |= i7;
            }
            i8 = i5 | ImageMetadata.EDGE_MODE;
            if ((1572864 & i2) == 0) {
                if (gapComposerH.y(function4)) {
                    i9 = 1048576;
                } else {
                    i9 = 524288;
                }
                i8 |= i9;
            }
            if ((599187 & i8) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i8 & 1, z)) {
                if (i10 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("AnimatedContent");
                }
                Modifier modifier5 = dTFunctionNameModifier;
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i11 != 0) {
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = AnimatedContentKt$AnimatedContent$1$1.f3415c;
                        gapComposerH.q(objX2);
                    }
                    function7 = (Function1) objX2;
                } else {
                    function7 = function3;
                }
                Alignment.f8582a.getClass();
                BiasAlignment biasAlignment3 = Alignment.Companion.f8584b;
                if (i6 == 0) {
                }
                objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = AnimatedContentKt$AnimatedContent$2$1.f3416c;
                    gapComposerH.q(objX);
                }
                Function1 function10 = (Function1) objX;
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                int i14 = i8 >> 3;
                a(androidx.compose.animation.core.TransitionKt.f(obj, str4, gapComposerH, (i8 & 14) | ((i8 >> 9) & 112)), modifier5, function7, biasAlignment3, function10, function4, gapComposerH, (i8 & 8176) | (57344 & i14) | (i14 & ImageMetadata.JPEG_GPS_COORDINATES));
                str3 = str4;
                modifier2 = modifier5;
                function5 = function7;
                alignment2 = biasAlignment3;
                function6 = function10;
            } else {
                gapComposerH.D();
                alignment2 = alignment;
                modifier2 = dTFunctionNameModifier;
                str3 = str2;
                function5 = function3;
                function6 = function2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedContentKt$AnimatedContent$3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        ((Number) obj3).intValue();
                        AnimatedContentKt.b(obj, modifier2, function5, alignment2, str3, function6, function4, (Composer) obj2, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i5 = i4 | 27648;
        str2 = str;
        i8 = i5 | ImageMetadata.EDGE_MODE;
        if ((1572864 & i2) == 0) {
            if (gapComposerH.y(function4)) {
                i9 = 1048576;
            } else {
                i9 = 524288;
            }
            i8 |= i9;
        }
        if ((599187 & i8) != 599186) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i8 & 1, z)) {
            if (i10 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("AnimatedContent");
            }
            Modifier modifier6 = dTFunctionNameModifier;
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i11 != 0) {
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = AnimatedContentKt$AnimatedContent$1$1.f3415c;
                    gapComposerH.q(objX2);
                }
                function7 = (Function1) objX2;
            } else {
                function7 = function3;
            }
            Alignment.f8582a.getClass();
            BiasAlignment biasAlignment4 = Alignment.Companion.f8584b;
            if (i6 == 0) {
            }
            objX = gapComposerH.x();
            if (objX == composer$Companion$Empty$1) {
                objX = AnimatedContentKt$AnimatedContent$2$1.f3416c;
                gapComposerH.q(objX);
            }
            Function1 function11 = (Function1) objX;
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            int i15 = i8 >> 3;
            a(androidx.compose.animation.core.TransitionKt.f(obj, str4, gapComposerH, (i8 & 14) | ((i8 >> 9) & 112)), modifier6, function7, biasAlignment4, function11, function4, gapComposerH, (i8 & 8176) | (57344 & i15) | (i15 & ImageMetadata.JPEG_GPS_COORDINATES));
            str3 = str4;
            modifier2 = modifier6;
            function5 = function7;
            alignment2 = biasAlignment4;
            function6 = function11;
        } else {
            gapComposerH.D();
            alignment2 = alignment;
            modifier2 = dTFunctionNameModifier;
            str3 = str2;
            function5 = function3;
            function6 = function2;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedContentKt$AnimatedContent$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    ((Number) obj3).intValue();
                    AnimatedContentKt.b(obj, modifier2, function5, alignment2, str3, function6, function4, (Composer) obj2, RecomposeScopeImplKt.a(i2 | 1), i3);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final SizeTransform c(c cVar) {
        return new SizeTransformImpl(true, cVar);
    }

    public static SizeTransform d(int i2) {
        return new SizeTransformImpl((i2 & 1) != 0, AnimatedContentKt$SizeTransform$1.f3445c);
    }

    public static final ContentTransform e(EnterTransition enterTransition, ExitTransition exitTransition) {
        return new ContentTransform(enterTransition, exitTransition, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 12, null);
    }
}

package androidx.compose.animation;

import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionState;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.runtime.snapshots.StateListIterator;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0007\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"", "alpha", "animation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class CrossfadeKt {
    public static final void a(final Transition transition, Modifier modifier, final FiniteAnimationSpec finiteAnimationSpec, Function1 function1, final Function3 function3, Composer composer, final int i2) {
        Function1 function2;
        Modifier modifierE = modifier;
        TransitionState transitionState = transition.f3988a;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "Crossfade");
        }
        GapComposer gapComposerH = composer.h(-1877370462);
        int i3 = (i2 & 6) == 0 ? (gapComposerH.K(transition) ? 4 : 2) | i2 : i2;
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(modifierE) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(finiteAnimationSpec) ? 256 : 128;
        }
        int i4 = i3 | 3072;
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.y(function3) ? 16384 : 8192;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 9363) != 9362)) {
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = CrossfadeKt$Crossfade$3$1.f3560c;
                gapComposerH.q(objX);
            }
            function2 = (Function1) objX;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX2 = gapComposerH.x();
            Object obj = objX2;
            if (objX2 == composer$Companion$Empty$1) {
                SnapshotStateList snapshotStateList = new SnapshotStateList();
                snapshotStateList.add(transitionState.a());
                gapComposerH.q(snapshotStateList);
                obj = snapshotStateList;
            }
            SnapshotStateList snapshotStateList2 = (SnapshotStateList) obj;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = ScatterMapKt.b();
                gapComposerH.q(objX3);
            }
            MutableScatterMap mutableScatterMap = (MutableScatterMap) objX3;
            SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) transition.d;
            if (Intrinsics.c(transitionState.a(), snapshotMutableStateImpl.getF10755b())) {
                gapComposerH.L(321145192);
                if (snapshotStateList2.size() == 1 && Intrinsics.c(snapshotStateList2.get(0), snapshotMutableStateImpl.getF10755b())) {
                    gapComposerH.L(321469824);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(321279546);
                    boolean z = (i4 & 14) == 4;
                    Object objX4 = gapComposerH.x();
                    if (z || objX4 == composer$Companion$Empty$1) {
                        objX4 = new Function1<Object, Boolean>() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$4$1
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj2) {
                                return Boolean.valueOf(!Intrinsics.c(obj2, ((SnapshotMutableStateImpl) transition.d).getF10755b()));
                            }
                        };
                        gapComposerH.q(objX4);
                    }
                    CollectionsKt.a0(snapshotStateList2, (Function1) objX4);
                    mutableScatterMap.h();
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(321475776);
                gapComposerH.Z(false);
            }
            if (mutableScatterMap.b(snapshotMutableStateImpl.getF10755b())) {
                gapComposerH.L(322279296);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(321536443);
                ListIterator listIterator = snapshotStateList2.listIterator();
                int i5 = 0;
                while (true) {
                    StateListIterator stateListIterator = (StateListIterator) listIterator;
                    if (!stateListIterator.hasNext()) {
                        i5 = -1;
                        break;
                    } else if (Intrinsics.c(function2.invoke(stateListIterator.next()), function2.invoke(snapshotMutableStateImpl.getF10755b()))) {
                        break;
                    } else {
                        i5++;
                    }
                }
                if (i5 == -1) {
                    snapshotStateList2.add(snapshotMutableStateImpl.getF10755b());
                } else {
                    snapshotStateList2.set(i5, snapshotMutableStateImpl.getF10755b());
                }
                mutableScatterMap.h();
                int size = snapshotStateList2.size();
                for (int i6 = 0; i6 < size; i6++) {
                    final Object obj2 = snapshotStateList2.get(i6);
                    mutableScatterMap.o(obj2, ComposableLambdaKt.b(-934471669, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$5$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
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
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj3, Object obj4) {
                            Object objA;
                            Composer composer2 = (Composer) obj3;
                            int iIntValue = ((Number) obj4).intValue();
                            if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                final FiniteAnimationSpec finiteAnimationSpec2 = finiteAnimationSpec;
                                Function3<Transition.Segment<Object>, Composer, Integer, FiniteAnimationSpec<Float>> function4 = new Function3<Transition.Segment<Object>, Composer, Integer, FiniteAnimationSpec<Float>>() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$5$1$alpha$2
                                    {
                                        super(3);
                                    }

                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object A(Object obj5, Object obj6, Object obj7) {
                                        Composer composer3 = (Composer) obj6;
                                        ((Number) obj7).intValue();
                                        composer3.L(955869654);
                                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                        composer3.F();
                                        return finiteAnimationSpec2;
                                    }
                                };
                                TwoWayConverter twoWayConverter = VectorConvertersKt.f4036a;
                                final Transition transition2 = transition;
                                boolean zI = transition2.i();
                                TransitionState transitionState2 = transition2.f3988a;
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (zI) {
                                    composer2.L(1666827533);
                                    composer2.F();
                                    objA = transitionState2.a();
                                } else {
                                    composer2.L(1666573488);
                                    boolean zK = composer2.K(transition2);
                                    objA = composer2.x();
                                    if (zK || objA == composer$Companion$Empty$2) {
                                        Snapshot.f8462e.getClass();
                                        Snapshot snapshotA = Snapshot.Companion.a();
                                        Function1 f8461f = snapshotA != null ? snapshotA.getF8461f() : null;
                                        Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
                                        try {
                                            Object objA2 = transitionState2.a();
                                            Snapshot.Companion.e(snapshotA, snapshotB, f8461f);
                                            composer2.q(objA2);
                                            objA = objA2;
                                        } catch (Throwable th) {
                                            Snapshot.Companion.e(snapshotA, snapshotB, f8461f);
                                            throw th;
                                        }
                                    }
                                    composer2.F();
                                }
                                composer2.L(1378811975);
                                Object obj5 = obj2;
                                boolean zC = Intrinsics.c(objA, obj5);
                                float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                float f3 = zC ? 1.0f : 0.0f;
                                composer2.F();
                                Float fValueOf = Float.valueOf(f3);
                                boolean zK2 = composer2.K(transition2);
                                Object objX5 = composer2.x();
                                if (zK2 || objX5 == composer$Companion$Empty$2) {
                                    objX5 = SnapshotStateKt.e(new Function0<Object>() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$5$1$invoke$$inlined$animateFloat$1
                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            return ((SnapshotMutableStateImpl) transition2.d).getF10755b();
                                        }
                                    });
                                    composer2.q(objX5);
                                }
                                Object f10755b = ((State) objX5).getF10755b();
                                composer2.L(1378811975);
                                if (Intrinsics.c(f10755b, obj5)) {
                                    f2 = 1.0f;
                                }
                                composer2.F();
                                Float fValueOf2 = Float.valueOf(f2);
                                boolean zK3 = composer2.K(transition2);
                                Object objX6 = composer2.x();
                                if (zK3 || objX6 == composer$Companion$Empty$2) {
                                    objX6 = SnapshotStateKt.e(new Function0<Transition.Segment<Object>>() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$5$1$invoke$$inlined$animateFloat$2
                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            return transition2.f();
                                        }
                                    });
                                    composer2.q(objX6);
                                }
                                final Transition.TransitionAnimationState transitionAnimationStateD = androidx.compose.animation.core.TransitionKt.d(transition2, fValueOf, fValueOf2, (FiniteAnimationSpec) function4.A(((State) objX6).getF10755b(), composer2, 0), twoWayConverter, "FloatAnimation", composer2, 0);
                                boolean zK4 = composer2.K(transitionAnimationStateD);
                                Object objX7 = composer2.x();
                                if (zK4 || objX7 == composer$Companion$Empty$2) {
                                    objX7 = new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$5$1$1$1
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(1);
                                        }

                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj6) {
                                            ((GraphicsLayerScope) obj6).d(((Number) transitionAnimationStateD.getF10755b()).floatValue());
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer2.q(objX7);
                                }
                                Modifier modifierA = GraphicsLayerModifierKt.a(Modifier.Companion.f8607b, (Function1) objX7);
                                Alignment.f8582a.getClass();
                                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                int iHashCode = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier modifierC = ComposedModifierKt.c(composer2, modifierA);
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
                                function3.A(obj5, composer2, 0);
                                composer2.r();
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH));
                }
                gapComposerH.Z(false);
            }
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int iHashCode = Long.hashCode(gapComposerH.T);
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
            Updater.a(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            gapComposerH.L(-1312707512);
            int size2 = snapshotStateList2.size();
            for (int i7 = 0; i7 < size2; i7++) {
                Object obj3 = snapshotStateList2.get(i7);
                gapComposerH.A(1171574969, function2.invoke(obj3));
                Function2 function4 = (Function2) mutableScatterMap.e(obj3);
                if (function4 == null) {
                    gapComposerH.L(1959122128);
                } else {
                    gapComposerH.L(1171576145);
                    function4.invoke(gapComposerH, 0);
                }
                gapComposerH.Z(false);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(false);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
            function2 = function1;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier2 = modifierE;
            final Function1 function5 = function2;
            recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$7
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj4, Object obj5) {
                    ((Number) obj5).intValue();
                    CrossfadeKt.a(transition, modifier2, finiteAnimationSpec, function5, function3, (Composer) obj4, RecomposeScopeImplKt.a(i2 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0064  */
    /* JADX WARN: Code duplicated, block: B:42:0x0069  */
    /* JADX WARN: Code duplicated, block: B:44:0x006d  */
    /* JADX WARN: Code duplicated, block: B:46:0x0075  */
    /* JADX WARN: Code duplicated, block: B:47:0x0078  */
    /* JADX WARN: Code duplicated, block: B:51:0x0081  */
    /* JADX WARN: Code duplicated, block: B:53:0x0087  */
    /* JADX WARN: Code duplicated, block: B:54:0x008a  */
    /* JADX WARN: Code duplicated, block: B:58:0x0094  */
    /* JADX WARN: Code duplicated, block: B:59:0x0096  */
    /* JADX WARN: Code duplicated, block: B:62:0x009f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:63:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:65:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:71:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:74:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:76:? A[RETURN, SYNTHETIC] */
    public static final void b(final Object obj, Modifier modifier, FiniteAnimationSpec finiteAnimationSpec, String str, final Function3 function3, Composer composer, final int i2, final int i3) {
        int i4;
        FiniteAnimationSpec finiteAnimationSpec2;
        int i5;
        String str2;
        int i6;
        boolean z;
        final Modifier modifier2;
        final FiniteAnimationSpec finiteAnimationSpec3;
        final String str3;
        RecomposeScopeImpl recomposeScopeImplB0;
        FiniteAnimationSpec finiteAnimationSpecC;
        int i7;
        Modifier modifierE = modifier != null ? defpackage.a.e(modifier, "Crossfade") : modifier;
        GapComposer gapComposerH = composer.h(-513216493);
        if ((i2 & 6) == 0) {
            i4 = ((i2 & 8) == 0 ? gapComposerH.K(obj) : gapComposerH.y(obj) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i8 = i3 & 2;
        if (i8 != 0) {
            i4 |= 48;
        } else if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(modifierE) ? 32 : 16;
        }
        int i9 = i3 & 4;
        if (i9 == 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                finiteAnimationSpec2 = finiteAnimationSpec;
                i4 |= gapComposerH.y(finiteAnimationSpec2) ? 256 : 128;
            }
            i5 = i3 & 8;
            if (i5 != 0) {
                if ((i2 & 3072) == 0) {
                    str2 = str;
                    if (gapComposerH.K(str2)) {
                        i6 = 2048;
                    } else {
                        i6 = 1024;
                    }
                    i4 |= i6;
                }
                if ((i2 & 24576) == 0) {
                    if (gapComposerH.y(function3)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i4 |= i7;
                }
                if ((i4 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i4 & 1, z)) {
                    if (i8 != 0) {
                        modifierE = new DTFunctionNameModifier("Crossfade");
                    }
                    if (i9 != 0) {
                        finiteAnimationSpecC = AnimationSpecKt.c(0, 0, null, 7);
                    } else {
                        finiteAnimationSpecC = finiteAnimationSpec2;
                    }
                    String str4 = i5 == 0 ? str2 : "Crossfade";
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifier3 = modifierE;
                    a(androidx.compose.animation.core.TransitionKt.f(obj, str4, gapComposerH, (i4 & 14) | ((i4 >> 6) & 112)), modifier3, finiteAnimationSpecC, null, function3, gapComposerH, i4 & 58352);
                    str3 = str4;
                    modifier2 = modifier3;
                    finiteAnimationSpec3 = finiteAnimationSpecC;
                } else {
                    gapComposerH.D();
                    modifier2 = modifierE;
                    finiteAnimationSpec3 = finiteAnimationSpec2;
                    str3 = str2;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj2, Object obj3) {
                            ((Number) obj3).intValue();
                            CrossfadeKt.b(obj, modifier2, finiteAnimationSpec3, str3, function3, (Composer) obj2, RecomposeScopeImplKt.a(i2 | 1), i3);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i4 |= 3072;
            str2 = str;
            if ((i2 & 24576) == 0) {
                if (gapComposerH.y(function3)) {
                    i7 = 16384;
                } else {
                    i7 = 8192;
                }
                i4 |= i7;
            }
            if ((i4 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i4 & 1, z)) {
                if (i8 != 0) {
                    modifierE = new DTFunctionNameModifier("Crossfade");
                }
                if (i9 != 0) {
                    finiteAnimationSpecC = AnimationSpecKt.c(0, 0, null, 7);
                } else {
                    finiteAnimationSpecC = finiteAnimationSpec2;
                }
                if (i5 == 0) {
                }
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                Modifier modifier4 = modifierE;
                a(androidx.compose.animation.core.TransitionKt.f(obj, str4, gapComposerH, (i4 & 14) | ((i4 >> 6) & 112)), modifier4, finiteAnimationSpecC, null, function3, gapComposerH, i4 & 58352);
                str3 = str4;
                modifier2 = modifier4;
                finiteAnimationSpec3 = finiteAnimationSpecC;
            } else {
                gapComposerH.D();
                modifier2 = modifierE;
                finiteAnimationSpec3 = finiteAnimationSpec2;
                str3 = str2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        ((Number) obj3).intValue();
                        CrossfadeKt.b(obj, modifier2, finiteAnimationSpec3, str3, function3, (Composer) obj2, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i4 |= KyberEngine.KyberPolyBytes;
        finiteAnimationSpec2 = finiteAnimationSpec;
        i5 = i3 & 8;
        if (i5 != 0) {
            if ((i2 & 3072) == 0) {
                str2 = str;
                if (gapComposerH.K(str2)) {
                    i6 = 2048;
                } else {
                    i6 = 1024;
                }
                i4 |= i6;
            }
            if ((i2 & 24576) == 0) {
                if (gapComposerH.y(function3)) {
                    i7 = 16384;
                } else {
                    i7 = 8192;
                }
                i4 |= i7;
            }
            if ((i4 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i4 & 1, z)) {
                if (i8 != 0) {
                    modifierE = new DTFunctionNameModifier("Crossfade");
                }
                if (i9 != 0) {
                    finiteAnimationSpecC = AnimationSpecKt.c(0, 0, null, 7);
                } else {
                    finiteAnimationSpecC = finiteAnimationSpec2;
                }
                if (i5 == 0) {
                }
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                Modifier modifier5 = modifierE;
                a(androidx.compose.animation.core.TransitionKt.f(obj, str4, gapComposerH, (i4 & 14) | ((i4 >> 6) & 112)), modifier5, finiteAnimationSpecC, null, function3, gapComposerH, i4 & 58352);
                str3 = str4;
                modifier2 = modifier5;
                finiteAnimationSpec3 = finiteAnimationSpecC;
            } else {
                gapComposerH.D();
                modifier2 = modifierE;
                finiteAnimationSpec3 = finiteAnimationSpec2;
                str3 = str2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        ((Number) obj3).intValue();
                        CrossfadeKt.b(obj, modifier2, finiteAnimationSpec3, str3, function3, (Composer) obj2, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i4 |= 3072;
        str2 = str;
        if ((i2 & 24576) == 0) {
            if (gapComposerH.y(function3)) {
                i7 = 16384;
            } else {
                i7 = 8192;
            }
            i4 |= i7;
        }
        if ((i4 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i4 & 1, z)) {
            if (i8 != 0) {
                modifierE = new DTFunctionNameModifier("Crossfade");
            }
            if (i9 != 0) {
                finiteAnimationSpecC = AnimationSpecKt.c(0, 0, null, 7);
            } else {
                finiteAnimationSpecC = finiteAnimationSpec2;
            }
            if (i5 == 0) {
            }
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            Modifier modifier6 = modifierE;
            a(androidx.compose.animation.core.TransitionKt.f(obj, str4, gapComposerH, (i4 & 14) | ((i4 >> 6) & 112)), modifier6, finiteAnimationSpecC, null, function3, gapComposerH, i4 & 58352);
            str3 = str4;
            modifier2 = modifier6;
            finiteAnimationSpec3 = finiteAnimationSpecC;
        } else {
            gapComposerH.D();
            modifier2 = modifierE;
            finiteAnimationSpec3 = finiteAnimationSpec2;
            str3 = str2;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    ((Number) obj3).intValue();
                    CrossfadeKt.b(obj, modifier2, finiteAnimationSpec3, str3, function3, (Composer) obj2, RecomposeScopeImplKt.a(i2 | 1), i3);
                    return Unit.f71739a;
                }
            };
        }
    }
}

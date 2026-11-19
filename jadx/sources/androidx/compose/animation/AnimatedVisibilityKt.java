package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionState;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntSize;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003¨\u0006\u0005²\u0006\u001e\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0004\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"Lkotlin/Function2;", "Landroidx/compose/animation/EnterExitState;", "", "shouldDisposeBlockUpdated", "shouldDisposeAfterExit", "animation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class AnimatedVisibilityKt {
    public static final void a(final Transition transition, final Function1 function1, Modifier modifier, final EnterTransition enterTransition, final ExitTransition exitTransition, final Function2 function2, final Function3 function3, Composer composer, final int i2) {
        int i3;
        GapComposer gapComposer;
        boolean z;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "AnimatedEnterExitImpl");
        }
        final Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(1912839215);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(transition) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function1) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(modifier2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.K(enterTransition) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.K(exitTransition) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function2) ? 131072 : 65536;
        }
        int i4 = i3 | 1572864;
        if ((12582912 & i2) == 0) {
            i4 |= gapComposerH.y(function3) ? 8388608 : 4194304;
        }
        int i5 = i4;
        if (gapComposerH.p(i5 & 1, (i5 & 4793491) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableState = transition.d;
            TransitionState transitionState = transition.f3988a;
            if (((Boolean) function1.invoke(((SnapshotMutableStateImpl) mutableState).getF10755b())).booleanValue() || ((Boolean) function1.invoke(transitionState.a())).booleanValue() || transition.i() || transition.d()) {
                gapComposerH.L(-232386135);
                int i6 = i5 & 14;
                int i7 = i6 | 48;
                int i8 = i7 & 14;
                boolean z2 = ((i8 ^ 6) > 4 && gapComposerH.K(transition)) || (i7 & 6) == 4;
                Object objX = gapComposerH.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (z2 || objX == composer$Companion$Empty$1) {
                    objX = transitionState.a();
                    gapComposerH.q(objX);
                }
                if (transition.i()) {
                    objX = transitionState.a();
                }
                gapComposerH.L(1844425648);
                EnterExitState enterExitStateG = g(transition, function1, objX, gapComposerH);
                gapComposerH.Z(false);
                Object f10755b = ((SnapshotMutableStateImpl) transition.d).getF10755b();
                gapComposerH.L(1844425648);
                EnterExitState enterExitStateG2 = g(transition, function1, f10755b, gapComposerH);
                gapComposerH.Z(false);
                Transition transitionB = androidx.compose.animation.core.TransitionKt.b(transition, enterExitStateG, enterExitStateG2, "EnterExitTransition", gapComposerH, i8 | 3072);
                EnterTransition enterTransitionY = EnterExitTransitionKt.y(transitionB, enterTransition, gapComposerH, (i5 >> 6) & 112);
                MutableState mutableState2 = transitionB.d;
                TransitionState transitionState2 = transitionB.f3988a;
                ExitTransition exitTransitionZ = EnterExitTransitionKt.z(transitionB, exitTransition, gapComposerH, (i5 >> 9) & 112);
                MutableState mutableStateL = SnapshotStateKt.l(function2, gapComposerH);
                Object objInvoke = function2.invoke(transitionState2.a(), ((SnapshotMutableStateImpl) mutableState2).getF10755b());
                boolean zK = gapComposerH.K(transitionB) | gapComposerH.K(mutableStateL);
                Object objX2 = gapComposerH.x();
                if (zK || objX2 == composer$Companion$Empty$1) {
                    objX2 = new AnimatedVisibilityKt$AnimatedEnterExitImpl$shouldDisposeAfterExit$2$1(transitionB, mutableStateL, null);
                    gapComposerH.q(objX2);
                }
                MutableState mutableStateI = SnapshotStateKt.i(gapComposerH, objInvoke, (Function2) objX2);
                Object objA = transitionState2.a();
                EnterExitState enterExitState = EnterExitState.PostExit;
                if (objA == enterExitState && ((SnapshotMutableStateImpl) mutableState2).getF10755b() == enterExitState && ((Boolean) mutableStateI.getF10755b()).booleanValue()) {
                    gapComposerH.L(-229368781);
                    gapComposerH.Z(false);
                    z = false;
                    gapComposer = gapComposerH;
                } else {
                    gapComposerH.L(-230699766);
                    boolean z3 = i6 == 4;
                    Object objX3 = gapComposerH.x();
                    if (z3 || objX3 == composer$Companion$Empty$1) {
                        objX3 = new AnimatedVisibilityScopeImpl(transitionB);
                        gapComposerH.q(objX3);
                    }
                    AnimatedVisibilityScopeImpl animatedVisibilityScopeImpl = (AnimatedVisibilityScopeImpl) objX3;
                    z = false;
                    Modifier modifierA = EnterExitTransitionKt.a(transitionB, enterTransitionY, exitTransitionZ, null, "Built-in", gapComposerH, 199680, 8);
                    gapComposer = gapComposerH;
                    gapComposer.L(-7404393);
                    gapComposer.Z(false);
                    Modifier modifierO = modifier2.o(modifierA.o(new DTFunctionNameModifier("AnimatedEnterExitImpl")));
                    Object objX4 = gapComposer.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new AnimatedEnterExitMeasurePolicy(animatedVisibilityScopeImpl);
                        gapComposer.q(objX4);
                    }
                    AnimatedEnterExitMeasurePolicy animatedEnterExitMeasurePolicy = (AnimatedEnterExitMeasurePolicy) objX4;
                    int iHashCode = Long.hashCode(gapComposer.T);
                    PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposer.U();
                    Modifier modifierC = ComposedModifierKt.c(gapComposer, modifierO);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (gapComposer.f7976a == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposer.B();
                    if (gapComposer.S) {
                        gapComposer.C(function0);
                    } else {
                        gapComposer.o();
                    }
                    Updater.c(gapComposer, animatedEnterExitMeasurePolicy, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposer, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.a(gapComposer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposer, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposer, modifierC, ComposeUiNode.Companion.d);
                    function3.A(animatedVisibilityScopeImpl, gapComposer, Integer.valueOf((i5 >> 18) & 112));
                    gapComposer.Z(true);
                    gapComposer.Z(false);
                }
                gapComposer.Z(z);
            } else {
                gapComposerH.L(-229362829);
                gapComposerH.Z(false);
                gapComposer = gapComposerH;
            }
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedEnterExitImpl$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    AnimatedVisibilityKt.a(transition, function1, modifier2, enterTransition, exitTransition, function2, function3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(final MutableTransitionState mutableTransitionState, Modifier modifier, final EnterTransition enterTransition, ExitTransition exitTransition, String str, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i2) {
        int i3;
        final ExitTransition exitTransition2;
        final String str2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "AnimatedVisibility");
        }
        final Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(657024243);
        if ((i2 & 6) == 0) {
            i3 = ((i2 & 8) == 0 ? gapComposerH.K(mutableTransitionState) : gapComposerH.y(mutableTransitionState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(modifier2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(enterTransition) ? 256 : 128;
        }
        int i4 = i3 | 27648;
        if ((196608 & i2) == 0) {
            i4 |= gapComposerH.y(composableLambdaImpl) ? 131072 : 65536;
        }
        if (gapComposerH.p(i4 & 1, (74899 & i4) != 74898)) {
            ExitTransition exitTransitionB = EnterExitTransitionKt.h(null, 3).b(EnterExitTransitionKt.m());
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Transition transitionE = androidx.compose.animation.core.TransitionKt.e(mutableTransitionState, "AnimatedVisibility", gapComposerH, (i4 & 14) | ((i4 >> 9) & 112), 0);
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = AnimatedVisibilityKt$AnimatedVisibility$7$1.f3516c;
                gapComposerH.q(objX);
            }
            Function1 function1 = (Function1) objX;
            int i5 = i4 << 3;
            f(transitionE, function1, modifier2, enterTransition, exitTransitionB, composableLambdaImpl, gapComposerH, (i5 & 57344) | (i5 & 896) | 48 | (i5 & 7168) | (i4 & ImageMetadata.JPEG_GPS_COORDINATES));
            str2 = "AnimatedVisibility";
            exitTransition2 = exitTransitionB;
        } else {
            gapComposerH.D();
            exitTransition2 = exitTransition;
            str2 = str;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$8
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    AnimatedVisibilityKt.b(mutableTransitionState, modifier2, enterTransition, exitTransition2, str2, composableLambdaImpl, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0061  */
    /* JADX WARN: Code duplicated, block: B:38:0x0066  */
    /* JADX WARN: Code duplicated, block: B:40:0x006a  */
    /* JADX WARN: Code duplicated, block: B:42:0x0072  */
    /* JADX WARN: Code duplicated, block: B:43:0x0075  */
    /* JADX WARN: Code duplicated, block: B:47:0x007e  */
    /* JADX WARN: Code duplicated, block: B:49:0x0082  */
    /* JADX WARN: Code duplicated, block: B:51:0x0085  */
    /* JADX WARN: Code duplicated, block: B:53:0x008d  */
    /* JADX WARN: Code duplicated, block: B:54:0x0090  */
    /* JADX WARN: Code duplicated, block: B:58:0x009a  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:65:0x00af  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:69:0x00ba A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:70:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:76:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:79:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:82:0x0105  */
    /* JADX WARN: Code duplicated, block: B:84:0x0128  */
    /* JADX WARN: Code duplicated, block: B:87:0x0135  */
    /* JADX WARN: Code duplicated, block: B:89:? A[RETURN, SYNTHETIC] */
    public static final void c(final ColumnScope columnScope, boolean z, Modifier modifier, EnterTransition enterTransition, ExitTransition exitTransition, String str, final Function3 function3, Composer composer, final int i2, final int i3) {
        final boolean z2;
        int i4;
        EnterTransition enterTransitionB;
        int i5;
        ExitTransition exitTransition2;
        int i6;
        int i7;
        String str2;
        int i8;
        boolean z3;
        final Modifier modifier2;
        final EnterTransition enterTransition2;
        final ExitTransition exitTransition3;
        final String str3;
        RecomposeScopeImpl recomposeScopeImplB0;
        ExitTransition exitTransitionB;
        Object objX;
        int i9;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "AnimatedVisibility");
        }
        GapComposer gapComposerH = composer.h(1799879339);
        if ((i2 & 48) == 0) {
            z2 = z;
            i4 = (gapComposerH.b(z2) ? 32 : 16) | i2;
        } else {
            z2 = z;
            i4 = i2;
        }
        int i10 = i3 & 2;
        if (i10 != 0) {
            i4 |= KyberEngine.KyberPolyBytes;
        } else if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(dTFunctionNameModifier) ? 256 : 128;
        }
        int i11 = i3 & 4;
        if (i11 == 0) {
            if ((i2 & 3072) == 0) {
                enterTransitionB = enterTransition;
                i4 |= gapComposerH.K(enterTransitionB) ? 2048 : 1024;
            }
            i5 = i3 & 8;
            if (i5 != 0) {
                if ((i2 & 24576) == 0) {
                    exitTransition2 = exitTransition;
                    if (gapComposerH.K(exitTransition2)) {
                        i6 = 16384;
                    } else {
                        i6 = 8192;
                    }
                    i4 |= i6;
                }
                i7 = i3 & 16;
                if (i7 != 0) {
                    if ((196608 & i2) == 0) {
                        str2 = str;
                        if (gapComposerH.K(str2)) {
                            i8 = 131072;
                        } else {
                            i8 = 65536;
                        }
                        i4 |= i8;
                    }
                    if ((1572864 & i2) == 0) {
                        if (gapComposerH.y(function3)) {
                            i9 = 1048576;
                        } else {
                            i9 = 524288;
                        }
                        i4 |= i9;
                    }
                    if ((599185 & i4) != 599184) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (gapComposerH.p(i4 & 1, z3)) {
                        if (i10 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("AnimatedVisibility");
                        }
                        if (i11 != 0) {
                            enterTransitionB = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3).b(EnterExitTransitionKt.d(null, null, null, 15));
                        }
                        if (i5 != 0) {
                            exitTransitionB = EnterExitTransitionKt.h(null, 3).b(EnterExitTransitionKt.n(null, null, null, 15));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        String str4 = i7 == 0 ? str2 : "AnimatedVisibility";
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        int i12 = i4 >> 3;
                        Transition transitionF = androidx.compose.animation.core.TransitionKt.f(Boolean.valueOf(z2), str4, gapComposerH, (i12 & 14) | ((i4 >> 12) & 112));
                        objX = gapComposerH.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = AnimatedVisibilityKt$AnimatedVisibility$5$1.f3508c;
                            gapComposerH.q(objX);
                        }
                        Modifier modifier3 = dTFunctionNameModifier;
                        EnterTransition enterTransition3 = enterTransitionB;
                        f(transitionF, (Function1) objX, modifier3, enterTransition3, exitTransitionB, function3, gapComposerH, (i4 & 57344) | (i4 & 896) | 48 | (i4 & 7168) | (458752 & i12));
                        str3 = str4;
                        modifier2 = modifier3;
                        enterTransition2 = enterTransition3;
                        exitTransition3 = exitTransitionB;
                    } else {
                        gapComposerH.D();
                        modifier2 = dTFunctionNameModifier;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransition2;
                        str3 = str2;
                    }
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$6
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Number) obj2).intValue();
                                AnimatedVisibilityKt.c(columnScope, z2, modifier2, enterTransition2, exitTransition3, str3, function3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i4 |= ImageMetadata.EDGE_MODE;
                str2 = str;
                if ((1572864 & i2) == 0) {
                    if (gapComposerH.y(function3)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i4 |= i9;
                }
                if ((599185 & i4) != 599184) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i4 & 1, z3)) {
                    if (i10 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("AnimatedVisibility");
                    }
                    if (i11 != 0) {
                        enterTransitionB = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3).b(EnterExitTransitionKt.d(null, null, null, 15));
                    }
                    if (i5 != 0) {
                        exitTransitionB = EnterExitTransitionKt.h(null, 3).b(EnterExitTransitionKt.n(null, null, null, 15));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i7 == 0) {
                    }
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    int i13 = i4 >> 3;
                    Transition transitionF2 = androidx.compose.animation.core.TransitionKt.f(Boolean.valueOf(z2), str4, gapComposerH, (i13 & 14) | ((i4 >> 12) & 112));
                    objX = gapComposerH.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = AnimatedVisibilityKt$AnimatedVisibility$5$1.f3508c;
                        gapComposerH.q(objX);
                    }
                    Modifier modifier4 = dTFunctionNameModifier;
                    EnterTransition enterTransition4 = enterTransitionB;
                    f(transitionF2, (Function1) objX, modifier4, enterTransition4, exitTransitionB, function3, gapComposerH, (i4 & 57344) | (i4 & 896) | 48 | (i4 & 7168) | (458752 & i13));
                    str3 = str4;
                    modifier2 = modifier4;
                    enterTransition2 = enterTransition4;
                    exitTransition3 = exitTransitionB;
                } else {
                    gapComposerH.D();
                    modifier2 = dTFunctionNameModifier;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransition2;
                    str3 = str2;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$6
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Number) obj2).intValue();
                            AnimatedVisibilityKt.c(columnScope, z2, modifier2, enterTransition2, exitTransition3, str3, function3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i4 |= 24576;
            exitTransition2 = exitTransition;
            i7 = i3 & 16;
            if (i7 != 0) {
                if ((196608 & i2) == 0) {
                    str2 = str;
                    if (gapComposerH.K(str2)) {
                        i8 = 131072;
                    } else {
                        i8 = 65536;
                    }
                    i4 |= i8;
                }
                if ((1572864 & i2) == 0) {
                    if (gapComposerH.y(function3)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i4 |= i9;
                }
                if ((599185 & i4) != 599184) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i4 & 1, z3)) {
                    if (i10 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("AnimatedVisibility");
                    }
                    if (i11 != 0) {
                        enterTransitionB = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3).b(EnterExitTransitionKt.d(null, null, null, 15));
                    }
                    if (i5 != 0) {
                        exitTransitionB = EnterExitTransitionKt.h(null, 3).b(EnterExitTransitionKt.n(null, null, null, 15));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i7 == 0) {
                    }
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    int i14 = i4 >> 3;
                    Transition transitionF3 = androidx.compose.animation.core.TransitionKt.f(Boolean.valueOf(z2), str4, gapComposerH, (i14 & 14) | ((i4 >> 12) & 112));
                    objX = gapComposerH.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = AnimatedVisibilityKt$AnimatedVisibility$5$1.f3508c;
                        gapComposerH.q(objX);
                    }
                    Modifier modifier5 = dTFunctionNameModifier;
                    EnterTransition enterTransition5 = enterTransitionB;
                    f(transitionF3, (Function1) objX, modifier5, enterTransition5, exitTransitionB, function3, gapComposerH, (i4 & 57344) | (i4 & 896) | 48 | (i4 & 7168) | (458752 & i14));
                    str3 = str4;
                    modifier2 = modifier5;
                    enterTransition2 = enterTransition5;
                    exitTransition3 = exitTransitionB;
                } else {
                    gapComposerH.D();
                    modifier2 = dTFunctionNameModifier;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransition2;
                    str3 = str2;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$6
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Number) obj2).intValue();
                            AnimatedVisibilityKt.c(columnScope, z2, modifier2, enterTransition2, exitTransition3, str3, function3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i4 |= ImageMetadata.EDGE_MODE;
            str2 = str;
            if ((1572864 & i2) == 0) {
                if (gapComposerH.y(function3)) {
                    i9 = 1048576;
                } else {
                    i9 = 524288;
                }
                i4 |= i9;
            }
            if ((599185 & i4) != 599184) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i4 & 1, z3)) {
                if (i10 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("AnimatedVisibility");
                }
                if (i11 != 0) {
                    enterTransitionB = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3).b(EnterExitTransitionKt.d(null, null, null, 15));
                }
                if (i5 != 0) {
                    exitTransitionB = EnterExitTransitionKt.h(null, 3).b(EnterExitTransitionKt.n(null, null, null, 15));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i7 == 0) {
                }
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                int i15 = i4 >> 3;
                Transition transitionF4 = androidx.compose.animation.core.TransitionKt.f(Boolean.valueOf(z2), str4, gapComposerH, (i15 & 14) | ((i4 >> 12) & 112));
                objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = AnimatedVisibilityKt$AnimatedVisibility$5$1.f3508c;
                    gapComposerH.q(objX);
                }
                Modifier modifier6 = dTFunctionNameModifier;
                EnterTransition enterTransition6 = enterTransitionB;
                f(transitionF4, (Function1) objX, modifier6, enterTransition6, exitTransitionB, function3, gapComposerH, (i4 & 57344) | (i4 & 896) | 48 | (i4 & 7168) | (458752 & i15));
                str3 = str4;
                modifier2 = modifier6;
                enterTransition2 = enterTransition6;
                exitTransition3 = exitTransitionB;
            } else {
                gapComposerH.D();
                modifier2 = dTFunctionNameModifier;
                enterTransition2 = enterTransitionB;
                exitTransition3 = exitTransition2;
                str3 = str2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$6
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Number) obj2).intValue();
                        AnimatedVisibilityKt.c(columnScope, z2, modifier2, enterTransition2, exitTransition3, str3, function3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i4 |= 3072;
        enterTransitionB = enterTransition;
        i5 = i3 & 8;
        if (i5 != 0) {
            if ((i2 & 24576) == 0) {
                exitTransition2 = exitTransition;
                if (gapComposerH.K(exitTransition2)) {
                    i6 = 16384;
                } else {
                    i6 = 8192;
                }
                i4 |= i6;
            }
            i7 = i3 & 16;
            if (i7 != 0) {
                if ((196608 & i2) == 0) {
                    str2 = str;
                    if (gapComposerH.K(str2)) {
                        i8 = 131072;
                    } else {
                        i8 = 65536;
                    }
                    i4 |= i8;
                }
                if ((1572864 & i2) == 0) {
                    if (gapComposerH.y(function3)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i4 |= i9;
                }
                if ((599185 & i4) != 599184) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i4 & 1, z3)) {
                    if (i10 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("AnimatedVisibility");
                    }
                    if (i11 != 0) {
                        enterTransitionB = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3).b(EnterExitTransitionKt.d(null, null, null, 15));
                    }
                    if (i5 != 0) {
                        exitTransitionB = EnterExitTransitionKt.h(null, 3).b(EnterExitTransitionKt.n(null, null, null, 15));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i7 == 0) {
                    }
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    int i16 = i4 >> 3;
                    Transition transitionF5 = androidx.compose.animation.core.TransitionKt.f(Boolean.valueOf(z2), str4, gapComposerH, (i16 & 14) | ((i4 >> 12) & 112));
                    objX = gapComposerH.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = AnimatedVisibilityKt$AnimatedVisibility$5$1.f3508c;
                        gapComposerH.q(objX);
                    }
                    Modifier modifier7 = dTFunctionNameModifier;
                    EnterTransition enterTransition7 = enterTransitionB;
                    f(transitionF5, (Function1) objX, modifier7, enterTransition7, exitTransitionB, function3, gapComposerH, (i4 & 57344) | (i4 & 896) | 48 | (i4 & 7168) | (458752 & i16));
                    str3 = str4;
                    modifier2 = modifier7;
                    enterTransition2 = enterTransition7;
                    exitTransition3 = exitTransitionB;
                } else {
                    gapComposerH.D();
                    modifier2 = dTFunctionNameModifier;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransition2;
                    str3 = str2;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$6
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Number) obj2).intValue();
                            AnimatedVisibilityKt.c(columnScope, z2, modifier2, enterTransition2, exitTransition3, str3, function3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i4 |= ImageMetadata.EDGE_MODE;
            str2 = str;
            if ((1572864 & i2) == 0) {
                if (gapComposerH.y(function3)) {
                    i9 = 1048576;
                } else {
                    i9 = 524288;
                }
                i4 |= i9;
            }
            if ((599185 & i4) != 599184) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i4 & 1, z3)) {
                if (i10 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("AnimatedVisibility");
                }
                if (i11 != 0) {
                    enterTransitionB = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3).b(EnterExitTransitionKt.d(null, null, null, 15));
                }
                if (i5 != 0) {
                    exitTransitionB = EnterExitTransitionKt.h(null, 3).b(EnterExitTransitionKt.n(null, null, null, 15));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i7 == 0) {
                }
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                int i17 = i4 >> 3;
                Transition transitionF6 = androidx.compose.animation.core.TransitionKt.f(Boolean.valueOf(z2), str4, gapComposerH, (i17 & 14) | ((i4 >> 12) & 112));
                objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = AnimatedVisibilityKt$AnimatedVisibility$5$1.f3508c;
                    gapComposerH.q(objX);
                }
                Modifier modifier8 = dTFunctionNameModifier;
                EnterTransition enterTransition8 = enterTransitionB;
                f(transitionF6, (Function1) objX, modifier8, enterTransition8, exitTransitionB, function3, gapComposerH, (i4 & 57344) | (i4 & 896) | 48 | (i4 & 7168) | (458752 & i17));
                str3 = str4;
                modifier2 = modifier8;
                enterTransition2 = enterTransition8;
                exitTransition3 = exitTransitionB;
            } else {
                gapComposerH.D();
                modifier2 = dTFunctionNameModifier;
                enterTransition2 = enterTransitionB;
                exitTransition3 = exitTransition2;
                str3 = str2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$6
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Number) obj2).intValue();
                        AnimatedVisibilityKt.c(columnScope, z2, modifier2, enterTransition2, exitTransition3, str3, function3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i4 |= 24576;
        exitTransition2 = exitTransition;
        i7 = i3 & 16;
        if (i7 != 0) {
            if ((196608 & i2) == 0) {
                str2 = str;
                if (gapComposerH.K(str2)) {
                    i8 = 131072;
                } else {
                    i8 = 65536;
                }
                i4 |= i8;
            }
            if ((1572864 & i2) == 0) {
                if (gapComposerH.y(function3)) {
                    i9 = 1048576;
                } else {
                    i9 = 524288;
                }
                i4 |= i9;
            }
            if ((599185 & i4) != 599184) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i4 & 1, z3)) {
                if (i10 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("AnimatedVisibility");
                }
                if (i11 != 0) {
                    enterTransitionB = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3).b(EnterExitTransitionKt.d(null, null, null, 15));
                }
                if (i5 != 0) {
                    exitTransitionB = EnterExitTransitionKt.h(null, 3).b(EnterExitTransitionKt.n(null, null, null, 15));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i7 == 0) {
                }
                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                int i18 = i4 >> 3;
                Transition transitionF7 = androidx.compose.animation.core.TransitionKt.f(Boolean.valueOf(z2), str4, gapComposerH, (i18 & 14) | ((i4 >> 12) & 112));
                objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = AnimatedVisibilityKt$AnimatedVisibility$5$1.f3508c;
                    gapComposerH.q(objX);
                }
                Modifier modifier9 = dTFunctionNameModifier;
                EnterTransition enterTransition9 = enterTransitionB;
                f(transitionF7, (Function1) objX, modifier9, enterTransition9, exitTransitionB, function3, gapComposerH, (i4 & 57344) | (i4 & 896) | 48 | (i4 & 7168) | (458752 & i18));
                str3 = str4;
                modifier2 = modifier9;
                enterTransition2 = enterTransition9;
                exitTransition3 = exitTransitionB;
            } else {
                gapComposerH.D();
                modifier2 = dTFunctionNameModifier;
                enterTransition2 = enterTransitionB;
                exitTransition3 = exitTransition2;
                str3 = str2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$6
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Number) obj2).intValue();
                        AnimatedVisibilityKt.c(columnScope, z2, modifier2, enterTransition2, exitTransition3, str3, function3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i4 |= ImageMetadata.EDGE_MODE;
        str2 = str;
        if ((1572864 & i2) == 0) {
            if (gapComposerH.y(function3)) {
                i9 = 1048576;
            } else {
                i9 = 524288;
            }
            i4 |= i9;
        }
        if ((599185 & i4) != 599184) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i4 & 1, z3)) {
            if (i10 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("AnimatedVisibility");
            }
            if (i11 != 0) {
                enterTransitionB = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3).b(EnterExitTransitionKt.d(null, null, null, 15));
            }
            if (i5 != 0) {
                exitTransitionB = EnterExitTransitionKt.h(null, 3).b(EnterExitTransitionKt.n(null, null, null, 15));
            } else {
                exitTransitionB = exitTransition2;
            }
            if (i7 == 0) {
            }
            OpaqueKey opaqueKey8 = ComposerKt.f7940a;
            int i19 = i4 >> 3;
            Transition transitionF8 = androidx.compose.animation.core.TransitionKt.f(Boolean.valueOf(z2), str4, gapComposerH, (i19 & 14) | ((i4 >> 12) & 112));
            objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = AnimatedVisibilityKt$AnimatedVisibility$5$1.f3508c;
                gapComposerH.q(objX);
            }
            Modifier modifier10 = dTFunctionNameModifier;
            EnterTransition enterTransition10 = enterTransitionB;
            f(transitionF8, (Function1) objX, modifier10, enterTransition10, exitTransitionB, function3, gapComposerH, (i4 & 57344) | (i4 & 896) | 48 | (i4 & 7168) | (458752 & i19));
            str3 = str4;
            modifier2 = modifier10;
            enterTransition2 = enterTransition10;
            exitTransition3 = exitTransitionB;
        } else {
            gapComposerH.D();
            modifier2 = dTFunctionNameModifier;
            enterTransition2 = enterTransitionB;
            exitTransition3 = exitTransition2;
            str3 = str2;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$6
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    AnimatedVisibilityKt.c(columnScope, z2, modifier2, enterTransition2, exitTransition3, str3, function3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0061  */
    /* JADX WARN: Code duplicated, block: B:38:0x0066  */
    /* JADX WARN: Code duplicated, block: B:40:0x006a  */
    /* JADX WARN: Code duplicated, block: B:42:0x0072  */
    /* JADX WARN: Code duplicated, block: B:43:0x0075  */
    /* JADX WARN: Code duplicated, block: B:47:0x0082  */
    /* JADX WARN: Code duplicated, block: B:49:0x0088  */
    /* JADX WARN: Code duplicated, block: B:50:0x008b  */
    /* JADX WARN: Code duplicated, block: B:54:0x0097  */
    /* JADX WARN: Code duplicated, block: B:55:0x0099  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:59:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:63:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:65:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:66:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:69:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:71:0x010d  */
    /* JADX WARN: Code duplicated, block: B:74:0x011b  */
    /* JADX WARN: Code duplicated, block: B:76:? A[RETURN, SYNTHETIC] */
    public static final void d(final RowScope rowScope, boolean z, Modifier modifier, EnterTransition enterTransition, ExitTransition exitTransition, String str, final Function3 function3, Composer composer, final int i2, final int i3) {
        final boolean z2;
        int i4;
        EnterTransition enterTransition2;
        int i5;
        ExitTransition exitTransition2;
        int i6;
        int i7;
        boolean z3;
        final Modifier modifier2;
        final EnterTransition enterTransition3;
        final ExitTransition exitTransition3;
        final String str2;
        RecomposeScopeImpl recomposeScopeImplB0;
        EnterTransition enterTransitionB;
        ExitTransition exitTransitionB;
        Object objX;
        int i8;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "AnimatedVisibility");
        }
        GapComposer gapComposerH = composer.h(234057107);
        if ((i2 & 48) == 0) {
            z2 = z;
            i4 = (gapComposerH.b(z2) ? 32 : 16) | i2;
        } else {
            z2 = z;
            i4 = i2;
        }
        int i9 = i3 & 2;
        if (i9 != 0) {
            i4 |= KyberEngine.KyberPolyBytes;
        } else if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(dTFunctionNameModifier) ? 256 : 128;
        }
        int i10 = i3 & 4;
        if (i10 == 0) {
            if ((i2 & 3072) == 0) {
                enterTransition2 = enterTransition;
                i4 |= gapComposerH.K(enterTransition2) ? 2048 : 1024;
            }
            i5 = i3 & 8;
            if (i5 != 0) {
                if ((i2 & 24576) == 0) {
                    exitTransition2 = exitTransition;
                    if (gapComposerH.K(exitTransition2)) {
                        i6 = 16384;
                    } else {
                        i6 = 8192;
                    }
                    i4 |= i6;
                }
                i7 = i4 | ImageMetadata.EDGE_MODE;
                if ((1572864 & i2) == 0) {
                    if (gapComposerH.y(function3)) {
                        i8 = 1048576;
                    } else {
                        i8 = 524288;
                    }
                    i7 |= i8;
                }
                if ((599185 & i7) != 599184) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i7 & 1, z3)) {
                    if (i9 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("AnimatedVisibility");
                    }
                    Modifier modifier3 = dTFunctionNameModifier;
                    if (i10 != 0) {
                        enterTransitionB = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3).b(EnterExitTransitionKt.b(null, null, null, 15));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i5 != 0) {
                        exitTransitionB = EnterExitTransitionKt.h(null, 3).b(EnterExitTransitionKt.k(null, null, null, 15));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    int i11 = i7 >> 3;
                    Transition transitionF = androidx.compose.animation.core.TransitionKt.f(Boolean.valueOf(z2), "AnimatedVisibility", gapComposerH, (i11 & 14) | ((i7 >> 12) & 112));
                    objX = gapComposerH.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = AnimatedVisibilityKt$AnimatedVisibility$3$1.f3500c;
                        gapComposerH.q(objX);
                    }
                    f(transitionF, (Function1) objX, modifier3, enterTransitionB, exitTransitionB, function3, gapComposerH, (i7 & 896) | 48 | (i7 & 7168) | (i7 & 57344) | (458752 & i11));
                    str2 = "AnimatedVisibility";
                    modifier2 = modifier3;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    gapComposerH.D();
                    modifier2 = dTFunctionNameModifier;
                    enterTransition3 = enterTransition2;
                    exitTransition3 = exitTransition2;
                    str2 = str;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$4
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Number) obj2).intValue();
                            AnimatedVisibilityKt.d(rowScope, z2, modifier2, enterTransition3, exitTransition3, str2, function3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i4 |= 24576;
            exitTransition2 = exitTransition;
            i7 = i4 | ImageMetadata.EDGE_MODE;
            if ((1572864 & i2) == 0) {
                if (gapComposerH.y(function3)) {
                    i8 = 1048576;
                } else {
                    i8 = 524288;
                }
                i7 |= i8;
            }
            if ((599185 & i7) != 599184) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i7 & 1, z3)) {
                if (i9 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("AnimatedVisibility");
                }
                Modifier modifier4 = dTFunctionNameModifier;
                if (i10 != 0) {
                    enterTransitionB = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3).b(EnterExitTransitionKt.b(null, null, null, 15));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i5 != 0) {
                    exitTransitionB = EnterExitTransitionKt.h(null, 3).b(EnterExitTransitionKt.k(null, null, null, 15));
                } else {
                    exitTransitionB = exitTransition2;
                }
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                int i12 = i7 >> 3;
                Transition transitionF2 = androidx.compose.animation.core.TransitionKt.f(Boolean.valueOf(z2), "AnimatedVisibility", gapComposerH, (i12 & 14) | ((i7 >> 12) & 112));
                objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = AnimatedVisibilityKt$AnimatedVisibility$3$1.f3500c;
                    gapComposerH.q(objX);
                }
                f(transitionF2, (Function1) objX, modifier4, enterTransitionB, exitTransitionB, function3, gapComposerH, (i7 & 896) | 48 | (i7 & 7168) | (i7 & 57344) | (458752 & i12));
                str2 = "AnimatedVisibility";
                modifier2 = modifier4;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            } else {
                gapComposerH.D();
                modifier2 = dTFunctionNameModifier;
                enterTransition3 = enterTransition2;
                exitTransition3 = exitTransition2;
                str2 = str;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$4
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Number) obj2).intValue();
                        AnimatedVisibilityKt.d(rowScope, z2, modifier2, enterTransition3, exitTransition3, str2, function3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i4 |= 3072;
        enterTransition2 = enterTransition;
        i5 = i3 & 8;
        if (i5 != 0) {
            if ((i2 & 24576) == 0) {
                exitTransition2 = exitTransition;
                if (gapComposerH.K(exitTransition2)) {
                    i6 = 16384;
                } else {
                    i6 = 8192;
                }
                i4 |= i6;
            }
            i7 = i4 | ImageMetadata.EDGE_MODE;
            if ((1572864 & i2) == 0) {
                if (gapComposerH.y(function3)) {
                    i8 = 1048576;
                } else {
                    i8 = 524288;
                }
                i7 |= i8;
            }
            if ((599185 & i7) != 599184) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i7 & 1, z3)) {
                if (i9 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("AnimatedVisibility");
                }
                Modifier modifier5 = dTFunctionNameModifier;
                if (i10 != 0) {
                    enterTransitionB = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3).b(EnterExitTransitionKt.b(null, null, null, 15));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i5 != 0) {
                    exitTransitionB = EnterExitTransitionKt.h(null, 3).b(EnterExitTransitionKt.k(null, null, null, 15));
                } else {
                    exitTransitionB = exitTransition2;
                }
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                int i13 = i7 >> 3;
                Transition transitionF3 = androidx.compose.animation.core.TransitionKt.f(Boolean.valueOf(z2), "AnimatedVisibility", gapComposerH, (i13 & 14) | ((i7 >> 12) & 112));
                objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = AnimatedVisibilityKt$AnimatedVisibility$3$1.f3500c;
                    gapComposerH.q(objX);
                }
                f(transitionF3, (Function1) objX, modifier5, enterTransitionB, exitTransitionB, function3, gapComposerH, (i7 & 896) | 48 | (i7 & 7168) | (i7 & 57344) | (458752 & i13));
                str2 = "AnimatedVisibility";
                modifier2 = modifier5;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            } else {
                gapComposerH.D();
                modifier2 = dTFunctionNameModifier;
                enterTransition3 = enterTransition2;
                exitTransition3 = exitTransition2;
                str2 = str;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$4
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Number) obj2).intValue();
                        AnimatedVisibilityKt.d(rowScope, z2, modifier2, enterTransition3, exitTransition3, str2, function3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i4 |= 24576;
        exitTransition2 = exitTransition;
        i7 = i4 | ImageMetadata.EDGE_MODE;
        if ((1572864 & i2) == 0) {
            if (gapComposerH.y(function3)) {
                i8 = 1048576;
            } else {
                i8 = 524288;
            }
            i7 |= i8;
        }
        if ((599185 & i7) != 599184) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i7 & 1, z3)) {
            if (i9 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("AnimatedVisibility");
            }
            Modifier modifier6 = dTFunctionNameModifier;
            if (i10 != 0) {
                enterTransitionB = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3).b(EnterExitTransitionKt.b(null, null, null, 15));
            } else {
                enterTransitionB = enterTransition2;
            }
            if (i5 != 0) {
                exitTransitionB = EnterExitTransitionKt.h(null, 3).b(EnterExitTransitionKt.k(null, null, null, 15));
            } else {
                exitTransitionB = exitTransition2;
            }
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            int i14 = i7 >> 3;
            Transition transitionF4 = androidx.compose.animation.core.TransitionKt.f(Boolean.valueOf(z2), "AnimatedVisibility", gapComposerH, (i14 & 14) | ((i7 >> 12) & 112));
            objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = AnimatedVisibilityKt$AnimatedVisibility$3$1.f3500c;
                gapComposerH.q(objX);
            }
            f(transitionF4, (Function1) objX, modifier6, enterTransitionB, exitTransitionB, function3, gapComposerH, (i7 & 896) | 48 | (i7 & 7168) | (i7 & 57344) | (458752 & i14));
            str2 = "AnimatedVisibility";
            modifier2 = modifier6;
            enterTransition3 = enterTransitionB;
            exitTransition3 = exitTransitionB;
        } else {
            gapComposerH.D();
            modifier2 = dTFunctionNameModifier;
            enterTransition3 = enterTransition2;
            exitTransition3 = exitTransition2;
            str2 = str;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    AnimatedVisibilityKt.d(rowScope, z2, modifier2, enterTransition3, exitTransition3, str2, function3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x005f  */
    /* JADX WARN: Code duplicated, block: B:38:0x0064  */
    /* JADX WARN: Code duplicated, block: B:40:0x0068  */
    /* JADX WARN: Code duplicated, block: B:42:0x0070  */
    /* JADX WARN: Code duplicated, block: B:43:0x0073  */
    /* JADX WARN: Code duplicated, block: B:47:0x007a  */
    /* JADX WARN: Code duplicated, block: B:49:0x007f  */
    /* JADX WARN: Code duplicated, block: B:51:0x0083  */
    /* JADX WARN: Code duplicated, block: B:53:0x008b  */
    /* JADX WARN: Code duplicated, block: B:54:0x008e  */
    /* JADX WARN: Code duplicated, block: B:58:0x0098  */
    /* JADX WARN: Code duplicated, block: B:60:0x009e  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:65:0x00af  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:69:0x00ba A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:70:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:74:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:75:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:77:0x0102  */
    /* JADX WARN: Code duplicated, block: B:78:0x0111  */
    /* JADX WARN: Code duplicated, block: B:80:0x0114  */
    /* JADX WARN: Code duplicated, block: B:81:0x0117  */
    /* JADX WARN: Code duplicated, block: B:84:0x0132  */
    /* JADX WARN: Code duplicated, block: B:86:0x0155  */
    /* JADX WARN: Code duplicated, block: B:89:0x0164  */
    /* JADX WARN: Code duplicated, block: B:91:? A[RETURN, SYNTHETIC] */
    public static final void e(final boolean z, Modifier modifier, EnterTransition enterTransition, ExitTransition exitTransition, String str, final Function3 function3, Composer composer, final int i2, final int i3) {
        boolean z2;
        int i4;
        EnterTransition enterTransition2;
        int i5;
        ExitTransition exitTransition2;
        int i6;
        int i7;
        int i8;
        Modifier modifier2;
        boolean z3;
        Modifier modifier3;
        final String str2;
        final EnterTransition enterTransition3;
        final ExitTransition exitTransition3;
        RecomposeScopeImpl recomposeScopeImplB0;
        int i9;
        Modifier dTFunctionNameModifier;
        EnterTransition enterTransitionB;
        ExitTransition exitTransitionB;
        String str3;
        Object objX;
        int i10;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "AnimatedVisibility");
        }
        GapComposer gapComposerH = composer.h(-1448730565);
        if ((i2 & 6) == 0) {
            z2 = z;
            i4 = (gapComposerH.b(z2) ? 4 : 2) | i2;
        } else {
            z2 = z;
            i4 = i2;
        }
        int i11 = i3 & 2;
        if (i11 != 0) {
            i4 |= 48;
        } else if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(modifierE) ? 32 : 16;
        }
        int i12 = i3 & 4;
        if (i12 == 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                enterTransition2 = enterTransition;
                i4 |= gapComposerH.K(enterTransition2) ? 256 : 128;
            }
            i5 = i3 & 8;
            if (i5 != 0) {
                if ((i2 & 3072) == 0) {
                    exitTransition2 = exitTransition;
                    if (gapComposerH.K(exitTransition2)) {
                        i6 = 2048;
                    } else {
                        i6 = 1024;
                    }
                    i4 |= i6;
                }
                i7 = i3 & 16;
                if (i7 != 0) {
                    if ((i2 & 24576) == 0) {
                        if (gapComposerH.K(str)) {
                            i8 = 16384;
                        } else {
                            i8 = 8192;
                        }
                        i4 |= i8;
                    }
                    if ((196608 & i2) == 0) {
                        if (gapComposerH.y(function3)) {
                            i10 = 131072;
                        } else {
                            i10 = 65536;
                        }
                        i4 |= i10;
                    }
                    modifier2 = modifierE;
                    if ((74899 & i4) != 74898) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (gapComposerH.p(i4 & 1, z3)) {
                        if (i11 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("AnimatedVisibility");
                            i9 = i7;
                        } else {
                            i9 = i7;
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i12 != 0) {
                            EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                            IntSize.Companion companion = IntSize.f11020b;
                            Rect rect = VisibilityThresholdsKt.f4089a;
                            SpringSpec springSpecB = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 1, new IntSize(4294967297L));
                            Alignment.f8582a.getClass();
                            enterTransitionB = enterTransitionF.b(EnterExitTransitionKt.c(springSpecB, Alignment.Companion.f8590j, true, EnterExitTransitionKt$expandIn$1.f3601c));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i5 != 0) {
                            exitTransitionB = EnterExitTransitionKt.m().b(EnterExitTransitionKt.h(null, 3));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i9 != 0) {
                            str3 = "AnimatedVisibility";
                        } else {
                            str3 = str;
                        }
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        Transition transitionF = androidx.compose.animation.core.TransitionKt.f(Boolean.valueOf(z2), str3, gapComposerH, (i4 & 14) | ((i4 >> 9) & 112));
                        objX = gapComposerH.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = AnimatedVisibilityKt$AnimatedVisibility$1$1.f3493c;
                            gapComposerH.q(objX);
                        }
                        Function1 function1 = (Function1) objX;
                        int i13 = i4 << 3;
                        f(transitionF, function1, dTFunctionNameModifier, enterTransitionB, exitTransitionB, function3, gapComposerH, (i13 & 57344) | (i13 & 896) | 48 | (i13 & 7168) | (i4 & ImageMetadata.JPEG_GPS_COORDINATES));
                        str2 = str3;
                        modifier3 = dTFunctionNameModifier;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        gapComposerH.D();
                        modifier3 = modifier2;
                        str2 = str;
                        enterTransition3 = enterTransition2;
                        exitTransition3 = exitTransition2;
                    }
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        final Modifier modifier4 = modifier3;
                        recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Number) obj2).intValue();
                                AnimatedVisibilityKt.e(z, modifier4, enterTransition3, exitTransition3, str2, function3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i4 |= 24576;
                if ((196608 & i2) == 0) {
                    if (gapComposerH.y(function3)) {
                        i10 = 131072;
                    } else {
                        i10 = 65536;
                    }
                    i4 |= i10;
                }
                modifier2 = modifierE;
                if ((74899 & i4) != 74898) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i4 & 1, z3)) {
                    if (i11 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("AnimatedVisibility");
                        i9 = i7;
                    } else {
                        i9 = i7;
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i12 != 0) {
                        EnterTransition enterTransitionF2 = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                        IntSize.Companion companion2 = IntSize.f11020b;
                        Rect rect2 = VisibilityThresholdsKt.f4089a;
                        SpringSpec springSpecB2 = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 1, new IntSize(4294967297L));
                        Alignment.f8582a.getClass();
                        enterTransitionB = enterTransitionF2.b(EnterExitTransitionKt.c(springSpecB2, Alignment.Companion.f8590j, true, EnterExitTransitionKt$expandIn$1.f3601c));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i5 != 0) {
                        exitTransitionB = EnterExitTransitionKt.m().b(EnterExitTransitionKt.h(null, 3));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i9 != 0) {
                        str3 = "AnimatedVisibility";
                    } else {
                        str3 = str;
                    }
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Transition transitionF2 = androidx.compose.animation.core.TransitionKt.f(Boolean.valueOf(z2), str3, gapComposerH, (i4 & 14) | ((i4 >> 9) & 112));
                    objX = gapComposerH.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = AnimatedVisibilityKt$AnimatedVisibility$1$1.f3493c;
                        gapComposerH.q(objX);
                    }
                    Function1 function2 = (Function1) objX;
                    int i14 = i4 << 3;
                    f(transitionF2, function2, dTFunctionNameModifier, enterTransitionB, exitTransitionB, function3, gapComposerH, (i14 & 57344) | (i14 & 896) | 48 | (i14 & 7168) | (i4 & ImageMetadata.JPEG_GPS_COORDINATES));
                    str2 = str3;
                    modifier3 = dTFunctionNameModifier;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    gapComposerH.D();
                    modifier3 = modifier2;
                    str2 = str;
                    enterTransition3 = enterTransition2;
                    exitTransition3 = exitTransition2;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier5 = modifier3;
                    recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$2
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Number) obj2).intValue();
                            AnimatedVisibilityKt.e(z, modifier5, enterTransition3, exitTransition3, str2, function3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i4 |= 3072;
            exitTransition2 = exitTransition;
            i7 = i3 & 16;
            if (i7 != 0) {
                if ((i2 & 24576) == 0) {
                    if (gapComposerH.K(str)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i4 |= i8;
                }
                if ((196608 & i2) == 0) {
                    if (gapComposerH.y(function3)) {
                        i10 = 131072;
                    } else {
                        i10 = 65536;
                    }
                    i4 |= i10;
                }
                modifier2 = modifierE;
                if ((74899 & i4) != 74898) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i4 & 1, z3)) {
                    if (i11 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("AnimatedVisibility");
                        i9 = i7;
                    } else {
                        i9 = i7;
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i12 != 0) {
                        EnterTransition enterTransitionF3 = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                        IntSize.Companion companion3 = IntSize.f11020b;
                        Rect rect3 = VisibilityThresholdsKt.f4089a;
                        SpringSpec springSpecB3 = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 1, new IntSize(4294967297L));
                        Alignment.f8582a.getClass();
                        enterTransitionB = enterTransitionF3.b(EnterExitTransitionKt.c(springSpecB3, Alignment.Companion.f8590j, true, EnterExitTransitionKt$expandIn$1.f3601c));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i5 != 0) {
                        exitTransitionB = EnterExitTransitionKt.m().b(EnterExitTransitionKt.h(null, 3));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i9 != 0) {
                        str3 = "AnimatedVisibility";
                    } else {
                        str3 = str;
                    }
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    Transition transitionF3 = androidx.compose.animation.core.TransitionKt.f(Boolean.valueOf(z2), str3, gapComposerH, (i4 & 14) | ((i4 >> 9) & 112));
                    objX = gapComposerH.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = AnimatedVisibilityKt$AnimatedVisibility$1$1.f3493c;
                        gapComposerH.q(objX);
                    }
                    Function1 function4 = (Function1) objX;
                    int i15 = i4 << 3;
                    f(transitionF3, function4, dTFunctionNameModifier, enterTransitionB, exitTransitionB, function3, gapComposerH, (i15 & 57344) | (i15 & 896) | 48 | (i15 & 7168) | (i4 & ImageMetadata.JPEG_GPS_COORDINATES));
                    str2 = str3;
                    modifier3 = dTFunctionNameModifier;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    gapComposerH.D();
                    modifier3 = modifier2;
                    str2 = str;
                    enterTransition3 = enterTransition2;
                    exitTransition3 = exitTransition2;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier6 = modifier3;
                    recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$2
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Number) obj2).intValue();
                            AnimatedVisibilityKt.e(z, modifier6, enterTransition3, exitTransition3, str2, function3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i4 |= 24576;
            if ((196608 & i2) == 0) {
                if (gapComposerH.y(function3)) {
                    i10 = 131072;
                } else {
                    i10 = 65536;
                }
                i4 |= i10;
            }
            modifier2 = modifierE;
            if ((74899 & i4) != 74898) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i4 & 1, z3)) {
                if (i11 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("AnimatedVisibility");
                    i9 = i7;
                } else {
                    i9 = i7;
                    dTFunctionNameModifier = modifier2;
                }
                if (i12 != 0) {
                    EnterTransition enterTransitionF4 = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                    IntSize.Companion companion4 = IntSize.f11020b;
                    Rect rect4 = VisibilityThresholdsKt.f4089a;
                    SpringSpec springSpecB4 = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 1, new IntSize(4294967297L));
                    Alignment.f8582a.getClass();
                    enterTransitionB = enterTransitionF4.b(EnterExitTransitionKt.c(springSpecB4, Alignment.Companion.f8590j, true, EnterExitTransitionKt$expandIn$1.f3601c));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i5 != 0) {
                    exitTransitionB = EnterExitTransitionKt.m().b(EnterExitTransitionKt.h(null, 3));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i9 != 0) {
                    str3 = "AnimatedVisibility";
                } else {
                    str3 = str;
                }
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                Transition transitionF4 = androidx.compose.animation.core.TransitionKt.f(Boolean.valueOf(z2), str3, gapComposerH, (i4 & 14) | ((i4 >> 9) & 112));
                objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = AnimatedVisibilityKt$AnimatedVisibility$1$1.f3493c;
                    gapComposerH.q(objX);
                }
                Function1 function5 = (Function1) objX;
                int i16 = i4 << 3;
                f(transitionF4, function5, dTFunctionNameModifier, enterTransitionB, exitTransitionB, function3, gapComposerH, (i16 & 57344) | (i16 & 896) | 48 | (i16 & 7168) | (i4 & ImageMetadata.JPEG_GPS_COORDINATES));
                str2 = str3;
                modifier3 = dTFunctionNameModifier;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            } else {
                gapComposerH.D();
                modifier3 = modifier2;
                str2 = str;
                enterTransition3 = enterTransition2;
                exitTransition3 = exitTransition2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier7 = modifier3;
                recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Number) obj2).intValue();
                        AnimatedVisibilityKt.e(z, modifier7, enterTransition3, exitTransition3, str2, function3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i4 |= KyberEngine.KyberPolyBytes;
        enterTransition2 = enterTransition;
        i5 = i3 & 8;
        if (i5 != 0) {
            if ((i2 & 3072) == 0) {
                exitTransition2 = exitTransition;
                if (gapComposerH.K(exitTransition2)) {
                    i6 = 2048;
                } else {
                    i6 = 1024;
                }
                i4 |= i6;
            }
            i7 = i3 & 16;
            if (i7 != 0) {
                if ((i2 & 24576) == 0) {
                    if (gapComposerH.K(str)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i4 |= i8;
                }
                if ((196608 & i2) == 0) {
                    if (gapComposerH.y(function3)) {
                        i10 = 131072;
                    } else {
                        i10 = 65536;
                    }
                    i4 |= i10;
                }
                modifier2 = modifierE;
                if ((74899 & i4) != 74898) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i4 & 1, z3)) {
                    if (i11 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("AnimatedVisibility");
                        i9 = i7;
                    } else {
                        i9 = i7;
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i12 != 0) {
                        EnterTransition enterTransitionF5 = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                        IntSize.Companion companion5 = IntSize.f11020b;
                        Rect rect5 = VisibilityThresholdsKt.f4089a;
                        SpringSpec springSpecB5 = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 1, new IntSize(4294967297L));
                        Alignment.f8582a.getClass();
                        enterTransitionB = enterTransitionF5.b(EnterExitTransitionKt.c(springSpecB5, Alignment.Companion.f8590j, true, EnterExitTransitionKt$expandIn$1.f3601c));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i5 != 0) {
                        exitTransitionB = EnterExitTransitionKt.m().b(EnterExitTransitionKt.h(null, 3));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i9 != 0) {
                        str3 = "AnimatedVisibility";
                    } else {
                        str3 = str;
                    }
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    Transition transitionF5 = androidx.compose.animation.core.TransitionKt.f(Boolean.valueOf(z2), str3, gapComposerH, (i4 & 14) | ((i4 >> 9) & 112));
                    objX = gapComposerH.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = AnimatedVisibilityKt$AnimatedVisibility$1$1.f3493c;
                        gapComposerH.q(objX);
                    }
                    Function1 function6 = (Function1) objX;
                    int i17 = i4 << 3;
                    f(transitionF5, function6, dTFunctionNameModifier, enterTransitionB, exitTransitionB, function3, gapComposerH, (i17 & 57344) | (i17 & 896) | 48 | (i17 & 7168) | (i4 & ImageMetadata.JPEG_GPS_COORDINATES));
                    str2 = str3;
                    modifier3 = dTFunctionNameModifier;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    gapComposerH.D();
                    modifier3 = modifier2;
                    str2 = str;
                    enterTransition3 = enterTransition2;
                    exitTransition3 = exitTransition2;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier8 = modifier3;
                    recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$2
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Number) obj2).intValue();
                            AnimatedVisibilityKt.e(z, modifier8, enterTransition3, exitTransition3, str2, function3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i4 |= 24576;
            if ((196608 & i2) == 0) {
                if (gapComposerH.y(function3)) {
                    i10 = 131072;
                } else {
                    i10 = 65536;
                }
                i4 |= i10;
            }
            modifier2 = modifierE;
            if ((74899 & i4) != 74898) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i4 & 1, z3)) {
                if (i11 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("AnimatedVisibility");
                    i9 = i7;
                } else {
                    i9 = i7;
                    dTFunctionNameModifier = modifier2;
                }
                if (i12 != 0) {
                    EnterTransition enterTransitionF6 = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                    IntSize.Companion companion6 = IntSize.f11020b;
                    Rect rect6 = VisibilityThresholdsKt.f4089a;
                    SpringSpec springSpecB6 = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 1, new IntSize(4294967297L));
                    Alignment.f8582a.getClass();
                    enterTransitionB = enterTransitionF6.b(EnterExitTransitionKt.c(springSpecB6, Alignment.Companion.f8590j, true, EnterExitTransitionKt$expandIn$1.f3601c));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i5 != 0) {
                    exitTransitionB = EnterExitTransitionKt.m().b(EnterExitTransitionKt.h(null, 3));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i9 != 0) {
                    str3 = "AnimatedVisibility";
                } else {
                    str3 = str;
                }
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                Transition transitionF6 = androidx.compose.animation.core.TransitionKt.f(Boolean.valueOf(z2), str3, gapComposerH, (i4 & 14) | ((i4 >> 9) & 112));
                objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = AnimatedVisibilityKt$AnimatedVisibility$1$1.f3493c;
                    gapComposerH.q(objX);
                }
                Function1 function7 = (Function1) objX;
                int i18 = i4 << 3;
                f(transitionF6, function7, dTFunctionNameModifier, enterTransitionB, exitTransitionB, function3, gapComposerH, (i18 & 57344) | (i18 & 896) | 48 | (i18 & 7168) | (i4 & ImageMetadata.JPEG_GPS_COORDINATES));
                str2 = str3;
                modifier3 = dTFunctionNameModifier;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            } else {
                gapComposerH.D();
                modifier3 = modifier2;
                str2 = str;
                enterTransition3 = enterTransition2;
                exitTransition3 = exitTransition2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier9 = modifier3;
                recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Number) obj2).intValue();
                        AnimatedVisibilityKt.e(z, modifier9, enterTransition3, exitTransition3, str2, function3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i4 |= 3072;
        exitTransition2 = exitTransition;
        i7 = i3 & 16;
        if (i7 != 0) {
            if ((i2 & 24576) == 0) {
                if (gapComposerH.K(str)) {
                    i8 = 16384;
                } else {
                    i8 = 8192;
                }
                i4 |= i8;
            }
            if ((196608 & i2) == 0) {
                if (gapComposerH.y(function3)) {
                    i10 = 131072;
                } else {
                    i10 = 65536;
                }
                i4 |= i10;
            }
            modifier2 = modifierE;
            if ((74899 & i4) != 74898) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i4 & 1, z3)) {
                if (i11 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("AnimatedVisibility");
                    i9 = i7;
                } else {
                    i9 = i7;
                    dTFunctionNameModifier = modifier2;
                }
                if (i12 != 0) {
                    EnterTransition enterTransitionF7 = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                    IntSize.Companion companion7 = IntSize.f11020b;
                    Rect rect7 = VisibilityThresholdsKt.f4089a;
                    SpringSpec springSpecB7 = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 1, new IntSize(4294967297L));
                    Alignment.f8582a.getClass();
                    enterTransitionB = enterTransitionF7.b(EnterExitTransitionKt.c(springSpecB7, Alignment.Companion.f8590j, true, EnterExitTransitionKt$expandIn$1.f3601c));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i5 != 0) {
                    exitTransitionB = EnterExitTransitionKt.m().b(EnterExitTransitionKt.h(null, 3));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i9 != 0) {
                    str3 = "AnimatedVisibility";
                } else {
                    str3 = str;
                }
                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                Transition transitionF7 = androidx.compose.animation.core.TransitionKt.f(Boolean.valueOf(z2), str3, gapComposerH, (i4 & 14) | ((i4 >> 9) & 112));
                objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = AnimatedVisibilityKt$AnimatedVisibility$1$1.f3493c;
                    gapComposerH.q(objX);
                }
                Function1 function8 = (Function1) objX;
                int i19 = i4 << 3;
                f(transitionF7, function8, dTFunctionNameModifier, enterTransitionB, exitTransitionB, function3, gapComposerH, (i19 & 57344) | (i19 & 896) | 48 | (i19 & 7168) | (i4 & ImageMetadata.JPEG_GPS_COORDINATES));
                str2 = str3;
                modifier3 = dTFunctionNameModifier;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            } else {
                gapComposerH.D();
                modifier3 = modifier2;
                str2 = str;
                enterTransition3 = enterTransition2;
                exitTransition3 = exitTransition2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier10 = modifier3;
                recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Number) obj2).intValue();
                        AnimatedVisibilityKt.e(z, modifier10, enterTransition3, exitTransition3, str2, function3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i4 |= 24576;
        if ((196608 & i2) == 0) {
            if (gapComposerH.y(function3)) {
                i10 = 131072;
            } else {
                i10 = 65536;
            }
            i4 |= i10;
        }
        modifier2 = modifierE;
        if ((74899 & i4) != 74898) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i4 & 1, z3)) {
            if (i11 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("AnimatedVisibility");
                i9 = i7;
            } else {
                i9 = i7;
                dTFunctionNameModifier = modifier2;
            }
            if (i12 != 0) {
                EnterTransition enterTransitionF8 = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                IntSize.Companion companion8 = IntSize.f11020b;
                Rect rect8 = VisibilityThresholdsKt.f4089a;
                SpringSpec springSpecB8 = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 1, new IntSize(4294967297L));
                Alignment.f8582a.getClass();
                enterTransitionB = enterTransitionF8.b(EnterExitTransitionKt.c(springSpecB8, Alignment.Companion.f8590j, true, EnterExitTransitionKt$expandIn$1.f3601c));
            } else {
                enterTransitionB = enterTransition2;
            }
            if (i5 != 0) {
                exitTransitionB = EnterExitTransitionKt.m().b(EnterExitTransitionKt.h(null, 3));
            } else {
                exitTransitionB = exitTransition2;
            }
            if (i9 != 0) {
                str3 = "AnimatedVisibility";
            } else {
                str3 = str;
            }
            OpaqueKey opaqueKey8 = ComposerKt.f7940a;
            Transition transitionF8 = androidx.compose.animation.core.TransitionKt.f(Boolean.valueOf(z2), str3, gapComposerH, (i4 & 14) | ((i4 >> 9) & 112));
            objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = AnimatedVisibilityKt$AnimatedVisibility$1$1.f3493c;
                gapComposerH.q(objX);
            }
            Function1 function9 = (Function1) objX;
            int i110 = i4 << 3;
            f(transitionF8, function9, dTFunctionNameModifier, enterTransitionB, exitTransitionB, function3, gapComposerH, (i110 & 57344) | (i110 & 896) | 48 | (i110 & 7168) | (i4 & ImageMetadata.JPEG_GPS_COORDINATES));
            str2 = str3;
            modifier3 = dTFunctionNameModifier;
            enterTransition3 = enterTransitionB;
            exitTransition3 = exitTransitionB;
        } else {
            gapComposerH.D();
            modifier3 = modifier2;
            str2 = str;
            enterTransition3 = enterTransition2;
            exitTransition3 = exitTransition2;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier11 = modifier3;
            recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    AnimatedVisibilityKt.e(z, modifier11, enterTransition3, exitTransition3, str2, function3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void f(final Transition transition, final Function1 function1, Modifier modifier, final EnterTransition enterTransition, final ExitTransition exitTransition, final Function3 function3, Composer composer, final int i2) {
        int i3;
        EnterTransition enterTransition2;
        ExitTransition exitTransition2;
        Function3 function4;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "AnimatedVisibilityImpl");
        }
        final Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(1706321816);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(transition) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function1) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(modifier2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            enterTransition2 = enterTransition;
            i3 |= gapComposerH.K(enterTransition2) ? 2048 : 1024;
        } else {
            enterTransition2 = enterTransition;
        }
        if ((i2 & 24576) == 0) {
            exitTransition2 = exitTransition;
            i3 |= gapComposerH.K(exitTransition2) ? 16384 : 8192;
        } else {
            exitTransition2 = exitTransition;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            function4 = function3;
            i3 |= gapComposerH.y(function4) ? 131072 : 65536;
        } else {
            function4 = function3;
        }
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i4 = i3 & 112;
            int i5 = i3 & 14;
            boolean z = (i4 == 32) | (i5 == 4);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z || objX == composer$Companion$Empty$1) {
                objX = new Function3<MeasureScope, Measurable, Constraints, MeasureResult>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibilityImpl$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    /* JADX WARN: Code duplicated, block: B:7:0x0039  */
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj, Object obj2, Object obj3) {
                        long j2;
                        MeasureScope measureScope = (MeasureScope) obj;
                        final Placeable placeableT = ((Measurable) obj2).T(((Constraints) obj3).f10999a);
                        if (measureScope.u0()) {
                            if (((Boolean) function1.invoke(((SnapshotMutableStateImpl) transition.d).getF10755b())).booleanValue()) {
                                j2 = (((long) placeableT.f9548b) << 32) | (((long) placeableT.f9549c) & BodyPartID.bodyIdMax);
                                IntSize.Companion companion = IntSize.f11020b;
                            } else {
                                IntSize.f11020b.getClass();
                                j2 = 0;
                            }
                        } else {
                            j2 = (((long) placeableT.f9548b) << 32) | (((long) placeableT.f9549c) & BodyPartID.bodyIdMax);
                            IntSize.Companion companion2 = IntSize.f11020b;
                        }
                        return measureScope.V0((int) (j2 >> 32), (int) (BodyPartID.bodyIdMax & j2), MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibilityImpl$1$1.1
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj4) {
                                ((Placeable.PlacementScope) obj4).j(placeableT, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                return Unit.f71739a;
                            }
                        });
                    }
                };
                gapComposerH.q(objX);
            }
            Modifier modifierA = LayoutModifierKt.a(modifier2, (Function3) objX);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = AnimatedVisibilityKt$AnimatedVisibilityImpl$2$1.f3524c;
                gapComposerH.q(objX2);
            }
            a(transition, function1, modifierA, enterTransition2, exitTransition2, (Function2) objX2, function4, gapComposerH, 196608 | i5 | i4 | (i3 & 7168) | (57344 & i3) | ((i3 << 6) & 29360128));
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibilityImpl$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    AnimatedVisibilityKt.f(transition, function1, modifier2, enterTransition, exitTransition, function3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final EnterExitState g(Transition transition, Function1 function1, Object obj, Composer composer) {
        EnterExitState enterExitState;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        composer.A(-422486745, transition);
        boolean zI = transition.i();
        TransitionState transitionState = transition.f3988a;
        if (zI) {
            composer.L(-212166497);
            composer.F();
            if (((Boolean) function1.invoke(obj)).booleanValue()) {
                enterExitState = EnterExitState.Visible;
            } else {
                enterExitState = ((Boolean) function1.invoke(transitionState.a())).booleanValue() ? EnterExitState.PostExit : EnterExitState.PreEnter;
            }
        } else {
            composer.L(-211892364);
            Object objX = composer.x();
            if (objX == Composer.Companion.f7939a) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                composer.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            if (((Boolean) function1.invoke(transitionState.a())).booleanValue()) {
                mutableState.setValue(Boolean.TRUE);
            }
            if (((Boolean) function1.invoke(obj)).booleanValue()) {
                enterExitState = EnterExitState.Visible;
            } else {
                enterExitState = ((Boolean) mutableState.getF10755b()).booleanValue() ? EnterExitState.PostExit : EnterExitState.PreEnter;
            }
            composer.F();
        }
        composer.I();
        return enterExitState;
    }
}

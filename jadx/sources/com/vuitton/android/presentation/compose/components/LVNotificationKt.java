package com.vuitton.android.presentation.compose.components;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.Easing;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.gestures.AnchoredDraggableState;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import defpackage.a3;
import defpackage.cj;
import defpackage.i1;
import defpackage.m5;
import defpackage.n60;
import defpackage.s60;
import defpackage.t60;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0003¨\u0006\u0003²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0002\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"", "isDragging", "isMoved", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVNotificationKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f50993a;

    static {
        Dp.Companion companion = Dp.f11004c;
        f50993a = 50.0f;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x003e  */
    /* JADX WARN: Code duplicated, block: B:21:0x0044  */
    /* JADX WARN: Code duplicated, block: B:22:0x0047  */
    /* JADX WARN: Code duplicated, block: B:26:0x004f  */
    /* JADX WARN: Code duplicated, block: B:28:0x0055  */
    /* JADX WARN: Code duplicated, block: B:29:0x0058  */
    /* JADX WARN: Code duplicated, block: B:33:0x0066  */
    /* JADX WARN: Code duplicated, block: B:34:0x0068  */
    /* JADX WARN: Code duplicated, block: B:37:0x0070  */
    /* JADX WARN: Code duplicated, block: B:43:0x0089  */
    /* JADX WARN: Code duplicated, block: B:45:0x008d  */
    /* JADX WARN: Code duplicated, block: B:47:0x0093  */
    /* JADX WARN: Code duplicated, block: B:52:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:55:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:60:0x00da  */
    /* JADX WARN: Code duplicated, block: B:62:0x0115  */
    /* JADX WARN: Code duplicated, block: B:68:0x0134  */
    /* JADX WARN: Code duplicated, block: B:70:0x0137  */
    /* JADX WARN: Code duplicated, block: B:71:0x0143  */
    /* JADX WARN: Code duplicated, block: B:75:0x015c  */
    /* JADX WARN: Code duplicated, block: B:79:0x0180  */
    /* JADX WARN: Code duplicated, block: B:82:0x0191  */
    /* JADX WARN: Code duplicated, block: B:83:0x019c  */
    /* JADX WARN: Code duplicated, block: B:85:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:88:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:90:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(boolean z, boolean z2, boolean z3, Easing easing, Function1 function1, final Function0 function0, Function0 function2, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2, int i3) {
        Function1 function3;
        boolean z4;
        final ComposableLambdaImpl composableLambdaImpl2;
        GapComposer gapComposer;
        boolean z5;
        Easing easing2;
        final Function1 function4;
        RecomposeScopeImpl recomposeScopeImplB0;
        int i4;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        boolean z6;
        Object objX;
        Density density;
        Object objX2;
        final MutableState mutableState;
        Density density2;
        GapComposer gapComposer2;
        int i5;
        int i6;
        int i7;
        EnterTransition enterTransitionE;
        boolean zK;
        Object objX3;
        boolean zK2;
        Object objX4;
        ExitTransition exitTransitionH;
        boolean z7;
        int i8;
        int i9;
        GapComposer gapComposerH = composer.h(746229465);
        int i10 = 2;
        int i11 = (gapComposerH.b(z) ? 4 : 2) | i2;
        int i12 = i11 | 1408;
        int i13 = i3 & 16;
        if (i13 == 0) {
            if ((i2 & 24576) == 0) {
                function3 = function1;
                i12 |= gapComposerH.y(function3) ? 16384 : 8192;
            }
            if ((196608 & i2) == 0) {
                if (gapComposerH.y(function0)) {
                    i9 = 131072;
                } else {
                    i9 = 65536;
                }
                i12 |= i9;
            }
            if ((1572864 & i2) == 0) {
                if (gapComposerH.y(function2)) {
                    i8 = 1048576;
                } else {
                    i8 = 524288;
                }
                i12 |= i8;
            }
            if ((4793491 & i12) != 4793490) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (gapComposerH.p(i12 & 1, z4)) {
                gapComposerH.y0();
                i4 = i2 & 1;
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i4 != 0 || gapComposerH.h0()) {
                    easing2 = EasingKt.f3862a;
                    if (i13 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new n60(i10);
                            gapComposerH.q(objX);
                        }
                        function3 = (Function1) objX;
                    }
                    function4 = function3;
                    z6 = true;
                } else {
                    gapComposerH.D();
                    easing2 = easing;
                    function4 = function3;
                    z6 = z3;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                density = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = SnapshotStateKt.g(Boolean.FALSE);
                    gapComposerH.q(objX2);
                }
                mutableState = (MutableState) objX2;
                if (z2) {
                    gapComposerH.L(171726862);
                    if (!((Boolean) mutableState.getF10755b()).booleanValue() || z) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    EnterTransition enterTransitionE2 = EnterExitTransitionKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, AnimationSpecKt.c(900, 0, easing2, 2));
                    ExitTransition exitTransitionH2 = EnterExitTransitionKt.h(AnimationSpecKt.c(900, 0, easing2, 2), 2);
                    ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-2129355322, new a3(function2, 15), gapComposerH);
                    density2 = density;
                    i5 = 0;
                    AnimatedVisibilityKt.e(z7, null, enterTransitionE2, exitTransitionH2, null, composableLambdaImplB, gapComposerH, ImageMetadata.EDGE_MODE, 18);
                    gapComposer2 = gapComposerH;
                    gapComposer2.Z(false);
                } else {
                    density2 = density;
                    gapComposer2 = gapComposerH;
                    i5 = 0;
                    gapComposer2.L(172429353);
                    gapComposer2.Z(false);
                }
                if (!((Boolean) mutableState.getF10755b()).booleanValue() || z) {
                    i6 = 1;
                } else {
                    i6 = i5;
                }
                if (z6) {
                    i7 = 900;
                    enterTransitionE = EnterExitTransitionKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, AnimationSpecKt.c(900, i5, easing2, 2));
                } else {
                    i7 = 900;
                    EnterTransition.f3626a.getClass();
                    enterTransitionE = EnterTransition.f3627b;
                }
                TweenSpec tweenSpecC = AnimationSpecKt.c(i7, i5, easing2, 2);
                zK = gapComposer2.K(density2);
                objX3 = gapComposer2.x();
                if (zK || objX3 == composer$Companion$Empty$1) {
                    objX3 = new s60(density2, i5);
                    gapComposer2.q(objX3);
                }
                EnterTransition enterTransitionB = enterTransitionE.b(EnterExitTransitionKt.q((Function1) objX3, tweenSpecC));
                TweenSpec tweenSpecC2 = AnimationSpecKt.c(900, i5, easing2, 2);
                zK2 = gapComposer2.K(density2);
                objX4 = gapComposer2.x();
                if (zK2 || objX4 == composer$Companion$Empty$1) {
                    objX4 = new s60(density2, 1);
                    gapComposer2.q(objX4);
                }
                ExitTransition exitTransitionU = EnterExitTransitionKt.u((Function1) objX4, tweenSpecC2);
                if (z6) {
                    exitTransitionH = EnterExitTransitionKt.h(AnimationSpecKt.c(900, i5, easing2, 2), 2);
                } else {
                    ExitTransition.f3629a.getClass();
                    exitTransitionH = ExitTransition.f3630b;
                }
                composableLambdaImpl2 = composableLambdaImpl;
                gapComposer = gapComposer2;
                AnimatedVisibilityKt.e(i6, null, enterTransitionB, exitTransitionU.b(exitTransitionH), null, ComposableLambdaKt.b(180629249, new Function3() { // from class: com.vuitton.android.presentation.compose.components.d
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj, Object obj2, Object obj3) {
                        Composer composer2 = (Composer) obj2;
                        ((Integer) obj3).getClass();
                        float f2 = LVNotificationKt.f50993a;
                        ((AnimatedVisibilityScope) obj).getClass();
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Object objX5 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        if (objX5 == composer$Companion$Empty$2) {
                            objX5 = new AnchoredDraggableState(DismissVerticalValue.Default);
                            composer2.q(objX5);
                        }
                        AnchoredDraggableState anchoredDraggableState = (AnchoredDraggableState) objX5;
                        boolean z8 = ((SnapshotMutableStateImpl) anchoredDraggableState.g).getF10755b() == DismissVerticalValue.DismissedToTop;
                        Object objX6 = composer2.x();
                        if (objX6 == composer$Companion$Empty$2) {
                            objX6 = SnapshotStateKt.e(new m5(anchoredDraggableState, 4));
                            composer2.q(objX6);
                        }
                        boolean z9 = ((Boolean) ((State) objX6).getF10755b()).booleanValue() && !z8;
                        MutableState mutableState2 = mutableState;
                        if (z8) {
                            mutableState2.setValue(Boolean.FALSE);
                        } else if (((Boolean) mutableState2.getF10755b()).booleanValue() != z9) {
                            mutableState2.setValue(Boolean.valueOf(z9));
                        }
                        Boolean bool = (Boolean) mutableState2.getF10755b();
                        bool.booleanValue();
                        function4.invoke(bool);
                        Object f10755b = ((SnapshotMutableStateImpl) anchoredDraggableState.g).getF10755b();
                        Function0 function5 = function0;
                        boolean zK3 = composer2.K(function5);
                        Object objX7 = composer2.x();
                        if (zK3 || objX7 == composer$Companion$Empty$2) {
                            objX7 = new LVNotificationKt$DismissibleNotification$7$1$1(anchoredDraggableState, function5, null);
                            composer2.q(objX7);
                        }
                        EffectsKt.e(composer2, f10755b, (Function2) objX7);
                        Set setH = SetsKt.h(DismissVerticalDirection.BottomToTop);
                        ComposableSingletons$LVNotificationKt.f50950a.getClass();
                        SwipeToDismissVerticalKt.a(anchoredDraggableState, null, setH, 0.8f, ComposableSingletons$LVNotificationKt.f50951b, composableLambdaImpl2, composer2, 28038);
                        return Unit.f71739a;
                    }
                }, gapComposer2), gapComposer, ImageMetadata.EDGE_MODE, 18);
                z5 = z6;
            } else {
                composableLambdaImpl2 = composableLambdaImpl;
                gapComposer = gapComposerH;
                gapComposer.D();
                z5 = z3;
                easing2 = easing;
                function4 = function3;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new t60(z, z2, z5, easing2, function4, function0, function2, composableLambdaImpl2, i2, i3);
            }
        }
        i12 = i11 | 25984;
        function3 = function1;
        if ((196608 & i2) == 0) {
            if (gapComposerH.y(function0)) {
                i9 = 131072;
            } else {
                i9 = 65536;
            }
            i12 |= i9;
        }
        if ((1572864 & i2) == 0) {
            if (gapComposerH.y(function2)) {
                i8 = 1048576;
            } else {
                i8 = 524288;
            }
            i12 |= i8;
        }
        if ((4793491 & i12) != 4793490) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (gapComposerH.p(i12 & 1, z4)) {
            gapComposerH.y0();
            i4 = i2 & 1;
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i4 != 0) {
                easing2 = EasingKt.f3862a;
                if (i13 != 0) {
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new n60(i10);
                        gapComposerH.q(objX);
                    }
                    function3 = (Function1) objX;
                }
                function4 = function3;
                z6 = true;
            } else {
                easing2 = EasingKt.f3862a;
                if (i13 != 0) {
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new n60(i10);
                        gapComposerH.q(objX);
                    }
                    function3 = (Function1) objX;
                }
                function4 = function3;
                z6 = true;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            density = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
            objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX2);
            }
            mutableState = (MutableState) objX2;
            if (z2) {
                gapComposerH.L(171726862);
                if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                    z7 = true;
                } else {
                    z7 = true;
                }
                EnterTransition enterTransitionE3 = EnterExitTransitionKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, AnimationSpecKt.c(900, 0, easing2, 2));
                ExitTransition exitTransitionH3 = EnterExitTransitionKt.h(AnimationSpecKt.c(900, 0, easing2, 2), 2);
                ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-2129355322, new a3(function2, 15), gapComposerH);
                density2 = density;
                i5 = 0;
                AnimatedVisibilityKt.e(z7, null, enterTransitionE3, exitTransitionH3, null, composableLambdaImplB2, gapComposerH, ImageMetadata.EDGE_MODE, 18);
                gapComposer2 = gapComposerH;
                gapComposer2.Z(false);
            } else {
                density2 = density;
                gapComposer2 = gapComposerH;
                i5 = 0;
                gapComposer2.L(172429353);
                gapComposer2.Z(false);
            }
            if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                i6 = 1;
            } else {
                i6 = 1;
            }
            if (z6) {
                i7 = 900;
                enterTransitionE = EnterExitTransitionKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, AnimationSpecKt.c(900, i5, easing2, 2));
            } else {
                i7 = 900;
                EnterTransition.f3626a.getClass();
                enterTransitionE = EnterTransition.f3627b;
            }
            TweenSpec tweenSpecC3 = AnimationSpecKt.c(i7, i5, easing2, 2);
            zK = gapComposer2.K(density2);
            objX3 = gapComposer2.x();
            if (zK) {
                objX3 = new s60(density2, i5);
                gapComposer2.q(objX3);
            } else {
                objX3 = new s60(density2, i5);
                gapComposer2.q(objX3);
            }
            EnterTransition enterTransitionB2 = enterTransitionE.b(EnterExitTransitionKt.q((Function1) objX3, tweenSpecC3));
            TweenSpec tweenSpecC4 = AnimationSpecKt.c(900, i5, easing2, 2);
            zK2 = gapComposer2.K(density2);
            objX4 = gapComposer2.x();
            if (zK2) {
                objX4 = new s60(density2, 1);
                gapComposer2.q(objX4);
            } else {
                objX4 = new s60(density2, 1);
                gapComposer2.q(objX4);
            }
            ExitTransition exitTransitionU2 = EnterExitTransitionKt.u((Function1) objX4, tweenSpecC4);
            if (z6) {
                exitTransitionH = EnterExitTransitionKt.h(AnimationSpecKt.c(900, i5, easing2, 2), 2);
            } else {
                ExitTransition.f3629a.getClass();
                exitTransitionH = ExitTransition.f3630b;
            }
            composableLambdaImpl2 = composableLambdaImpl;
            gapComposer = gapComposer2;
            AnimatedVisibilityKt.e(i6, null, enterTransitionB2, exitTransitionU2.b(exitTransitionH), null, ComposableLambdaKt.b(180629249, new Function3() { // from class: com.vuitton.android.presentation.compose.components.d
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Composer composer2 = (Composer) obj2;
                    ((Integer) obj3).getClass();
                    float f2 = LVNotificationKt.f50993a;
                    ((AnimatedVisibilityScope) obj).getClass();
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    Object objX5 = composer2.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                    if (objX5 == composer$Companion$Empty$2) {
                        objX5 = new AnchoredDraggableState(DismissVerticalValue.Default);
                        composer2.q(objX5);
                    }
                    AnchoredDraggableState anchoredDraggableState = (AnchoredDraggableState) objX5;
                    boolean z8 = ((SnapshotMutableStateImpl) anchoredDraggableState.g).getF10755b() == DismissVerticalValue.DismissedToTop;
                    Object objX6 = composer2.x();
                    if (objX6 == composer$Companion$Empty$2) {
                        objX6 = SnapshotStateKt.e(new m5(anchoredDraggableState, 4));
                        composer2.q(objX6);
                    }
                    boolean z9 = ((Boolean) ((State) objX6).getF10755b()).booleanValue() && !z8;
                    MutableState mutableState2 = mutableState;
                    if (z8) {
                        mutableState2.setValue(Boolean.FALSE);
                    } else if (((Boolean) mutableState2.getF10755b()).booleanValue() != z9) {
                        mutableState2.setValue(Boolean.valueOf(z9));
                    }
                    Boolean bool = (Boolean) mutableState2.getF10755b();
                    bool.booleanValue();
                    function4.invoke(bool);
                    Object f10755b = ((SnapshotMutableStateImpl) anchoredDraggableState.g).getF10755b();
                    Function0 function5 = function0;
                    boolean zK3 = composer2.K(function5);
                    Object objX7 = composer2.x();
                    if (zK3 || objX7 == composer$Companion$Empty$2) {
                        objX7 = new LVNotificationKt$DismissibleNotification$7$1$1(anchoredDraggableState, function5, null);
                        composer2.q(objX7);
                    }
                    EffectsKt.e(composer2, f10755b, (Function2) objX7);
                    Set setH = SetsKt.h(DismissVerticalDirection.BottomToTop);
                    ComposableSingletons$LVNotificationKt.f50950a.getClass();
                    SwipeToDismissVerticalKt.a(anchoredDraggableState, null, setH, 0.8f, ComposableSingletons$LVNotificationKt.f50951b, composableLambdaImpl2, composer2, 28038);
                    return Unit.f71739a;
                }
            }, gapComposer2), gapComposer, ImageMetadata.EDGE_MODE, 18);
            z5 = z6;
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
            gapComposer = gapComposerH;
            gapComposer.D();
            z5 = z3;
            easing2 = easing;
            function4 = function3;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new t60(z, z2, z5, easing2, function4, function0, function2, composableLambdaImpl2, i2, i3);
        }
    }

    public static final void b(String str, String str2, Function0 function0, Bitmap bitmap, Composer composer, int i2) {
        int i3;
        Bitmap bitmapA;
        Function2 function2;
        Function2 function3;
        Function2 function4;
        int i4;
        boolean z;
        str2.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1399690361);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(str) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(str2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        int i5 = i3 | (gapComposerH.y(bitmap) ? 2048 : 1024);
        if (gapComposerH.p(i5 & 1, (i5 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierL = PaddingKt.l(PaddingKt.m(BackgroundKt.b(SizeKt.f(SizeKt.d(new DTFunctionNameModifier("LVShareNotification"), 1.0f), 170.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48414b, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48417f);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(spacedAlignedF, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierL);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Function2 function5 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function5);
            Function2 function6 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function7 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function7);
            Function1 function8 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function8);
            Function2 function9 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function9);
            if (bitmap == null) {
                Drawable drawable = ContextCompat.getDrawable(context, R.drawable.placeholder);
                bitmapA = drawable != null ? DrawableKt.a(drawable) : null;
            } else {
                bitmapA = bitmap;
            }
            if (bitmapA != null) {
                gapComposerH.L(-907734701);
                Modifier modifierA = AspectRatioKt.a(ClipKt.a(SizeKt.c(new DTFunctionNameModifier("LVShareNotification"), 1.0f), LVAppDesignKitTheme.j(gapComposerH).f48411c), 0.8f, true);
                AndroidImageBitmap androidImageBitmap = new AndroidImageBitmap(bitmapA);
                ContentScale.f9447a.getClass();
                z = true;
                function2 = function5;
                function4 = function9;
                function3 = function6;
                ImageKt.b(androidImageBitmap, null, modifierA, ContentScale.Companion.f9449b, gapComposerH, 24624);
                i4 = 0;
                gapComposerH.Z(false);
            } else {
                function2 = function5;
                function3 = function6;
                function4 = function9;
                i4 = 0;
                z = true;
                gapComposerH.L(-907374977);
                gapComposerH.Z(false);
            }
            Arrangement.SpacedAligned spacedAlignedF2 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("LVShareNotification");
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF2, Alignment.Companion.n, gapComposerH, i4);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function8);
            Updater.c(gapComposerH, modifierC2, function4);
            boolean z2 = z;
            TextKt.c(str, null, 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, i5 & 14, 0, 131070);
            LVButtonKt.b(((i5 << 3) & 896) | ((i5 << 21) & 1879048192), 505, gapComposerH, null, LVAppDesignKitTheme.b(gapComposerH).g, null, null, str2, function0, false, false, false);
            gapComposerH = gapComposerH;
            gapComposerH.Z(z2);
            gapComposerH.Z(z2);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i1(str, str2, function0, (Object) bitmap, i2, 22);
        }
    }
}

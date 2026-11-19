package com.vuitton.android.designkit.components.components;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.gestures.AnchoredDraggableDefaults;
import androidx.compose.foundation.gestures.AnchoredDraggableKt;
import androidx.compose.foundation.gestures.AnchoredDraggableState;
import androidx.compose.foundation.gestures.DraggableAnchorsConfig;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Center$1;
import androidx.compose.foundation.layout.Arrangement$End$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.common.AccessibilityExtKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.b70;
import defpackage.ba0;
import defpackage.cj;
import defpackage.hd0;
import defpackage.n00;
import defpackage.n60;
import defpackage.o60;
import defpackage.p1;
import defpackage.ql;
import defpackage.rp;
import defpackage.tr;
import defpackage.ud;
import defpackage.w70;
import defpackage.x70;
import defpackage.y70;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"components"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVSwipeToRevealKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f48255a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f48256b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final float f48257c;

    static {
        Dp.Companion companion = Dp.f11004c;
        f48255a = 50.0f;
        f48256b = 24.0f;
        f48257c = (24.0f * 2.0f) + 50.0f;
    }

    public static final void a(Modifier modifier, List list, boolean z, Function0 function0, Function0 function1, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2, int i3) {
        int i4;
        boolean z2;
        Function0 function2;
        Function0 function3;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "LVSwipeToReveal");
        }
        list.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-2089723332);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(list) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            z2 = z;
            i4 |= gapComposerH.b(z2) ? 256 : 128;
        } else {
            z2 = z;
        }
        if ((i2 & 3072) == 0) {
            function2 = function0;
            i4 |= gapComposerH.y(function2) ? 2048 : 1024;
        } else {
            function2 = function0;
        }
        if ((i2 & 24576) == 0) {
            function3 = function1;
            i4 |= gapComposerH.y(function3) ? 16384 : 8192;
        } else {
            function3 = function1;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i4 |= gapComposerH.y(composableLambdaImpl) ? 131072 : 65536;
        }
        if (gapComposerH.p(i4 & 1, (74899 & i4) != 74898)) {
            if (i5 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("LVSwipeToReveal");
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (AccessibilityExtKt.a(gapComposerH)) {
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, 603461698, "LVSwipeToReveal");
                boolean zY = gapComposerH.y(list);
                Object objX = gapComposerH.x();
                if (zY || objX == Composer.Companion.f7939a) {
                    objX = new ud(list, 9);
                    gapComposerH.q(objX);
                }
                Modifier modifierB = SemanticsModifierKt.b(dTFunctionNameModifierI, false, (Function1) objX);
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                ComposeUiNode.b0.getClass();
                Function0 function4 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function4);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                composableLambdaImpl.A(modifierB, gapComposerH, Integer.valueOf((i4 >> 12) & 112));
                gapComposerH.Z(true);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(603940834);
                c(dTFunctionNameModifier, list, z2, function2, function3, ComposableLambdaKt.b(-95027441, new ql(composableLambdaImpl, 21), gapComposerH), gapComposerH, (i4 & 14) | ImageMetadata.EDGE_MODE | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (i4 & 57344));
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        Modifier modifier2 = dTFunctionNameModifier;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rp(modifier2, list, z, function0, function1, composableLambdaImpl, i2, i3);
        }
    }

    public static final void b(Modifier modifier, List list, Composer composer, int i2) {
        int i3;
        Modifier modifier2;
        Modifier modifierE = modifier;
        String str = "SwipeActionRow";
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "SwipeActionRow");
        }
        GapComposer gapComposerH = composer.h(-1095320478);
        Applier applier = gapComposerH.f7976a;
        int i4 = 2;
        if ((i2 & 6) == 0) {
            i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2);
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(list) ? 32 : 16;
        }
        boolean z = true;
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$End$1 arrangement$End$1 = Arrangement.f4919b;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$End$1, Alignment.Companion.f8591k, gapComposerH, 6);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            gapComposerH.L(50558384);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                SwipeAction swipeAction = (SwipeAction) it.next();
                Modifier modifierK = PaddingKt.k(SizeKt.c(new DTFunctionNameModifier(str), 1.0f), f48256b, Call.Parameters.DEFAULT_CAMERA_ZOOM, i4);
                Arrangement$Center$1 arrangement$Center$1 = Arrangement.f4921e;
                Alignment.f8582a.getClass();
                BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Center$1, horizontal, gapComposerH, 54);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                int iHashCode2 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK);
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
                Function2 function2 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, columnMeasurePolicyA, function2);
                Function2 function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                Integer numValueOf = Integer.valueOf(iHashCode2);
                Function2 function4 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf, function4);
                Function1 function5 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function5);
                Function2 function6 = ComposeUiNode.Companion.d;
                DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposerH, modifierC2, function6, str);
                boolean zK = gapComposerH.K(swipeAction);
                Object objX = gapComposerH.x();
                if (zK || objX == Composer.Companion.f7939a) {
                    objX = new w70(swipeAction, 0);
                    gapComposerH.q(objX);
                }
                Modifier modifierC3 = ModifierExtKt.c(dTFunctionNameModifierE, false, null, null, (Function0) objX, 31);
                Applier applier2 = applier;
                ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(Arrangement.f4920c, horizontal, gapComposerH, 48);
                Modifier modifier3 = modifierE;
                int iHashCode3 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
                Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, modifierC3);
                if (applier2 == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function1);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA2, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
                cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function5);
                Modifier modifierB = BackgroundKt.b(ClipKt.a(SizeKt.o(tr.e(gapComposerH, modifierC4, function6, str), f48255a), RoundedCornerShapeKt.f5846a), swipeAction.f48291c, RectangleShapeKt.f8913a);
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                String str2 = str;
                int iHashCode4 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposerH.U();
                Modifier modifierC5 = ComposedModifierKt.c(gapComposerH, modifierB);
                if (applier2 == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function1);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU4, function3);
                cj.t(iHashCode4, gapComposerH, function4, gapComposerH, function5);
                Updater.c(gapComposerH, modifierC5, function6);
                IconKt.a(PainterResources_androidKt.a(swipeAction.f48289a, gapComposerH, 0), null, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, gapComposerH, 56, 4);
                SpacerKt.a(gapComposerH, SizeKt.f(o60.f(gapComposerH, true, str2), LVAppDesignKitTheme.l(gapComposerH).f48414b));
                String str3 = swipeAction.f48290b;
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).m;
                long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                TextAlign.f10959b.getClass();
                GapComposer gapComposer = gapComposerH;
                TextKt.c(str3, null, j2, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle, gapComposer, 0, 0, 130042);
                gapComposerH = gapComposer;
                gapComposerH.Z(true);
                gapComposerH.Z(true);
                i4 = 2;
                z = true;
                str = str2;
                applier = applier2;
                modifierE = modifier3;
            }
            modifier2 = modifierE;
            gapComposerH.Z(false);
            gapComposerH.Z(z);
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
        } else {
            modifier2 = modifierE;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new x70(modifier2, list, i2);
        }
    }

    public static final void c(Modifier modifier, List list, boolean z, Function0 function0, Function0 function1, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        int i3;
        Function2 function2;
        AnchoredDraggableState anchoredDraggableState;
        int i4;
        boolean z2;
        Function0 function3;
        Modifier dTFunctionNameModifier;
        Modifier modifierE = modifier;
        ComposableLambdaImpl composableLambdaImpl2 = composableLambdaImpl;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "SwipeToRevealContent");
        }
        GapComposer gapComposerH = composer.h(-138806462);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(list) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function1) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(composableLambdaImpl2) ? 131072 : 65536;
        }
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z3 = gapComposerH.k(CompositionLocalsKt.n) == LayoutDirection.Rtl;
            Density density = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
            boolean zD = gapComposerH.d(list.size());
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zD || objX == composer$Companion$Empty$1) {
                objX = Float.valueOf((-density.u1(f48257c)) * list.size());
                gapComposerH.q(objX);
            }
            final float fFloatValue = ((Number) objX).floatValue();
            gapComposerH.L(-249006595);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new AnchoredDraggableState(SwipeDragAnchors.Start);
                gapComposerH.q(objX2);
            }
            AnchoredDraggableState anchoredDraggableState2 = (AnchoredDraggableState) objX2;
            boolean zC = gapComposerH.c(fFloatValue);
            Object objX3 = gapComposerH.x();
            if (zC || objX3 == composer$Companion$Empty$1) {
                objX3 = new Function1() { // from class: com.vuitton.android.designkit.components.components.a
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        DraggableAnchorsConfig draggableAnchorsConfig = (DraggableAnchorsConfig) obj;
                        float f2 = LVSwipeToRevealKt.f48255a;
                        draggableAnchorsConfig.getClass();
                        draggableAnchorsConfig.a(SwipeDragAnchors.Start, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        draggableAnchorsConfig.a(SwipeDragAnchors.End, fFloatValue);
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX3);
            }
            AnchoredDraggableState.h(anchoredDraggableState2, AnchoredDraggableKt.a((Function1) objX3));
            gapComposerH.Z(false);
            Unit unit = Unit.f71739a;
            boolean zK = gapComposerH.K(anchoredDraggableState2);
            Object objX4 = gapComposerH.x();
            if (zK || objX4 == composer$Companion$Empty$1) {
                objX4 = new LVSwipeToRevealKt$SwipeToRevealContent$1$1(anchoredDraggableState2, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX4);
            Boolean boolValueOf = Boolean.valueOf(z);
            int i5 = i3 & 896;
            boolean zK2 = (i5 == 256) | gapComposerH.K(anchoredDraggableState2);
            Object objX5 = gapComposerH.x();
            if (zK2 || objX5 == composer$Companion$Empty$1) {
                objX5 = new LVSwipeToRevealKt$SwipeToRevealContent$2$1(z, anchoredDraggableState2, null);
                gapComposerH.q(objX5);
            }
            EffectsKt.e(gapComposerH, boolValueOf, (Function2) objX5);
            Object f10755b = ((SnapshotMutableStateImpl) anchoredDraggableState2.g).getF10755b();
            int i6 = 57344 & i3;
            boolean zK3 = ((i3 & 7168) == 2048) | gapComposerH.K(anchoredDraggableState2) | (i5 == 256) | (i6 == 16384);
            Object objX6 = gapComposerH.x();
            if (zK3 || objX6 == composer$Companion$Empty$1) {
                int i7 = i3;
                anchoredDraggableState = anchoredDraggableState2;
                i4 = i7;
                z2 = z;
                function3 = function1;
                LVSwipeToRevealKt$SwipeToRevealContent$3$1 lVSwipeToRevealKt$SwipeToRevealContent$3$1 = new LVSwipeToRevealKt$SwipeToRevealContent$3$1(anchoredDraggableState, z2, function0, function3, null);
                gapComposerH.q(lVSwipeToRevealKt$SwipeToRevealContent$3$1);
                objX6 = lVSwipeToRevealKt$SwipeToRevealContent$3$1;
            } else {
                i4 = i3;
                anchoredDraggableState = anchoredDraggableState2;
                z2 = z;
                function3 = function1;
            }
            EffectsKt.e(gapComposerH, f10755b, (Function2) objX6);
            boolean z4 = (i5 == 256) | (i6 == 16384);
            Object objX7 = gapComposerH.x();
            if (z4 || objX7 == composer$Companion$Empty$1) {
                objX7 = new b70(z2, function3, 2);
                gapComposerH.q(objX7);
            }
            EffectsKt.c(unit, (Function1) objX7, gapComposerH);
            Alignment.f8582a.getClass();
            BiasAlignment biasAlignment = Alignment.Companion.f8584b;
            MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
            ComposeUiNode.b0.getClass();
            Function0 function4 = ComposeUiNode.Companion.f9641b;
            if (applier == 0) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Function2 function5 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function5);
            Function2 function6 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function7 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function7);
            Function1 function8 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function8);
            Function2 function9 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function9);
            Modifier modifierJ = BoxScopeInstance.f4938a.j(new DTFunctionNameModifier("SwipeToRevealContent"));
            if (AccessibilityExtKt.a(gapComposerH)) {
                dTFunctionNameModifier = new DTFunctionNameModifier("SwipeToRevealContent").o(SemanticsModifierKt.a(Modifier.Companion.f8607b, new hd0(1, "", new ba0(13))));
            } else {
                dTFunctionNameModifier = new DTFunctionNameModifier("SwipeToRevealContent");
            }
            b(modifierJ.o(dTFunctionNameModifier), list, gapComposerH, i4 & 112);
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("SwipeToRevealContent");
            boolean zK4 = gapComposerH.K(anchoredDraggableState);
            Object objX8 = gapComposerH.x();
            if (zK4 || objX8 == composer$Companion$Empty$1) {
                objX8 = new y70(anchoredDraggableState, 0);
                gapComposerH.q(objX8);
            }
            Modifier modifierA = OffsetKt.a(dTFunctionNameModifier2, (Function1) objX8);
            Orientation orientation = Orientation.Horizontal;
            TweenSpec tweenSpec = AnchoredDraggableDefaults.f4336a;
            Object objX9 = gapComposerH.x();
            if (objX9 == composer$Companion$Empty$1) {
                objX9 = new n60(8);
                gapComposerH.q(objX9);
            }
            AnchoredDraggableState anchoredDraggableState3 = anchoredDraggableState;
            Modifier modifierF = AnchoredDraggableKt.f(modifierA, anchoredDraggableState3, z3, orientation, AnchoredDraggableDefaults.a(anchoredDraggableState3, (Function1) objX9, AnimationSpecKt.c(0, 0, null, 7), gapComposerH, (AnchoredDraggableDefaults.d << 9) | 432, 0));
            MeasurePolicy measurePolicyD2 = BoxKt.d(biasAlignment, false);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierF);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD2, function5);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
            cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function8);
            Updater.c(gapComposerH, modifierC2, function9);
            Function2 function10 = composableLambdaImpl;
            function10.invoke(gapComposerH, Integer.valueOf((i4 >> 15) & 14));
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            function2 = function10;
        } else {
            gapComposerH.D();
            function2 = composableLambdaImpl2;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new p1(modifierE, list, z, function0, function1, function2, i2, 7);
        }
    }
}

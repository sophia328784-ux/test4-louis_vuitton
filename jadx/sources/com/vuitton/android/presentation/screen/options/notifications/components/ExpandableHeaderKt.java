package com.vuitton.android.presentation.screen.options.notifications.components;

import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimationModifierKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.CollapsingState;
import defpackage.b3;
import defpackage.cj;
import defpackage.iv;
import defpackage.j6;
import defpackage.n00;
import defpackage.v40;
import defpackage.w;
import defpackage.w4;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0004²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/compose/components/CollapsingState;", "state", "", "linkVisible", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ExpandableHeaderKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f59905a;

        static {
            int[] iArr = new int[CollapsingState.values().length];
            try {
                iArr[CollapsingState.COLLAPSED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CollapsingState.EXPANDED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f59905a = iArr;
        }
    }

    public static final void a(Modifier modifier, String str, String str2, CollapsingState collapsingState, Function1 function1, Composer composer, int i2) {
        int i3;
        Object obj;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "AnimatedLVLink");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(738165204);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            obj = str;
            i3 |= gapComposerH.K(obj) ? 32 : 16;
        } else {
            obj = str;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(str2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.d(collapsingState.ordinal()) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function1) ? 16384 : 8192;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new iv(18);
                gapComposerH.q(objX);
            }
            AnimatedContentKt.b(collapsingState, modifier2, (Function1) objX, null, null, null, ComposableLambdaKt.b(74171954, new w4(obj, str2, function1, collapsingState, 6), gapComposerH), gapComposerH, ((i3 >> 9) & 14) | 1573248 | ((i3 << 3) & 112), 56);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b3(modifier2, str, str2, collapsingState, function1, i2, 10);
        }
    }

    public static final void b(Modifier modifier, String str, String str2, String str3, CollapsingState collapsingState, Composer composer, int i2) {
        CollapsingState collapsingState2;
        Modifier modifier2;
        int i3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ExpandableHeader");
        }
        str.getClass();
        str2.getClass();
        str3.getClass();
        GapComposer gapComposerH = composer.h(-509104837);
        Applier applier = gapComposerH.f7976a;
        int i4 = i2 | 6 | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(str2) ? 2048 : 1024) | (gapComposerH.K(str3) ? 16384 : 8192) | ImageMetadata.EDGE_MODE;
        if (gapComposerH.p(i4 & 1, (i4 & 74899) != 74898)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ExpandableHeader");
            CollapsingState collapsingState3 = CollapsingState.COLLAPSED;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(collapsingState3);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX2);
            }
            MutableState mutableState2 = (MutableState) objX2;
            Modifier modifierO = SizeKt.d(BackgroundKt.b(new DTFunctionNameModifier("ExpandableHeader"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a), 1.0f).o(dTFunctionNameModifier);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
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
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function5);
            Modifier modifierJ = PaddingKt.j(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierJ);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC2, function5);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48427h;
            Modifier modifierB = AnimationModifierKt.b(new DTFunctionNameModifier("ExpandableHeader"), null, 3);
            TextOverflow.f10989a.getClass();
            int i5 = TextOverflow.f10991c;
            int i6 = WhenMappings.f59905a[((CollapsingState) mutableState.getF10755b()).ordinal()];
            if (i6 == 1) {
                i3 = 4;
            } else {
                if (i6 != 2) {
                    v40.g();
                    return;
                }
                i3 = Integer.MAX_VALUE;
            }
            int i7 = i3;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new j6(27, mutableState2);
                gapComposerH.q(objX3);
            }
            TextKt.c(str, modifierB, 0L, 0L, null, 0L, null, null, 0L, i5, false, i7, 0, (Function1) objX3, textStyle, gapComposerH, (i4 >> 3) & 14, KyberEngine.KyberPolyBytes, 45052);
            gapComposerH = gapComposerH;
            if (((Boolean) mutableState2.getF10755b()).booleanValue()) {
                Modifier modifierB2 = ColumnScopeInstance.f4944a.b(n00.i(gapComposerH, 589740489, "ExpandableHeader"), Alignment.Companion.p);
                CollapsingState collapsingState4 = (CollapsingState) mutableState.getF10755b();
                Object objX4 = gapComposerH.x();
                if (objX4 == composer$Companion$Empty$1) {
                    objX4 = new j6(28, mutableState);
                    gapComposerH.q(objX4);
                }
                int i8 = i4 >> 6;
                a(modifierB2, str2, str3, collapsingState4, (Function1) objX4, gapComposerH, (i8 & 112) | 24576 | (i8 & 896));
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(590019179);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            collapsingState2 = collapsingState3;
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            collapsingState2 = collapsingState;
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w(modifier2, str, str2, str3, collapsingState2, i2, 18);
        }
    }
}

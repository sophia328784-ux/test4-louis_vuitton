package com.vuitton.android.presentation.screen.pdp.vto.beauty.components;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
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
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyVtoScreenKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoMode;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoViewState;
import defpackage.g0;
import defpackage.h9;
import defpackage.le;
import defpackage.n00;
import defpackage.o0;
import defpackage.qe;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003¨\u0006\u0007²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0006\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002"}, d2 = {"Landroidx/compose/foundation/layout/PaddingValues;", "scaffoldScreenPadding", "Landroidx/compose/ui/unit/Dp;", "dualSeparatorOffsetX", "", "shouldShowDualColorSlider", "shouldShowLookBottomBar", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BeautyVtoScreenKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f62031a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f62032b;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f62033a;

        static {
            int[] iArr = new int[BeautyVtoMode.values().length];
            try {
                iArr[BeautyVtoMode.SIMPLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BeautyVtoMode.STACKING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BeautyVtoMode.DUAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f62033a = iArr;
        }
    }

    static {
        Dp.Companion companion = Dp.f11004c;
        f62031a = 74.0f;
        f62032b = 120.0f;
    }

    public static final void a(final BeautyVtoViewState beautyVtoViewState, final SnackbarHostState snackbarHostState, final float f2, final Function0 function0, final Function0 function1, final Function0 function2, final Function0 function3, final Function0 function4, final Function0 function5, final Function1 function6, final Function1 function7, final Function1 function8, Function1 function9, final Function1 function10, final Function0 function11, final Function0 function12, final Function0 function13, final Function0 function14, Composer composer, final int i2) {
        Function0 function15;
        GapComposer gapComposer;
        final Function1 function16 = function9;
        beautyVtoViewState.getClass();
        BeautyVtoMode beautyVtoMode = beautyVtoViewState.f62149a;
        snackbarHostState.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function16.getClass();
        function10.getClass();
        function11.getClass();
        function12.getClass();
        function13.getClass();
        function14.getClass();
        GapComposer gapComposerH = composer.h(-2038539806);
        int i3 = (gapComposerH.y(beautyVtoViewState) ? 4 : 2) | i2 | (gapComposerH.c(f2) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024);
        if ((i2 & 24576) == 0) {
            function15 = function1;
            i3 |= gapComposerH.y(function15) ? 16384 : 8192;
        } else {
            function15 = function1;
        }
        int i4 = i3 | (gapComposerH.y(function2) ? 131072 : 65536);
        if ((i2 & 1572864) == 0) {
            i4 |= gapComposerH.y(function3) ? 1048576 : 524288;
        }
        int i5 = i4 | (gapComposerH.y(function4) ? 8388608 : 4194304) | (gapComposerH.y(function5) ? 67108864 : 33554432) | (gapComposerH.y(function6) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i6 = (gapComposerH.y(function7) ? (char) 4 : (char) 2) | (gapComposerH.y(function8) ? ' ' : (char) 16) | (gapComposerH.y(function16) ? 256 : 128) | (gapComposerH.y(function10) ? 2048 : 1024) | (gapComposerH.y(function11) ? (char) 16384 : (char) 8192) | (gapComposerH.y(function12) ? (char) 0 : (char) 0) | (gapComposerH.y(function13) ? (char) 0 : (char) 0) | (gapComposerH.y(function14) ? (char) 0 : (char) 0);
        if (gapComposerH.p(i5 & 1, ((i5 & 306783379) == 306783378 && (4793491 & i6) == 4793490) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(PaddingKt.c(Call.Parameters.DEFAULT_CAMERA_ZOOM, 3));
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            final float f3 = Resources.getSystem().getDisplayMetrics().widthPixels;
            final int i7 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenWidthDp;
            boolean zD = gapComposerH.d(beautyVtoMode.ordinal());
            Object objX2 = gapComposerH.x();
            if (zD || objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(new Dp(i7 * f2));
                gapComposerH.q(objX2);
            }
            final MutableState mutableState2 = (MutableState) objX2;
            boolean z = gapComposerH.k(CompositionLocalsKt.n) == LayoutDirection.Rtl;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX3);
            }
            MutableState mutableState3 = (MutableState) objX3;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX4);
            }
            MutableState mutableState4 = (MutableState) objX4;
            Modifier modifierO = new DTFunctionNameModifier("BeautyVtoScreen").o(SizeKt.f5052c);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
            ComposeUiNode.b0.getClass();
            Function0 function17 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function17);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            Color.f8866b.getClass();
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, ComposableLambdaKt.b(286858028, new o0(function0, 16), gapComposerH), ComposableLambdaKt.b(-300604243, new le(beautyVtoViewState, function8, function15, function2, function3, function4, function5, function10, function11, function14, mutableState3, mutableState4), gapComposer), ComposableLambdaKt.b(-888066514, new g0(snackbarHostState, 8), gapComposer), null, 0, Color.f8870h, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(1613899895, new h9(mutableState, beautyVtoViewState, context, mutableState4, function6, function12, function11, function14, function7, function13, mutableState3), gapComposer), gapComposer, 806882736, 177);
            if (beautyVtoMode == BeautyVtoMode.DUAL) {
                Modifier modifierM = PaddingKt.m(OffsetKt.c(BoxScopeInstance.f4938a.g(n00.i(gapComposer, -1916947916, "BeautyVtoScreen"), Alignment.Companion.f8587f), z ? -((Dp) mutableState2.getF10755b()).f11006b : ((Dp) mutableState2.getF10755b()).f11006b, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, ((PaddingValues) mutableState.getF10755b()).getD(), 7);
                float f4 = f2 * f3;
                boolean zC = gapComposer.c(f3) | gapComposer.K(mutableState2) | gapComposer.d(i7) | ((i6 & 896) == 256);
                Object objX5 = gapComposer.x();
                if (zC || objX5 == composer$Companion$Empty$1) {
                    function16 = function9;
                    objX5 = new Function1() { // from class: se
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            float fFloatValue = ((Float) obj).floatValue();
                            float f5 = BeautyVtoScreenKt.f62031a;
                            float f6 = fFloatValue / f3;
                            mutableState2.setValue(new Dp(i7 * f6));
                            function16.invoke(Float.valueOf(f6));
                            return Unit.f71739a;
                        }
                    };
                    gapComposer.q(objX5);
                } else {
                    function16 = function9;
                }
                BeautyDualSeparatorKt.a(modifierM, f4, (Function1) objX5, gapComposer, 0);
                gapComposer.Z(false);
            } else {
                function16 = function9;
                gapComposer.L(-1916327110);
                gapComposer.Z(false);
            }
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Function1 function18 = function16;
            recomposeScopeImplB0.d = new Function2() { // from class: te
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    BeautyVtoScreenKt.a(beautyVtoViewState, snackbarHostState, f2, function0, function1, function2, function3, function4, function5, function6, function7, function8, function18, function10, function11, function12, function13, function14, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(Modifier modifier, Composer composer, int i2) {
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "BottomBarDraggableIndicator");
        }
        GapComposer gapComposerH = composer.h(-2125114964);
        int i3 = i2 | 6;
        int i4 = 0;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            modifier = new DTFunctionNameModifier("BottomBarDraggableIndicator");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            BoxKt.a(BackgroundKt.b(ClipKt.a(SizeKt.s(SizeKt.f(modifier, LVAppDesignKitTheme.d(gapComposerH).f48386e), LVAppDesignKitTheme.d(gapComposerH).v), LVAppDesignKitTheme.j(gapComposerH).d), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a), gapComposerH, 0);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qe(modifier, i2, i4);
        }
    }
}

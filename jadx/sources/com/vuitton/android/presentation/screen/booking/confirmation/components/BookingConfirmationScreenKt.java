package com.vuitton.android.presentation.screen.booking.confirmation.components;

import androidx.activity.compose.BackHandlerKt;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.networkbench.agent.impl.util.r;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ScreenDimensionsKt;
import com.vuitton.android.designkit.components.components.LVFlowerLoaderKt;
import com.vuitton.android.designkit.components.components.LVFlowerLoaderStyle;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.booking.confirmation.models.BookingConfirmationViewState;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModel;
import defpackage.a;
import defpackage.ff;
import defpackage.gf;
import defpackage.hb;
import defpackage.n4;
import defpackage.o0;
import defpackage.o3;
import defpackage.pd;
import defpackage.q1;
import defpackage.re;
import defpackage.t;
import defpackage.tr;
import defpackage.ud;
import defpackage.w;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"", "headerHeightPx", "Landroidx/compose/ui/unit/Dp;", "animatedTopSpacerHeight", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingConfirmationScreenKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f54386a;

    static {
        Dp.Companion companion = Dp.f11004c;
        f54386a = 32.0f;
    }

    public static final void a(float f2, BookingConfirmationViewState bookingConfirmationViewState, Function1 function1, Function1 function2, Function2 function3, Function1 function4, Composer composer, int i2) {
        float f3;
        GapComposer gapComposerH = composer.h(-818858573);
        int i3 = i2 | (gapComposerH.c(f2) ? 4 : 2) | (gapComposerH.K(bookingConfirmationViewState) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function3) ? 16384 : 8192) | (gapComposerH.y(function4) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z = bookingConfirmationViewState instanceof BookingConfirmationViewState.Success;
            BookingConfirmationViewState.Success success = z ? (BookingConfirmationViewState.Success) bookingConfirmationViewState : null;
            List list = success != null ? success.f54396a : null;
            if (list == null) {
                list = EmptyList.f71768b;
            }
            List list2 = list;
            Density density = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
            float fA = ScreenDimensionsKt.a(gapComposerH, 0);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotIntStateKt.a(0);
                gapComposerH.q(objX);
            }
            MutableIntState mutableIntState = (MutableIntState) objX;
            if (z) {
                f3 = f2;
            } else {
                float fK1 = fA - density.k1(mutableIntState.f());
                Dp.Companion companion = Dp.f11004c;
                f3 = ((Dp) RangesKt.a(new Dp(((fK1 - f2) / 2.0f) - f54386a), new Dp(Call.Parameters.DEFAULT_CAMERA_ZOOM))).f11006b;
            }
            State stateA = AnimateAsStateKt.a(f3, AnimationSpecKt.c(z ? 1000 : 0, 0, null, 6), "booking_confirmation_header_top_spacing", null, gapComposerH, KyberEngine.KyberPolyBytes, 8);
            Modifier modifierD = ScrollKt.d(new DTFunctionNameModifier("BookingConfirmationContent-PBTpf3Q").o(SizeKt.f5052c), ScrollKt.b(gapComposerH), z, 12);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("BookingConfirmationContent-PBTpf3Q"), ((Dp) stateA.getF10755b()).f11006b));
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("BookingConfirmationContent-PBTpf3Q");
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new q1(mutableIntState, 3);
                gapComposerH.q(objX2);
            }
            b(0, gapComposerH, PaddingKt.m(OnGloballyPositionedModifierKt.a(dTFunctionNameModifier, (Function1) objX2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48420j, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), z);
            TweenSpec tweenSpecC = AnimationSpecKt.c(1000, 0, null, 6);
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new re(8);
                gapComposerH.q(objX3);
            }
            gapComposerH = gapComposerH;
            AnimatedVisibilityKt.c(ColumnScopeInstance.f4944a, z, null, EnterExitTransitionKt.q((Function1) objX3, tweenSpecC).b(EnterExitTransitionKt.f(AnimationSpecKt.c(r.E, 0, null, 6), Call.Parameters.DEFAULT_CAMERA_ZOOM, 2)), null, null, ComposableLambdaKt.b(1377861633, new n4(list2, function1, function2, function3, function4, 6), gapComposerH), gapComposerH, 1575942, 26);
            SpacerKt.a(gapComposerH, WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier("BookingConfirmationContent-PBTpf3Q")));
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ff(f2, bookingConfirmationViewState, function1, function2, function3, function4, i2);
        }
    }

    public static final void b(int i2, Composer composer, Modifier modifier, boolean z) {
        Modifier modifierE = modifier;
        boolean z2 = z;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "BookingConfirmationHeader");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(1992123745);
        int i3 = (gapComposerH.b(z2) ? 4 : 2) | i2 | (gapComposerH.K(modifier2) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierK = PaddingKt.k(SizeKt.d(modifier2, 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierK);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            LVFlowerLoaderKt.a(null, LVFlowerLoaderStyle.BRAND, z, gapComposerH, ((i3 << 6) & 896) | 48, 1);
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("BookingConfirmationHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.booking_confirmation_thank_you_title);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).d;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            TextAlign.f10959b.getClass();
            TextKt.c(strC, modifierM, j2, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 130040);
            EnterTransition enterTransitionF = EnterExitTransitionKt.f(AnimationSpecKt.c(r.E, 0, null, 6), Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            ComposableSingletons$BookingConfirmationScreenKt.f54387a.getClass();
            z2 = z;
            AnimatedVisibilityKt.c(ColumnScopeInstance.f4944a, z2, null, enterTransitionF, null, null, ComposableSingletons$BookingConfirmationScreenKt.f54388b, gapComposerH, 1575942 | ((i3 << 3) & 112), 26);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new pd(z2, modifier2, i2);
        }
    }

    public static final void c(List list, Function1 function1, Function1 function2, Function2 function3, Function1 function4, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-516764454);
        Function1 function5 = function1;
        Function1 function6 = function2;
        Function2 function7 = function3;
        Function1 function8 = function4;
        int i3 = i2 | (gapComposerH.y(list) ? 4 : 2) | (gapComposerH.y(function5) ? 32 : 16) | (gapComposerH.y(function6) ? 256 : 128) | (gapComposerH.y(function7) ? 2048 : 1024) | (gapComposerH.y(function8) ? 16384 : 8192);
        int i4 = 1;
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = tr.d("BookingConfirmationList", 1.0f);
            boolean zY = gapComposerH.y(list);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new ud(list, i4);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierD, false, (Function1) objX);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            gapComposerH.L(-1564681856);
            int i5 = 0;
            for (Object obj : list) {
                int i6 = i5 + 1;
                if (i5 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                BookingUiModel bookingUiModel = (BookingUiModel) obj;
                int i7 = i3;
                Modifier modifierK = PaddingKt.k(new DTFunctionNameModifier("BookingConfirmationList"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                boolean zD = gapComposerH.d(i5);
                Object objX2 = gapComposerH.x();
                if (zD || objX2 == composer$Companion$Empty$1) {
                    objX2 = new hb(i5, 1);
                    gapComposerH.q(objX2);
                }
                Function2 function9 = function7;
                Function1 function10 = function5;
                BookingConfirmationCardKt.a(SemanticsModifierKt.b(modifierK, false, (Function1) objX2), bookingUiModel, function10, function6, function9, function8, gapComposerH, (i7 << 3) & 524160);
                function5 = function1;
                function6 = function2;
                function7 = function3;
                function8 = function4;
                i5 = i6;
                i3 = i7;
            }
            gapComposerH.Z(false);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w(list, function1, function2, function3, function4, i2);
        }
    }

    public static final void d(BookingConfirmationViewState bookingConfirmationViewState, Function0 function0, Function0 function1, Function1 function2, Function1 function3, Function2 function4, Function1 function5, Composer composer, int i2, int i3) {
        Function1 function6;
        int i4;
        Function1 function7;
        int i5;
        Function2 function8;
        int i6;
        int i7;
        GapComposer gapComposer;
        Function1 function9;
        Function1 function10;
        Function2 function11;
        Function1 function12;
        int i8;
        Function1 function13;
        Function1 function14;
        Function2 function15;
        int i9;
        Function1 function16;
        bookingConfirmationViewState.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1199560752);
        int i10 = (gapComposerH.K(bookingConfirmationViewState) ? 4 : 2) | i2;
        if ((i2 & 48) == 0) {
            i10 |= gapComposerH.y(function0) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i10 |= gapComposerH.y(function1) ? 256 : 128;
        }
        int i11 = i3 & 8;
        if (i11 != 0) {
            i4 = i10 | 3072;
            function6 = function2;
        } else {
            function6 = function2;
            i4 = i10 | (gapComposerH.y(function6) ? 2048 : 1024);
        }
        int i12 = i3 & 16;
        if (i12 != 0) {
            i5 = i4 | 24576;
            function7 = function3;
        } else {
            function7 = function3;
            i5 = i4 | (gapComposerH.y(function7) ? 16384 : 8192);
        }
        int i13 = i3 & 32;
        if (i13 != 0) {
            i6 = i5 | ImageMetadata.EDGE_MODE;
            function8 = function4;
        } else {
            function8 = function4;
            i6 = i5 | (gapComposerH.y(function8) ? 131072 : 65536);
        }
        int i14 = i3 & 64;
        if (i14 != 0) {
            i7 = i6 | 1572864;
        } else {
            i7 = i6 | (gapComposerH.y(function5) ? 1048576 : 524288);
        }
        int i15 = i7;
        if (gapComposerH.p(i15 & 1, (599187 & i7) != 599186)) {
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i11 != 0) {
                Object objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = new re(5);
                    gapComposerH.q(objX);
                }
                function13 = (Function1) objX;
                i8 = i14;
            } else {
                i8 = i14;
                function13 = function6;
            }
            if (i12 != 0) {
                Object objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new re(6);
                    gapComposerH.q(objX2);
                }
                function14 = (Function1) objX2;
            } else {
                function14 = function7;
            }
            if (i13 != 0) {
                Object objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = new t(16);
                    gapComposerH.q(objX3);
                }
                function15 = (Function2) objX3;
            } else {
                function15 = function8;
            }
            if (i8 != 0) {
                Object objX4 = gapComposerH.x();
                if (objX4 == composer$Companion$Empty$1) {
                    objX4 = new re(7);
                    gapComposerH.q(objX4);
                }
                function16 = (Function1) objX4;
                i9 = i15;
            } else {
                i9 = i15;
                function16 = function5;
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            float f5031b = WindowInsetsKt.e(WindowInsets_androidKt.c(gapComposerH), gapComposerH).getF5031b();
            BackHandlerKt.a(false, function0, gapComposerH, i9 & 112, 1);
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, ComposableLambdaKt.b(-1426110316, new o0(function0, 17), gapComposerH), null, null, null, 0, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, null, ComposableLambdaKt.b(-109942689, new o3(bookingConfirmationViewState, function1, f5031b, function13, function14, function15, function16), gapComposerH), gapComposer, 805306416, 317);
            function9 = function13;
            function10 = function14;
            function11 = function15;
            function12 = function16;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            function9 = function6;
            function10 = function7;
            function11 = function8;
            function12 = function5;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new gf(bookingConfirmationViewState, function0, function1, function9, function10, function11, function12, i2, i3);
        }
    }
}

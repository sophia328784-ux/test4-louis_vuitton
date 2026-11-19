package com.vuitton.android.presentation.screen.osa.form.storeselection.components;

import androidx.activity.compose.BackHandlerKt;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.StringKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.intl.Locale;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.LeftToRightLayoutKt;
import com.vuitton.android.designkit.components.components.LVLoadingOverlayKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVReadOnlyTextFieldKt;
import com.vuitton.android.designkit.ui.theme.templates.LVEmptyViewKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.model.common.CtaUiModel;
import com.vuitton.android.presentation.model.location.PlaceGeocodingUiModel;
import com.vuitton.android.presentation.model.storelocator.MegatrioUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaLocationFormBottomSheetScreen;
import com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaLocationFormScreenKt;
import com.vuitton.android.presentation.screen.osa.form.storeselection.models.OsaLocationFormViewState;
import com.vuitton.android.presentation.screen.osa.models.AppointmentTypeUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaFormItemUiModel;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonsFormViewState;
import com.vuitton.foundation.model.domain.extensions.CollectionExtKt;
import defpackage.ae0;
import defpackage.cj;
import defpackage.d1;
import defpackage.fj0;
import defpackage.g1;
import defpackage.il;
import defpackage.kw;
import defpackage.n00;
import defpackage.ni0;
import defpackage.o;
import defpackage.o60;
import defpackage.od;
import defpackage.of0;
import defpackage.rh0;
import defpackage.rj0;
import defpackage.tr;
import defpackage.uv;
import defpackage.w20;
import defpackage.x20;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OsaLocationFormScreenKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f60831a;

        static {
            int[] iArr = new int[AppointmentTypeUiModel.values().length];
            try {
                iArr[AppointmentTypeUiModel.IN_STORE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AppointmentTypeUiModel.DISTANT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f60831a = iArr;
        }
    }

    public static final void a(OsaLocationFormViewState osaLocationFormViewState, Function0 function0, Function0 function1, Function0 function2, Function2 function3, Function2 function4, Function1 function5, Composer composer, int i2) {
        OsaLocationFormViewState osaLocationFormViewState2;
        Integer numValueOf;
        String str;
        Function0 function6 = function2;
        GapComposer gapComposerH = composer.h(1611779267);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.y(osaLocationFormViewState) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function6) ? 2048 : 1024) | (gapComposerH.y(function3) ? 16384 : 8192) | (gapComposerH.y(function4) ? 131072 : 65536) | (gapComposerH.y(function5) ? 1048576 : 524288);
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierA = ClipKt.a(SizeKt.d(PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), 1.0f), LVAppDesignKitTheme.j(gapComposerH).f48410b);
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
            Modifier modifierB = BackgroundKt.b(modifierA, j2, rectangleShapeKt$RectangleShape$1);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function7 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function7);
            } else {
                gapComposerH.o();
            }
            Function2 function8 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function8);
            Function2 function9 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function9);
            Integer numValueOf2 = Integer.valueOf(iHashCode);
            Function2 function10 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf2, function10);
            Function1 function11 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function11);
            Function2 function12 = ComposeUiNode.Companion.d;
            Modifier modifierB2 = BackgroundKt.b(n00.e(gapComposerH, modifierC, function12, "AppointmentDetailsCard", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.u, rectangleShapeKt$RectangleShape$1);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int i4 = i3;
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function7);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function8);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function9);
            cj.t(iHashCode2, gapComposerH, function10, gapComposerH, function11);
            Updater.c(gapComposerH, modifierC2, function12);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.osa_creation_details);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48429j;
            long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
            Modifier modifierE = ModifierExtKt.e(PaddingKt.i(new DTFunctionNameModifier("AppointmentDetailsCard"), LVAppDesignKitTheme.l(gapComposerH).f48416e), "osa_appointmentDetailsTitle_text");
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new fj0(11);
                gapComposerH.q(objX);
            }
            TextKt.c(strC, SemanticsModifierKt.b(modifierE, false, (Function1) objX), j3, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 131064);
            Modifier modifierI = PaddingKt.i(o60.f(gapComposerH, true, "AppointmentDetailsCard"), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierI);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function7);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA2, function8);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function9);
            cj.t(iHashCode3, gapComposerH, function10, gapComposerH, function11);
            Updater.c(gapComposerH, modifierC3, function12);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.osa_creation_form_step_1_subtitle), n00.g("AppointmentDetailsCard", "osa_appointmentDetailsDescription_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131064);
            Modifier modifierE2 = ModifierExtKt.e(SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("AppointmentDetailsCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f), "osa_appointmentDetailsLocation_textfield");
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.osa_creation_form_step_1_search_location);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("AppointmentDetailsCard");
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new fj0(12);
                gapComposerH.q(objX2);
            }
            Modifier modifierB3 = SemanticsModifierKt.b(dTFunctionNameModifier, false, (Function1) objX2);
            String str2 = osaLocationFormViewState.v;
            boolean z = osaLocationFormViewState.w;
            if (str2 == null || z) {
                gapComposerH.L(2053694667);
                int i5 = LVAppDesignKitTheme.g(gapComposerH).m;
                gapComposerH.Z(false);
                numValueOf = Integer.valueOf(i5);
            } else {
                gapComposerH.L(2053644199);
                gapComposerH.Z(false);
                numValueOf = null;
            }
            String str3 = osaLocationFormViewState.v;
            if (str3 == null) {
                PlaceGeocodingUiModel placeGeocodingUiModel = osaLocationFormViewState.f60839e;
                str = placeGeocodingUiModel != null ? placeGeocodingUiModel.f51804b : null;
                if (str == null) {
                    str = "";
                }
            } else {
                str = str3;
            }
            osaLocationFormViewState2 = osaLocationFormViewState;
            LVReadOnlyTextFieldKt.a(str, modifierE2, modifierB3, null, str3 == null || z, strC2, false, null, null, null, null, function1, numValueOf, gapComposerH, 0, (i4 >> 3) & 112, 10184);
            gapComposerH = gapComposerH;
            if (CollectionExtKt.a(osaLocationFormViewState2.f60840f)) {
                Modifier modifierE3 = ModifierExtKt.e(SizeKt.d(PaddingKt.m(n00.i(gapComposerH, 2054129597, "AppointmentDetailsCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f), "osa_appointmentDate_textfield");
                String strC3 = StringResources_androidKt.c(gapComposerH, R.string.osa_calendar_title);
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("AppointmentDetailsCard");
                Object objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = new fj0(13);
                    gapComposerH.q(objX3);
                }
                Modifier modifierB4 = SemanticsModifierKt.b(dTFunctionNameModifier2, false, (Function1) objX3);
                int i6 = LVAppDesignKitTheme.g(gapComposerH).I0;
                String str4 = osaLocationFormViewState2.f60843j;
                String str5 = str4 == null ? "" : str4;
                i4 = i4;
                boolean z2 = ((i4 & 7168) == 2048) | ((i4 & 112) == 32);
                Object objX4 = gapComposerH.x();
                if (z2 || objX4 == composer$Companion$Empty$1) {
                    function6 = function2;
                    objX4 = new il(function0, function6, 8);
                    gapComposerH.q(objX4);
                } else {
                    function6 = function2;
                }
                LVReadOnlyTextFieldKt.a(str5, modifierE3, modifierB4, null, false, strC3, false, null, null, null, null, (Function0) objX4, Integer.valueOf(i6), gapComposerH, 0, 0, 10200);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                function6 = function2;
                gapComposerH.L(2054902675);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            gapComposerH.L(-868318237);
            Iterator it = osaLocationFormViewState2.f60841h.iterator();
            while (it.hasNext()) {
                d((OsaFormItemUiModel) it.next(), osaLocationFormViewState2.f60844k, osaLocationFormViewState2.l, osaLocationFormViewState2.m, function3, function4, function5, gapComposerH, i4 & 4186112);
            }
            gapComposerH.Z(false);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            osaLocationFormViewState2 = osaLocationFormViewState;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o(osaLocationFormViewState2, function0, function1, function6, function3, function4, function5, i2);
        }
    }

    public static final void b(OsaLocationFormViewState osaLocationFormViewState, OsaReasonsFormViewState osaReasonsFormViewState, Function0 function0, Function0 function1, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-75217674);
        int i3 = 4;
        int i4 = i2 | (gapComposerH.y(osaLocationFormViewState) ? 4 : 2) | (gapComposerH.y(osaReasonsFormViewState) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024);
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z = !osaLocationFormViewState.g.isEmpty();
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new x20(18);
                gapComposerH.q(objX);
            }
            EnterTransition enterTransitionR = EnterExitTransitionKt.r((Function1) objX);
            CubicBezierEasing cubicBezierEasing = EasingKt.f3864c;
            TweenSpec tweenSpecC = AnimationSpecKt.c(150, 0, cubicBezierEasing, 2);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new x20(18);
                gapComposerH.q(objX2);
            }
            AnimatedVisibilityKt.e(z, null, enterTransitionR, EnterExitTransitionKt.u((Function1) objX2, tweenSpecC), null, ComposableLambdaKt.b(-317156066, new ni0(osaLocationFormViewState, function0, i3), gapComposerH), gapComposerH, 196992, 18);
            boolean z2 = osaReasonsFormViewState.f60971e && osaLocationFormViewState.q;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new x20(18);
                gapComposerH.q(objX3);
            }
            EnterTransition enterTransitionR2 = EnterExitTransitionKt.r((Function1) objX3);
            TweenSpec tweenSpecC2 = AnimationSpecKt.c(150, 0, cubicBezierEasing, 2);
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new x20(18);
                gapComposerH.q(objX4);
            }
            AnimatedVisibilityKt.e(z2, null, enterTransitionR2, EnterExitTransitionKt.u((Function1) objX4, tweenSpecC2), null, ComposableLambdaKt.b(-19656569, new g1(osaReasonsFormViewState, osaLocationFormViewState, function1, 29), gapComposerH), gapComposerH, 196992, 18);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uv((Object) osaLocationFormViewState, (Object) osaReasonsFormViewState, function0, (Function) function1, i2, 22);
        }
    }

    public static final void c(final OsaLocationFormViewState osaLocationFormViewState, final LVModalBottomSheetState lVModalBottomSheetState, final OsaLocationFormBottomSheetScreen osaLocationFormBottomSheetScreen, final Function1 function1, final Function0 function0, final Function0 function2, final OsaReasonsFormViewState osaReasonsFormViewState, final SnackbarHostState snackbarHostState, final Function0 function3, final Function0 function4, final Function2 function5, final Function2 function6, final Function0 function7, final Function1 function8, final Function0 function9, final Function0 function10, final Function0 function11, final Function1 function12, final Function0 function13, final Function0 function14, final Function0 function15, final Function1 function16, Composer composer, final int i2, final int i3, final int i4) {
        int i5;
        int i6;
        int i7;
        GapComposer gapComposer;
        osaLocationFormViewState.getClass();
        lVModalBottomSheetState.getClass();
        function1.getClass();
        function0.getClass();
        function2.getClass();
        osaReasonsFormViewState.getClass();
        snackbarHostState.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        function10.getClass();
        function11.getClass();
        function12.getClass();
        function13.getClass();
        function14.getClass();
        function15.getClass();
        function16.getClass();
        GapComposer gapComposerH = composer.h(1611427367);
        if ((i2 & 6) == 0) {
            i5 = (gapComposerH.y(osaLocationFormViewState) ? 4 : 2) | i2;
        } else {
            i5 = i2;
        }
        if ((i2 & 48) == 0) {
            i5 |= (i2 & 64) == 0 ? gapComposerH.K(lVModalBottomSheetState) : gapComposerH.y(lVModalBottomSheetState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.K(osaLocationFormBottomSheetScreen) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i5 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i5 |= gapComposerH.y(function0) ? 16384 : 8192;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i5 |= gapComposerH.y(function2) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i5 |= gapComposerH.y(osaReasonsFormViewState) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i5 |= gapComposerH.K(snackbarHostState) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i5 |= gapComposerH.y(function3) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i5 |= gapComposerH.y(function4) ? 536870912 : 268435456;
        }
        if ((i3 & 6) == 0) {
            i6 = i3 | (gapComposerH.y(function5) ? 4 : 2);
        } else {
            i6 = i3;
        }
        if ((i3 & 48) == 0) {
            i6 |= gapComposerH.y(function6) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i6 |= gapComposerH.y(function7) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i6 |= gapComposerH.y(function8) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i6 |= gapComposerH.y(function9) ? 16384 : 8192;
        }
        if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
            i6 |= gapComposerH.y(function10) ? 131072 : 65536;
        }
        if ((i3 & 1572864) == 0) {
            i6 |= gapComposerH.y(function11) ? 1048576 : 524288;
        }
        if ((i3 & 12582912) == 0) {
            i6 |= gapComposerH.y(function12) ? 8388608 : 4194304;
        }
        if ((i3 & 100663296) == 0) {
            i6 |= gapComposerH.y(function13) ? 67108864 : 33554432;
        }
        if ((i3 & 805306368) == 0) {
            i6 |= gapComposerH.y(function14) ? 536870912 : 268435456;
        }
        if ((i4 & 6) == 0) {
            i7 = i4 | (gapComposerH.y(function15) ? 4 : 2);
        } else {
            i7 = i4;
        }
        if ((i4 & 48) == 0) {
            i7 |= gapComposerH.y(function16) ? 32 : 16;
        }
        if (gapComposerH.p(i5 & 1, ((i5 & 306783379) == 306783378 && (i6 & 306783379) == 306783378 && (i7 & 19) == 18) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z = (osaReasonsFormViewState.f60969b || osaLocationFormViewState.f60838c) && osaReasonsFormViewState.f60972f;
            boolean zY = ((i5 & 7168) == 2048) | gapComposerH.y(osaLocationFormViewState) | ((i5 & 234881024) == 67108864);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new of0(osaLocationFormViewState, function1, function3, 15);
                gapComposerH.q(objX);
            }
            BackHandlerKt.a(false, (Function0) objX, gapComposerH, 0, 1);
            final boolean z2 = z;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, ComposableLambdaKt.b(1878534891, new kw(function3, 26), gapComposerH), ComposableLambdaKt.b(2104783596, new od(z2, osaLocationFormViewState, osaReasonsFormViewState, function4, function11), gapComposerH), ComposableLambdaKt.b(-1963934995, new ae0(snackbarHostState, 18), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(1383909302, new Function3() { // from class: tj0
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Composer$Companion$Empty$1 composer$Companion$Empty$1;
                    Object g9Var;
                    PaddingValues paddingValues = (PaddingValues) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    paddingValues.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        boolean z3 = z2;
                        OsaLocationFormViewState osaLocationFormViewState2 = osaLocationFormViewState;
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        if (z3) {
                            composer2.L(651010183);
                            LVEmptyViewKt.e(PaddingKt.h(new DTFunctionNameModifier("OsaLocationFormScreen$lambda$4"), paddingValues), snackbarHostState, StringResources_androidKt.c(composer2, R.string.error_generic), null, null, null, null, composer2, 0, 504);
                            composer2.F();
                            composer$Companion$Empty$1 = composer$Companion$Empty$2;
                        } else {
                            Modifier modifierH = PaddingKt.h(BackgroundKt.b(pq0.j(651352547, composer2, "OsaLocationFormScreen$lambda$4").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer2).f48361b.f48375b, RectangleShapeKt.f8913a), paddingValues);
                            boolean zY2 = composer2.y(osaLocationFormViewState2);
                            OsaReasonsFormViewState osaReasonsFormViewState2 = osaReasonsFormViewState;
                            boolean zY3 = zY2 | composer2.y(osaReasonsFormViewState2);
                            Function1 function17 = function12;
                            boolean zK = zY3 | composer2.K(function17);
                            Function0 function18 = function10;
                            boolean zK2 = zK | composer2.K(function18);
                            Function0 function19 = function11;
                            boolean zK3 = zK2 | composer2.K(function19);
                            Function0 function20 = function7;
                            boolean zK4 = zK3 | composer2.K(function20);
                            Function0 function21 = function9;
                            boolean zK5 = zK4 | composer2.K(function21);
                            Function0 function22 = function13;
                            boolean zK6 = zK5 | composer2.K(function22);
                            Function1 function23 = function1;
                            boolean zK7 = zK6 | composer2.K(function23);
                            Function2 function24 = function5;
                            boolean zK8 = zK7 | composer2.K(function24);
                            Function2 function25 = function6;
                            boolean zK9 = zK8 | composer2.K(function25);
                            Function1 function26 = function16;
                            boolean zK10 = zK9 | composer2.K(function26);
                            Object objX2 = composer2.x();
                            if (zK10 || objX2 == composer$Companion$Empty$2) {
                                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                                g9Var = new g9(osaLocationFormViewState2, osaReasonsFormViewState2, function17, function18, function19, function20, function21, function22, function23, function24, function25, function26);
                                composer2.q(g9Var);
                            } else {
                                g9Var = objX2;
                                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                            }
                            LazyDslKt.a(modifierH, null, null, null, null, null, false, null, (Function1) g9Var, composer2, 0, 510);
                            composer2 = composer2;
                            composer2.F();
                        }
                        LVModalBottomSheetState lVModalBottomSheetState2 = lVModalBottomSheetState;
                        if (lVModalBottomSheetState2.a()) {
                            composer2.L(653626428);
                            String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                            OsaLocationFormBottomSheetScreen osaLocationFormBottomSheetScreen2 = osaLocationFormBottomSheetScreen;
                            boolean zK11 = composer2.K(osaLocationFormBottomSheetScreen2);
                            Function0 function27 = function2;
                            boolean zK12 = zK11 | composer2.K(function27);
                            Function0 function28 = function0;
                            boolean zK13 = zK12 | composer2.K(function28);
                            Object objX3 = composer2.x();
                            if (zK13 || objX3 == composer$Companion$Empty$1) {
                                objX3 = new of0(osaLocationFormBottomSheetScreen2, function27, function28, 16);
                                composer2.q(objX3);
                            }
                            LVModalBottomSheetKt.b(null, strC, (Function0) objX3, lVModalBottomSheetState2, null, 0L, false, null, ComposableLambdaKt.b(2714885, new w0(osaLocationFormBottomSheetScreen2, osaLocationFormViewState2, function28, function8, function15, function14, function27), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663296, 241);
                            composer2.F();
                        } else {
                            composer2.L(654943308);
                            composer2.F();
                        }
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposer), gapComposer, 805309872, 497);
            if (osaReasonsFormViewState.f60968a) {
                gapComposer.L(1189292025);
                LVLoadingOverlayKt.a(false, gapComposer, 0, 1);
                gapComposer.Z(false);
            } else {
                gapComposer.L(1189324699);
                gapComposer.Z(false);
            }
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: uj0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    int iA3 = RecomposeScopeImplKt.a(i4);
                    OsaLocationFormScreenKt.c(osaLocationFormViewState, lVModalBottomSheetState, osaLocationFormBottomSheetScreen, function1, function0, function2, osaReasonsFormViewState, snackbarHostState, function3, function4, function5, function6, function7, function8, function9, function10, function11, function12, function13, function14, function15, function16, (Composer) obj, iA, iA2, iA3);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void d(OsaFormItemUiModel osaFormItemUiModel, String str, AppointmentTypeUiModel appointmentTypeUiModel, TimeSlotUiModel timeSlotUiModel, Function2 function2, Function2 function3, Function1 function1, Composer composer, int i2) {
        Function2 function4;
        float f2;
        boolean z;
        GapComposer gapComposerH = composer.h(317992117);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.y(osaFormItemUiModel) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.d(appointmentTypeUiModel == null ? -1 : appointmentTypeUiModel.ordinal()) ? 256 : 128) | (gapComposerH.y(timeSlotUiModel) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536) | (gapComposerH.y(function1) ? 1048576 : 524288);
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = tr.d("StoreAppointmentItem", 1.0f);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
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
            Function2 function5 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function5);
            Function2 function6 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function7 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function7);
            Function1 function8 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function8);
            Function2 function9 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function9);
            DividerKt.a(PaddingKt.l(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).g), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 2);
            GapComposer gapComposer = gapComposerH;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("StoreAppointmentItem");
            Object objX = gapComposer.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new fj0(14);
                gapComposer.q(objX);
            }
            Modifier modifierK = PaddingKt.k(SemanticsModifierKt.b(dTFunctionNameModifier, true, (Function1) objX), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposer, 0);
            int iHashCode2 = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposer.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposer, modifierK);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer.B();
            if (gapComposer.S) {
                gapComposer.C(function0);
            } else {
                gapComposer.o();
            }
            Updater.c(gapComposer, columnMeasurePolicyA2, function5);
            Updater.c(gapComposer, persistentCompositionLocalMapU2, function6);
            cj.t(iHashCode2, gapComposer, function7, gapComposer, function8);
            Updater.c(gapComposer, modifierC2, function9);
            MegatrioUiModel megatrioUiModel = osaFormItemUiModel.f60921k;
            if (megatrioUiModel == null) {
                gapComposer.L(460630264);
                gapComposer.Z(false);
                f2 = 0.0f;
            } else {
                Modifier modifierM = PaddingKt.m(n00.i(gapComposer, 460630265, "StoreAppointmentItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48415c, 7);
                RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposer, 48);
                int iHashCode3 = Long.hashCode(gapComposer.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposer.U();
                Modifier modifierC3 = ComposedModifierKt.c(gapComposer, modifierM);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer.B();
                if (gapComposer.S) {
                    gapComposer.C(function0);
                } else {
                    gapComposer.o();
                }
                Updater.c(gapComposer, rowMeasurePolicyA, function5);
                Updater.c(gapComposer, persistentCompositionLocalMapU3, function6);
                cj.t(iHashCode3, gapComposer, function7, gapComposer, function8);
                Modifier modifierO = SizeKt.o(tr.e(gapComposer, modifierC3, function9, "StoreAppointmentItem"), LVAppDesignKitTheme.d(gapComposer).m);
                Painter painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).f48394c, gapComposer, 0);
                long j2 = LVAppDesignKitTheme.c(gapComposer).f48361b.v;
                f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                IconKt.a(painterA, null, modifierO, j2, gapComposer, 56, 0);
                String str2 = megatrioUiModel.f51809b;
                Locale.f10870b.getClass();
                TextKt.c(StringKt.a(str2, Locale.Companion.a()), PaddingKt.m(new DTFunctionNameModifier("StoreAppointmentItem"), LVAppDesignKitTheme.l(gapComposer).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.c(gapComposer).f48361b.v, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).p, gapComposer, 0, 0, 131064);
                gapComposer = gapComposer;
                gapComposer.Z(true);
                gapComposer.Z(false);
            }
            GapComposer gapComposer2 = gapComposer;
            TextKt.c(osaFormItemUiModel.f60915c, n00.g("StoreAppointmentItem", "osa_appointmentStoreName_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48426f, gapComposer2, 0, 0, 131064);
            GapComposer gapComposer3 = gapComposer2;
            String str3 = megatrioUiModel != null ? megatrioUiModel.f51810c : null;
            if (str3 == null) {
                gapComposer3.L(461994202);
                gapComposer3.Z(false);
            } else {
                TextKt.c(str3, PaddingKt.m(n00.i(gapComposer3, 461994203, "StoreAppointmentItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer3).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(gapComposer3).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer3).g, gapComposer3, 0, 0, 131064);
                gapComposer3 = gapComposer3;
                gapComposer3.Z(false);
            }
            GapComposer gapComposer4 = gapComposer3;
            TextKt.c(String.format(StringResources_androidKt.c(gapComposer3, R.string.osa_store_address_format), Arrays.copyOf(new Object[]{osaFormItemUiModel.d, osaFormItemUiModel.f60916e}, 2)), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("StoreAppointmentItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer3).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "osa_appointmentStoreAddress_text"), LVAppDesignKitTheme.c(gapComposer3).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer3).f48427h, gapComposer4, 0, 0, 131064);
            gapComposerH = gapComposer4;
            LeftToRightLayoutKt.a(ComposableLambdaKt.b(210975595, new w20(osaFormItemUiModel, 26), gapComposerH), gapComposerH, 6);
            gapComposerH.Z(true);
            if (megatrioUiModel != null) {
                gapComposerH.L(-1046413092);
                gapComposerH.L(-1003585567);
                for (CtaUiModel ctaUiModel : megatrioUiModel.d) {
                    Modifier modifierM2 = PaddingKt.m(PaddingKt.k(tr.d("StoreAppointmentItem", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, f2, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                    ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48446a;
                    String str4 = ctaUiModel.f51787b;
                    boolean zY = ((i3 & 3670016) == 1048576) | gapComposerH.y(ctaUiModel);
                    Object objX2 = gapComposerH.x();
                    if (zY || objX2 == composer$Companion$Empty$1) {
                        objX2 = new rh0(function1, ctaUiModel, 11);
                        gapComposerH.q(objX2);
                    }
                    LVButtonKt.b(0, 504, gapComposerH, modifierM2, configurationButton, null, null, str4, (Function0) objX2, false, false, false);
                }
                cj.x(o60.f(gapComposerH, false, "StoreAppointmentItem"), LVAppDesignKitTheme.l(gapComposerH).f48416e, gapComposerH, false);
                function4 = function2;
                z = true;
            } else {
                Modifier modifierM3 = PaddingKt.m(n00.i(gapComposerH, -1045688064, "StoreAppointmentItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                boolean z2 = !osaFormItemUiModel.f60918h.isEmpty();
                function4 = function2;
                ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-1906048089, new rj0(str, osaFormItemUiModel, appointmentTypeUiModel, function4), gapComposerH);
                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                AnimatedVisibilityKt.c(columnScopeInstance, z2, modifierM3, null, null, null, composableLambdaImplB, gapComposerH, 1572870, 28);
                z = true;
                AnimatedVisibilityKt.c(columnScopeInstance, !osaFormItemUiModel.f60919i.isEmpty(), PaddingKt.m(new DTFunctionNameModifier("StoreAppointmentItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), null, null, null, ComposableLambdaKt.b(-777012258, new rj0(osaFormItemUiModel, str, appointmentTypeUiModel, function4), gapComposerH), gapComposerH, 1572870, 28);
                Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
                boolean zY2 = ((i3 & 112) == 32) | ((i3 & 896) == 256) | gapComposerH.y(osaFormItemUiModel) | gapComposerH.y(timeSlotUiModel) | ((i3 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072);
                Object objX3 = gapComposerH.x();
                if (zY2 || objX3 == composer$Companion$Empty$1) {
                    d1 d1Var = new d1((Object) appointmentTypeUiModel, str, (Object) osaFormItemUiModel, (Object) timeSlotUiModel, (Object) function3, 13);
                    gapComposerH.q(d1Var);
                    objX3 = d1Var;
                }
                LazyDslKt.b(null, null, null, spacedAlignedF, null, null, false, null, (Function1) objX3, gapComposerH, 0, 495);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            }
            gapComposerH.Z(z);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            function4 = function2;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o(osaFormItemUiModel, str, appointmentTypeUiModel, timeSlotUiModel, function4, function3, function1, i2);
        }
    }
}

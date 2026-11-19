package com.vuitton.android.presentation.screen.osa.form.contactinformation.components;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
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
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
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
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.components.OsaContactFormScreenKt;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.models.OsaContactFormViewState;
import com.vuitton.android.presentation.screen.osa.models.OsaFormItemUiModel;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonsFormViewState;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import defpackage.ae0;
import defpackage.cj;
import defpackage.f9;
import defpackage.fj0;
import defpackage.h9;
import defpackage.ii0;
import defpackage.kw;
import defpackage.n00;
import defpackage.pq0;
import defpackage.tr;
import defpackage.u00;
import defpackage.wd0;
import defpackage.xe0;
import java.time.LocalDateTime;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "isExpanded", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OsaContactFormScreenKt {
    /* JADX WARN: Type inference failed for: r13v25 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9, types: [boolean, int] */
    public static final void a(OsaContactFormViewState osaContactFormViewState, Function0 function0, Composer composer, int i2) {
        GapComposer gapComposer;
        ?? r13;
        int i3;
        String str;
        LocalDateTime localDateTimeA;
        boolean z;
        boolean z2;
        OsaContactFormViewState osaContactFormViewState2 = osaContactFormViewState;
        Function0 function1 = function0;
        GapComposer gapComposerH = composer.h(1661707863);
        Applier applier = gapComposerH.f7976a;
        int i4 = i2 | (gapComposerH.y(osaContactFormViewState2) ? 4 : 2) | (gapComposerH.y(function1) ? 32 : 16);
        if (gapComposerH.p(i4 & 1, (i4 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object[] objArr = new Object[0];
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new ii0(8);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) RememberSaveableKt.d(objArr, (Function0) objX, gapComposerH, 48);
            OsaFormItemUiModel osaFormItemUiModel = osaContactFormViewState2.g;
            if (osaFormItemUiModel == null) {
                gapComposerH.L(146221693);
                gapComposerH.Z(false);
                gapComposer = gapComposerH;
            } else {
                String str2 = osaFormItemUiModel.f60920j;
                Modifier modifierA = ClipKt.a(n00.i(gapComposerH, 146221694, "AppointmentDetailsCard"), LVAppDesignKitTheme.j(gapComposerH).f48410b);
                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
                ComposeUiNode.b0.getClass();
                Function0 function2 = ComposeUiNode.Companion.f9641b;
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function2);
                } else {
                    gapComposerH.o();
                }
                Function2 function3 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, columnMeasurePolicyA, function3);
                Function2 function4 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function4);
                Integer numValueOf = Integer.valueOf(iHashCode);
                Function2 function5 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf, function5);
                Function1 function6 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function6);
                Function2 function7 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function7);
                Modifier modifierD = tr.d("AppointmentDetailsCard", 1.0f);
                long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.u;
                RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
                Modifier modifierB = BackgroundKt.b(modifierD, j2, rectangleShapeKt$RectangleShape$1);
                RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                int iHashCode2 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function2);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, function3);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function4);
                cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function6);
                Updater.c(gapComposerH, modifierC2, function7);
                String strC = StringResources_androidKt.c(gapComposerH, R.string.osa_creation_details);
                Modifier modifierA2 = RowScopeInstance.f5040a.a(PaddingKt.i(new DTFunctionNameModifier("AppointmentDetailsCard"), LVAppDesignKitTheme.l(gapComposerH).f48416e), 1.0f, true);
                Object objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new fj0(1);
                    gapComposerH.q(objX2);
                }
                TextKt.c(strC, SemanticsModifierKt.b(modifierA2, false, (Function1) objX2), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131064);
                if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                    gapComposerH.L(1491977400);
                    i3 = LVAppDesignKitTheme.g(gapComposerH).G;
                    r13 = 0;
                    gapComposerH.Z(false);
                } else {
                    r13 = 0;
                    gapComposerH.L(1492073686);
                    i3 = LVAppDesignKitTheme.g(gapComposerH).F;
                    gapComposerH.Z(false);
                }
                Painter painterA = PainterResources_androidKt.a(i3, gapComposerH, r13);
                String strF = ((Boolean) mutableState.getF10755b()).booleanValue() ? cj.f(gapComposerH, 1492247162, R.string.alt_expanded, gapComposerH, r13) : cj.f(gapComposerH, 1492341433, R.string.alt_collapsed, gapComposerH, r13);
                Modifier modifierS = SizeKt.s(PaddingKt.i(new DTFunctionNameModifier("AppointmentDetailsCard"), LVAppDesignKitTheme.l(gapComposerH).f48416e), LVAppDesignKitTheme.d(gapComposerH).o);
                boolean zK = gapComposerH.K(mutableState);
                Object objX3 = gapComposerH.x();
                if (zK || objX3 == composer$Companion$Empty$1) {
                    objX3 = new u00(13, mutableState);
                    gapComposerH.q(objX3);
                }
                IconKt.a(painterA, strF, ModifierExtKt.c(modifierS, false, null, null, (Function0) objX3, 31), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, gapComposerH, 8, 0);
                gapComposerH.Z(true);
                AnimatedVisibilityKt.c(ColumnScopeInstance.f4944a, ((Boolean) mutableState.getF10755b()).booleanValue(), null, EnterExitTransitionKt.d(null, null, null, 15), EnterExitTransitionKt.n(null, null, null, 15), null, ComposableLambdaKt.b(-680244613, new xe0(osaFormItemUiModel, 3), gapComposerH), gapComposerH, 1600518, 18);
                Modifier modifierI = PaddingKt.i(BackgroundKt.b(tr.d("AppointmentDetailsCard", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, rectangleShapeKt$RectangleShape$1), LVAppDesignKitTheme.l(gapComposerH).f48416e);
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
                    gapComposerH.C(function2);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA2, function3);
                Updater.c(gapComposerH, persistentCompositionLocalMapU3, function4);
                cj.t(iHashCode3, gapComposerH, function5, gapComposerH, function6);
                Updater.c(gapComposerH, modifierC3, function7);
                TextKt.c(osaFormItemUiModel.f60915c, n00.g("AppointmentDetailsCard", "osa_appointmentStoreName_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, 0, 0, 131064);
                osaContactFormViewState2 = osaContactFormViewState;
                TimeSlotUiModel timeSlotUiModel = osaContactFormViewState2.d;
                if (timeSlotUiModel != null) {
                    str = str2;
                    localDateTimeA = DateTimeUtils.a(timeSlotUiModel.d, str);
                } else {
                    str = str2;
                    localDateTimeA = null;
                }
                TextKt.c(StringKtExtKt.c(DateTimeUtils.i(DateTimeUtils.f65832a, localDateTimeA, StringsKt.w(str), 2), osaContactFormViewState2.f60736a.n), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("AppointmentDetailsCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "osa_appointmentDetailTime_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131064);
                gapComposer = gapComposerH;
                if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                    function1 = function0;
                    z = false;
                    z2 = true;
                    LVLinkKt.a(ModifierExtKt.e(PaddingKt.m(n00.i(gapComposer, -1929064573, "AppointmentDetailsCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48415c, 5), "osa_appointmentDetailModify_button"), StringResources_androidKt.c(gapComposer, R.string.osa_appointment_details_modify), false, null, false, function1, gapComposer, (i4 << 12) & ImageMetadata.JPEG_GPS_COORDINATES, 28);
                    gapComposer.Z(false);
                } else {
                    function1 = function0;
                    z = false;
                    z2 = true;
                    gapComposer.L(-1928509115);
                    gapComposer.Z(false);
                }
                pq0.x(gapComposer, z2, z2, z);
            }
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wd0(osaContactFormViewState2, function1, i2, 11);
        }
    }

    public static final void b(final OsaContactFormViewState osaContactFormViewState, final OsaReasonsFormViewState osaReasonsFormViewState, final SnackbarHostState snackbarHostState, final LVModalBottomSheetState lVModalBottomSheetState, final OsaContactFormBottomSheetScreen osaContactFormBottomSheetScreen, final Function0 function0, final Function0 function1, final Function0 function2, final Function0 function3, final Function0 function4, final Function0 function5, final Function1 function6, final Function2 function7, final Function0 function8, final Function0 function9, final Function0 function10, final Function0 function11, final Function3 function12, final Function1 function13, final Function0 function14, final Function1 function15, final Function1 function16, Composer composer, final int i2, final int i3) {
        int i4;
        OsaReasonsFormViewState osaReasonsFormViewState2;
        int i5;
        GapComposer gapComposer;
        osaContactFormViewState.getClass();
        osaReasonsFormViewState.getClass();
        snackbarHostState.getClass();
        lVModalBottomSheetState.getClass();
        function0.getClass();
        defpackage.a.D(function1, function2, function3, function4, function5);
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
        GapComposer gapComposerH = composer.h(1030482123);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.y(osaContactFormViewState) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            osaReasonsFormViewState2 = osaReasonsFormViewState;
            i4 |= gapComposerH.y(osaReasonsFormViewState2) ? 32 : 16;
        } else {
            osaReasonsFormViewState2 = osaReasonsFormViewState;
        }
        if ((i2 & 3072) == 0) {
            i4 |= (i2 & 4096) == 0 ? gapComposerH.K(lVModalBottomSheetState) : gapComposerH.y(lVModalBottomSheetState) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.K(osaContactFormBottomSheetScreen) ? 16384 : 8192;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i4 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i4 |= gapComposerH.y(function1) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i4 |= gapComposerH.y(function2) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i4 |= gapComposerH.y(function3) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i4 |= gapComposerH.y(function4) ? 536870912 : 268435456;
        }
        if ((i3 & 6) == 0) {
            i5 = i3 | (gapComposerH.y(function5) ? 4 : 2);
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.y(function6) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.y(function7) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i5 |= gapComposerH.y(function8) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i5 |= gapComposerH.y(function9) ? 16384 : 8192;
        }
        if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
            i5 |= gapComposerH.y(function10) ? 131072 : 65536;
        }
        if ((i3 & 1572864) == 0) {
            i5 |= gapComposerH.y(function11) ? 1048576 : 524288;
        }
        if ((i3 & 12582912) == 0) {
            i5 |= gapComposerH.y(function12) ? 8388608 : 4194304;
        }
        if ((i3 & 100663296) == 0) {
            i5 |= gapComposerH.y(function13) ? 67108864 : 33554432;
        }
        if ((i3 & 805306368) == 0) {
            i5 |= gapComposerH.y(function14) ? 536870912 : 268435456;
        }
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && (i5 & 306783379) == 306783378 && (((gapComposerH.y(function15) ? (char) 4 : (char) 2) | (gapComposerH.y(function16) ? ' ' : (char) 16)) & 19) == 18) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i6 = i4;
            ScaffoldKt.a(null, ComposableLambdaKt.b(1297589647, new kw(function0, 23), gapComposerH), null, ComposableLambdaKt.b(1750087057, new ae0(snackbarHostState, 15), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(802964058, new h9(osaContactFormViewState, osaReasonsFormViewState2, function6, function5, function4, function0, function12, function13, function14, function15, function3), gapComposerH), gapComposerH, 805309488, 501);
            if (lVModalBottomSheetState.a()) {
                gapComposerH.L(-1328452649);
                gapComposer = gapComposerH;
                LVModalBottomSheetKt.b(Modifier.Companion.f8607b, StringResources_androidKt.c(gapComposerH, R.string.alt_close), function11, lVModalBottomSheetState, null, 0L, false, null, ComposableLambdaKt.b(-180890532, new f9(osaContactFormBottomSheetScreen, osaContactFormViewState, function1, function2, function11, function16, function7, function8, function9, function10), gapComposerH), gapComposer, ((i5 >> 12) & 896) | 100663302 | (LVModalBottomSheetState.f48797e << 9) | (i6 & 7168), 240);
                gapComposer.Z(false);
            } else {
                gapComposer = gapComposerH;
                gapComposer.L(-1325063977);
                gapComposer.Z(false);
            }
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: ij0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    OsaContactFormScreenKt.b(osaContactFormViewState, osaReasonsFormViewState, snackbarHostState, lVModalBottomSheetState, osaContactFormBottomSheetScreen, function0, function1, function2, function3, function4, function5, function6, function7, function8, function9, function10, function11, function12, function13, function14, function15, function16, (Composer) obj, iA, iA2);
                    return Unit.f71739a;
                }
            };
        }
    }
}

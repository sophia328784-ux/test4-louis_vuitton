package com.vuitton.android.presentation.screen.booking.pass.components;

import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.booking.list.models.BookingInfoUiModel;
import com.vuitton.android.presentation.screen.booking.pass.models.BookingPassUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.n00;
import defpackage.tr;
import defpackage.wd0;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PassViewKt {
    public static final void a(Modifier modifier, BookingPassUiModel bookingPassUiModel, Composer composer, int i2) {
        Function0 function0;
        BiasAlignment biasAlignment;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "PassView");
        }
        bookingPassUiModel.getClass();
        GapComposer gapComposerH = composer.h(624277247);
        Applier applier = gapComposerH.f7976a;
        int i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2 | (gapComposerH.y(bookingPassUiModel) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierA = ClipKt.a(modifierE, LVAppDesignKitTheme.j(gapComposerH).d);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8585c, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
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
            Updater.c(gapComposerH, measurePolicyD, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function6);
            Modifier modifierD = tr.d("PassView", 1.0f);
            Painter painterA = PainterResources_androidKt.a(R.drawable.booking_pass_bg, gapComposerH, 0);
            ContentScale.f9447a.getClass();
            ImageKt.a(painterA, null, modifierD, null, ContentScale.Companion.f9451e, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, 25016, 104);
            Modifier modifierJ = BoxScopeInstance.f4938a.j(SizeKt.d(new DTFunctionNameModifier("PassView"), 1.0f));
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierJ);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                function0 = function1;
                gapComposerH.C(function0);
            } else {
                function0 = function1;
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC2, function6);
            String str = bookingPassUiModel.f54647c;
            List list = bookingPassUiModel.d;
            PassHeaderKt.a(str, bookingPassUiModel.f54646b, bookingPassUiModel.f54645a, gapComposerH, 0);
            Modifier modifierI = PaddingKt.i(tr.d("PassView", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e);
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
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
            cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function5);
            Modifier modifierE2 = n00.e(gapComposerH, modifierC3, function6, "PassView", 1.0f);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e), Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode4 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposerH.U();
            Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, modifierE2);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU4, function3);
            cj.t(iHashCode4, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC4, function6);
            gapComposerH.L(-973129750);
            int i4 = 0;
            for (Object obj : list) {
                int i5 = i4 + 1;
                if (i4 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                BookingInfoUiModel bookingInfoUiModel = (BookingInfoUiModel) obj;
                Modifier modifierB = cj.b("PassView", RowScopeInstance.f5040a, 1.0f, true);
                if (i4 == 0) {
                    Alignment.f8582a.getClass();
                    biasAlignment = Alignment.Companion.f8586e;
                } else if (i4 == CollectionsKt.F(list)) {
                    Alignment.f8582a.getClass();
                    biasAlignment = Alignment.Companion.g;
                } else {
                    Alignment.f8582a.getClass();
                    biasAlignment = Alignment.Companion.f8587f;
                }
                MeasurePolicy measurePolicyD2 = BoxKt.d(biasAlignment, false);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                int iHashCode5 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU5 = gapComposerH.U();
                Modifier modifierC5 = ComposedModifierKt.c(gapComposerH, modifierB);
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
                Updater.c(gapComposerH, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU5, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode5), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC5, ComposeUiNode.Companion.d);
                PassColumnInfoKt.a(0, gapComposerH, bookingInfoUiModel.f54607a, bookingInfoUiModel.f54608b, i4 == CollectionsKt.F(list));
                gapComposerH.Z(true);
                i4 = i5;
            }
            gapComposerH.Z(false);
            gapComposerH.Z(true);
            Modifier modifierO = new DTFunctionNameModifier("PassView").o(SizeKt.f5052c);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD3 = BoxKt.d(Alignment.Companion.f8587f, false);
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
            int iHashCode6 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU6 = gapComposerH.U();
            Modifier modifierC6 = ComposedModifierKt.c(gapComposerH, modifierO);
            ComposeUiNode.b0.getClass();
            Function0 function8 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function8);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD3, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU6, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode6), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Modifier modifierA2 = ClipKt.a(tr.e(gapComposerH, modifierC6, ComposeUiNode.Companion.d, "PassView"), LVAppDesignKitTheme.j(gapComposerH).d);
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierO2 = SizeKt.o(modifierA2, 168.0f);
            String str2 = bookingPassUiModel.f54648e;
            str2.getClass();
            ImageLoaderKt.b(modifierO2, str2, null, null, null, 0, false, null, null, null, gapComposerH, 3072, 2036);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wd0(modifierE, bookingPassUiModel, i2, 22);
        }
    }
}

package com.vuitton.android.presentation.screen.booking.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.TextKt;
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
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import defpackage.a;
import defpackage.cj;
import defpackage.oa;
import defpackage.re;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingOverviewKt {
    public static final void a(Modifier modifier, String str, String str2, String str3, String str4, BookingImageSize bookingImageSize, Composer composer, int i2, int i3) {
        GapComposer gapComposer;
        String str5;
        BookingImageSize bookingImageSize2;
        boolean z;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "BookingOverview");
        }
        str.getClass();
        str2.getClass();
        GapComposer gapComposerH = composer.h(39069512);
        Applier applier = gapComposerH.f7976a;
        int i4 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(str2) ? 256 : 128) | (gapComposerH.K(str3) ? 2048 : 1024) | (gapComposerH.K(str4) ? 16384 : 8192);
        int i5 = i3 & 32;
        int i6 = ImageMetadata.EDGE_MODE;
        if (i5 != 0) {
            i4 |= i6;
        } else if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i6 = gapComposerH.d(bookingImageSize == null ? -1 : bookingImageSize.ordinal()) ? 131072 : 65536;
            i4 |= i6;
        }
        int i7 = i4;
        if (gapComposerH.p(i7 & 1, (i7 & 74899) != 74898)) {
            bookingImageSize2 = i5 != 0 ? BookingImageSize.Small : bookingImageSize;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(spacedAlignedF, Alignment.Companion.l, gapComposerH, 48);
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
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function5);
            ImageLoaderKt.b(ClipKt.a(SizeKt.o(new DTFunctionNameModifier("BookingOverview"), bookingImageSize2.getDp()), LVAppDesignKitTheme.j(gapComposerH).d), str, null, null, null, 0, false, null, null, null, gapComposerH, 3072, 2036);
            GapComposer gapComposer2 = gapComposerH;
            Modifier modifierB = cj.b("BookingOverview", RowScopeInstance.f5040a, 1.0f, true);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposer2).f48415c), Alignment.Companion.n, gapComposer2, 0);
            int iHashCode2 = Long.hashCode(gapComposer2.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposer2.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposer2, modifierB);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer2.B();
            if (gapComposer2.S) {
                gapComposer2.C(function0);
            } else {
                gapComposer2.o();
            }
            Updater.c(gapComposer2, columnMeasurePolicyA, function2);
            Updater.c(gapComposer2, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposer2, function4, gapComposer2, function1);
            Updater.c(gapComposer2, modifierC2, function5);
            if (str3 != null) {
                gapComposer2.L(1299195541);
                str5 = str3;
                String upperCase = str5.toUpperCase(Locale.ROOT);
                upperCase.getClass();
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposer2).p;
                long j2 = LVAppDesignKitTheme.c(gapComposer2).f48361b.v;
                TextOverflow.f10989a.getClass();
                z = false;
                TextKt.c(upperCase, null, j2, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, gapComposer2, 0, 24960, 110586);
                gapComposer2 = gapComposer2;
                gapComposer2.Z(false);
            } else {
                str5 = str3;
                z = false;
                gapComposer2.L(1299496768);
                gapComposer2.Z(false);
            }
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("BookingOverview");
            Object objX = gapComposer2.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new re(19);
                gapComposer2.q(objX);
            }
            Modifier modifierB2 = SemanticsModifierKt.b(dTFunctionNameModifier, z, (Function1) objX);
            TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposer2).f48429j;
            long j3 = LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k;
            TextOverflow.f10989a.getClass();
            int i8 = TextOverflow.f10991c;
            GapComposer gapComposer3 = gapComposer2;
            TextKt.c(str2, modifierB2, j3, 0L, null, 0L, null, null, 0L, i8, false, 2, 0, null, textStyle2, gapComposer3, (i7 >> 6) & 14, 24960, 110584);
            gapComposer = gapComposer3;
            if (str4 != null) {
                gapComposer.L(1299937495);
                TextKt.c(str4, null, LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, i8, false, 1, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, (i7 >> 12) & 14, 24960, 110586);
                gapComposer = gapComposer;
                gapComposer.Z(z);
            } else {
                gapComposer.L(1300236800);
                gapComposer.Z(z);
            }
            gapComposer.Z(true);
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            str5 = str3;
            gapComposer.D();
            bookingImageSize2 = bookingImageSize;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new oa(modifierE, str, str2, str5, str4, bookingImageSize2, i2, i3, 1);
        }
    }
}

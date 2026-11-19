package com.vuitton.android.presentation.screen.distantrepairs.form.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
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
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import defpackage.cj;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import defpackage.tt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class DistantRepairAddressCardComponentKt {
    public static final void a(Modifier modifier, int i2, String str, String str2, String str3, int i3, Function0 function0, Composer composer, int i4) {
        int i5;
        Function0 function1;
        Modifier modifierE = modifier;
        int i6 = i3;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "DistantRepairAddressCard");
        }
        function0.getClass();
        GapComposer gapComposerH = composer.h(-545113991);
        Applier applier = gapComposerH.f7976a;
        if ((i4 & 6) == 0) {
            i5 = (gapComposerH.K(modifierE) ? 4 : 2) | i4;
        } else {
            i5 = i4;
        }
        if ((i4 & 48) == 0) {
            i5 |= gapComposerH.d(i2) ? 32 : 16;
        }
        if ((i4 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.K(str) ? 256 : 128;
        }
        if ((i4 & 3072) == 0) {
            i5 |= gapComposerH.K(str2) ? 2048 : 1024;
        }
        if ((i4 & 24576) == 0) {
            i5 |= gapComposerH.K(str3) ? 16384 : 8192;
        }
        if ((196608 & i4) == 0) {
            i5 |= gapComposerH.d(i6) ? 131072 : 65536;
        }
        if ((1572864 & i4) == 0) {
            i5 |= gapComposerH.y(function0) ? 1048576 : 524288;
        }
        if (gapComposerH.p(i5 & 1, (599187 & i5) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
            Modifier modifierA = ClipKt.a(SizeKt.d(BackgroundKt.b(modifierE, j2, rectangleShapeKt$RectangleShape$1), 1.0f), LVAppDesignKitTheme.j(gapComposerH).f48410b);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int i7 = i5;
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
            Modifier modifierB = BackgroundKt.b(n00.e(gapComposerH, modifierC, function7, "DistantRepairAddressCard", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.u, rectangleShapeKt$RectangleShape$1);
            BiasAlignment.Vertical vertical = Alignment.Companion.l;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 48);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                function1 = function2;
                gapComposerH.C(function1);
            } else {
                function1 = function2;
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function4);
            cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function6);
            Updater.c(gapComposerH, modifierC2, function7);
            Function0 function8 = function1;
            TextKt.c(StringResources_androidKt.c(gapComposerH, i2), PaddingKt.m(PaddingKt.k(new DTFunctionNameModifier("DistantRepairAddressCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131064);
            Modifier modifierM = PaddingKt.m(o60.d(gapComposerH, true, "DistantRepairAddressCard", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
            RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 48);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierM);
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
            Updater.c(gapComposerH, rowMeasurePolicyA2, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function4);
            cj.t(iHashCode3, gapComposerH, function5, gapComposerH, function6);
            DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposerH, modifierC3, function7, "DistantRepairAddressCard");
            RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.mylv_name_myaddress), rowScopeInstance.a(dTFunctionNameModifierE, 1.0f, true), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
            TextKt.c(tr.h(str, " ", str2), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131066);
            Modifier modifierI = PaddingKt.i(o60.d(gapComposerH, true, "DistantRepairAddressCard", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            RowMeasurePolicy rowMeasurePolicyA3 = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposerH, 48);
            int iHashCode4 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposerH.U();
            Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, modifierI);
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
            Updater.c(gapComposerH, rowMeasurePolicyA3, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU4, function4);
            cj.t(iHashCode4, gapComposerH, function5, gapComposerH, function6);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.mylv_myprofile_myinfos_address_address1), rowScopeInstance.a(tr.e(gapComposerH, modifierC4, function7, "DistantRepairAddressCard"), 1.0f, true), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
            Modifier modifierB2 = cj.b("DistantRepairAddressCard", rowScopeInstance, 1.0f, true);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, Alignment.Companion.p, gapComposerH, 48);
            int iHashCode5 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU5 = gapComposerH.U();
            Modifier modifierC5 = ComposedModifierKt.c(gapComposerH, modifierB2);
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
            Updater.c(gapComposerH, columnMeasurePolicyA2, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU5, function4);
            cj.t(iHashCode5, gapComposerH, function5, gapComposerH, function6);
            Updater.c(gapComposerH, modifierC5, function7);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).m;
            TextAlign.f10959b.getClass();
            TextKt.c(str3, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, new TextAlign(TextAlign.f10963h), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, (i7 >> 12) & 14, 0, 130042);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            i6 = i3;
            LVButtonKt.b(12582912 | ((i7 << 9) & 1879048192), 376, gapComposerH, PaddingKt.i(SizeKt.d(new DTFunctionNameModifier("DistantRepairAddressCard"), 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e), LVAppDesignKitTheme.b(gapComposerH).f48449e, null, null, StringResources_androidKt.c(gapComposerH, i6), function0, false, true, false);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new tt(modifierE, i2, str, str2, str3, i6, function0, i4);
        }
    }
}

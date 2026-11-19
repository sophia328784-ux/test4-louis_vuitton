package com.vuitton.android.presentation.screen.reinsurance.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.IconKt;
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
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.n00;
import defpackage.o60;
import defpackage.sw;
import defpackage.tr;
import defpackage.wm0;
import defpackage.xf;
import defpackage.yn0;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.collections.immutable.ImmutableList;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ReinsuranceListKt {
    public static final void a(Modifier modifier, String str, String str2, int i2, Function0 function0, Composer composer, int i3) {
        int i4;
        String str3;
        Function0 function1;
        int i5;
        String str4;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "ReinsuranceItem");
        }
        str.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(73436629);
        Applier applier = gapComposerH.f7976a;
        if ((i3 & 6) == 0) {
            i4 = (gapComposerH.K(modifierE) ? 4 : 2) | i3;
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            str3 = str;
            i4 |= gapComposerH.K(str3) ? 32 : 16;
        } else {
            str3 = str;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(str2) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i4 |= gapComposerH.d(i2) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            function1 = function0;
            i4 |= gapComposerH.y(function1) ? 16384 : 8192;
        } else {
            function1 = function0;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 9363) != 9362)) {
            gapComposerH.y0();
            if ((i3 & 1) != 0 && !gapComposerH.h0()) {
                gapComposerH.D();
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierO = ModifierExtKt.c(tr.d("ReinsuranceItem", 1.0f), false, null, null, function1, 31).o(modifierE);
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new yn0(29);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierO, false, (Function1) objX);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function3);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function4);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function5);
            Function1 function6 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function6);
            Function2 function7 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function7);
            Modifier modifierB2 = cj.b("ReinsuranceItem", RowScopeInstance.f5040a, 1.0f, true);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB2);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function4);
            cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function6);
            Modifier modifierF = n00.f(gapComposerH, modifierC2, function7, "ReinsuranceItem", "pdp_reinsuranceTitle_text");
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48429j;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            TextAlign.f10959b.getClass();
            int i6 = TextAlign.g;
            boolean z = true;
            int i7 = i4;
            TextKt.c(str3, modifierF, j2, 0L, null, 0L, null, new TextAlign(i6), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, (i4 >> 3) & 14, 0, 130040);
            gapComposerH = gapComposerH;
            if (str2 == null) {
                gapComposerH.L(-104272976);
                gapComposerH.Z(false);
                str4 = "ReinsuranceItem";
            } else {
                TextKt.c(str2, ModifierExtKt.e(PaddingKt.m(n00.i(gapComposerH, -104272975, "ReinsuranceItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "pdp_reinsuranceSubtitle_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, new TextAlign(i6), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 130040);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
                str4 = "ReinsuranceItem";
                z = true;
            }
            SpacerKt.a(gapComposerH, SizeKt.s(o60.f(gapComposerH, z, str4), LVAppDesignKitTheme.l(gapComposerH).f48415c));
            i5 = i2;
            IconKt.a(PainterResources_androidKt.a(i5, gapComposerH, (i7 >> 9) & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier(str4), LVAppDesignKitTheme.d(gapComposerH).m), "pdp_reinsurance_icon"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, gapComposerH, 56, 0);
            gapComposerH.Z(z);
        } else {
            i5 = i2;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new sw(modifierE, str, str2, i5, function0, i3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void b(Modifier modifier, ImmutableList immutableList, int i2, Function1 function1, Composer composer, int i3, int i4) {
        int i5;
        int i6;
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "ReinsuranceList");
        }
        immutableList.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-1431326913);
        int i7 = (i3 & 6) == 0 ? (gapComposerH.K(modifierE) ? 4 : 2) | i3 : i3;
        if ((i3 & 48) == 0) {
            i7 |= gapComposerH.y(immutableList) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            if ((i4 & 4) == 0) {
                i5 = i2;
                int i8 = gapComposerH.d(i5) ? 256 : 128;
                i7 |= i8;
            } else {
                i5 = i2;
            }
            i7 |= i8;
        } else {
            i5 = i2;
        }
        if ((i3 & 3072) == 0) {
            i7 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        int i9 = 1;
        if (gapComposerH.p(i7 & 1, (i7 & 1171) != 1170)) {
            gapComposerH.y0();
            if ((i3 & 1) != 0 && !gapComposerH.h0()) {
                gapComposerH.D();
                if ((i4 & 4) != 0) {
                    i7 &= -897;
                }
            } else if ((i4 & 4) != 0) {
                i5 = LVAppDesignKitTheme.g(gapComposerH).I;
                i7 &= -897;
            }
            int i10 = i5;
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierE2 = ModifierExtKt.e(modifierE, "pdp_reinsurance_list");
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE2);
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
            gapComposerH.L(-1644873964);
            int i11 = 0;
            GapComposer gapComposer2 = gapComposerH;
            for (Object obj : immutableList) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                ReinsuranceUiModel reinsuranceUiModel = (ReinsuranceUiModel) obj;
                boolean zK = gapComposer2.K(reinsuranceUiModel);
                Object objX = gapComposer2.x();
                if (zK || objX == Composer.Companion.f7939a) {
                    objX = new wm0(function1, reinsuranceUiModel, i9);
                    gapComposer2.q(objX);
                }
                Function0 function2 = (Function0) objX;
                int i13 = i9;
                Modifier modifierE3 = ModifierExtKt.e(PaddingKt.j(new DTFunctionNameModifier("ReinsuranceList"), LVAppDesignKitTheme.l(gapComposer2).f48417f, LVAppDesignKitTheme.l(gapComposer2).f48416e), "pdp_reinsurance_view");
                String string = StringsKt.a0(reinsuranceUiModel.f63437b).toString();
                String str = reinsuranceUiModel.f63438c;
                int i14 = i11;
                GapComposer gapComposer3 = gapComposer2;
                a(modifierE3, string, str != null ? StringsKt.a0(str).toString() : null, i10, function2, gapComposer3, (i7 << 3) & 7168);
                int i15 = i10;
                GapComposer gapComposer4 = gapComposer3;
                if (i14 < immutableList.size() - 1) {
                    DividerKt.a(SizeKt.f(PaddingKt.k(n00.i(gapComposer4, -33302860, "ReinsuranceList"), LVAppDesignKitTheme.l(gapComposer4).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.d(gapComposer4).f48385c), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer4).f48361b.q, gapComposer4, 0, 2);
                    gapComposer4.Z(false);
                } else {
                    gapComposer4.L(-32981886);
                    gapComposer4.Z(false);
                }
                i9 = i13;
                i11 = i12;
                i10 = i15;
                gapComposer2 = gapComposer4;
            }
            gapComposer2.Z(false);
            gapComposer2.Z(i9);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            i6 = i10;
            gapComposer = gapComposer2;
        } else {
            gapComposerH.D();
            i6 = i5;
            gapComposer = gapComposerH;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new xf(modifierE, immutableList, i6, function1, i3, i4);
        }
    }
}

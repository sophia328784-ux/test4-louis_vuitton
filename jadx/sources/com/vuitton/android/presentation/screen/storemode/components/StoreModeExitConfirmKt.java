package com.vuitton.android.presentation.screen.storemode.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
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
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import defpackage.a;
import defpackage.a11;
import defpackage.cj;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StoreModeExitConfirmKt {
    public static final void a(Modifier modifier, Function0 function0, Function0 function1, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "StoreModeExitConfirm");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerC = a.c(function0, function1, composer, 1323683594);
        Applier applier = gapComposerC.f7976a;
        int i3 = i2 | (gapComposerC.K(modifier2) ? 4 : 2) | (gapComposerC.y(function0) ? 32 : 16) | (gapComposerC.y(function1) ? 256 : 128);
        if (gapComposerC.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierK = PaddingKt.k(modifier2, LVAppDesignKitTheme.l(gapComposerC).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4921e, Alignment.Companion.o, gapComposerC, 54);
            int iHashCode = Long.hashCode(gapComposerC.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerC.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerC, modifierK);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerC.B();
            if (gapComposerC.S) {
                gapComposerC.C(function2);
            } else {
                gapComposerC.o();
            }
            Function2 function3 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerC, columnMeasurePolicyA, function3);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerC, persistentCompositionLocalMapU, function4);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerC, numValueOf, function5);
            Function1 function6 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerC, function6);
            Function2 function7 = ComposeUiNode.Companion.d;
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerC).f48398i, gapComposerC, 0), null, SizeKt.o(tr.e(gapComposerC, modifierC, function7, "StoreModeExitConfirm"), LVAppDesignKitTheme.d(gapComposerC).u), LVAppDesignKitTheme.c(gapComposerC).f48361b.m, gapComposerC, 56, 0);
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("StoreModeExitConfirm"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerC).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            String strC = StringResources_androidKt.c(gapComposerC, R.string.store_mode_leaving_message);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerC).d;
            long j2 = LVAppDesignKitTheme.c(gapComposerC).f48361b.m;
            TextAlign.f10959b.getClass();
            TextKt.c(strC, modifierM, j2, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle, gapComposerC, 0, 0, 130040);
            Modifier modifierM2 = PaddingKt.m(new DTFunctionNameModifier("StoreModeExitConfirm"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerC).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerC).d), Alignment.Companion.f8591k, gapComposerC, 0);
            int iHashCode2 = Long.hashCode(gapComposerC.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerC.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerC, modifierM2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerC.B();
            if (gapComposerC.S) {
                gapComposerC.C(function2);
            } else {
                gapComposerC.o();
            }
            Updater.c(gapComposerC, rowMeasurePolicyA, function3);
            Updater.c(gapComposerC, persistentCompositionLocalMapU2, function4);
            cj.t(iHashCode2, gapComposerC, function5, gapComposerC, function6);
            Updater.c(gapComposerC, modifierC2, function7);
            ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerC).f48450f;
            RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
            LVButtonKt.b((i3 << 21) & 1879048192, 504, gapComposerC, cj.b("StoreModeExitConfirm", rowScopeInstance, 1.0f, true), configurationButton, null, null, StringResources_androidKt.c(gapComposerC, R.string.btn_cancel), function1, false, false, false);
            LVButtonKt.b((i3 << 24) & 1879048192, 504, gapComposerC, cj.b("StoreModeExitConfirm", rowScopeInstance, 1.0f, true), LVAppDesignKitTheme.b(gapComposerC).f48447b, null, null, StringResources_androidKt.c(gapComposerC, R.string.confirm), function0, false, false, false);
            gapComposerC = gapComposerC;
            gapComposerC.Z(true);
            gapComposerC.Z(true);
        } else {
            gapComposerC.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerC.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new a11(modifier2, function0, function1, i2, 1);
        }
    }
}

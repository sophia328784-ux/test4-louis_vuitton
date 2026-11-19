package com.vuitton.android.presentation.screen.storemode.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
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
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import defpackage.a;
import defpackage.cj;
import defpackage.n00;
import defpackage.o11;
import defpackage.o60;
import defpackage.s;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StoreModeInvalidKt {
    public static final void a(int i2, Composer composer, Modifier modifier, Function0 function0) {
        Modifier modifier2;
        Modifier modifierE = modifier;
        Function0 function1 = function0;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "StoreModeInvalid");
        }
        Modifier modifier3 = modifierE;
        modifier3.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1662058102);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.K(modifier3) ? 4 : 2) | (gapComposerH.y(function1) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new o11(2);
                gapComposerH.q(objX);
            }
            Modifier modifierC = ModifierExtKt.c(modifier3, false, null, null, (Function0) objX, 27);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierC);
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
            Updater.c(gapComposerH, measurePolicyD, function3);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function4);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function5);
            Function1 function6 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function6);
            Function2 function7 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC2, function7);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("StoreModeInvalid");
            BiasAlignment biasAlignment = Alignment.Companion.f8587f;
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
            Modifier modifierK = PaddingKt.k(SizeKt.d(boxScopeInstance.g(dTFunctionNameModifier, biasAlignment), 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 48);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierK);
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
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).f48398i, gapComposerH, 0), null, SizeKt.o(tr.e(gapComposerH, modifierC3, function7, "StoreModeInvalid"), LVAppDesignKitTheme.d(gapComposerH).u), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, gapComposerH, 56, 0);
            Modifier modifierM = PaddingKt.m(tr.d("StoreModeInvalid", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.store_mode_thank_you_for_your_visit);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).d;
            Color.f8866b.getClass();
            long j2 = Color.f8868e;
            TextAlign.f10959b.getClass();
            int i4 = TextAlign.f10961e;
            TextKt.c(strC, modifierM, j2, 0L, null, 0L, null, new TextAlign(i4), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, KyberEngine.KyberPolyBytes, 0, 130040);
            Modifier modifierM2 = PaddingKt.m(SizeKt.d(boxScopeInstance.g(o60.f(gapComposerH, true, "StoreModeInvalid"), Alignment.Companion.f8589i), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48420j, 7);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 48);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, modifierM2);
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
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.store_mode_automatic_exit_message), PaddingKt.m(PaddingKt.k(n00.e(gapComposerH, modifierC4, function7, "StoreModeInvalid", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7), j2, 0L, null, 0L, null, new TextAlign(i4), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, KyberEngine.KyberPolyBytes, 0, 130040);
            gapComposerH = gapComposerH;
            function1 = function0;
            modifier2 = modifier3;
            LVButtonKt.b(1879048192 & (i3 << 24), 504, gapComposerH, PaddingKt.k(tr.d("StoreModeInvalid", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.b(gapComposerH).f48447b, null, null, StringResources_androidKt.c(gapComposerH, R.string.store_mode_cta_go_back_to_app), function1, false, false, false);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            modifier2 = modifier3;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new s(modifier2, function1, i2, 7);
        }
    }
}

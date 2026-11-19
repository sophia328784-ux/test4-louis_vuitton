package com.vuitton.android.presentation.screen.pdp.components.subcomponents;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.TextKt;
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
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import defpackage.l1;
import defpackage.n00;
import defpackage.o60;
import defpackage.u1;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PdpTraceabilityKt {
    public static final void a(Modifier modifier, String str, String str2, String str3, String str4, Function1 function1, Composer composer, int i2) {
        Modifier modifier2;
        boolean z;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "PdpTraceability");
        }
        str3.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-813403261);
        int i3 = i2 | 6 | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(str2) ? 256 : 128) | (gapComposerH.K(str3) ? 2048 : 1024) | (gapComposerH.K(str4) ? 16384 : 8192) | (gapComposerH.y(function1) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PdpTraceability");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
            ImageLoaderKt.b(AspectRatioKt.a(SizeKt.v(PaddingKt.m(n00.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "PdpTraceability", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 7), null, 3), 1.0f, true), str2, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
            gapComposerH = gapComposerH;
            if (str.length() > 0) {
                TextKt.c(str, PaddingKt.m(o60.c(gapComposerH, -556825432, "PdpTraceability", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, 2), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, (i3 >> 3) & 14, 0, 131064);
                gapComposerH = gapComposerH;
                z = false;
                gapComposerH.Z(false);
            } else {
                z = false;
                gapComposerH.L(-556310987);
                gapComposerH.Z(false);
            }
            if (str3.length() > 0) {
                GapComposer gapComposer = gapComposerH;
                TextKt.c(str3, PaddingKt.m(o60.c(gapComposerH, -556241051, "PdpTraceability", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, 2), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposer, (i3 >> 9) & 14, 0, 131064);
                gapComposerH = gapComposer;
                gapComposerH.Z(z);
            } else {
                gapComposerH.L(-555723723);
                gapComposerH.Z(z);
            }
            if (str4.length() <= 0 || !StringExtKt.a(str4)) {
                gapComposerH.L(-555126539);
                gapComposerH.Z(z);
            } else {
                Modifier modifierM = PaddingKt.m(n00.i(gapComposerH, -555639713, "PdpTraceability"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, 2);
                String strC = StringResources_androidKt.c(gapComposerH, R.string.pdp_discover_more);
                boolean z2 = ((57344 & i3) == 16384 ? true : z) | ((458752 & i3) == 131072 ? true : z);
                Object objX = gapComposerH.x();
                if (z2 || objX == Composer.Companion.f7939a) {
                    objX = new l1(4, str4, function1);
                    gapComposerH.q(objX);
                }
                LVLinkKt.a(modifierM, strC, false, null, false, (Function0) objX, gapComposerH, 0, 28);
                gapComposerH.Z(z);
            }
            gapComposerH.Z(true);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u1(modifier2, str, str2, str3, str4, function1, i2, 23);
        }
    }
}

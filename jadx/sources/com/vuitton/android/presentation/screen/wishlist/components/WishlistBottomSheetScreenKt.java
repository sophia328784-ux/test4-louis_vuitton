package com.vuitton.android.presentation.screen.wishlist.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
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
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import defpackage.a9;
import defpackage.d21;
import defpackage.il;
import defpackage.r31;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class WishlistBottomSheetScreenKt {
    public static final void a(Function0 function0, Function0 function1, Composer composer, int i2) {
        int i3;
        GapComposer gapComposerH = composer.h(1137391251);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(function0) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function1) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("WishlistBottomSheetDelete");
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48446a;
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("WishlistBottomSheetDelete"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            boolean z = ((i3 & 14) == 4) | ((i3 & 112) == 32);
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new il(function0, function1, 17);
                gapComposerH.q(objX);
            }
            LVButtonKt.b(KyberEngine.KyberPolyBytes, 504, gapComposerH, modifierM, configurationButton, null, null, "TODO LVPASS-18006", (Function0) objX, false, false, false);
            LVButtonKt.b((i3 << 24) & 1879048192, 504, gapComposerH, PaddingKt.m(new DTFunctionNameModifier("WishlistBottomSheetDelete"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 5), LVAppDesignKitTheme.b(gapComposerH).f48449e, null, null, StringResources_androidKt.c(gapComposerH, R.string.cancel), function1, false, false, false);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new a9(function0, function1, i2, 10);
        }
    }

    public static final void b(WishlistBottomSheetScreen wishlistBottomSheetScreen, Function0 function0, Function0 function1, Composer composer, int i2) {
        GapComposer gapComposerC = defpackage.a.c(function0, function1, composer, -814256219);
        int i3 = (gapComposerC.K(wishlistBottomSheetScreen) ? 4 : 2) | i2 | (gapComposerC.y(function1) ? 256 : 128);
        if (gapComposerC.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (!wishlistBottomSheetScreen.equals(WishlistBottomSheetScreen.WishlistBottomSheetDelete.f65695a)) {
                throw d21.u(gapComposerC, -816173133, false);
            }
            gapComposerC.L(-816170473);
            a(function0, function1, gapComposerC, (i3 >> 3) & 126);
            gapComposerC.Z(false);
        } else {
            gapComposerC.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerC.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new r31(wishlistBottomSheetScreen, function0, function1, i2, 11);
        }
    }
}

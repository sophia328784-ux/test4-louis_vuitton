package com.vuitton.android.presentation.screen.storemode.filters.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.helper.PluralStringResourceHelperKt;
import defpackage.a;
import defpackage.cj;
import defpackage.g5;
import defpackage.j8;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ApplyFiltersButtonKt {
    public static final void a(Modifier modifier, String str, Integer num, boolean z, Function0 function0, Composer composer, int i2) {
        int i3;
        String strF;
        Function0 function1;
        Integer numValueOf;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "ApplyFiltersButton");
        }
        Modifier modifier2 = modifierE;
        modifier2.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1959143733);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(num) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function0) ? 16384 : 8192;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (z) {
                gapComposerH.L(-540169965);
                gapComposerH.Z(false);
                strF = "";
            } else if (str != null) {
                strF = cj.f(gapComposerH, -1541444466, R.string.content_description_search_button, gapComposerH, false);
            } else if (num != null) {
                gapComposerH.L(-1541441235);
                strF = PluralStringResourceHelperKt.b(R.plurals.catalogue_filters_show_results, gapComposerH, num.intValue());
                gapComposerH.Z(false);
            } else {
                strF = cj.f(gapComposerH, -1541437596, R.string.catalogue_filters_apply, gapComposerH, false);
            }
            String str2 = strF;
            ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48446a;
            if (z) {
                gapComposerH.L(-539698763);
                Object objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = new g5(17);
                    gapComposerH.q(objX);
                }
                gapComposerH.Z(false);
                function1 = (Function0) objX;
            } else {
                gapComposerH.L(-1541429998);
                gapComposerH.Z(false);
                function1 = function0;
            }
            if (z) {
                gapComposerH.L(-539643149);
                int i4 = LVAppDesignKitTheme.a(gapComposerH).y;
                gapComposerH.Z(false);
                numValueOf = Integer.valueOf(i4);
            } else {
                gapComposerH.L(-539570981);
                gapComposerH.Z(false);
                numValueOf = null;
            }
            LVButtonKt.b((i3 & 14) | ImageMetadata.EDGE_MODE, 456, gapComposerH, modifier2, configurationButton, null, numValueOf, str2, function1, true, false, false);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new j8(modifier2, str, num, z, function0, i2, 0);
        }
    }
}

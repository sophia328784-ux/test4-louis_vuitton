package com.vuitton.android.presentation.screen.immersivearticle.components.cards;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
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
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.compose.StringExtKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleBannerUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleCtaUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.SectionThemeUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.n00;
import defpackage.rv;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ImmersiveArticleBannerKt {
    public static final void a(Modifier modifier, ImmersiveArticleBannerUiModel immersiveArticleBannerUiModel, Function0 function0, Composer composer, int i2) {
        long jB;
        ImmersiveArticleCtaUiModel immersiveArticleCtaUiModel;
        boolean z;
        boolean z2;
        long j2;
        long j3;
        String str;
        String str2;
        long j4;
        Modifier modifierE = modifier;
        SectionThemeUiModel sectionThemeUiModel = immersiveArticleBannerUiModel.f58645a;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "ImmersiveArticleBanner");
        }
        Modifier modifier2 = modifierE;
        function0.getClass();
        GapComposer gapComposerH = composer.h(1154671114);
        int i3 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.K(immersiveArticleBannerUiModel) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ImmersiveArticleCtaUiModel immersiveArticleCtaUiModel2 = immersiveArticleBannerUiModel.f58647c;
            String str3 = sectionThemeUiModel.f58825a;
            Color colorA = null;
            Color colorA2 = str3 != null ? StringExtKt.a(str3) : null;
            if (colorA2 == null) {
                gapComposerH.L(1537388356);
                jB = Color.b(LVAppDesignKitTheme.h(gapComposerH).f48403c, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1537385628);
                gapComposerH.Z(false);
                jB = colorA2.f8872a;
            }
            Modifier modifierJ = PaddingKt.j(BackgroundKt.b(modifier2, jB, RoundedCornerShapeKt.a(LVAppDesignKitTheme.d(gapComposerH).m)), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).d);
            Alignment.f8582a.getClass();
            BiasAlignment.Vertical vertical = Alignment.Companion.l;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e), vertical, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierJ);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            int length = immersiveArticleBannerUiModel.f58646b.length();
            RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
            if (length > 0) {
                gapComposerH.L(-1605920279);
                String str4 = immersiveArticleBannerUiModel.f58646b;
                Modifier modifierB = cj.b("ImmersiveArticleBanner", rowScopeInstance, 1.0f, true);
                String str5 = sectionThemeUiModel.f58826b;
                Color colorA3 = str5 != null ? StringExtKt.a(str5) : null;
                if (colorA3 == null) {
                    gapComposerH.L(1056580162);
                    j4 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(1056578178);
                    gapComposerH.Z(false);
                    j4 = colorA3.f8872a;
                }
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48430k;
                TextOverflow.f10989a.getClass();
                z2 = false;
                long j5 = j4;
                immersiveArticleCtaUiModel = immersiveArticleCtaUiModel2;
                TextKt.c(str4, modifierB, j5, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, gapComposerH, 0, 24960, 110584);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
                z = true;
            } else {
                immersiveArticleCtaUiModel = immersiveArticleCtaUiModel2;
                z = true;
                z2 = false;
                SpacerKt.a(gapComposerH, rowScopeInstance.a(n00.i(gapComposerH, -1605553642, "ImmersiveArticleBanner"), 1.0f, true));
                gapComposerH.Z(false);
            }
            if (immersiveArticleCtaUiModel == null) {
                gapComposerH.L(-1605457698);
                gapComposerH.Z(z2);
            } else {
                SectionThemeUiModel sectionThemeUiModel2 = immersiveArticleCtaUiModel.f58650c;
                gapComposerH.L(-1605457697);
                ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).g;
                Color colorA4 = (sectionThemeUiModel2 == null || (str2 = sectionThemeUiModel2.f58825a) == null) ? null : StringExtKt.a(str2);
                if (colorA4 == null) {
                    gapComposerH.L(405360270);
                    j2 = LVAppDesignKitTheme.b(gapComposerH).f48446a.f48532a;
                    gapComposerH.Z(z2);
                } else {
                    gapComposerH.L(405357790);
                    gapComposerH.Z(z2);
                    j2 = colorA4.f8872a;
                }
                if (sectionThemeUiModel2 != null && (str = sectionThemeUiModel2.f58826b) != null) {
                    colorA = StringExtKt.a(str);
                }
                Color color = colorA;
                if (color == null) {
                    gapComposerH.L(405364299);
                    j3 = LVAppDesignKitTheme.b(gapComposerH).f48446a.d;
                    gapComposerH.Z(z2);
                } else {
                    gapComposerH.L(405362005);
                    gapComposerH.Z(z2);
                    j3 = color.f8872a;
                }
                ConfigurationButton configurationButtonA = ConfigurationButton.a(configurationButton, j2, j3, null, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8182);
                String str6 = immersiveArticleCtaUiModel.f58648a;
                if (str6 == null) {
                    str6 = "";
                }
                LVButtonKt.b((i3 << 21) & 1879048192, 505, gapComposerH, null, configurationButtonA, null, null, str6, function0, false, false, false);
                gapComposerH.Z(z2);
            }
            gapComposerH.Z(z);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rv(i2, 11, modifier2, immersiveArticleBannerUiModel, function0);
        }
    }
}

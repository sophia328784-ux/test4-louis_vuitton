package com.vuitton.android.presentation.screen.immersivearticle.components.cards;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.StringExtKt;
import com.vuitton.android.presentation.compose.components.LVLiveCountdownKt;
import com.vuitton.android.presentation.model.common.A11ySettings;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleHelper;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleEventContentUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleEventSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSizeCardUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.SectionThemeUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.d3;
import defpackage.n00;
import defpackage.w;
import java.time.Instant;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "titleMaxLines", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ImmersiveArticleEventViewKt {
    public static final void a(ImmersiveArticleEventSectionUiModel immersiveArticleEventSectionUiModel, A11ySettings a11ySettings, Function0 function0, Function0 function1, Modifier modifier, Composer composer, int i2) {
        Modifier modifier2;
        LvExoPlayer lvExoPlayer;
        long j2;
        long j3;
        ImmersiveArticleEventContentUiModel immersiveArticleEventContentUiModel;
        String str;
        long j4;
        long j5;
        String str2;
        String str3;
        long j6;
        long j7;
        String str4;
        String str5;
        long j8;
        String str6;
        String str7;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "ImmersiveArticleEventView");
        }
        a11ySettings.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1908497776);
        int i3 = i2 | (gapComposerH.y(immersiveArticleEventSectionUiModel) ? 4 : 2) | (gapComposerH.K(a11ySettings) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | 24576;
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ImmersiveArticleEventView");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            AssetUiModel assetUiModel = immersiveArticleEventSectionUiModel.f58659e;
            SectionThemeUiModel sectionThemeUiModel = immersiveArticleEventSectionUiModel.f58664k;
            boolean z = immersiveArticleEventSectionUiModel.f58662i;
            ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel = immersiveArticleEventSectionUiModel.f58660f;
            SectionThemeUiModel sectionThemeUiModel2 = immersiveArticleEventSectionUiModel.f58663j;
            Color colorA = null;
            if (assetUiModel.f51781c == null) {
                gapComposerH.L(-719514498);
                gapComposerH.Z(false);
                lvExoPlayer = null;
            } else {
                gapComposerH.L(-719514497);
                Object objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = new LvExoPlayer(context);
                    gapComposerH.q(objX);
                }
                lvExoPlayer = (LvExoPlayer) objX;
                gapComposerH.Z(false);
            }
            Color colorA2 = (sectionThemeUiModel2 == null || (str7 = sectionThemeUiModel2.f58825a) == null) ? null : StringExtKt.a(str7);
            if (colorA2 == null) {
                gapComposerH.L(115343841);
                long j9 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
                gapComposerH.Z(false);
                j2 = j9;
            } else {
                gapComposerH.L(115340989);
                gapComposerH.Z(false);
                j2 = colorA2.f8872a;
            }
            Modifier modifierB = BackgroundKt.b(dTFunctionNameModifier, j2, RectangleShapeKt.f8913a);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            ImmersiveArticleFashionShowViewKt.b(n00.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "ImmersiveArticleEventView", 1.0f), ImmersiveArticleHelper.a(immersiveArticleSizeCardUiModel), immersiveArticleEventSectionUiModel.f58659e, immersiveArticleSizeCardUiModel == ImmersiveArticleSizeCardUiModel.FULLSCREEN, false, true, a11ySettings.f51775a, a11ySettings.f51776b, lvExoPlayer, ComposableLambdaKt.b(-248786589, new d3(immersiveArticleEventSectionUiModel, 23), gapComposerH), gapComposerH, 221190);
            gapComposerH = gapComposerH;
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("ImmersiveArticleEventView"), LVAppDesignKitTheme.l(gapComposerH).f48421k));
            if (z) {
                gapComposerH.L(276376722);
                Instant instant = immersiveArticleEventSectionUiModel.f58661h;
                if (instant == null) {
                    gapComposerH.L(-22256209);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-22256208);
                    Color colorA3 = (sectionThemeUiModel2 == null || (str6 = sectionThemeUiModel2.f58826b) == null) ? null : StringExtKt.a(str6);
                    if (colorA3 == null) {
                        gapComposerH.L(-426913679);
                        j8 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-426916593);
                        gapComposerH.Z(false);
                        j8 = colorA3.f8872a;
                    }
                    LVLiveCountdownKt.a(null, j8, instant, function1, gapComposerH, i3 & 7168, 1);
                    cj.x(new DTFunctionNameModifier("ImmersiveArticleEventView"), LVAppDesignKitTheme.l(gapComposerH).f48421k, gapComposerH, false);
                }
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-21823448);
                gapComposerH.Z(false);
            }
            ImmersiveArticleEventContentUiModel immersiveArticleEventContentUiModel2 = immersiveArticleEventSectionUiModel.g;
            if (immersiveArticleEventContentUiModel2 == null) {
                gapComposerH.L(-21744895);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-21744894);
                String str8 = immersiveArticleEventContentUiModel2.f58653a;
                if (str8 == null) {
                    gapComposerH.L(24401279);
                    gapComposerH.Z(false);
                    immersiveArticleEventContentUiModel = immersiveArticleEventContentUiModel2;
                } else {
                    Modifier modifierM = PaddingKt.m(n00.i(gapComposerH, 24401280, "ImmersiveArticleEventView"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c, 2);
                    TextAlign.f10959b.getClass();
                    int i4 = TextAlign.f10961e;
                    TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
                    Color colorA4 = (sectionThemeUiModel2 == null || (str = sectionThemeUiModel2.f58826b) == null) ? null : StringExtKt.a(str);
                    if (colorA4 == null) {
                        gapComposerH.L(-1263615728);
                        j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-1263618642);
                        gapComposerH.Z(false);
                        j3 = colorA4.f8872a;
                    }
                    immersiveArticleEventContentUiModel = immersiveArticleEventContentUiModel2;
                    TextKt.c(str8, modifierM, j3, 0L, null, 0L, null, new TextAlign(i4), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 130040);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(false);
                }
                Modifier modifierM2 = PaddingKt.m(new DTFunctionNameModifier("ImmersiveArticleEventView"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, 2);
                String str9 = immersiveArticleEventContentUiModel.f58654b;
                TextAlign.f10959b.getClass();
                int i5 = TextAlign.f10961e;
                TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerH).f48425e;
                Color colorA5 = (sectionThemeUiModel2 == null || (str3 = sectionThemeUiModel2.f58826b) == null) ? null : StringExtKt.a(str3);
                if (colorA5 == null) {
                    gapComposerH.L(824498);
                    j4 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(821708);
                    gapComposerH.Z(false);
                    j4 = colorA5.f8872a;
                }
                GapComposer gapComposer = gapComposerH;
                TextKt.c(str9, modifierM2, j4, 0L, null, 0L, null, new TextAlign(i5), 0L, 0, false, 0, 0, null, textStyle2, gapComposer, 0, 0, 130040);
                gapComposerH = gapComposer;
                String str10 = immersiveArticleEventContentUiModel.f58655c;
                if (str10 == null) {
                    gapComposerH.L(25633746);
                    gapComposerH.Z(false);
                } else {
                    Modifier modifierK = PaddingKt.k(n00.i(gapComposerH, 25633747, "ImmersiveArticleEventView"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    TextStyle textStyle3 = LVAppDesignKitTheme.n(gapComposerH).g;
                    Color colorA6 = (sectionThemeUiModel2 == null || (str2 = sectionThemeUiModel2.f58826b) == null) ? null : StringExtKt.a(str2);
                    if (colorA6 == null) {
                        gapComposerH.L(-705538632);
                        j5 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-705541546);
                        gapComposerH.Z(false);
                        j5 = colorA6.f8872a;
                    }
                    TextKt.c(str10, modifierK, j5, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle3, gapComposerH, 0, 0, 131064);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(false);
            }
            if (z) {
                gapComposerH.L(-20033105);
                ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48446a;
                Color colorA7 = (sectionThemeUiModel == null || (str5 = sectionThemeUiModel.f58825a) == null) ? null : StringExtKt.a(str5);
                if (colorA7 == null) {
                    gapComposerH.L(276454857);
                    j6 = LVAppDesignKitTheme.b(gapComposerH).f48446a.f48532a;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(276451633);
                    gapComposerH.Z(false);
                    j6 = colorA7.f8872a;
                }
                long j10 = j6;
                if (sectionThemeUiModel != null && (str4 = sectionThemeUiModel.f58826b) != null) {
                    colorA = StringExtKt.a(str4);
                }
                Color color = colorA;
                if (color == null) {
                    gapComposerH.L(276459654);
                    j7 = LVAppDesignKitTheme.b(gapComposerH).f48446a.d;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(276456616);
                    gapComposerH.Z(false);
                    j7 = color.f8872a;
                }
                GapComposer gapComposer2 = gapComposerH;
                LVButtonKt.b((i3 << 21) & 1879048192, 504, gapComposer2, SizeKt.d(PaddingKt.j(new DTFunctionNameModifier("ImmersiveArticleEventView"), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48418h), 1.0f), ConfigurationButton.a(configurationButton, j10, j7, null, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8182), null, null, StringResources_androidKt.c(gapComposerH, R.string.back_in_stock_cta_notify_me), function0, false, false, false);
                gapComposerH = gapComposer2;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-19230360);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w(immersiveArticleEventSectionUiModel, a11ySettings, function0, function1, modifier2, i2, 22);
        }
    }
}

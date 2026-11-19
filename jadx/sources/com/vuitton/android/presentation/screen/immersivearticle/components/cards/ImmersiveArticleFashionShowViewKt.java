package com.vuitton.android.presentation.screen.immersivearticle.components.cards;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ContentScale$Companion$Crop$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.media3.exoplayer.ExoPlayer;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.compose.LVPlayPauseButtonKt;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.compose.StringExtKt;
import com.vuitton.android.presentation.compose.components.LVLiveCountdownKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.A11ySettings;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleHelper;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleFashionShowViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleFashionShowContentUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleFashionShowSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSizeCardUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.SectionThemeUiModel;
import defpackage.a;
import defpackage.bw;
import defpackage.cj;
import defpackage.f1;
import defpackage.gj;
import defpackage.m10;
import defpackage.n00;
import defpackage.p4;
import defpackage.rq;
import defpackage.w;
import defpackage.x20;
import java.time.Instant;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ImmersiveArticleFashionShowViewKt {
    public static final void a(ImmersiveArticleFashionShowSectionUiModel immersiveArticleFashionShowSectionUiModel, A11ySettings a11ySettings, Function2 function2, Function0 function0, Function0 function1, Composer composer, int i2) {
        LvExoPlayer lvExoPlayer;
        long j2;
        long j3;
        ImmersiveArticleFashionShowContentUiModel immersiveArticleFashionShowContentUiModel;
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
        a11ySettings.getClass();
        function2.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(803730044);
        int i3 = i2 | (gapComposerH.y(immersiveArticleFashionShowSectionUiModel) ? 4 : 2) | (gapComposerH.K(a11ySettings) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            AssetUiModel assetUiModel = immersiveArticleFashionShowSectionUiModel.f58675e;
            SectionThemeUiModel sectionThemeUiModel = immersiveArticleFashionShowSectionUiModel.m;
            ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel = immersiveArticleFashionShowSectionUiModel.f58676f;
            boolean z = immersiveArticleFashionShowSectionUiModel.f58678i;
            ImmersiveArticleFashionShowContentUiModel immersiveArticleFashionShowContentUiModel2 = immersiveArticleFashionShowSectionUiModel.f58680k;
            SectionThemeUiModel sectionThemeUiModel2 = immersiveArticleFashionShowSectionUiModel.l;
            AssetVideoUiModel assetVideoUiModel = assetUiModel.f51781c;
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            Color colorA = null;
            if (assetVideoUiModel == null) {
                gapComposerH.L(-520588590);
                gapComposerH.Z(false);
                lvExoPlayer = null;
            } else {
                gapComposerH.L(-520588589);
                Object objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = new LvExoPlayer(context);
                    gapComposerH.q(objX);
                }
                lvExoPlayer = (LvExoPlayer) objX;
                gapComposerH.Z(false);
            }
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = Boolean.valueOf(lvExoPlayer != null && a11ySettings.f51775a);
                gapComposerH.q(objX2);
            }
            boolean zBooleanValue = ((Boolean) objX2).booleanValue();
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ImmersiveArticleFashionShowView");
            Color colorA2 = (sectionThemeUiModel2 == null || (str7 = sectionThemeUiModel2.f58825a) == null) ? null : StringExtKt.a(str7);
            if (colorA2 == null) {
                gapComposerH.L(-709520115);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-709522967);
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
            Function0 function3 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            b(n00.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "ImmersiveArticleFashionShowView", 1.0f), ImmersiveArticleHelper.a(immersiveArticleSizeCardUiModel), immersiveArticleFashionShowSectionUiModel.f58675e, immersiveArticleSizeCardUiModel == ImmersiveArticleSizeCardUiModel.FULLSCREEN, zBooleanValue, !z, a11ySettings.f51775a, a11ySettings.f51776b, lvExoPlayer, ComposableLambdaKt.b(-1507255383, new f1(immersiveArticleFashionShowSectionUiModel, function2, 24), gapComposerH), gapComposerH, 24582);
            gapComposerH = gapComposerH;
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("ImmersiveArticleFashionShowView"), LVAppDesignKitTheme.l(gapComposerH).f48421k));
            if (z) {
                gapComposerH.L(2072180810);
                Instant instant = immersiveArticleFashionShowSectionUiModel.f58677h.f50864c;
                if (instant == null) {
                    gapComposerH.L(-186904329);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-186904328);
                    Color colorA3 = (sectionThemeUiModel2 == null || (str6 = sectionThemeUiModel2.f58826b) == null) ? null : StringExtKt.a(str6);
                    if (colorA3 == null) {
                        gapComposerH.L(-777656201);
                        j8 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-777659115);
                        gapComposerH.Z(false);
                        j8 = colorA3.f8872a;
                    }
                    LVLiveCountdownKt.a(null, j8, instant, function1, gapComposerH, (i3 >> 3) & 7168, 1);
                    cj.x(new DTFunctionNameModifier("ImmersiveArticleFashionShowView"), LVAppDesignKitTheme.l(gapComposerH).f48421k, gapComposerH, false);
                }
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-186471568);
                gapComposerH.Z(false);
            }
            if (immersiveArticleFashionShowContentUiModel2 == null) {
                gapComposerH.L(-186392612);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-186392611);
                String str8 = immersiveArticleFashionShowContentUiModel2.f58669a;
                if (str8 == null) {
                    gapComposerH.L(442895008);
                    gapComposerH.Z(false);
                    immersiveArticleFashionShowContentUiModel = immersiveArticleFashionShowContentUiModel2;
                } else {
                    Modifier modifierM = PaddingKt.m(n00.i(gapComposerH, 442895009, "ImmersiveArticleFashionShowView"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c, 2);
                    TextAlign.f10959b.getClass();
                    int i4 = TextAlign.f10961e;
                    TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
                    Color colorA4 = (sectionThemeUiModel2 == null || (str = sectionThemeUiModel2.f58826b) == null) ? null : StringExtKt.a(str);
                    if (colorA4 == null) {
                        gapComposerH.L(1553702003);
                        j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(1553699089);
                        gapComposerH.Z(false);
                        j3 = colorA4.f8872a;
                    }
                    immersiveArticleFashionShowContentUiModel = immersiveArticleFashionShowContentUiModel2;
                    TextKt.c(str8, modifierM, j3, 0L, null, 0L, null, new TextAlign(i4), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 130040);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(false);
                }
                Modifier modifierM2 = PaddingKt.m(new DTFunctionNameModifier("ImmersiveArticleFashionShowView"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, 2);
                String str9 = immersiveArticleFashionShowContentUiModel.f58670b;
                TextAlign.f10959b.getClass();
                int i5 = TextAlign.f10961e;
                TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerH).f48425e;
                Color colorA5 = (sectionThemeUiModel2 == null || (str3 = sectionThemeUiModel2.f58826b) == null) ? null : StringExtKt.a(str3);
                if (colorA5 == null) {
                    gapComposerH.L(1399797873);
                    j4 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(1399795083);
                    gapComposerH.Z(false);
                    j4 = colorA5.f8872a;
                }
                GapComposer gapComposer = gapComposerH;
                TextKt.c(str9, modifierM2, j4, 0L, null, 0L, null, new TextAlign(i5), 0L, 0, false, 0, 0, null, textStyle2, gapComposer, 0, 0, 130040);
                gapComposerH = gapComposer;
                String str10 = immersiveArticleFashionShowContentUiModel.f58671c;
                if (str10 == null) {
                    gapComposerH.L(444143347);
                    gapComposerH.Z(false);
                } else {
                    Modifier modifierK = PaddingKt.k(n00.i(gapComposerH, 444143348, "ImmersiveArticleFashionShowView"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    TextStyle textStyle3 = LVAppDesignKitTheme.n(gapComposerH).g;
                    Color colorA6 = (sectionThemeUiModel2 == null || (str2 = sectionThemeUiModel2.f58826b) == null) ? null : StringExtKt.a(str2);
                    if (colorA6 == null) {
                        gapComposerH.L(-414141591);
                        j5 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-414144505);
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
                gapComposerH.L(-184668329);
                ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48446a;
                Color colorA7 = (sectionThemeUiModel == null || (str5 = sectionThemeUiModel.f58825a) == null) ? null : StringExtKt.a(str5);
                if (colorA7 == null) {
                    gapComposerH.L(2072259361);
                    j6 = LVAppDesignKitTheme.b(gapComposerH).f48446a.f48532a;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(2072256137);
                    gapComposerH.Z(false);
                    j6 = colorA7.f8872a;
                }
                long j9 = j6;
                if (sectionThemeUiModel != null && (str4 = sectionThemeUiModel.f58826b) != null) {
                    colorA = StringExtKt.a(str4);
                }
                Color color = colorA;
                if (color == null) {
                    gapComposerH.L(2072264158);
                    j7 = LVAppDesignKitTheme.b(gapComposerH).f48446a.d;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(2072261120);
                    gapComposerH.Z(false);
                    j7 = color.f8872a;
                }
                GapComposer gapComposer2 = gapComposerH;
                LVButtonKt.b((i3 << 18) & 1879048192, 504, gapComposer2, SizeKt.d(PaddingKt.j(new DTFunctionNameModifier("ImmersiveArticleFashionShowView"), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48418h), 1.0f), ConfigurationButton.a(configurationButton, j9, j7, null, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8182), null, null, StringResources_androidKt.c(gapComposerH, R.string.back_in_stock_cta_notify_me), function0, false, false, false);
                gapComposerH = gapComposer2;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-183865584);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w((Object) immersiveArticleFashionShowSectionUiModel, (Object) a11ySettings, function2, (Function) function0, (Function) function1, i2, 23);
        }
    }

    public static final void b(Modifier modifier, final float f2, final AssetUiModel assetUiModel, final boolean z, final boolean z2, final boolean z3, final boolean z4, final boolean z5, LvExoPlayer lvExoPlayer, ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i2) {
        ComposableLambdaImpl composableLambdaImpl2;
        GapComposer gapComposer;
        Function2 function2;
        Function1 function1;
        Applier applier;
        Function0 function0;
        String str;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        BiasAlignment biasAlignment;
        Function2 function3;
        Function2 function4;
        Modifier modifierE = modifier;
        LvExoPlayer lvExoPlayer2 = lvExoPlayer;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "TopAssetWithGradients");
        }
        GapComposer gapComposerH = composer.h(446935585);
        Applier applier2 = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.c(f2) ? 32 : 16) | (gapComposerH.y(assetUiModel) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024);
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i3 |= gapComposerH.b(z3) ? 131072 : 65536;
        }
        int i4 = i3 | (gapComposerH.b(z4) ? 1048576 : 524288) | (gapComposerH.b(z5) ? 8388608 : 4194304) | (gapComposerH.y(lvExoPlayer2) ? 67108864 : 33554432) | 805306368;
        if (gapComposerH.p(i4 & 1, (306783379 & i4) != 306783378)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Color.f8866b.getClass();
            Modifier modifierB = BackgroundKt.b(modifierE, Color.f8870h, RectangleShapeKt.f8913a);
            Alignment.f8582a.getClass();
            BiasAlignment biasAlignment2 = Alignment.Companion.f8584b;
            MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment2, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function5 = ComposeUiNode.Companion.f9641b;
            if (applier2 == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function5);
            } else {
                gapComposerH.o();
            }
            Function2 function6 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function6);
            Function2 function7 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function7);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function8 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function8);
            Function1 function9 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function9);
            Function2 function10 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function10);
            boolean z6 = !z;
            Modifier modifierB2 = ClipKt.b(ModifierExtKt.b(new DTFunctionNameModifier("TopAssetWithGradients"), z6, new bw(f2, 3), gapComposerH, 6));
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$2) {
                objX = new m10(24);
                gapComposerH.q(objX);
            }
            Modifier modifierB3 = ModifierExtKt.b(ModifierExtKt.b(ClickableKt.d(modifierB2, false, null, null, (Function0) objX, 15), z2, new rq(25), gapComposerH, 48), z3, new p4(z5, 2, (byte) 0), gapComposerH, (i4 >> 12) & 112);
            MeasurePolicy measurePolicyD2 = BoxKt.d(biasAlignment2, false);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB3);
            if (applier2 == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function5);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD2, function6);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function7);
            cj.t(iHashCode2, gapComposerH, function8, gapComposerH, function9);
            Updater.c(gapComposerH, modifierC2, function10);
            if ((assetUiModel != null ? assetUiModel.f51780b : null) != null) {
                Modifier modifierA = com.vuitton.android.presentation.extensions.ModifierExtKt.a(n00.i(gapComposerH, -1110358161, "TopAssetWithGradients"), null, null, 7);
                ContentScale.f9447a.getClass();
                ContentScale$Companion$Crop$1 contentScale$Companion$Crop$1 = ContentScale.Companion.f9449b;
                String str2 = assetUiModel.f51780b.f51778b;
                str2.getClass();
                function1 = function9;
                function2 = function10;
                applier = applier2;
                ImageLoaderKt.b(modifierA, str2, contentScale$Companion$Crop$1, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
                gapComposer = gapComposerH;
                gapComposer.Z(false);
                str = "TopAssetWithGradients";
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                function0 = function5;
                biasAlignment = biasAlignment2;
                function3 = function8;
                function4 = function7;
            } else {
                function2 = function10;
                function1 = function9;
                applier = applier2;
                gapComposer = gapComposerH;
                if ((assetUiModel != null ? assetUiModel.f51781c : null) == null || lvExoPlayer == null) {
                    function0 = function5;
                    str = "TopAssetWithGradients";
                    composer$Companion$Empty$1 = composer$Companion$Empty$2;
                    biasAlignment = biasAlignment2;
                    function3 = function8;
                    function4 = function7;
                    gapComposer.L(-1109429587);
                    gapComposer.Z(false);
                } else {
                    Modifier modifierB4 = ModifierExtKt.b(n00.i(gapComposer, -1110039295, "TopAssetWithGradients"), z6, new bw(f2, 4), gapComposer, 6);
                    AssetVideoUiModel assetVideoUiModel = assetUiModel.f51781c;
                    String str3 = assetVideoUiModel.f51783c;
                    ExoPlayer exoPlayer = lvExoPlayer.f50900a;
                    String str4 = assetVideoUiModel.d;
                    ContentScale.f9447a.getClass();
                    ContentScale$Companion$Crop$1 contentScale$Companion$Crop$2 = ContentScale.Companion.f9449b;
                    Object objX2 = gapComposer.x();
                    if (objX2 == composer$Companion$Empty$2) {
                        objX2 = new x20(1);
                        gapComposer.q(objX2);
                    }
                    function0 = function5;
                    str = "TopAssetWithGradients";
                    biasAlignment = biasAlignment2;
                    function3 = function8;
                    composer$Companion$Empty$1 = composer$Companion$Empty$2;
                    function4 = function7;
                    LvVideoPlayerKt.b(modifierB4, exoPlayer, str3, null, null, true, str4, contentScale$Companion$Crop$2, false, false, false, z4, null, false, 4, null, null, null, (Function1) objX2, null, null, gapComposer, 12779520, ((i4 >> 15) & 112) | 24576, 0, 1816344);
                    gapComposer = gapComposer;
                    gapComposer.Z(false);
                }
            }
            gapComposer.Z(true);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier(str);
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
            Modifier modifierM = PaddingKt.m(boxScopeInstance.j(dTFunctionNameModifier), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48415c, 7);
            MeasurePolicy measurePolicyD3 = BoxKt.d(biasAlignment, false);
            int iHashCode3 = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposer.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposer, modifierM);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer.B();
            if (gapComposer.S) {
                gapComposer.C(function0);
            } else {
                gapComposer.o();
            }
            Updater.c(gapComposer, measurePolicyD3, function6);
            Updater.c(gapComposer, persistentCompositionLocalMapU3, function4);
            cj.t(iHashCode3, gapComposer, function3, gapComposer, function1);
            Updater.c(gapComposer, modifierC3, function2);
            composableLambdaImpl2 = composableLambdaImpl;
            composableLambdaImpl2.A(boxScopeInstance, gapComposer, 54);
            gapComposer.Z(true);
            if (z4 && lvExoPlayer != null) {
                if ((assetUiModel != null ? assetUiModel.f51781c : null) != null) {
                    Modifier modifierM2 = PaddingKt.m(boxScopeInstance.g(n00.i(gapComposer, 2104320288, str), Alignment.Companion.f8590j), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48416e, LVAppDesignKitTheme.l(gapComposer).f48416e, 3);
                    lvExoPlayer2 = lvExoPlayer;
                    boolean zBooleanValue = ((Boolean) ((SnapshotMutableStateImpl) lvExoPlayer2.f50901b).getF10755b()).booleanValue();
                    boolean zY = gapComposer.y(lvExoPlayer2);
                    Object objX3 = gapComposer.x();
                    if (zY || objX3 == composer$Companion$Empty$1) {
                        objX3 = new gj(lvExoPlayer2, 6);
                        gapComposer.q(objX3);
                    }
                    LVPlayPauseButtonKt.a(0, gapComposer, modifierM2, (Function0) objX3, zBooleanValue);
                    gapComposer.Z(false);
                }
                gapComposer.Z(true);
            }
            lvExoPlayer2 = lvExoPlayer;
            gapComposer.L(2104942055);
            gapComposer.Z(false);
            gapComposer.Z(true);
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final ComposableLambdaImpl composableLambdaImpl3 = composableLambdaImpl2;
            final LvExoPlayer lvExoPlayer3 = lvExoPlayer2;
            final Modifier modifier2 = modifierE;
            recomposeScopeImplB0.d = new Function2() { // from class: k30
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    ImmersiveArticleFashionShowViewKt.b(modifier2, f2, assetUiModel, z, z2, z3, z4, z5, lvExoPlayer3, composableLambdaImpl3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }
}

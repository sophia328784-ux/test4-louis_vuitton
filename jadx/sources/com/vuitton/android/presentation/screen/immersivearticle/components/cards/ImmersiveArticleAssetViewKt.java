package com.vuitton.android.presentation.screen.immersivearticle.components.cards;

import android.content.Context;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
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
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.compose.LVPlayPauseButtonKt;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.AssetArticleSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleFontUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import com.vuitton.android.presentation.screen.immersivearticle.models.SectionThemeUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.g2;
import defpackage.gj;
import defpackage.n00;
import defpackage.o1;
import defpackage.r;
import defpackage.rp;
import defpackage.rq;
import defpackage.x20;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0007\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"", "cardScale", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ImmersiveArticleAssetViewKt {
    public static final void a(AssetArticleSectionUiModel assetArticleSectionUiModel, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        int i3;
        GapComposer gapComposerH = composer.h(2040700744);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(assetArticleSectionUiModel) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(composableLambdaImpl) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierB = ModifierExtKt.b(new DTFunctionNameModifier("AssetBlock"), (StringsKt.w(assetArticleSectionUiModel.f58623c) && StringsKt.w(assetArticleSectionUiModel.f58624e)) ? false : true, new rq(24), gapComposerH, 6);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            composableLambdaImpl.A(BoxScopeInstance.f4938a, gapComposerH, Integer.valueOf((i3 & 112) | 6));
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new g2(assetArticleSectionUiModel, composableLambdaImpl, i2, 16);
        }
    }

    /* JADX WARN: Type inference failed for: r2v21, types: [java.lang.String, kotlin.jvm.functions.Function1] */
    public static final void b(Modifier modifier, AssetArticleSectionUiModel assetArticleSectionUiModel, int i2, ImmersiveArticleType immersiveArticleType, boolean z, Function0 function0, Function1 function1, Composer composer, int i3) {
        int i4;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Throwable th;
        Function2 function2;
        BoxScopeInstance boxScopeInstance;
        boolean z2;
        String str;
        String str2;
        long j2;
        boolean z3;
        TextStyle textStyleA;
        TextStyle textStyleA2;
        String str3;
        Modifier modifierE = modifier;
        AssetArticleSectionUiModel assetArticleSectionUiModel2 = assetArticleSectionUiModel;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "ImmersiveArticleAssetView");
        }
        Modifier modifier2 = modifierE;
        immersiveArticleType.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1813669239);
        Applier applier = gapComposerH.f7976a;
        if ((i3 & 6) == 0) {
            i4 = (gapComposerH.K(modifier2) ? 4 : 2) | i3;
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= gapComposerH.y(assetArticleSectionUiModel2) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.d(i2) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i4 |= gapComposerH.d(immersiveArticleType.ordinal()) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i4 |= gapComposerH.b(z) ? 16384 : 8192;
        }
        if ((196608 & i3) == 0) {
            i4 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        if ((1572864 & i3) == 0) {
            i4 |= gapComposerH.y(function1) ? 1048576 : 524288;
        }
        int i5 = i4;
        if (gapComposerH.p(i5 & 1, (i5 & 599187) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            State stateB = AnimateAsStateKt.b(assetArticleSectionUiModel2.f58627i ? 1.2f : 1.0f, AnimationSpecKt.c(500, 0, null, 6), "card scale", gapComposerH, 3072, 20);
            Modifier modifierB = ModifierExtKt.b(modifier2, immersiveArticleType == ImmersiveArticleType.SEO_LANDING_PAGE, new rq(23), gapComposerH, i5 & 14);
            Alignment.f8582a.getClass();
            BiasAlignment biasAlignment = Alignment.Companion.f8584b;
            MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function3 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Function2 function4 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function4);
            Function2 function5 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function5);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function0 function6 = function3;
            Function2 function7 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function7);
            Function1 function8 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function8);
            Function2 function9 = function7;
            Function2 function10 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function10);
            AssetUiModel assetUiModel = assetArticleSectionUiModel2.f58626h;
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            Function2 function11 = function10;
            BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.f4938a;
            if (assetUiModel == null) {
                gapComposerH.L(839256074);
                gapComposerH.Z(false);
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                function2 = function4;
                boxScopeInstance = boxScopeInstance2;
                function8 = function8;
                applier = applier;
                modifier2 = modifier2;
                function6 = function6;
                function11 = function11;
                th = null;
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                gapComposerH.L(839256075);
                AssetImageUiModel assetImageUiModel = assetUiModel.f51780b;
                if (assetImageUiModel == null || (str2 = assetImageUiModel.f51778b) == null) {
                    th = null;
                } else {
                    if (StringExtKt.a(str2)) {
                        gapComposerH.L(-783487727);
                        a(assetArticleSectionUiModel2, ComposableLambdaKt.b(-211221962, new r(function1, immersiveArticleType, assetArticleSectionUiModel2, assetUiModel, 14), gapComposerH), gapComposerH, ((i5 >> 3) & 14) | 48);
                        gapComposerH.Z(false);
                        modifier2 = modifier2;
                        z2 = false;
                        boxScopeInstance = boxScopeInstance2;
                        th = null;
                        composer$Companion$Empty$1 = composer$Companion$Empty$1;
                        function2 = function4;
                    } else {
                        th = null;
                        function4 = function4;
                    }
                    gapComposerH.Z(z2);
                }
                AssetVideoUiModel assetVideoUiModel = assetUiModel.f51781c;
                if (assetVideoUiModel == null || (str = assetVideoUiModel.f51783c) == null) {
                    function2 = function4;
                    function9 = function9;
                    boxScopeInstance = boxScopeInstance2;
                    z2 = false;
                    gapComposerH.L(-780065265);
                    gapComposerH.Z(false);
                } else if (StringExtKt.a(str)) {
                    DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, -781934410, "ImmersiveArticleAssetView");
                    MeasurePolicy measurePolicyD2 = BoxKt.d(biasAlignment, false);
                    int iHashCode2 = Long.hashCode(gapComposerH.T);
                    PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                    Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifierI);
                    if (applier == null) {
                        ComposablesKt.b();
                        throw th;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function6);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD2, function4);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function5);
                    cj.t(iHashCode2, gapComposerH, function9, gapComposerH, function8);
                    Updater.c(gapComposerH, modifierC2, function11);
                    Object objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new LvExoPlayer(context);
                        gapComposerH.q(objX);
                    }
                    LvExoPlayer lvExoPlayer = (LvExoPlayer) objX;
                    function2 = function4;
                    function9 = function9;
                    assetArticleSectionUiModel2 = assetArticleSectionUiModel;
                    a(assetArticleSectionUiModel2, ComposableLambdaKt.b(-1965664217, new o1(lvExoPlayer, assetUiModel, assetArticleSectionUiModel2, z, i2, function0, stateB), gapComposerH), gapComposerH, ((i5 >> 3) & 14) | 48);
                    if (z) {
                        boxScopeInstance = boxScopeInstance2;
                        Modifier modifierG = boxScopeInstance.g(n00.i(gapComposerH, -1452062022, "ImmersiveArticleAssetView"), Alignment.Companion.f8590j);
                        boolean zBooleanValue = ((Boolean) ((SnapshotMutableStateImpl) lvExoPlayer.f50901b).getF10755b()).booleanValue();
                        boolean zY = gapComposerH.y(lvExoPlayer);
                        Object objX2 = gapComposerH.x();
                        if (zY || objX2 == composer$Companion$Empty$1) {
                            objX2 = new gj(lvExoPlayer, 4);
                            gapComposerH.q(objX2);
                        }
                        z2 = false;
                        LVPlayPauseButtonKt.a(0, gapComposerH, modifierG, (Function0) objX2, zBooleanValue);
                        gapComposerH.Z(false);
                    } else {
                        boxScopeInstance = boxScopeInstance2;
                        z2 = false;
                        gapComposerH.L(-1451509447);
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(true);
                    gapComposerH.Z(z2);
                } else {
                    assetArticleSectionUiModel2 = assetArticleSectionUiModel;
                    function2 = function4;
                    function9 = function9;
                    boxScopeInstance = boxScopeInstance2;
                    z2 = false;
                    gapComposerH.L(-780065265);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(z2);
            }
            ?? r2 = th;
            Modifier modifierO = boxScopeInstance.g(com.vuitton.android.presentation.extensions.ModifierExtKt.a(new DTFunctionNameModifier("ImmersiveArticleAssetView"), r2, r2, 7), Alignment.Companion.f8587f).o(SizeKt.f5052c);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4921e, Alignment.Companion.o, gapComposerH, 54);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierO);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function6);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function5);
            cj.t(iHashCode3, gapComposerH, function9, gapComposerH, function8);
            Updater.c(gapComposerH, modifierC3, function11);
            SectionThemeUiModel sectionThemeUiModel = assetArticleSectionUiModel2.f58628j;
            Color colorA = (sectionThemeUiModel == null || (str3 = sectionThemeUiModel.f58826b) == null) ? null : com.vuitton.android.presentation.compose.StringExtKt.a(str3);
            if (colorA == null) {
                gapComposerH.L(769999431);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(769997261);
                gapComposerH.Z(false);
                j2 = colorA.f8872a;
            }
            if (StringsKt.w(assetArticleSectionUiModel2.f58624e)) {
                gapComposerH.L(-1898872689);
                gapComposerH.Z(false);
            } else {
                Modifier modifierM = PaddingKt.m(n00.i(gapComposerH, -1899709193, "ImmersiveArticleAssetView"), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48414b, 2);
                String str4 = assetArticleSectionUiModel2.f58624e;
                if (assetArticleSectionUiModel2.f58625f == ImmersiveArticleFontUiModel.HANLEY_PRO) {
                    gapComposerH.L(-1899300520);
                    TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48429j;
                    FontWeight.f10727c.getClass();
                    textStyleA2 = TextStyle.a(textStyle, 0L, 0L, FontWeight.g, null, 0L, null, 0, 0, 0L, null, null, 16777211);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-1899115853);
                    textStyleA2 = LVAppDesignKitTheme.n(gapComposerH).f48429j;
                    gapComposerH.Z(false);
                }
                TextStyle textStyle2 = textStyleA2;
                TextAlign.f10959b.getClass();
                TextKt.c(str4, modifierM, j2, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 2, 0, null, textStyle2, gapComposerH, 0, 24576, 113656);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            }
            if (StringsKt.w(assetArticleSectionUiModel2.f58623c)) {
                gapComposerH.L(-1897906481);
                gapComposerH.Z(false);
            } else {
                Modifier modifierM2 = PaddingKt.m(n00.i(gapComposerH, -1898782386, "ImmersiveArticleAssetView"), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48417f, 2);
                Object objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    z3 = false;
                    objX3 = new x20(0);
                    gapComposerH.q(objX3);
                } else {
                    z3 = false;
                }
                Modifier modifierB2 = SemanticsModifierKt.b(modifierM2, z3, (Function1) objX3);
                String str5 = assetArticleSectionUiModel2.f58623c;
                if (assetArticleSectionUiModel2.d == ImmersiveArticleFontUiModel.HANLEY_PRO) {
                    gapComposerH.L(-1898290819);
                    TextStyle textStyle3 = LVAppDesignKitTheme.n(gapComposerH).f48425e;
                    FontWeight.f10727c.getClass();
                    textStyleA = TextStyle.a(textStyle3, 0L, 0L, FontWeight.g, null, 0L, null, 0, 0, 0L, null, null, 16777211);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-1898111112);
                    textStyleA = LVAppDesignKitTheme.n(gapComposerH).f48425e;
                    gapComposerH.Z(false);
                }
                TextStyle textStyle4 = textStyleA;
                TextAlign.f10959b.getClass();
                GapComposer gapComposer = gapComposerH;
                TextKt.c(str5, modifierB2, j2, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle4, gapComposer, 0, 0, 130040);
                gapComposerH = gapComposer;
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            modifier2 = modifier2;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rp(modifier2, assetArticleSectionUiModel2, i2, immersiveArticleType, z, function0, function1, i3);
        }
    }
}

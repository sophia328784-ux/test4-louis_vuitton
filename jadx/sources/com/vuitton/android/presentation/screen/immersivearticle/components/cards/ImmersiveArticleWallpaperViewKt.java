package com.vuitton.android.presentation.screen.immersivearticle.components.cards;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.AccessibilityExtKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.compose.components.DownloadIndicatorKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.SectionThemeUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.WallpaperArticleSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.WallpaperDownloadStateUiModel;
import com.vuitton.android.presentation.utils.AccessibilityUtils;
import defpackage.a;
import defpackage.cj;
import defpackage.n00;
import defpackage.na;
import defpackage.pq0;
import defpackage.rv;
import defpackage.x20;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;", "state", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ImmersiveArticleWallpaperViewKt {
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.String, kotlin.jvm.functions.Function1] */
    /* JADX WARN: Type inference failed for: r2v7 */
    public static final void a(Modifier modifier, WallpaperArticleSectionUiModel wallpaperArticleSectionUiModel, Function0 function0, Composer composer, int i2) {
        boolean z;
        String str;
        long j2;
        int i3;
        ?? r2;
        String strF;
        boolean z2;
        boolean z3;
        String strF2;
        String str2;
        Modifier modifierE = modifier;
        Function0 function1 = function0;
        AssetUiModel assetUiModel = wallpaperArticleSectionUiModel.f58853e;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "ImmersiveArticleWallpaperView");
        }
        Modifier modifier2 = modifierE;
        function1.getClass();
        GapComposer gapComposerH = composer.h(-1282512882);
        Applier applier = gapComposerH.f7976a;
        int i4 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.y(wallpaperArticleSectionUiModel) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128);
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = wallpaperArticleSectionUiModel.f58855h;
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Modifier modifierB = BackgroundKt.b(modifier2, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new x20(6);
                gapComposerH.q(objX2);
            }
            Modifier modifierB2 = SemanticsModifierKt.b(modifierB, false, (Function1) objX2);
            int i5 = i4 & 896;
            boolean z4 = i5 == 256;
            Object objX3 = gapComposerH.x();
            if (z4 || objX3 == composer$Companion$Empty$1) {
                objX3 = new na(function1, mutableState, 5);
                gapComposerH.q(objX3);
            }
            Modifier modifierC = ModifierExtKt.c(modifierB2, false, null, null, (Function0) objX3, 31);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = composer$Companion$Empty$1;
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierC);
            ComposeUiNode.b0.getClass();
            Context context2 = context;
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
            Function2 function7 = function5;
            Function2 function8 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC2, function8);
            if (assetUiModel == null) {
                gapComposerH.L(2094074294);
                gapComposerH.Z(false);
                applier = applier;
                modifier2 = modifier2;
                i5 = i5;
                mutableState = mutableState;
                function6 = function6;
                function8 = function8;
                z = false;
                function2 = function2;
                function4 = function4;
                function3 = function3;
                composer$Companion$Empty$2 = composer$Companion$Empty$2;
                context2 = context2;
                function7 = function7;
            } else {
                gapComposerH.L(2094074295);
                AssetImageUiModel assetImageUiModel = assetUiModel.f51780b;
                if (assetImageUiModel == null || (str = assetImageUiModel.f51778b) == null) {
                    z = false;
                } else {
                    if (StringExtKt.a(str)) {
                        Modifier modifierO = n00.i(gapComposerH, 1191572030, "ImmersiveArticleWallpaperView").o(SizeKt.f5052c);
                        AssetImageUiModel assetImageUiModel2 = assetUiModel.f51780b;
                        assetImageUiModel2.getClass();
                        String str3 = assetImageUiModel2.f51778b;
                        str3.getClass();
                        ContentScale.f9447a.getClass();
                        applier = applier;
                        function3 = function3;
                        modifier2 = modifier2;
                        mutableState = mutableState;
                        function7 = function7;
                        context2 = context2;
                        function8 = function8;
                        i5 = i5;
                        function6 = function6;
                        composer$Companion$Empty$2 = composer$Companion$Empty$2;
                        function4 = function4;
                        z = false;
                        function2 = function2;
                        ImageLoaderKt.b(modifierO, str3, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerH, 390, 2040);
                        gapComposerH = gapComposerH;
                        gapComposerH.Z(false);
                    } else {
                        z = false;
                    }
                    gapComposerH.Z(z);
                }
                gapComposerH.L(1191804592);
                gapComposerH.Z(z);
                gapComposerH.Z(z);
            }
            Modifier modifierO2 = new DTFunctionNameModifier("ImmersiveArticleWallpaperView").o(SizeKt.f5052c);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.g, Alignment.Companion.n, gapComposerH, 6);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierO2);
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
            Function1 function9 = function6;
            cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function9);
            Function2 function10 = function8;
            Updater.c(gapComposerH, modifierC3, function10);
            SectionThemeUiModel sectionThemeUiModel = wallpaperArticleSectionUiModel.f58856i;
            Color colorA = (sectionThemeUiModel == null || (str2 = sectionThemeUiModel.f58826b) == null) ? null : com.vuitton.android.presentation.compose.StringExtKt.a(str2);
            if (colorA == null) {
                gapComposerH.L(-1266178394);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                gapComposerH.Z(z);
            } else {
                gapComposerH.L(-1266180564);
                gapComposerH.Z(z);
                j2 = colorA.f8872a;
            }
            Modifier modifierJ = PaddingKt.j(new DTFunctionNameModifier("ImmersiveArticleWallpaperView"), LVAppDesignKitTheme.l(gapComposerH).f48420j, LVAppDesignKitTheme.l(gapComposerH).f48421k);
            Object objX4 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$3 = composer$Companion$Empty$2;
            if (objX4 == composer$Companion$Empty$3) {
                objX4 = new x20(7);
                gapComposerH.q(objX4);
            }
            Modifier modifierB3 = SemanticsModifierKt.b(modifierJ, z, (Function1) objX4);
            String str4 = wallpaperArticleSectionUiModel.f58852c;
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).d;
            TextAlign.f10959b.getClass();
            int i6 = TextAlign.f10961e;
            long j3 = j2;
            GapComposer gapComposer = gapComposerH;
            TextKt.c(str4, modifierB3, j3, 0L, null, 0L, null, new TextAlign(i6), 0L, 0, false, 0, 0, null, textStyle, gapComposer, 0, 0, 130040);
            gapComposerH = gapComposer;
            BiasAlignment.Vertical vertical = Alignment.Companion.l;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ImmersiveArticleWallpaperView");
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical, gapComposerH, 48);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function4);
            cj.t(iHashCode3, gapComposerH, function7, gapComposerH, function9);
            Updater.c(gapComposerH, modifierC4, function10);
            boolean z5 = ((WallpaperDownloadStateUiModel) mutableState.getF10755b()).f58857a;
            RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
            if (z5 || ((WallpaperDownloadStateUiModel) mutableState.getF10755b()).f58859c) {
                gapComposerH.L(768484915);
                if (AccessibilityExtKt.a(gapComposerH)) {
                    gapComposerH.L(768500570);
                    if (((WallpaperDownloadStateUiModel) mutableState.getF10755b()).f58857a) {
                        z3 = false;
                        strF2 = cj.f(gapComposerH, 768607024, R.string.wallpaper_download_success_android, gapComposerH, false);
                    } else {
                        z3 = false;
                        strF2 = cj.f(gapComposerH, 768743610, R.string.wallpaper_download_error, gapComposerH, false);
                    }
                    AccessibilityUtils.a(context2, strF2);
                    gapComposerH.Z(z3);
                } else {
                    gapComposerH.L(768956084);
                    gapComposerH.Z(false);
                }
                i3 = 7;
                r2 = 0;
                Modifier modifierA = com.vuitton.android.presentation.extensions.ModifierExtKt.a(PaddingKt.m(cj.b("ImmersiveArticleWallpaperView", rowScopeInstance, 1.0f, true), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 6), null, null, 7);
                if (((WallpaperDownloadStateUiModel) mutableState.getF10755b()).f58857a) {
                    strF = cj.f(gapComposerH, 769420216, R.string.wallpaper_download_success_android, gapComposerH, false);
                } else if (((WallpaperDownloadStateUiModel) mutableState.getF10755b()).f58859c) {
                    strF = cj.f(gapComposerH, 769573666, R.string.wallpaper_download_error, gapComposerH, false);
                } else {
                    gapComposerH.L(769690970);
                    gapComposerH.Z(false);
                    strF = "";
                }
                TextKt.c(strF, modifierA, j3, 0L, null, 0L, null, new TextAlign(i6), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 130040);
                gapComposerH = gapComposerH;
                z2 = false;
                gapComposerH.Z(false);
            } else {
                SpacerKt.a(gapComposerH, rowScopeInstance.a(n00.i(gapComposerH, 769970342, "ImmersiveArticleWallpaperView"), 1.0f, true));
                z2 = false;
                gapComposerH.Z(false);
                i3 = 7;
                r2 = 0;
            }
            Modifier modifierA2 = com.vuitton.android.presentation.extensions.ModifierExtKt.a(PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48417f, 2), r2, r2, i3);
            WallpaperDownloadStateUiModel wallpaperDownloadStateUiModel = (WallpaperDownloadStateUiModel) mutableState.getF10755b();
            boolean z6 = i5 == 256 ? true : z2;
            Object objX5 = gapComposerH.x();
            if (z6 || objX5 == composer$Companion$Empty$3) {
                function1 = function0;
                objX5 = new na(function1, mutableState, 6);
                gapComposerH.q(objX5);
            } else {
                function1 = function0;
            }
            DownloadIndicatorKt.a(modifierA2, wallpaperDownloadStateUiModel, 0, 0, (Function0) objX5, LVColorScheme.INVERT, gapComposerH, ImageMetadata.EDGE_MODE, 12);
            pq0.x(gapComposerH, true, true, true);
        } else {
            modifier2 = modifier2;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rv(i2, 13, modifier2, wallpaperArticleSectionUiModel, function1);
        }
    }
}

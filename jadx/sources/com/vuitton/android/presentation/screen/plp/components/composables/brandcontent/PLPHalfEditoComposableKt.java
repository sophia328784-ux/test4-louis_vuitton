package com.vuitton.android.presentation.screen.plp.components.composables.brandcontent;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.AspectRatioKt;
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
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.media3.exoplayer.ExoPlayer;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.screen.plp.models.plp.PlpSectionUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.gi0;
import defpackage.n00;
import defpackage.rh0;
import defpackage.tb0;
import defpackage.tr;
import defpackage.ud0;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PLPHalfEditoComposableKt {
    public static final void a(String str, String str2, String str3, String str4, Composer composer, int i2) {
        int i3;
        String str5;
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(-1521901781);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(str) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            str5 = str2;
            i3 |= gapComposerH.K(str5) ? 32 : 16;
        } else {
            str5 = str2;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(str3) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.K(str4) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.b(false) ? 16384 : 8192;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            boolean z = (i3 & 14) == 4;
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new LvExoPlayer(context);
                gapComposerH.q(objX);
            }
            LvExoPlayer lvExoPlayer = (LvExoPlayer) objX;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("HalfEditoVideo");
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
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
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Modifier modifierB = ClipKt.b(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "HalfEditoVideo").o(SizeKt.f5052c));
            ExoPlayer exoPlayer = lvExoPlayer.f50900a;
            ContentScale.f9447a.getClass();
            int i4 = i3 << 3;
            LvVideoPlayerKt.b(modifierB, exoPlayer, str5, str3, null, true, str4, ContentScale.Companion.f9449b, false, false, false, false, null, false, 4, null, null, null, null, null, null, gapComposerH, (i4 & 7168) | (i4 & 896) | 12779526 | ((i3 << 9) & 3670016), ((i3 >> 9) & 112) | 27648, 0, 2070288);
            gapComposer = gapComposerH;
            gapComposer.L(473900061);
            gapComposer.Z(false);
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ud0(i2, 1, str, str2, str3, str4);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v7 */
    public static final void b(Modifier modifier, PlpSectionUiModel.HalfEdito halfEdito, Function1 function1, Composer composer, int i2) {
        Object obj;
        GapComposer gapComposer;
        BiasAlignment.Horizontal horizontal;
        BiasAlignment.Horizontal horizontal2;
        Function2 function2;
        String str;
        Function2 function3;
        Function1 function4;
        Function0 function0;
        Function2 function5;
        ?? r0;
        GapComposer gapComposer2;
        long j2;
        int i3;
        GapComposer gapComposer3;
        GapComposer gapComposer4;
        Modifier modifierE = modifier;
        PlpSectionUiModel.HalfEdito halfEdito2 = halfEdito;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "PLPHalfEditoComposable");
        }
        function1.getClass();
        GapComposer gapComposerH = composer.h(-1250094071);
        Applier applier = gapComposerH.f7976a;
        int i4 = i2 | 6 | (gapComposerH.y(halfEdito2) ? 32 : 16) | KyberEngine.KyberPolyBytes | (gapComposerH.y(function1) ? 2048 : 1024);
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PLPHalfEditoComposable");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            PlpSectionUiModel.HalfEdito.AlignmentUiModel alignmentUiModel = halfEdito2.f62922e;
            String str2 = halfEdito2.f62921c;
            AssetUiModel assetUiModel = halfEdito2.f62923f;
            boolean z = alignmentUiModel == PlpSectionUiModel.HalfEdito.AlignmentUiModel.CENTER;
            TextAlign.f10959b.getClass();
            int i5 = z ? TextAlign.f10961e : TextAlign.g;
            if (z) {
                Alignment.f8582a.getClass();
                horizontal = Alignment.Companion.o;
            } else {
                Alignment.f8582a.getClass();
                horizontal = Alignment.Companion.n;
            }
            long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.y;
            Modifier modifierA = AspectRatioKt.a(PaddingKt.k(SizeKt.d(dTFunctionNameModifier, 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1), 0.8f, false);
            Painter painterA = PainterResources_androidKt.a(R.drawable.background_product_default, gapComposerH, 0);
            ContentScale.f9447a.getClass();
            Modifier modifierA2 = PainterModifierKt.a(modifierA, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54);
            boolean zY = gapComposerH.y(halfEdito2);
            Object objX = gapComposerH.x();
            Object obj2 = Composer.Companion.f7939a;
            if (zY || objX == obj2) {
                objX = new tb0(halfEdito2, 21);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierA2, true, (Function1) objX);
            boolean zY2 = ((i4 & 7168) == 2048) | gapComposerH.y(halfEdito2);
            Object objX2 = gapComposerH.x();
            if (zY2 || objX2 == obj2) {
                objX2 = new rh0(function1, halfEdito2, 17);
                gapComposerH.q(objX2);
            }
            Modifier modifierC = ModifierExtKt.c(modifierB, false, null, null, (Function0) objX2, 31);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierC);
            ComposeUiNode.b0.getClass();
            Function0 function6 = ComposeUiNode.Companion.f9641b;
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
            Function2 function7 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function7);
            Function2 function8 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function8);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function9 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function9);
            Function1 function10 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function10);
            Function2 function11 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC2, function11);
            AssetVideoUiModel assetVideoUiModel = assetUiModel.f51781c;
            if (assetVideoUiModel != null) {
                gapComposerH.L(724083832);
                BiasAlignment.Horizontal horizontal3 = horizontal;
                String str3 = halfEdito2.f62919a;
                String str4 = assetVideoUiModel.f51783c;
                String str5 = assetVideoUiModel.f51784e;
                if (StringsKt.w(str5)) {
                    str5 = null;
                }
                String str6 = assetVideoUiModel.d;
                if (StringsKt.w(str6)) {
                    str6 = null;
                }
                String str7 = str6;
                horizontal2 = horizontal3;
                a(str3, str4, str5, str7, gapComposerH, 24576);
                gapComposerH.Z(false);
                r0 = 0;
                function3 = function11;
                function4 = function10;
                function0 = function6;
                function5 = function7;
                str = str2;
                function2 = function8;
                gapComposer2 = gapComposerH;
            } else {
                horizontal2 = horizontal;
                Modifier modifierO = n00.i(gapComposerH, 724430288, "PLPHalfEditoComposable").o(SizeKt.f5052c);
                AssetImageUiModel assetImageUiModel = assetUiModel.f51780b;
                String str8 = assetImageUiModel != null ? assetImageUiModel.f51778b : null;
                if (str8 == null) {
                    str8 = "";
                }
                function2 = function8;
                str = str2;
                function3 = function11;
                function4 = function10;
                function0 = function6;
                function5 = function7;
                r0 = 0;
                ImageLoaderKt.b(modifierO, str8, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerH, 390, 2040);
                GapComposer gapComposer5 = gapComposerH;
                gapComposer5.Z(false);
                gapComposer2 = gapComposer5;
            }
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("PLPHalfEditoComposable");
            BiasAlignment biasAlignment = Alignment.Companion.f8589i;
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
            Modifier modifierC3 = SizeKt.c(SizeKt.d(boxScopeInstance.g(dTFunctionNameModifier2, biasAlignment), 1.0f), 0.5f);
            Brush.Companion companion = Brush.f8862a;
            Color.f8866b.getClass();
            BoxKt.a(BackgroundKt.a(modifierC3, Brush.Companion.b(companion, CollectionsKt.P(new Color(Color.f8870h), new Color(Color.b(0.4f, LVAppDesignKitTheme.c(gapComposer2).f48361b.f48378f))), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14)), gapComposer2, r0);
            Modifier modifierM = PaddingKt.m(SizeKt.d(boxScopeInstance.g(new DTFunctionNameModifier("PLPHalfEditoComposable"), biasAlignment), 1.0f), LVAppDesignKitTheme.l(gapComposer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer2).f48416e, LVAppDesignKitTheme.l(gapComposer2).f48417f, 2);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposer2).f48415c), horizontal2, gapComposer2, r0);
            int iHashCode2 = Long.hashCode(gapComposer2.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposer2.U();
            Modifier modifierC4 = ComposedModifierKt.c(gapComposer2, modifierM);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer2.B();
            if (gapComposer2.S) {
                gapComposer2.C(function0);
            } else {
                gapComposer2.o();
            }
            Updater.c(gapComposer2, columnMeasurePolicyA, function5);
            Updater.c(gapComposer2, persistentCompositionLocalMapU2, function2);
            cj.t(iHashCode2, gapComposer2, function9, gapComposer2, function4);
            Updater.c(gapComposer2, modifierC4, function3);
            if (StringsKt.w(str)) {
                j2 = r17;
                i3 = r35;
                gapComposer2.L(898791645);
                gapComposer2.Z(r0);
                gapComposer3 = gapComposer2;
            } else {
                gapComposer2.L(898471198);
                String upperCase = str.toUpperCase(Locale.ROOT);
                upperCase.getClass();
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposer2).p;
                TextOverflow.f10989a.getClass();
                i3 = i5;
                GapComposer gapComposer6 = gapComposer2;
                j2 = j3;
                TextKt.c(upperCase, null, j2, 0L, null, 0L, null, new TextAlign(i3), 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, gapComposer6, 0, 24960, 109562);
                GapComposer gapComposer7 = gapComposer6;
                gapComposer7.Z(r0);
                gapComposer3 = gapComposer7;
            }
            halfEdito2 = halfEdito;
            String str9 = halfEdito2.f62920b;
            TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposer3).f48425e;
            TextOverflow.f10989a.getClass();
            int i6 = TextOverflow.f10991c;
            GapComposer gapComposer8 = gapComposer3;
            TextKt.c(str9, null, j2, 0L, null, 0L, null, new TextAlign(i3), 0L, i6, false, 2, 0, null, textStyle2, gapComposer8, 0, 24960, 109562);
            GapComposer gapComposer9 = gapComposer8;
            if (StringsKt.w(halfEdito2.d)) {
                gapComposer9.L(899467197);
                gapComposer9.Z(r0);
                gapComposer4 = gapComposer9;
            } else {
                gapComposer9.L(899158282);
                TextKt.c(halfEdito2.d, null, j2, 0L, null, 0L, null, new TextAlign(i3), 0L, i6, false, 2, 0, null, LVAppDesignKitTheme.n(gapComposer9).g, gapComposer9, 0, 24960, 109562);
                GapComposer gapComposer10 = gapComposer9;
                gapComposer10.Z(r0);
                gapComposer4 = gapComposer10;
            }
            gapComposer4.Z(true);
            gapComposer4.Z(true);
            obj = dTFunctionNameModifier;
            gapComposer = gapComposer4;
        } else {
            gapComposerH.D();
            obj = modifierE;
            gapComposer = gapComposerH;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new gi0(i2, 6, obj, halfEdito2, function1);
        }
    }
}

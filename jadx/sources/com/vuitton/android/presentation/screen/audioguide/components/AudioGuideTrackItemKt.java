package com.vuitton.android.presentation.screen.audioguide.components;

import android.content.Context;
import android.graphics.ColorFilter;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.IconKt;
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
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ContentScale$Companion$Crop$1;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.core.graphics.BlendModeColorFilterCompat;
import androidx.core.graphics.BlendModeCompat;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.compose.LottieAnimationKt;
import com.airbnb.lottie.compose.LottieCompositionResultImpl;
import com.airbnb.lottie.compose.LottieDynamicProperties;
import com.airbnb.lottie.compose.LottieDynamicPropertiesKt;
import com.airbnb.lottie.compose.LottieDynamicProperty;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import defpackage.cj;
import defpackage.eb;
import defpackage.h1;
import defpackage.i1;
import defpackage.j8;
import defpackage.k;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u0004\u0018\u00010\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/airbnb/lottie/LottieComposition;", "composition", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AudioGuideTrackItemKt {
    public static final void a(Modifier modifier, AudioGuideUiModel.TrackUiModel trackUiModel, AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel, Function0 function0, Composer composer, int i2) {
        int i3;
        Function0 function1;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "AudioGuideTrackIdleItem");
        }
        modifierE.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1982763543);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(trackUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(audioGuideColorsUiModel) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Modifier modifierA = ClipKt.a(SizeKt.d(modifierE, 1.0f), LVAppDesignKitTheme.j(gapComposerH).f48411c);
            boolean z = (i3 & 7168) == 2048;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z || objX == composer$Companion$Empty$1) {
                objX = new h1(function0, 8);
                gapComposerH.q(objX);
            }
            Modifier modifierI = PaddingKt.i(ModifierExtKt.c(modifierA, false, null, null, (Function0) objX, 31), LVAppDesignKitTheme.l(gapComposerH).f48415c);
            Alignment.f8582a.getClass();
            BiasAlignment.Vertical vertical = Alignment.Companion.l;
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.g, vertical, gapComposerH, 54);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function3);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function4);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function5);
            Function1 function6 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function6);
            Function2 function7 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function7);
            Modifier modifierE2 = ModifierExtKt.e(ClipKt.a(SizeKt.o(new DTFunctionNameModifier("AudioGuideTrackIdleItem"), LVAppDesignKitTheme.d(gapComposerH).y), LVAppDesignKitTheme.j(gapComposerH).f48410b), "audioGuide_trackImage_image");
            ContentScale.f9447a.getClass();
            ContentScale$Companion$Crop$1 contentScale$Companion$Crop$1 = ContentScale.Companion.f9449b;
            String str = trackUiModel.d.f51778b;
            str.getClass();
            int i4 = i3;
            ImageLoaderKt.b(modifierE2, str, contentScale$Companion$Crop$1, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
            SpacerKt.a(gapComposerH, SizeKt.s(new DTFunctionNameModifier("AudioGuideTrackIdleItem"), LVAppDesignKitTheme.l(gapComposerH).d));
            Modifier modifierA2 = RowScopeInstance.f5040a.a(new DTFunctionNameModifier("AudioGuideTrackIdleItem"), 1.0f, true);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4921e, Alignment.Companion.n, gapComposerH, 6);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                function1 = function2;
                gapComposerH.C(function1);
            } else {
                function1 = function2;
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function4);
            cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function6);
            Modifier modifierF = n00.f(gapComposerH, modifierC2, function7, "AudioGuideTrackIdleItem", "audioGuide_trackLabel_text");
            String str2 = trackUiModel.f53220c;
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
            Function0 function8 = function1;
            long j2 = audioGuideColorsUiModel.f53208b;
            TextOverflow.f10989a.getClass();
            int i5 = TextOverflow.f10991c;
            TextKt.c(str2, modifierF, j2, 0L, null, 0L, null, null, 0L, i5, false, 1, 0, null, textStyle, gapComposerH, 0, 24960, 110584);
            TextKt.c(trackUiModel.f53219b, ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("AudioGuideTrackIdleItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "audioGuide_trackTitle_text"), audioGuideColorsUiModel.f53207a, 0L, null, 0L, null, null, 0L, i5, false, 2, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 24960, 110584);
            SpacerKt.a(gapComposerH, SizeKt.s(o60.f(gapComposerH, true, "AudioGuideTrackIdleItem"), LVAppDesignKitTheme.l(gapComposerH).d));
            Modifier modifierE3 = ModifierExtKt.e(PaddingKt.j(BackgroundKt.b(ClipKt.a(new DTFunctionNameModifier("AudioGuideTrackIdleItem"), LVAppDesignKitTheme.j(gapComposerH).f48412e), audioGuideColorsUiModel.f53211f, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).d, LVAppDesignKitTheme.l(gapComposerH).f48415c), "audioGuide_trackPlay_button");
            RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48414b), vertical, gapComposerH, 48);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierE3);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function8);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA2, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function4);
            cj.t(iHashCode3, gapComposerH, function5, gapComposerH, function6);
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).Z, gapComposerH, 0), null, SizeKt.o(tr.e(gapComposerH, modifierC3, function7, "AudioGuideTrackIdleItem"), LVAppDesignKitTheme.d(gapComposerH).m), audioGuideColorsUiModel.f53207a, gapComposerH, 56, 0);
            Modifier modifierG = n00.g("AudioGuideTrackIdleItem", "audioGuide_trackDuration_text");
            boolean zY = gapComposerH.y(context) | ((i4 & 112) == 32);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new k(context, trackUiModel, 7);
                gapComposerH.q(objX2);
            }
            TextKt.c(trackUiModel.f53222f.d, SemanticsModifierKt.b(modifierG, false, (Function1) objX2), audioGuideColorsUiModel.f53207a, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131064);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i1(modifierE, trackUiModel, audioGuideColorsUiModel, function0, i2, 2);
        }
    }

    public static final void b(Modifier modifier, AudioGuideUiModel.TrackUiModel trackUiModel, boolean z, boolean z2, AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel, Function0 function0, Composer composer, int i2) {
        int i3;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "AudioGuideTrackItem");
        }
        Modifier modifier2 = modifier;
        function0.getClass();
        GapComposer gapComposerH = composer.h(1520580901);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(trackUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.b(z2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.K(audioGuideColorsUiModel) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (z) {
                gapComposerH.L(605828510);
                c(modifier2, trackUiModel, audioGuideColorsUiModel, z2, function0, gapComposerH, (i3 & 126) | ((i3 >> 6) & 896) | (i3 & 7168) | ((i3 >> 3) & 57344));
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(606054469);
                int i4 = i3 & 126;
                int i5 = i3 >> 6;
                a(modifier2, trackUiModel, audioGuideColorsUiModel, function0, gapComposerH, i4 | (i5 & 896) | (i5 & 7168));
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new eb(modifier2, trackUiModel, z, z2, audioGuideColorsUiModel, function0, i2, 0);
        }
    }

    public static final void c(Modifier modifier, AudioGuideUiModel.TrackUiModel trackUiModel, AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel, boolean z, Function0 function0, Composer composer, int i2) {
        int i3;
        AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel2;
        Modifier modifierE = modifier;
        AudioGuideUiModel.TrackUiModel trackUiModel2 = trackUiModel;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "AudioGuideTrackSelectedItem");
        }
        GapComposer gapComposerH = composer.h(2053140454);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(trackUiModel2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(audioGuideColorsUiModel) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function0) ? 16384 : 8192;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LottieCompositionResultImpl lottieCompositionResultImplH = n00.h(LVAppDesignKitTheme.a(gapComposerH).G, gapComposerH, 0);
            ColorFilter colorFilter = LottieProperty.I;
            long j2 = audioGuideColorsUiModel.f53207a;
            Color.Companion companion = Color.f8866b;
            ULong.Companion companion2 = ULong.INSTANCE;
            LottieDynamicProperties lottieDynamicPropertiesA = LottieDynamicPropertiesKt.a(new LottieDynamicProperty[]{LottieDynamicPropertiesKt.b(colorFilter, BlendModeColorFilterCompat.a(Long.hashCode(j2), BlendModeCompat.SRC_ATOP), new String[]{"**"}, gapComposerH)}, gapComposerH);
            Modifier modifierB = BackgroundKt.b(ClipKt.a(SizeKt.d(modifierE, 1.0f), LVAppDesignKitTheme.j(gapComposerH).f48411c), audioGuideColorsUiModel.f53211f, RectangleShapeKt.f8913a);
            boolean z2 = (57344 & i3) == 16384;
            Object objX = gapComposerH.x();
            if (z2 || objX == Composer.Companion.f7939a) {
                objX = new h1(function0, 9);
                gapComposerH.q(objX);
            }
            Modifier modifierI = PaddingKt.i(ModifierExtKt.c(modifierB, false, null, null, (Function0) objX, 31), LVAppDesignKitTheme.l(gapComposerH).f48415c);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.l, gapComposerH, 54);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function6);
            Modifier modifierA = ClipKt.a(SizeKt.o(new DTFunctionNameModifier("AudioGuideTrackSelectedItem"), LVAppDesignKitTheme.d(gapComposerH).y), LVAppDesignKitTheme.j(gapComposerH).f48410b);
            ContentScale.f9447a.getClass();
            ContentScale$Companion$Crop$1 contentScale$Companion$Crop$1 = ContentScale.Companion.f9449b;
            String str = trackUiModel2.d.f51778b;
            str.getClass();
            int i4 = i3;
            ImageLoaderKt.b(modifierA, str, contentScale$Companion$Crop$1, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
            SpacerKt.a(gapComposerH, SizeKt.s(new DTFunctionNameModifier("AudioGuideTrackSelectedItem"), LVAppDesignKitTheme.l(gapComposerH).d));
            Modifier modifierA2 = RowScopeInstance.f5040a.a(new DTFunctionNameModifier("AudioGuideTrackSelectedItem"), 1.0f, true);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4921e, Alignment.Companion.n, gapComposerH, 6);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC2, function6);
            trackUiModel2 = trackUiModel;
            audioGuideColorsUiModel2 = audioGuideColorsUiModel;
            TextKt.c(trackUiModel2.f53220c, null, audioGuideColorsUiModel2.f53208b, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131066);
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("AudioGuideTrackSelectedItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            String str2 = trackUiModel2.f53219b;
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48429j;
            long j3 = audioGuideColorsUiModel2.f53207a;
            TextOverflow.f10989a.getClass();
            TextKt.c(str2, modifierM, j3, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 2, 0, null, textStyle, gapComposerH, 0, 24960, 110584);
            gapComposerH = gapComposerH;
            SpacerKt.a(gapComposerH, SizeKt.s(o60.f(gapComposerH, true, "AudioGuideTrackSelectedItem"), LVAppDesignKitTheme.l(gapComposerH).d));
            LottieAnimationKt.a(lottieCompositionResultImplH.getF10755b(), SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("AudioGuideTrackSelectedItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(gapComposerH).o), z, Integer.MAX_VALUE, lottieDynamicPropertiesA, gapComposerH, ((i4 >> 3) & 896) | 1572864, 32768, 4177848);
            gapComposerH.Z(true);
        } else {
            audioGuideColorsUiModel2 = audioGuideColorsUiModel;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new j8(modifierE, trackUiModel2, audioGuideColorsUiModel2, z, function0, i2, 1);
        }
    }
}

package com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail;

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
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ContentScale$Companion$Crop$1;
import androidx.compose.ui.node.ComposeUiNode;
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
import defpackage.ly;
import defpackage.n00;
import defpackage.o60;
import defpackage.py;
import defpackage.tr;
import defpackage.y90;
import defpackage.zr;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u0004\u0018\u00010\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/airbnb/lottie/LottieComposition;", "composition", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ListeningQueueTrackItemKt {
    public static final void a(AudioGuideUiModel.TrackUiModel trackUiModel, AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel, Function0 function0, Composer composer, int i2) {
        AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel2;
        GapComposer gapComposerH = composer.h(964004918);
        Applier applier = gapComposerH.f7976a;
        int i3 = (gapComposerH.K(trackUiModel) ? 4 : 2) | i2;
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(audioGuideColorsUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierA = ClipKt.a(tr.d("ListeningQueueIdleItem", 1.0f), LVAppDesignKitTheme.j(gapComposerH).f48411c);
            boolean z = (i3 & 896) == 256;
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new py(function0, 22);
                gapComposerH.q(objX);
            }
            Modifier modifierI = PaddingKt.i(ModifierExtKt.c(modifierA, false, null, null, (Function0) objX, 31), LVAppDesignKitTheme.l(gapComposerH).f48415c);
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
            Modifier modifierA2 = ClipKt.a(SizeKt.o(new DTFunctionNameModifier("ListeningQueueIdleItem"), LVAppDesignKitTheme.d(gapComposerH).y), LVAppDesignKitTheme.j(gapComposerH).f48410b);
            ContentScale.f9447a.getClass();
            ContentScale$Companion$Crop$1 contentScale$Companion$Crop$1 = ContentScale.Companion.f9449b;
            String str = trackUiModel.d.f51778b;
            str.getClass();
            ImageLoaderKt.b(modifierA2, str, contentScale$Companion$Crop$1, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
            SpacerKt.a(gapComposerH, SizeKt.s(new DTFunctionNameModifier("ListeningQueueIdleItem"), LVAppDesignKitTheme.l(gapComposerH).d));
            Modifier modifierA3 = RowScopeInstance.f5040a.a(new DTFunctionNameModifier("ListeningQueueIdleItem"), 1.0f, true);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4921e, Alignment.Companion.n, gapComposerH, 6);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA3);
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
            String str2 = trackUiModel.f53220c;
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
            audioGuideColorsUiModel2 = audioGuideColorsUiModel;
            long j2 = audioGuideColorsUiModel2.f53208b;
            TextOverflow.f10989a.getClass();
            int i4 = TextOverflow.f10991c;
            TextKt.c(str2, null, j2, 0L, null, 0L, null, null, 0L, i4, false, 1, 0, null, textStyle, gapComposerH, 0, 24960, 110586);
            TextKt.c(trackUiModel.f53219b, PaddingKt.m(new DTFunctionNameModifier("ListeningQueueIdleItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), audioGuideColorsUiModel2.f53207a, 0L, null, 0L, null, null, 0L, i4, false, 2, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 24960, 110584);
            SpacerKt.a(gapComposerH, SizeKt.s(o60.f(gapComposerH, true, "ListeningQueueIdleItem"), LVAppDesignKitTheme.l(gapComposerH).d));
            TextKt.c(trackUiModel.f53222f.d, null, audioGuideColorsUiModel2.f53208b, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131066);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            audioGuideColorsUiModel2 = audioGuideColorsUiModel;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new y90(trackUiModel, audioGuideColorsUiModel2, function0, i2, 0);
        }
    }

    public static final void b(AudioGuideUiModel.TrackUiModel trackUiModel, boolean z, boolean z2, AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel, Function0 function0, Composer composer, int i2) {
        function0.getClass();
        GapComposer gapComposerH = composer.h(1697861474);
        int i3 = i2 | (gapComposerH.K(trackUiModel) ? 4 : 2) | (gapComposerH.b(z) ? 32 : 16) | (gapComposerH.b(z2) ? 256 : 128) | (gapComposerH.K(audioGuideColorsUiModel) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (z) {
                gapComposerH.L(-838432093);
                c(trackUiModel, audioGuideColorsUiModel, z2, function0, gapComposerH, ((i3 >> 3) & 7168) | (i3 & 14) | ((i3 >> 6) & 112) | (i3 & 896));
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-838239862);
                int i4 = i3 & 14;
                int i5 = i3 >> 6;
                a(trackUiModel, audioGuideColorsUiModel, function0, gapComposerH, (i5 & 896) | i4 | (i5 & 112));
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ly(trackUiModel, z, z2, audioGuideColorsUiModel, function0, i2, 3);
        }
    }

    public static final void c(AudioGuideUiModel.TrackUiModel trackUiModel, AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel, boolean z, Function0 function0, Composer composer, int i2) {
        AudioGuideUiModel.TrackUiModel trackUiModel2 = trackUiModel;
        AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel2 = audioGuideColorsUiModel;
        GapComposer gapComposerH = composer.h(309981291);
        Applier applier = gapComposerH.f7976a;
        int i3 = (gapComposerH.K(trackUiModel2) ? 4 : 2) | i2;
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(audioGuideColorsUiModel2) ? 32 : 16;
        }
        int i4 = i3 | (gapComposerH.b(z) ? 256 : 128);
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LottieCompositionResultImpl lottieCompositionResultImplH = n00.h(LVAppDesignKitTheme.a(gapComposerH).G, gapComposerH, 0);
            ColorFilter colorFilter = LottieProperty.I;
            long j2 = audioGuideColorsUiModel2.f53207a;
            Color.Companion companion = Color.f8866b;
            ULong.Companion companion2 = ULong.INSTANCE;
            LottieDynamicProperties lottieDynamicPropertiesA = LottieDynamicPropertiesKt.a(new LottieDynamicProperty[]{LottieDynamicPropertiesKt.b(colorFilter, BlendModeColorFilterCompat.a(Long.hashCode(j2), BlendModeCompat.SRC_ATOP), new String[]{"**"}, gapComposerH)}, gapComposerH);
            Modifier modifierB = BackgroundKt.b(ClipKt.a(tr.d("ListeningQueueSelectedItem", 1.0f), LVAppDesignKitTheme.j(gapComposerH).f48411c), audioGuideColorsUiModel2.f53211f, RectangleShapeKt.f8913a);
            boolean z2 = (i4 & 7168) == 2048;
            Object objX = gapComposerH.x();
            if (z2 || objX == Composer.Companion.f7939a) {
                objX = new py(function0, 23);
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
            Modifier modifierA = ClipKt.a(SizeKt.o(new DTFunctionNameModifier("ListeningQueueSelectedItem"), LVAppDesignKitTheme.d(gapComposerH).y), LVAppDesignKitTheme.j(gapComposerH).f48410b);
            ContentScale.f9447a.getClass();
            ContentScale$Companion$Crop$1 contentScale$Companion$Crop$1 = ContentScale.Companion.f9449b;
            String str = trackUiModel2.d.f51778b;
            str.getClass();
            int i5 = i4;
            ImageLoaderKt.b(modifierA, str, contentScale$Companion$Crop$1, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
            SpacerKt.a(gapComposerH, SizeKt.s(new DTFunctionNameModifier("ListeningQueueSelectedItem"), LVAppDesignKitTheme.l(gapComposerH).d));
            Modifier modifierA2 = RowScopeInstance.f5040a.a(new DTFunctionNameModifier("ListeningQueueSelectedItem"), 1.0f, true);
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
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("ListeningQueueSelectedItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            String str2 = trackUiModel2.f53219b;
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48429j;
            long j3 = audioGuideColorsUiModel2.f53207a;
            TextOverflow.f10989a.getClass();
            TextKt.c(str2, modifierM, j3, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 2, 0, null, textStyle, gapComposerH, 0, 24960, 110584);
            gapComposerH = gapComposerH;
            SpacerKt.a(gapComposerH, SizeKt.s(o60.f(gapComposerH, true, "ListeningQueueSelectedItem"), LVAppDesignKitTheme.l(gapComposerH).d));
            LottieAnimationKt.a(lottieCompositionResultImplH.getF10755b(), SizeKt.o(new DTFunctionNameModifier("ListeningQueueSelectedItem"), LVAppDesignKitTheme.d(gapComposerH).o), z, Integer.MAX_VALUE, lottieDynamicPropertiesA, gapComposerH, (i5 & 896) | 1572864, 32768, 4177848);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zr(i2, 4, trackUiModel2, audioGuideColorsUiModel2, function0, z);
        }
    }
}

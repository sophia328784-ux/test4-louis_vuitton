package com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
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
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ContentScale$Companion$Crop$1;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import defpackage.cj;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import defpackage.tr;
import defpackage.w11;
import defpackage.y90;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TrackDetailNextContentKt {
    public static final void a(AudioGuideUiModel.TrackUiModel trackUiModel, AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel, Function0 function0, Composer composer, int i2) {
        int i3;
        long j2 = audioGuideColorsUiModel.d;
        trackUiModel.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-820116397);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(trackUiModel) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(audioGuideColorsUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierK = PaddingKt.k(tr.d("TrackDetailNextContent", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierK);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            int i4 = i3;
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.next_content), ModifierExtKt.e(PaddingKt.m(tr.e(gapComposerH, modifierC, function6, "TrackDetailNextContent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7), "audioGuide_trackDetailNextContentSectionTitle_text"), audioGuideColorsUiModel.f53207a, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, 0, 0, 131064);
            Modifier modifierA = ClipKt.a(ModifierExtKt.e(SizeKt.d(new DTFunctionNameModifier("TrackDetailNextContent"), 1.0f), "audioGuide_trackDetailNextTrack_view"), LVAppDesignKitTheme.j(gapComposerH).f48411c);
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
            Modifier modifierB = BackgroundKt.b(modifierA, j2, rectangleShapeKt$RectangleShape$1);
            boolean z = (i4 & 896) == 256;
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new w11(function0, 5);
                gapComposerH.q(objX);
            }
            Modifier modifierI = PaddingKt.i(ModifierExtKt.c(modifierB, false, null, null, (Function0) objX, 31), LVAppDesignKitTheme.l(gapComposerH).d);
            BiasAlignment.Vertical vertical = Alignment.Companion.l;
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.g, vertical, gapComposerH, 54);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierI);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC2, function6);
            Modifier modifierE = ModifierExtKt.e(ClipKt.a(SizeKt.o(new DTFunctionNameModifier("TrackDetailNextContent"), LVAppDesignKitTheme.d(gapComposerH).y), LVAppDesignKitTheme.j(gapComposerH).f48410b), "audioGuide_trackDetailNextContentImage_image");
            ContentScale.f9447a.getClass();
            ContentScale$Companion$Crop$1 contentScale$Companion$Crop$1 = ContentScale.Companion.f9449b;
            String str = trackUiModel.d.f51778b;
            str.getClass();
            ImageLoaderKt.b(modifierE, str, contentScale$Companion$Crop$1, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
            SpacerKt.a(gapComposerH, SizeKt.s(new DTFunctionNameModifier("TrackDetailNextContent"), LVAppDesignKitTheme.l(gapComposerH).d));
            Modifier modifierA2 = RowScopeInstance.f5040a.a(new DTFunctionNameModifier("TrackDetailNextContent"), 1.0f, true);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(Arrangement.f4921e, horizontal, gapComposerH, 6);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierA2);
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
            Updater.c(gapComposerH, columnMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
            cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function5);
            Modifier modifierF = n00.f(gapComposerH, modifierC3, function6, "TrackDetailNextContent", "audioGuide_trackDetailNextContentLabel_text");
            String str2 = trackUiModel.f53220c;
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
            long j3 = audioGuideColorsUiModel.f53208b;
            TextOverflow.f10989a.getClass();
            int i5 = TextOverflow.f10991c;
            TextKt.c(str2, modifierF, j3, 0L, null, 0L, null, null, 0L, i5, false, 1, 0, null, textStyle, gapComposerH, 0, 24960, 110584);
            TextKt.c(trackUiModel.f53219b, ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("TrackDetailNextContent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "audioGuide_trackDetailNextContentTrackTitle_text"), audioGuideColorsUiModel.f53207a, 0L, null, 0L, null, null, 0L, i5, false, 2, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 24960, 110584);
            SpacerKt.a(gapComposerH, SizeKt.s(o60.f(gapComposerH, true, "TrackDetailNextContent"), LVAppDesignKitTheme.l(gapComposerH).d));
            Modifier modifierJ = PaddingKt.j(BackgroundKt.b(ClipKt.a(new DTFunctionNameModifier("TrackDetailNextContent"), LVAppDesignKitTheme.j(gapComposerH).f48412e), j2, rectangleShapeKt$RectangleShape$1), LVAppDesignKitTheme.l(gapComposerH).d, LVAppDesignKitTheme.l(gapComposerH).f48415c);
            RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48414b), vertical, gapComposerH, 48);
            int iHashCode4 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposerH.U();
            Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, modifierJ);
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
            Updater.c(gapComposerH, rowMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU4, function3);
            cj.t(iHashCode4, gapComposerH, function4, gapComposerH, function5);
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).Z, gapComposerH, 0), null, ModifierExtKt.e(SizeKt.o(tr.e(gapComposerH, modifierC4, function6, "TrackDetailNextContent"), LVAppDesignKitTheme.d(gapComposerH).m), "audioGuide_trackDetailNextContentPlay_button"), audioGuideColorsUiModel.f53207a, gapComposerH, 56, 0);
            TextKt.c(trackUiModel.f53222f.d, n00.g("TrackDetailNextContent", "audioGuide_trackDetailNextContentDuration_text"), audioGuideColorsUiModel.f53207a, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131064);
            gapComposerH = gapComposerH;
            pq0.x(gapComposerH, true, true, true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new y90(trackUiModel, audioGuideColorsUiModel, function0, i2, 1);
        }
    }
}

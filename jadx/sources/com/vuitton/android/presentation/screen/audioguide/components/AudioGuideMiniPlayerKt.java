package com.vuitton.android.presentation.screen.audioguide.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BasicMarqueeKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.audioguide.components.AudioGuideMiniPlayerKt;
import com.vuitton.android.presentation.screen.audioguide.models.TrackDetailUiModel;
import defpackage.cj;
import defpackage.g;
import defpackage.n00;
import defpackage.pa;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AudioGuideMiniPlayerKt {
    public static final void a(Modifier modifier, final TrackDetailUiModel trackDetailUiModel, final String str, boolean z, long j2, final long j3, final Function0 function0, final Function0 function1, Composer composer, final int i2) {
        int i3;
        boolean z2;
        long j4;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "AudioGuideMiniPlayer-bogVsAg");
        }
        trackDetailUiModel.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-1152842360);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2);
        } else {
            i3 = i2;
        }
        int i4 = i3 | (gapComposerH.y(trackDetailUiModel) ? 32 : 16) | (gapComposerH.K(str) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.e(j2) ? 16384 : 8192) | (gapComposerH.e(j3) ? 131072 : 65536) | (gapComposerH.y(function0) ? 1048576 : 524288) | (gapComposerH.y(function1) ? 8388608 : 4194304);
        if (gapComposerH.p(i4 & 1, (i4 & 4793491) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = SizeKt.d(modifierE, 1.0f);
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierJ = PaddingKt.j(BackgroundKt.b(ClipKt.a(modifierD, RoundedCornerShapeKt.a(120.0f)), j3, RectangleShapeKt.f8913a), LVAppDesignKitTheme.d(gapComposerH).o, LVAppDesignKitTheme.d(gapComposerH).f48390j);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierJ);
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
            Modifier modifierE2 = ModifierExtKt.e(ClipKt.a(SizeKt.o(new DTFunctionNameModifier("AudioGuideMiniPlayer-bogVsAg"), LVAppDesignKitTheme.d(gapComposerH).u), LVAppDesignKitTheme.j(gapComposerH).f48411c), "audioGuide_miniPlayerTrackImage_image");
            ContentScale.f9447a.getClass();
            ImageLoaderKt.b(modifierE2, str, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
            Modifier modifierA = RowScopeInstance.f5040a.a(PaddingKt.k(new DTFunctionNameModifier("AudioGuideMiniPlayer-bogVsAg"), LVAppDesignKitTheme.d(gapComposerH).f48390j, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f, true);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA);
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
            cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function6);
            Modifier modifierF = n00.f(gapComposerH, modifierC2, function7, "AudioGuideMiniPlayer-bogVsAg", "audioGuide_miniPlayerTrackLabel_text");
            String str2 = trackDetailUiModel.f53232c;
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
            TextOverflow.f10989a.getClass();
            int i5 = (i4 >> 6) & 896;
            TextKt.c(str2, modifierF, j2, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, gapComposerH, i5, 24960, 110584);
            TextKt.c(trackDetailUiModel.f53231b, ModifierExtKt.e(BasicMarqueeKt.a(new DTFunctionNameModifier("AudioGuideMiniPlayer-bogVsAg"), null, 63), "audioGuide_miniPlayerTrackTitle_text"), j2, 0L, null, 0L, null, null, 0L, 0, false, 1, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, i5, 24576, 114680);
            j4 = j2;
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
            z2 = z;
            IconButtonKt.a(function0, null, false, null, null, ComposableLambdaKt.b(926184970, new pa(z2, trackDetailUiModel, j4), gapComposerH), gapComposerH, ((i4 >> 18) & 14) | 1572864, 62);
            IconButtonKt.a(function1, null, false, null, null, ComposableLambdaKt.b(-799433023, new g(j4, 1), gapComposerH), gapComposerH, ((i4 >> 21) & 14) | 1572864, 62);
            gapComposerH.Z(true);
        } else {
            z2 = z;
            j4 = j2;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final boolean z3 = z2;
            final long j5 = j4;
            final Modifier modifier2 = modifierE;
            recomposeScopeImplB0.d = new Function2() { // from class: qa
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    AudioGuideMiniPlayerKt.a(modifier2, trackDetailUiModel, str, z3, j5, j3, function0, function1, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }
}

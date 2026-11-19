package com.vuitton.android.presentation.screen.audioguide.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.IntrinsicKt;
import androidx.compose.foundation.layout.IntrinsicSize;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
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
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import com.vuitton.android.presentation.screen.audioguide.components.AudioGuideTrackListKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideExtKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import defpackage.c1;
import defpackage.cj;
import defpackage.g;
import defpackage.hb;
import defpackage.i4;
import defpackage.l0;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import defpackage.u5;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AudioGuideTrackListKt {
    public static final void a(final boolean z, final boolean z2, final boolean z3, long j2, long j3, long j4, final float f2, final float f3, Composer composer, final int i2) {
        long j5;
        long j6;
        Modifier modifierA;
        final long j7 = j3;
        GapComposer gapComposerH = composer.h(1481444512);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.b(z) ? 4 : 2) | (gapComposerH.b(z2) ? 32 : 16) | (gapComposerH.b(z3) ? 256 : 128) | (gapComposerH.e(j2) ? 2048 : 1024) | (gapComposerH.e(j7) ? 16384 : 8192) | (gapComposerH.e(j4) ? 131072 : 65536) | (gapComposerH.c(f2) ? 1048576 : 524288) | (gapComposerH.c(f3) ? 8388608 : 4194304);
        if (gapComposerH.p(i3 & 1, (4793491 & i3) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierC = SizeKt.c(SizeKt.s(PaddingKt.m(new DTFunctionNameModifier("AudioGuideTimeline-ya7-Xgw"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), f2), 1.0f);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierC);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC2, function5);
            Modifier modifierJ = BoxScopeInstance.f4938a.j(new DTFunctionNameModifier("AudioGuideTimeline-ya7-Xgw"));
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierJ);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC3, function5);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("AudioGuideTimeline-ya7-Xgw");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
            j7 = j3;
            Modifier modifierB = ModifierExtKt.b(SizeKt.s(columnScopeInstance.a(dTFunctionNameModifier, 1.0f, true), f3), !z, new g(j7, 2), gapComposerH, 0);
            BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
            BoxKt.a(columnScopeInstance.b(modifierB, horizontal), gapComposerH, 0);
            BoxKt.a(columnScopeInstance.b(ModifierExtKt.b(SizeKt.s(columnScopeInstance.a(new DTFunctionNameModifier("AudioGuideTimeline-ya7-Xgw"), 1.0f, true), f3), !z2, new g(j7, 3), gapComposerH, 0), horizontal), gapComposerH, 0);
            gapComposerH.Z(true);
            Modifier modifierO = SizeKt.o(new DTFunctionNameModifier("AudioGuideTimeline-ya7-Xgw"), LVAppDesignKitTheme.d(gapComposerH).f48389i);
            if (z3) {
                j6 = j2;
                modifierA = BackgroundKt.b(n00.j(gapComposerH, -1538114215, false, "AudioGuideTimeline-ya7-Xgw"), j6, RoundedCornerShapeKt.f5846a);
                j5 = j4;
            } else {
                j6 = j2;
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, -1538001747, "AudioGuideTimeline-ya7-Xgw");
                RoundedCornerShape roundedCornerShape = RoundedCornerShapeKt.f5846a;
                j5 = j4;
                modifierA = BorderKt.a(BackgroundKt.b(dTFunctionNameModifierI, j5, roundedCornerShape), LVAppDesignKitTheme.d(gapComposerH).f48385c, j6, roundedCornerShape);
                gapComposerH.Z(false);
            }
            BoxKt.a(modifierO.o(modifierA), gapComposerH, 0);
            gapComposerH.Z(true);
        } else {
            j5 = j4;
            j6 = j2;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final long j8 = j6;
            final long j9 = j5;
            recomposeScopeImplB0.d = new Function2(z, z2, z3, j8, j7, j9, f2, f3, i2) { // from class: fb

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ boolean f69093b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ boolean f69094c;
                public final /* synthetic */ boolean d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ long f69095e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ long f69096f;
                public final /* synthetic */ long g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ float f69097h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ float f69098i;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    AudioGuideTrackListKt.a(this.f69093b, this.f69094c, this.d, this.f69095e, this.f69096f, this.g, this.f69097h, this.f69098i, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(AudioGuideUiModel audioGuideUiModel, String str, boolean z, Function2 function2, Composer composer, int i2) {
        float f2;
        int i3;
        boolean z2;
        char c2;
        String str2 = str;
        audioGuideUiModel.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(694290791);
        Applier applier = gapComposerH.f7976a;
        int i4 = i2 | (gapComposerH.y(audioGuideUiModel) ? 4 : 2) | (gapComposerH.K(str2) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024);
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            float f3 = LVAppDesignKitTheme.d(gapComposerH).d;
            float f4 = LVAppDesignKitTheme.d(gapComposerH).m;
            FeatureThemeUiModel featureThemeUiModel = audioGuideUiModel.f53199f;
            List list = audioGuideUiModel.m;
            AudioGuideUiModel.SummaryUiModel summaryUiModel = audioGuideUiModel.l;
            AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModelA = AudioGuideExtKt.a(featureThemeUiModel, gapComposerH);
            Modifier modifierM = PaddingKt.m(tr.d("AudioGuideTrackList", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).g, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
            boolean zY = gapComposerH.y(audioGuideUiModel);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new c1(audioGuideUiModel, 13);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierM, false, (Function1) objX);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Function2 function3 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function3);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function4);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function5);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function6 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function6);
            BiasAlignment.Vertical vertical = Alignment.Companion.l;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("AudioGuideTrackList");
            int i5 = i4;
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical, gapComposerH, 48);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function4);
            cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function1);
            Modifier modifierF = n00.f(gapComposerH, modifierC2, function6, "AudioGuideTrackList", "audioGuide_totalTracks_text");
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new u5(13);
                gapComposerH.q(objX2);
            }
            float f5 = f4;
            AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel = audioGuideColorsUiModelA;
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = composer$Companion$Empty$1;
            TextKt.c(summaryUiModel.f53216a, SemanticsModifierKt.b(modifierF, false, (Function1) objX2), audioGuideColorsUiModelA.f53208b, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131064);
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).f48393b, gapComposerH, 0), null, SizeKt.o(PaddingKt.k(new DTFunctionNameModifier("AudioGuideTrackList"), LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.d(gapComposerH).f48388h), audioGuideColorsUiModel.f53208b, gapComposerH, 56, 0);
            TextKt.c(summaryUiModel.f53217b, n00.g("AudioGuideTrackList", "audioGuide_totalDuration_text"), audioGuideColorsUiModel.f53208b, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131064);
            gapComposerH = gapComposerH;
            SpacerKt.a(gapComposerH, SizeKt.f(o60.f(gapComposerH, true, "AudioGuideTrackList"), LVAppDesignKitTheme.l(gapComposerH).f48416e));
            gapComposerH.L(-1021311656);
            int i6 = 0;
            for (Object obj : list) {
                int i7 = i6 + 1;
                if (i6 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                AudioGuideUiModel.TrackUiModel trackUiModel = (AudioGuideUiModel.TrackUiModel) obj;
                if (i6 > 0) {
                    gapComposerH.L(-1514367458);
                    GapComposer gapComposer = gapComposerH;
                    float f6 = f5;
                    c(f6, f3, audioGuideColorsUiModel.d, gapComposer, 0);
                    f2 = f6;
                    gapComposerH = gapComposer;
                    i3 = 0;
                    gapComposerH.Z(false);
                } else {
                    f2 = f5;
                    i3 = 0;
                    gapComposerH.L(-1514127208);
                    gapComposerH.Z(false);
                }
                Modifier modifierA = IntrinsicKt.a(tr.d("AudioGuideTrackList", 1.0f), IntrinsicSize.Min);
                Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                Alignment.f8582a.getClass();
                RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposerH, i3);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                int iHashCode3 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
                Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierA);
                ComposeUiNode.b0.getClass();
                Function0 function7 = ComposeUiNode.Companion.f9641b;
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function7);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA2, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU3, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode3), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC3, ComposeUiNode.Companion.d);
                GapComposer gapComposer2 = gapComposerH;
                int i8 = i6;
                a(i6 == 0, i6 == list.size() + (-1), Intrinsics.c(trackUiModel.f53218a, str) || trackUiModel.g == AudioGuideUiModel.TrackStatusUiModel.DONE, audioGuideColorsUiModel.f53207a, audioGuideColorsUiModel.d, audioGuideUiModel.f53198e, f2, f3, gapComposer2, 0);
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("AudioGuideTrackList");
                boolean zD = gapComposer2.d(i8);
                Object objX3 = gapComposer2.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$3 = composer$Companion$Empty$2;
                if (zD || objX3 == composer$Companion$Empty$3) {
                    z2 = false;
                    objX3 = new hb(i8, 0);
                    gapComposer2.q(objX3);
                } else {
                    z2 = false;
                }
                Modifier modifierB2 = SemanticsModifierKt.b(dTFunctionNameModifier2, z2, (Function1) objX3);
                boolean zC = Intrinsics.c(trackUiModel.f53218a, str);
                int i9 = i5;
                boolean zK = gapComposer2.K(trackUiModel) | ((i9 & 7168) == 2048);
                Object objX4 = gapComposer2.x();
                if (zK || objX4 == composer$Companion$Empty$3) {
                    c2 = 16;
                    objX4 = new l0(function2, trackUiModel, 16);
                    gapComposer2.q(objX4);
                } else {
                    c2 = 16;
                }
                AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel2 = audioGuideColorsUiModel;
                AudioGuideTrackItemKt.b(modifierB2, trackUiModel, zC, z, audioGuideColorsUiModel2, (Function0) objX4, gapComposer2, (i9 << 3) & 7168);
                gapComposerH = gapComposer2;
                gapComposerH.Z(true);
                composer$Companion$Empty$2 = composer$Companion$Empty$3;
                f5 = f2;
                i5 = i9;
                i6 = i7;
                audioGuideColorsUiModel = audioGuideColorsUiModel2;
            }
            str2 = str;
            cj.x(o60.f(gapComposerH, false, "AudioGuideTrackList"), LVAppDesignKitTheme.l(gapComposerH).g, gapComposerH, true);
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i4(audioGuideUiModel, str2, z, function2, i2, 4);
        }
    }

    public static final void c(final float f2, final float f3, final long j2, Composer composer, final int i2) {
        GapComposer gapComposerH = composer.h(-1541420592);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.c(f2) ? 4 : 2) | (gapComposerH.c(f3) ? 32 : 16) | (gapComposerH.e(j2) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierF = SizeKt.f(tr.d("SpacerRowWithTimeline-pOWnNvE", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierF);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
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
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function5);
            Modifier modifierC2 = SizeKt.c(SizeKt.s(new DTFunctionNameModifier("SpacerRowWithTimeline-pOWnNvE"), f2), 1.0f);
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierC2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC3, function5);
            BoxKt.a(BackgroundKt.b(SizeKt.c(SizeKt.s(new DTFunctionNameModifier("SpacerRowWithTimeline-pOWnNvE"), f3), 1.0f), j2, RectangleShapeKt.f8913a), gapComposerH, 0);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(f2, f3, j2, i2) { // from class: gb

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ float f69360b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ float f69361c;
                public final /* synthetic */ long d;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    AudioGuideTrackListKt.c(this.f69360b, this.f69361c, this.d, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}

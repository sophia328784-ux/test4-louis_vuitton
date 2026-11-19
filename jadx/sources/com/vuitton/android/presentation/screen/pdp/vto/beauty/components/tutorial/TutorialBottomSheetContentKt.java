package com.vuitton.android.presentation.screen.pdp.vto.beauty.components.tutorial;

import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
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
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.components.components.LVFlowerLoaderKt;
import com.vuitton.android.designkit.ui.theme.GradientKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.ScrollProgressTrackerKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.tutorial.TutorialBottomSheetContentKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TutorialSectionDataUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TutorialSectionTypeUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TutorialSectionUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TutorialState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TutorialUiModel;
import defpackage.cj;
import defpackage.d21;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import defpackage.y41;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TutorialBottomSheetContentKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f62119a;

        static {
            int[] iArr = new int[TutorialSectionTypeUiModel.values().length];
            try {
                iArr[TutorialSectionTypeUiModel.ASSET_LIST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TutorialSectionTypeUiModel.STEPS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f62119a = iArr;
        }
    }

    public static final void a(final TutorialState tutorialState, final float f2, final boolean z, final boolean z2, final Function1 function1, final Function0 function0, Function1 function2, final Function0 function3, Composer composer, final int i2) {
        Function1 function4;
        int i3;
        tutorialState.getClass();
        function1.getClass();
        function0.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-921352297);
        Applier applier = gapComposerH.f7976a;
        int i4 = i2 | (gapComposerH.K(tutorialState) ? 4 : 2) | (gapComposerH.c(f2) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.b(z2) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function0) ? 131072 : 65536) | (gapComposerH.y(function2) ? 1048576 : 524288) | (gapComposerH.y(function3) ? 8388608 : 4194304);
        if (gapComposerH.p(i4 & 1, (4793491 & i4) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Unit unit = Unit.f71739a;
            boolean z3 = (458752 & i4) == 131072;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z3 || objX == composer$Companion$Empty$1) {
                objX = new TutorialBottomSheetContentKt$TutorialBottomSheetContent$1$1(function0, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            if (tutorialState instanceof TutorialState.Loading) {
                Modifier modifierH = SizeKt.h(n00.i(gapComposerH, 1130197991, "TutorialBottomSheetContent-jfnsLPA").o(SizeKt.f5052c), f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierH);
                ComposeUiNode.b0.getClass();
                Function0 function5 = ComposeUiNode.Companion.f9641b;
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function5);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                LVFlowerLoaderKt.a(null, null, false, gapComposerH, 0, 7);
                gapComposerH.Z(true);
                gapComposerH.Z(false);
                function4 = function2;
            } else {
                if (!(tutorialState instanceof TutorialState.Success)) {
                    throw d21.u(gapComposerH, -656275212, false);
                }
                gapComposerH.L(1130647801);
                TutorialUiModel tutorialUiModel = ((TutorialState.Success) tutorialState).f62200a;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("TutorialBottomSheetContent-jfnsLPA");
                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
                int iHashCode2 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
                Updater.c(gapComposerH, columnMeasurePolicyA, function7);
                Function2 function8 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function8);
                Integer numValueOf = Integer.valueOf(iHashCode2);
                Function2 function9 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf, function9);
                Function1 function10 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function10);
                Function2 function11 = ComposeUiNode.Companion.d;
                Modifier modifierM = PaddingKt.m(n00.e(gapComposerH, modifierC2, function11, "TutorialBottomSheetContent-jfnsLPA", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7);
                String strC = StringResources_androidKt.c(gapComposerH, R.string.vto_application_tips);
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48429j;
                long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                TextAlign.f10959b.getClass();
                int i5 = TextAlign.f10961e;
                int i6 = i4;
                TextKt.c(strC, modifierM, j2, 0L, null, 0L, null, new TextAlign(i5), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 130040);
                ScrollState scrollStateB = ScrollKt.b(gapComposerH);
                Modifier modifierK = PaddingKt.k(ScrollKt.d(SizeKt.d(new DTFunctionNameModifier("TutorialBottomSheetContent-jfnsLPA"), 1.0f), scrollStateB, false, 14), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, Alignment.Companion.o, gapComposerH, 48);
                int iHashCode3 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
                Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierK);
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
                Updater.c(gapComposerH, columnMeasurePolicyA2, function7);
                Updater.c(gapComposerH, persistentCompositionLocalMapU3, function8);
                cj.t(iHashCode3, gapComposerH, function9, gapComposerH, function10);
                Updater.c(gapComposerH, modifierC3, function11);
                function4 = function2;
                ScrollProgressTrackerKt.b(scrollStateB, function4, gapComposerH, (i6 >> 15) & 112);
                Modifier modifierM2 = PaddingKt.m(new DTFunctionNameModifier("TutorialBottomSheetContent-jfnsLPA"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 5);
                String str = tutorialUiModel.d;
                Locale locale = Locale.getDefault();
                locale.getClass();
                String upperCase = str.toUpperCase(locale);
                upperCase.getClass();
                TextKt.c(upperCase, modifierM2, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, new TextAlign(i5), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 130040);
                Modifier modifierM3 = PaddingKt.m(new DTFunctionNameModifier("TutorialBottomSheetContent-jfnsLPA"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7);
                Object objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new y41(3);
                    gapComposerH.q(objX2);
                }
                TextKt.c(tutorialUiModel.f62203c, SemanticsModifierKt.b(modifierM3, false, (Function1) objX2), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, new TextAlign(i5), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48425e, gapComposerH, 0, 0, 130040);
                GapComposer gapComposer = gapComposerH;
                String str2 = tutorialUiModel.f62205f;
                if (str2 == null) {
                    gapComposer.L(-368741615);
                    gapComposer.Z(false);
                } else {
                    TextKt.c(str2, PaddingKt.m(n00.i(gapComposer, -368741614, "TutorialBottomSheetContent-jfnsLPA"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).m, 7), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, new TextAlign(i5), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48427h, gapComposer, 0, 0, 130040);
                    gapComposer = gapComposer;
                    gapComposer.Z(false);
                }
                AssetImageUiModel assetImageUiModel = tutorialUiModel.f62204e;
                if (assetImageUiModel == null) {
                    gapComposer.L(-368248994);
                    gapComposer.Z(false);
                } else {
                    gapComposer.L(-368248993);
                    Modifier modifierC4 = GradientKt.c(PaddingKt.m(ModifierExtKt.d(AspectRatioKt.a(new DTFunctionNameModifier("TutorialBottomSheetContent-jfnsLPA"), 0.8f, false), LVAppDesignKitTheme.l(gapComposer).f48417f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48417f, 7));
                    String str3 = assetImageUiModel.f51778b;
                    str3.getClass();
                    ContentScale.f9447a.getClass();
                    GapComposer gapComposer2 = gapComposer;
                    ImageLoaderKt.b(modifierC4, str3, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposer2, KyberEngine.KyberPolyBytes, 2040);
                    gapComposer = gapComposer2;
                    gapComposer.Z(false);
                }
                gapComposer.L(-1258783790);
                for (TutorialSectionUiModel tutorialSectionUiModel : tutorialUiModel.g) {
                    TutorialSectionTypeUiModel tutorialSectionTypeUiModel = tutorialSectionUiModel.f62197b;
                    TutorialSectionDataUiModel tutorialSectionDataUiModel = tutorialSectionUiModel.f62198c;
                    int i7 = WhenMappings.f62119a[tutorialSectionTypeUiModel.ordinal()];
                    if (i7 == 1) {
                        Modifier modifierM4 = PaddingKt.m(ModifierExtKt.d(n00.i(gapComposer, 1644919685, "TutorialBottomSheetContent-jfnsLPA"), LVAppDesignKitTheme.l(gapComposer).f48417f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48417f, 7);
                        tutorialSectionDataUiModel.getClass();
                        TutorialSectionDataUiModel.AssetListSectionUiModel assetListSectionUiModel = (TutorialSectionDataUiModel.AssetListSectionUiModel) tutorialSectionDataUiModel;
                        i3 = i6;
                        GapComposer gapComposer3 = gapComposer;
                        TutorialAssetListKt.a(modifierM4, assetListSectionUiModel, z, z2, gapComposer3, i3 & 8064);
                        gapComposer = gapComposer3;
                        gapComposer.Z(false);
                    } else {
                        if (i7 != 2) {
                            throw d21.u(gapComposer, 1644917314, false);
                        }
                        Modifier modifierM5 = PaddingKt.m(o60.c(gapComposer, 1644940259, "TutorialBottomSheetContent-jfnsLPA", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48418h, 7);
                        tutorialSectionDataUiModel.getClass();
                        TutorialStepByStepKt.a(modifierM5, (TutorialSectionDataUiModel.StepsSectionUiModel) tutorialSectionDataUiModel, gapComposer, 0);
                        gapComposer.Z(false);
                        i3 = i6;
                    }
                    i6 = i3;
                }
                int i8 = i6;
                GapComposer gapComposer4 = gapComposer;
                TutorialRecommendedKt.b(PaddingKt.m(ModifierExtKt.d(o60.d(gapComposer, false, "TutorialBottomSheetContent-jfnsLPA", 1.0f), LVAppDesignKitTheme.l(gapComposer).f48417f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48418h, 7), tutorialUiModel.f62207i, tutorialUiModel.f62206h, function1, function3, gapComposer4, ((i8 >> 3) & 7168) | ((i8 >> 9) & 57344));
                gapComposerH = gapComposer4;
                pq0.x(gapComposerH, true, true, false);
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            function4 = function2;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final Function1 function12 = function4;
            recomposeScopeImplB0.d = new Function2(f2, z, z2, function1, function0, function12, function3, i2) { // from class: a51

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ float f416c;
                public final /* synthetic */ boolean d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ boolean f417e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Function1 f418f;
                public final /* synthetic */ Function0 g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Function1 f419h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ Function0 f420i;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    TutorialBottomSheetContentKt.a(this.f415b, this.f416c, this.d, this.f417e, this.f418f, this.g, this.f419h, this.f420i, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}

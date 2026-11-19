package com.vuitton.android.presentation.screen.spotlight.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import com.vuitton.android.presentation.screen.spotlight.SpotlightViewModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightTrackingUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightViewState;
import defpackage.kj0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SpotlightComposableKt {
    public static final void a(SpotlightViewModel spotlightViewModel, Function0 function0, Function1 function1, Function2 function2, Function1 function3, Composer composer, int i2) {
        GapComposer gapComposer;
        int i3;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Object spotlightComposableKt$SpotlightComposable$8$1;
        final SpotlightViewModel spotlightViewModel2;
        spotlightViewModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(990950115);
        int i4 = i2 | (gapComposerH.K(spotlightViewModel) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function3) ? 16384 : 8192);
        if (gapComposerH.p(i4 & 1, (i4 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            SpotlightViewState spotlightViewState = (SpotlightViewState) SnapshotStateKt.b(spotlightViewModel.getB(), gapComposerH).getF10755b();
            int i5 = i4 & 14;
            boolean z = i5 == 4;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (z || objX == composer$Companion$Empty$2) {
                i3 = i5;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                SpotlightComposableKt$SpotlightComposable$1$1 spotlightComposableKt$SpotlightComposable$1$1 = new SpotlightComposableKt$SpotlightComposable$1$1(1, spotlightViewModel, SpotlightViewModel.class, "onSpotlightPageChanged", "onSpotlightPageChanged(I)V", 0);
                gapComposerH.q(spotlightComposableKt$SpotlightComposable$1$1);
                objX = spotlightComposableKt$SpotlightComposable$1$1;
            } else {
                i3 = i5;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
            }
            KFunction kFunction = (KFunction) objX;
            boolean z2 = i3 == 4;
            Object objX2 = gapComposerH.x();
            if (z2 || objX2 == composer$Companion$Empty$1) {
                SpotlightComposableKt$SpotlightComposable$2$1 spotlightComposableKt$SpotlightComposable$2$1 = new SpotlightComposableKt$SpotlightComposable$2$1(2, spotlightViewModel, SpotlightViewModel.class, "onSkuPageChanged", "onSkuPageChanged(II)V", 0);
                gapComposerH.q(spotlightComposableKt$SpotlightComposable$2$1);
                objX2 = spotlightComposableKt$SpotlightComposable$2$1;
            }
            KFunction kFunction2 = (KFunction) objX2;
            boolean z3 = i3 == 4;
            Object objX3 = gapComposerH.x();
            if (z3 || objX3 == composer$Companion$Empty$1) {
                SpotlightComposableKt$SpotlightComposable$3$1 spotlightComposableKt$SpotlightComposable$3$1 = new SpotlightComposableKt$SpotlightComposable$3$1(2, spotlightViewModel, SpotlightViewModel.class, "onHotspotClick", "onHotspotClick(II)V", 0);
                gapComposerH.q(spotlightComposableKt$SpotlightComposable$3$1);
                objX3 = spotlightComposableKt$SpotlightComposable$3$1;
            }
            KFunction kFunction3 = (KFunction) objX3;
            boolean z4 = i3 == 4;
            Object objX4 = gapComposerH.x();
            if (z4 || objX4 == composer$Companion$Empty$1) {
                SpotlightComposableKt$SpotlightComposable$4$1 spotlightComposableKt$SpotlightComposable$4$1 = new SpotlightComposableKt$SpotlightComposable$4$1(0, spotlightViewModel, SpotlightViewModel.class, "onIntroFinished", "onIntroFinished()V", 0);
                gapComposerH.q(spotlightComposableKt$SpotlightComposable$4$1);
                objX4 = spotlightComposableKt$SpotlightComposable$4$1;
            }
            KFunction kFunction4 = (KFunction) objX4;
            boolean z5 = i3 == 4;
            Object objX5 = gapComposerH.x();
            if (z5 || objX5 == composer$Companion$Empty$1) {
                SpotlightComposableKt$SpotlightComposable$5$1 spotlightComposableKt$SpotlightComposable$5$1 = new SpotlightComposableKt$SpotlightComposable$5$1(0, spotlightViewModel, SpotlightViewModel.class, "onOutroFinished", "onOutroFinished()V", 0);
                gapComposerH.q(spotlightComposableKt$SpotlightComposable$5$1);
                objX5 = spotlightComposableKt$SpotlightComposable$5$1;
            }
            KFunction kFunction5 = (KFunction) objX5;
            boolean z6 = i3 == 4;
            Object objX6 = gapComposerH.x();
            if (z6 || objX6 == composer$Companion$Empty$1) {
                SpotlightComposableKt$SpotlightComposable$6$1 spotlightComposableKt$SpotlightComposable$6$1 = new SpotlightComposableKt$SpotlightComposable$6$1(0, spotlightViewModel, SpotlightViewModel.class, "onOnboardingFinished", "onOnboardingFinished()V", 0);
                gapComposerH.q(spotlightComposableKt$SpotlightComposable$6$1);
                objX6 = spotlightComposableKt$SpotlightComposable$6$1;
            }
            KFunction kFunction6 = (KFunction) objX6;
            boolean z7 = i3 == 4;
            Object objX7 = gapComposerH.x();
            if (z7 || objX7 == composer$Companion$Empty$1) {
                SpotlightComposableKt$SpotlightComposable$7$1 spotlightComposableKt$SpotlightComposable$7$1 = new SpotlightComposableKt$SpotlightComposable$7$1(1, spotlightViewModel, SpotlightViewModel.class, "onSpotlightBackPressed", "onSpotlightBackPressed(I)V", 0);
                gapComposerH.q(spotlightComposableKt$SpotlightComposable$7$1);
                objX7 = spotlightComposableKt$SpotlightComposable$7$1;
            }
            KFunction kFunction7 = (KFunction) objX7;
            boolean z8 = i3 == 4;
            Object objX8 = gapComposerH.x();
            if (z8 || objX8 == composer$Companion$Empty$1) {
                spotlightComposableKt$SpotlightComposable$8$1 = new SpotlightComposableKt$SpotlightComposable$8$1(1, spotlightViewModel, SpotlightViewModel.class, "onHotspotAnimationOneByOneFinished", "onHotspotAnimationOneByOneFinished(I)V", 0);
                spotlightViewModel2 = spotlightViewModel;
                gapComposerH.q(spotlightComposableKt$SpotlightComposable$8$1);
            } else {
                spotlightComposableKt$SpotlightComposable$8$1 = objX8;
                spotlightViewModel2 = spotlightViewModel;
            }
            KFunction kFunction8 = (KFunction) spotlightComposableKt$SpotlightComposable$8$1;
            Function1 function4 = (Function1) kFunction;
            Function2 function5 = (Function2) kFunction2;
            Function2 function6 = (Function2) kFunction3;
            Function0 function7 = (Function0) kFunction4;
            Function0 function8 = (Function0) kFunction5;
            Function0 function9 = (Function0) kFunction6;
            boolean z9 = i3 == 4;
            Object objX9 = gapComposerH.x();
            if (z9 || objX9 == composer$Companion$Empty$1) {
                final int i6 = 0;
                objX9 = new Function0() { // from class: w01
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        switch (i6) {
                            case 0:
                                spotlightViewModel2.X9(new SpotlightTrackingUiModel.OnLookChangedEvent(false));
                                break;
                            default:
                                spotlightViewModel2.X9(new SpotlightTrackingUiModel.OnLookChangedEvent(true));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX9);
            }
            Function0 function10 = (Function0) objX9;
            boolean z10 = i3 == 4;
            Object objX10 = gapComposerH.x();
            if (z10 || objX10 == composer$Companion$Empty$1) {
                final int i7 = 1;
                objX10 = new Function0() { // from class: w01
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        switch (i7) {
                            case 0:
                                spotlightViewModel2.X9(new SpotlightTrackingUiModel.OnLookChangedEvent(false));
                                break;
                            default:
                                spotlightViewModel2.X9(new SpotlightTrackingUiModel.OnLookChangedEvent(true));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX10);
            }
            gapComposer = gapComposerH;
            SpotlightScreenKt.b(spotlightViewState, function4, function5, function0, function6, function7, function8, function1, function9, function10, (Function0) objX10, function2, (Function1) kFunction8, (Function1) kFunction7, function3, gapComposer, ((i4 << 6) & 7168) | ((i4 << 15) & 29360128), ((i4 >> 6) & 112) | (i4 & 57344));
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kj0(spotlightViewModel, function0, function1, function2, function3, i2);
        }
    }
}

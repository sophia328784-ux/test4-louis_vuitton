package com.vuitton.android.presentation.screen.spotlight.components;

import android.os.Build;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.layout.BoxWithConstraintsKt;
import androidx.compose.foundation.layout.BoxWithConstraintsScope;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.BlurKt;
import androidx.compose.ui.draw.BlurredEdgeTreatment;
import androidx.compose.ui.draw.ScaleKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.loading.LvLoadingKt;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.screen.spotlight.components.ComposableSingletons$SpotlightScreenKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightBottomStepperKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightListKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightScreenKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightSkuPagerKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightVideoScreenKt;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightCtaUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightHotspotUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightSlideUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightViewState;
import defpackage.gl;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004¨\u0006\f²\u0006\u000e\u0010\u0001\u001a\u0004\u0018\u00010\u00008\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0003\u001a\u0004\u0018\u00010\u00028\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0007\u001a\u00020\u00068\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\t\u001a\u00020\b8\nX\u008a\u0084\u0002²\u0006\f\u0010\n\u001a\u00020\b8\nX\u008a\u0084\u0002²\u0006\f\u0010\u000b\u001a\u00020\u00068\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;", "currentSpotlight", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;", "currentHotspot", "", "removeExoplayer", "", "speedFactor", "Landroidx/compose/ui/unit/Dp;", "bottomPadding", "topPadding", "scaleVideoValue", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SpotlightScreenKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f64602a;

    static {
        Dp.Companion companion = Dp.f11004c;
        f64602a = 12.0f;
    }

    public static final void a(Modifier modifier, final PagerState pagerState, final PagerState pagerState2, final SpotlightViewState spotlightViewState, final SpotlightSlideUiModel spotlightSlideUiModel, final SpotlightHotspotUiModel spotlightHotspotUiModel, final boolean z, final Function1 function1, final Function0 function0, final Function1 function2, final Function0 function3, final Function0 function4, final Function0 function5, final Function1 function6, final Function1 function7, final Function1 function8, final Function1 function9, final Function0 function10, final Function1 function11, Composer composer, final int i2, final int i3) {
        int i4;
        PagerState pagerState3;
        PagerState pagerState4;
        SpotlightSlideUiModel spotlightSlideUiModel2;
        int i5;
        Modifier modifier2;
        GapComposer gapComposer;
        Modifier dTFunctionNameModifier;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ContentScreen");
        }
        GapComposer gapComposerH = composer.h(358913876);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            pagerState3 = pagerState;
            i4 |= gapComposerH.K(pagerState3) ? 32 : 16;
        } else {
            pagerState3 = pagerState;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            pagerState4 = pagerState2;
            i4 |= gapComposerH.K(pagerState4) ? 256 : 128;
        } else {
            pagerState4 = pagerState2;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.y(spotlightViewState) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            spotlightSlideUiModel2 = spotlightSlideUiModel;
            i4 |= gapComposerH.y(spotlightSlideUiModel2) ? 16384 : 8192;
        } else {
            spotlightSlideUiModel2 = spotlightSlideUiModel;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i4 |= gapComposerH.y(spotlightHotspotUiModel) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i4 |= gapComposerH.b(z) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i4 |= gapComposerH.y(function1) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i4 |= gapComposerH.y(function0) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i4 |= gapComposerH.y(function2) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i3 & 6) == 0) {
            i5 = i3 | (gapComposerH.y(function3) ? 4 : 2);
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.y(function4) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.y(function5) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i5 |= gapComposerH.y(function6) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i5 |= gapComposerH.y(function7) ? 16384 : 8192;
        }
        if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
            i5 |= gapComposerH.y(function8) ? 131072 : 65536;
        }
        if ((i3 & 1572864) == 0) {
            i5 |= gapComposerH.y(function9) ? 1048576 : 524288;
        }
        if ((i3 & 12582912) == 0) {
            i5 |= gapComposerH.y(function10) ? 8388608 : 4194304;
        }
        if ((i3 & 100663296) == 0) {
            i5 |= gapComposerH.y(function11) ? 67108864 : 33554432;
        }
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && (i5 & 38347923) == 38347922) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (!spotlightViewState.f64683f || Build.VERSION.SDK_INT < 31) {
                dTFunctionNameModifier = new DTFunctionNameModifier("ContentScreen");
            } else {
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("ContentScreen");
                BlurredEdgeTreatment.f8702a.getClass();
                RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = BlurredEdgeTreatment.f8703b;
                float f2 = f64602a;
                dTFunctionNameModifier = BlurKt.a(dTFunctionNameModifier2, f2, f2, rectangleShapeKt$RectangleShape$1);
            }
            modifier2 = modifierE;
            final SpotlightSlideUiModel spotlightSlideUiModel3 = spotlightSlideUiModel2;
            final PagerState pagerState5 = pagerState3;
            final PagerState pagerState6 = pagerState4;
            BoxWithConstraintsKt.a(modifierE.o(dTFunctionNameModifier), null, false, ComposableLambdaKt.b(2061318698, new Function3() { // from class: b11
                /* JADX WARN: Code duplicated, block: B:107:0x0334  */
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    float f3;
                    SpotlightSlideUiModel spotlightSlideUiModel4;
                    String str;
                    Composer$Companion$Empty$1 composer$Companion$Empty$1;
                    boolean z2;
                    AssetVideoUiModel assetVideoUiModel;
                    AssetUiModel assetUiModel;
                    AssetVideoUiModel assetVideoUiModel2;
                    AssetVideoUiModel assetVideoUiModel3;
                    BoxWithConstraintsScope boxWithConstraintsScope = (BoxWithConstraintsScope) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    float f4 = SpotlightScreenKt.f64602a;
                    boxWithConstraintsScope.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(boxWithConstraintsScope) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        float d = WindowInsetsKt.e(WindowInsets_androidKt.a(composer2), composer2).getD();
                        Object objX = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        if (objX == composer$Companion$Empty$2) {
                            objX = SnapshotStateKt.g(Float.valueOf(Build.VERSION.SDK_INT < 31 ? 1.5f : 1.0f));
                            composer2.q(objX);
                        }
                        MutableState mutableState = (MutableState) objX;
                        SpotlightViewState spotlightViewState2 = spotlightViewState;
                        SpotlightContainerStateUiModel spotlightContainerStateUiModel = spotlightViewState2.d;
                        boolean z3 = spotlightContainerStateUiModel.f64633b;
                        if (z3) {
                            float f5 = SpotlightBottomStepperKt.f64585a + d;
                            Dp.Companion companion = Dp.f11004c;
                            f3 = f5 - SpotlightBottomStepperKt.f64586b;
                        } else {
                            Dp.Companion companion2 = Dp.f11004c;
                            f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        }
                        TweenSpec tweenSpecC = AnimationSpecKt.c((int) (((Number) mutableState.getF10755b()).floatValue() * 900.0f), 0, null, 6);
                        Object objX2 = composer2.x();
                        if (objX2 == composer$Companion$Empty$2) {
                            objX2 = new ku0(1, mutableState);
                            composer2.q(objX2);
                        }
                        State stateA = AnimateAsStateKt.a(f3, tweenSpecC, null, (Function1) objX2, composer2, 3072, 4);
                        State stateA2 = AnimateAsStateKt.a((!z3 && Build.VERSION.SDK_INT >= 31) ? (boxWithConstraintsScope.i() * 0.20000005f) / 4.0f : Call.Parameters.DEFAULT_CAMERA_ZOOM, AnimationSpecKt.c(900, 0, null, 6), null, null, composer2, 48, 12);
                        Composer composer3 = composer2;
                        State stateB = AnimateAsStateKt.b((!z3 && Build.VERSION.SDK_INT >= 31) ? 1.2f : 1.0f, AnimationSpecKt.c(900, 0, null, 6), null, composer3, 48, 28);
                        boolean z4 = z;
                        SpotlightSlideUiModel spotlightSlideUiModel5 = spotlightSlideUiModel3;
                        if (z4) {
                            spotlightSlideUiModel4 = spotlightSlideUiModel5;
                            str = "ContentScreen$lambda$0";
                            composer$Companion$Empty$1 = composer$Companion$Empty$2;
                            composer3.L(-693817288);
                            composer3.F();
                        } else {
                            Modifier modifierO = pq0.j(-694451548, composer3, "ContentScreen$lambda$0").o(SizeKt.f5052c);
                            float fFloatValue = ((Number) stateB.getF10755b()).floatValue();
                            Modifier modifierM = PaddingKt.m(PaddingKt.m(ScaleKt.a(modifierO, fFloatValue, fFloatValue), Call.Parameters.DEFAULT_CAMERA_ZOOM, ((Dp) stateA2.getF10755b()).f11006b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, ((Dp) stateA.getF10755b()).f11006b, 7);
                            String str2 = (spotlightSlideUiModel5 == null || (assetVideoUiModel3 = spotlightSlideUiModel5.f64653e) == null) ? null : assetVideoUiModel3.f51783c;
                            if (str2 == null) {
                                str2 = "";
                            }
                            SpotlightHotspotUiModel spotlightHotspotUiModel2 = spotlightHotspotUiModel;
                            String str3 = (spotlightHotspotUiModel2 == null || (assetUiModel = spotlightHotspotUiModel2.f64645c) == null || (assetVideoUiModel2 = assetUiModel.f51781c) == null) ? null : assetVideoUiModel2.f51783c;
                            if (str3 == null) {
                                str3 = "";
                            }
                            String str4 = (spotlightSlideUiModel5 == null || (assetVideoUiModel = spotlightSlideUiModel5.f64654f) == null) ? null : assetVideoUiModel.f51783c;
                            if (str4 == null) {
                                str4 = "";
                            }
                            composer$Companion$Empty$1 = composer$Companion$Empty$2;
                            spotlightSlideUiModel4 = spotlightSlideUiModel5;
                            str = "ContentScreen$lambda$0";
                            SpotlightVideoScreenKt.a(modifierM, str2, str3, str4, spotlightViewState2.d, function3, function4, composer3, 0);
                            composer3 = composer3;
                            composer3.F();
                        }
                        DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier(str);
                        FillElement fillElement = SizeKt.f5052c;
                        Modifier modifierO2 = dTFunctionNameModifier3.o(fillElement);
                        float fFloatValue2 = ((Number) stateB.getF10755b()).floatValue();
                        Modifier modifierM2 = PaddingKt.m(PaddingKt.m(ScaleKt.a(modifierO2, fFloatValue2, fFloatValue2), Call.Parameters.DEFAULT_CAMERA_ZOOM, ((Dp) stateA2.getF10755b()).f11006b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, ((Dp) stateA.getF10755b()).f11006b, 7);
                        List list = spotlightViewState2.f64679a;
                        SpotlightContainerStateUiModel spotlightContainerStateUiModel2 = spotlightViewState2.d;
                        boolean z5 = !spotlightViewState2.f64680b && spotlightContainerStateUiModel2.f64640k;
                        Set set = spotlightViewState2.f64682e;
                        Function1 function12 = function9;
                        boolean zK = composer3.K(function12);
                        PagerState pagerState7 = pagerState5;
                        boolean zK2 = zK | composer3.K(pagerState7);
                        Object objX3 = composer3.x();
                        if (zK2 || objX3 == composer$Companion$Empty$1) {
                            objX3 = new t2(function12, pagerState7, 1);
                            composer3.q(objX3);
                        }
                        Composer composer4 = composer3;
                        SpotlightListKt.a(modifierM2, list, function2, spotlightContainerStateUiModel2, z5, pagerState7, set, (Function0) objX3, composer4, 0);
                        DTFunctionNameModifier dTFunctionNameModifier4 = new DTFunctionNameModifier(str);
                        Alignment.f8582a.getClass();
                        Modifier modifierM3 = PaddingKt.m(boxWithConstraintsScope.g(dTFunctionNameModifier4, Alignment.Companion.f8590j), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer4).f48417f, SpotlightBottomStepperKt.f64585a + d + LVAppDesignKitTheme.l(composer4).f48417f, 3);
                        boolean z6 = (spotlightSlideUiModel4 == null || spotlightSlideUiModel4.f64657j || spotlightViewState2.g.contains(spotlightSlideUiModel4.f64650a)) ? false : true;
                        EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                        ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                        ComposableSingletons$SpotlightScreenKt.f64582a.getClass();
                        AnimatedVisibilityKt.e(z6, modifierM3, enterTransitionF, exitTransitionH, null, ComposableSingletons$SpotlightScreenKt.f64583b, composer4, 200064, 16);
                        DTFunctionNameModifier dTFunctionNameModifier5 = new DTFunctionNameModifier(str);
                        BiasAlignment biasAlignment = Alignment.Companion.f8589i;
                        Modifier modifierD = SizeKt.d(boxWithConstraintsScope.g(dTFunctionNameModifier5, biasAlignment), 1.0f);
                        boolean z7 = spotlightContainerStateUiModel.f64633b;
                        int size = spotlightViewState2.f64679a.size();
                        SpotlightCtaUiModel spotlightCtaUiModel = spotlightSlideUiModel4 != null ? spotlightSlideUiModel4.f64656i : null;
                        int iK = pagerState7.k();
                        String str5 = spotlightSlideUiModel4 != null ? spotlightSlideUiModel4.f64651b : null;
                        String str6 = str;
                        SpotlightBottomStepperKt.b(modifierD, z7, function1, size, iK, str5 != null ? str5 : "", spotlightCtaUiModel, function6, function7, composer4, 0);
                        AnimatedVisibilityKt.e(spotlightContainerStateUiModel.f64639j, pq0.i(str6, fillElement), EnterExitTransitionKt.f(AnimationSpecKt.c(500, 0, null, 6), Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), EnterExitTransitionKt.h(AnimationSpecKt.c(500, 0, null, 6), 2), null, ComposableSingletons$SpotlightScreenKt.f64584c, composer4, 196656, 16);
                        Modifier modifierI = pq0.i(str6, fillElement);
                        if (spotlightContainerStateUiModel.f64632a) {
                            if (spotlightSlideUiModel4 != null ? !spotlightViewState2.f64684h.contains(spotlightSlideUiModel4.f64650a) : false) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                        } else {
                            z2 = false;
                        }
                        AnimatedVisibilityKt.e(z2, modifierI, EnterExitTransitionKt.f(AnimationSpecKt.c(500, 0, null, 6), Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), EnterExitTransitionKt.h(AnimationSpecKt.c(500, 500, null, 4), 2), null, ComposableSingletons$SpotlightScreenKt.d, composer4, 196656, 16);
                        Modifier modifierB = WindowInsetsPadding_androidKt.b(PaddingKt.m(SizeKt.d(boxWithConstraintsScope.g(new DTFunctionNameModifier(str6), biasAlignment), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.d(composer4).q, 7));
                        List list2 = spotlightSlideUiModel4 != null ? spotlightSlideUiModel4.g : null;
                        if (list2 == null) {
                            list2 = EmptyList.f71768b;
                        }
                        SpotlightSkuPagerKt.a(modifierB, pagerState6, list2, spotlightContainerStateUiModel.f64632a, spotlightViewState2.f64685i, function8, function11, composer4, 0);
                        DTFunctionNameModifier dTFunctionNameModifier6 = new DTFunctionNameModifier(str6);
                        BiasAlignment biasAlignment2 = Alignment.Companion.f8585c;
                        AnimatedVisibilityKt.e(spotlightContainerStateUiModel.f64634c, boxWithConstraintsScope.g(dTFunctionNameModifier6, biasAlignment2), EnterExitTransitionKt.f(AnimationSpecKt.c(450, (spotlightSlideUiModel4 == null || !spotlightSlideUiModel4.f64657j) ? 1400 : 520, null, 4), Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), EnterExitTransitionKt.h(AnimationSpecKt.c(450, 0, null, 6), 2), null, ComposableLambdaKt.b(1722202875, new kv0(function0, 3), composer4), composer4, 199680, 16);
                        AnimatedVisibilityKt.e(spotlightContainerStateUiModel.d, boxWithConstraintsScope.g(new DTFunctionNameModifier(str6), biasAlignment2), EnterExitTransitionKt.f(AnimationSpecKt.c(450, spotlightViewState2.f64683f ? 0 : 1400, null, 4), Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), EnterExitTransitionKt.h(AnimationSpecKt.c(450, 0, null, 6), 2), null, ComposableLambdaKt.b(366702460, new kv0(function10, 4), composer4), composer4, 199680, 16);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 3072, 6);
            AnimatedVisibilityKt.e(spotlightViewState.f64683f, null, EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3), EnterExitTransitionKt.h(null, 3), null, ComposableLambdaKt.b(-202628564, new gl(function10, function5, 5), gapComposerH), gapComposerH, 200064, 18);
            gapComposer = gapComposerH;
            LvLoadingKt.b(new DTFunctionNameModifier("ContentScreen").o(SizeKt.f5052c), spotlightViewState.f64680b || spotlightViewState.f64681c, null, spotlightViewState.f64681c, 0L, function10, gapComposer, (458752 & (i5 >> 6)) | 6, 20);
        } else {
            modifier2 = modifierE;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier3 = modifier2;
            recomposeScopeImplB0.d = new Function2() { // from class: c11
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    SpotlightScreenKt.a(modifier3, pagerState, pagerState2, spotlightViewState, spotlightSlideUiModel, spotlightHotspotUiModel, z, function1, function0, function2, function3, function4, function5, function6, function7, function8, function9, function10, function11, (Composer) obj, iA, iA2);
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Failed to calculate best type for var: r0v49 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v49 ??, new type: boolean
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r0v59 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v59 ??, new type: boolean
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r12v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r12v0 ??, new type: androidx.compose.runtime.GapComposer
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /* JADX WARN: Failed to calculate best type for var: r19v10 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r19v10 ??, new type: androidx.compose.runtime.GapComposer
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r19v3 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r19v3 ??, new type: androidx.compose.runtime.GapComposer
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /* JADX WARN: Failed to calculate best type for var: r19v4 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r19v4 ??, new type: androidx.compose.runtime.GapComposer
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /* JADX WARN: Failed to calculate best type for var: r3v20 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r3v20 ??, new type: boolean
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r3v26 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r3v26 ??, new type: boolean
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r4v15 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r4v15 ??, new type: boolean
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r4v16 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r4v16 ??, new type: boolean
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r31v0 ??, new type: boolean
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:186)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:245)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        Caused by: java.lang.NullPointerException
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 5 more
        */
    public static final void b(com.vuitton.android.presentation.screen.spotlight.models.SpotlightViewState r34, kotlin.jvm.functions.Function1 r35, kotlin.jvm.functions.Function2 r36, kotlin.jvm.functions.Function0 r37, kotlin.jvm.functions.Function2 r38, kotlin.jvm.functions.Function0 r39, kotlin.jvm.functions.Function0 r40, kotlin.jvm.functions.Function1 r41, kotlin.jvm.functions.Function0 r42, kotlin.jvm.functions.Function0 r43, kotlin.jvm.functions.Function0 r44, kotlin.jvm.functions.Function2 r45, kotlin.jvm.functions.Function1 r46, kotlin.jvm.functions.Function1 r47, kotlin.jvm.functions.Function1 r48, androidx.compose.runtime.Composer r49, int r50, int r51) {
        /*
            Method dump skipped, instruction units count: 1395
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.spotlight.components.SpotlightScreenKt.b(com.vuitton.android.presentation.screen.spotlight.models.SpotlightViewState, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int):void");
    }
}

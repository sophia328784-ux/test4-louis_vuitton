package com.vuitton.android.presentation.screen.storemode.components;

import android.content.Context;
import androidx.activity.compose.BackHandlerKt;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Dp;
import androidx.media3.exoplayer.ExoPlayer;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.AlphaKt;
import com.vuitton.android.designkit.ui.theme.GradientKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.loading.LoadingMode;
import com.vuitton.android.presentation.loading.LvLoadingKt;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.components.StoreModeButtonKt;
import com.vuitton.android.presentation.screen.storemode.components.StoreModeWelcomeComposableKt;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeUiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.common.AssetVideo;
import defpackage.gi0;
import defpackage.kj0;
import defpackage.kn0;
import defpackage.m11;
import defpackage.n00;
import defpackage.p01;
import defpackage.sq0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KFunction;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005¨\u0006\t²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002²\u0006\f\u0010\u0006\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0007\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\b\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;", "storeModeViewState", "", "isButtonClicked", "Landroidx/compose/ui/unit/Dp;", "buttonSizeAnimation", "shouldDisplayIcon", "isButtonLoading", "displayAnimationForExit", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StoreModeWelcomeComposableKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f64839a;

    static {
        Dp.Companion companion = Dp.f11004c;
        f64839a = 296.0f;
    }

    public static final void a(StoreModeViewModel storeModeViewModel, Function0 function0, Function0 function1, Composer composer, int i2) {
        GapComposer gapComposer;
        Object storeModeWelcomeComposableKt$StoreModeWelcomeComposable$2$1;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        storeModeViewModel.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-991203487);
        int i3 = i2 | (gapComposerH.K(storeModeViewModel) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(storeModeViewModel.getB(), gapComposerH);
            Unit unit = Unit.f71739a;
            int i4 = i3 & 14;
            boolean z = i4 == 4;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (z || objX == composer$Companion$Empty$2) {
                objX = new StoreModeWelcomeComposableKt$StoreModeWelcomeComposable$1$1(storeModeViewModel, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            if (((StoreModeViewState) mutableStateB.getF10755b()).f65083c || ((StoreModeViewState) mutableStateB.getF10755b()).f65087i == null) {
                LvLoadingKt.b(n00.i(gapComposerH, -1042271827, "StoreModeWelcomeComposable").o(SizeKt.f5052c), true, LoadingMode.DarkMode, false, 0L, function0, gapComposerH, ((i3 << 12) & ImageMetadata.JPEG_GPS_COORDINATES) | 438, 24);
                gapComposer = gapComposerH;
                gapComposer.Z(false);
            } else if (Intrinsics.c(((StoreModeViewState) mutableStateB.getF10755b()).f65087i, Boolean.TRUE)) {
                gapComposerH.L(-1041989634);
                StoreModeViewState storeModeViewState = (StoreModeViewState) mutableStateB.getF10755b();
                boolean z2 = i4 == 4;
                Object objX2 = gapComposerH.x();
                if (z2 || objX2 == composer$Companion$Empty$2) {
                    composer$Companion$Empty$1 = composer$Companion$Empty$2;
                    storeModeWelcomeComposableKt$StoreModeWelcomeComposable$2$1 = new StoreModeWelcomeComposableKt$StoreModeWelcomeComposable$2$1(0, storeModeViewModel, StoreModeViewModel.class, "retryFetchingStoreModeInfo", "retryFetchingStoreModeInfo()V", 0);
                    gapComposerH.q(storeModeWelcomeComposableKt$StoreModeWelcomeComposable$2$1);
                } else {
                    storeModeWelcomeComposableKt$StoreModeWelcomeComposable$2$1 = objX2;
                    composer$Companion$Empty$1 = composer$Companion$Empty$2;
                }
                Function0 function2 = (Function0) ((KFunction) storeModeWelcomeComposableKt$StoreModeWelcomeComposable$2$1);
                boolean zK = gapComposerH.K(mutableStateB) | (i4 == 4);
                Object objX3 = gapComposerH.x();
                if (zK || objX3 == composer$Companion$Empty$1) {
                    objX3 = new m11(mutableStateB, storeModeViewModel);
                    gapComposerH.q(objX3);
                }
                gapComposer = gapComposerH;
                b(storeModeViewState, function0, function1, function2, (Function0) objX3, gapComposer, i3 & 1008);
                gapComposer.Z(false);
            } else {
                gapComposer = gapComposerH;
                gapComposer.L(-1041453768);
                StoreModeExpiredComposableKt.a(function0, gapComposer, (i3 >> 3) & 14);
                gapComposer.Z(false);
            }
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new gi0(i2, 29, storeModeViewModel, function0, function1);
        }
    }

    public static final void b(final StoreModeViewState storeModeViewState, final Function0 function0, Function0 function1, Function0 function2, final Function0 function3, Composer composer, int i2) {
        float f2;
        storeModeViewState.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-488640704);
        int i3 = 4;
        int i4 = i2 | (gapComposerH.y(storeModeViewState) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function3) ? 16384 : 8192);
        if (gapComposerH.p(i4 & 1, (i4 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            float f3 = LVAppDesignKitTheme.d(gapComposerH).y;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            final MutableState mutableState = (MutableState) objX;
            final State stateA = AnimateAsStateKt.a(((Boolean) mutableState.getF10755b()).booleanValue() ? f3 : f64839a, AnimationSpecKt.c(1000, 0, null, 6), "StoreMode button animation", null, gapComposerH, 432, 8);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.e(new p01(mutableState, stateA, i3));
                gapComposerH.q(objX2);
            }
            final State state = (State) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX3);
            }
            final MutableState mutableState2 = (MutableState) objX3;
            Boolean boolValueOf = Boolean.valueOf(storeModeViewState.d);
            Boolean boolValueOf2 = Boolean.valueOf(storeModeViewState.f65082b);
            boolean zY = gapComposerH.y(storeModeViewState);
            Object objX4 = gapComposerH.x();
            if (zY || objX4 == composer$Companion$Empty$1) {
                objX4 = new StoreModeWelcomeComposableKt$StoreModeWelcomeScreen$1$1(storeModeViewState, mutableState, mutableState2, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.g(boolValueOf, boolValueOf2, (Function2) objX4, gapComposerH);
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX5);
            }
            final MutableState mutableState3 = (MutableState) objX5;
            Dp dp = new Dp(((Dp) stateA.getF10755b()).f11006b);
            boolean zK = ((i4 & 7168) == 2048) | gapComposerH.K(stateA) | gapComposerH.c(f3) | gapComposerH.y(storeModeViewState);
            Object objX6 = gapComposerH.x();
            if (zK || objX6 == composer$Companion$Empty$1) {
                f2 = f3;
                StoreModeWelcomeComposableKt$StoreModeWelcomeScreen$2$1 storeModeWelcomeComposableKt$StoreModeWelcomeScreen$2$1 = new StoreModeWelcomeComposableKt$StoreModeWelcomeScreen$2$1(f2, storeModeViewState, function2, stateA, mutableState3, null);
                mutableState3 = mutableState3;
                gapComposerH.q(storeModeWelcomeComposableKt$StoreModeWelcomeScreen$2$1);
                objX6 = storeModeWelcomeComposableKt$StoreModeWelcomeScreen$2$1;
            } else {
                f2 = f3;
            }
            EffectsKt.e(gapComposerH, dp, (Function2) objX6);
            boolean z = (r21 & 112) == 32;
            Object objX7 = gapComposerH.x();
            if (z || objX7 == composer$Companion$Empty$1) {
                objX7 = new sq0(function0, 25);
                gapComposerH.q(objX7);
            }
            BackHandlerKt.a(false, (Function0) objX7, gapComposerH, 0, 1);
            Boolean bool = (Boolean) mutableState3.getF10755b();
            bool.getClass();
            boolean z2 = (i4 & 896) == 256;
            Object objX8 = gapComposerH.x();
            if (z2 || objX8 == composer$Companion$Empty$1) {
                objX8 = new StoreModeWelcomeComposableKt$StoreModeWelcomeScreen$4$1(mutableState3, null, function1);
                gapComposerH.q(objX8);
            }
            EffectsKt.e(gapComposerH, bool, (Function2) objX8);
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-1872523012, new kn0(function0, 26), gapComposerH);
            Color.f8866b.getClass();
            long j2 = Color.f8870h;
            final float f4 = f2;
            ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-362285551, new Function3() { // from class: s11
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    final PaddingValues paddingValues = (PaddingValues) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    float f5 = StoreModeWelcomeComposableKt.f64839a;
                    paddingValues.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        final StoreModeViewState storeModeViewState2 = storeModeViewState;
                        boolean z3 = storeModeViewState2.f65083c;
                        MutableState mutableState4 = mutableState3;
                        boolean z4 = (z3 || ((Boolean) mutableState4.getF10755b()).booleanValue()) ? false : true;
                        EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                        ExitTransition exitTransitionH = EnterExitTransitionKt.h(AnimationSpecKt.c(500, 0, null, 6), 2);
                        final Context context2 = context;
                        final float f6 = f4;
                        final Function0 function4 = function3;
                        final State state2 = stateA;
                        final MutableState mutableState5 = mutableState2;
                        final State state3 = state;
                        final MutableState mutableState6 = mutableState;
                        AnimatedVisibilityKt.e(z4, null, enterTransitionF, exitTransitionH, null, ComposableLambdaKt.b(724442857, new Function3() { // from class: t11
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj4, Object obj5, Object obj6) {
                                String str;
                                Composer$Companion$Empty$1 composer$Companion$Empty$2;
                                Function2 function5;
                                Function1 function6;
                                Function0 function7;
                                Function2 function8;
                                Function2 function9;
                                StoreModeUiModel storeModeUiModel;
                                FillElement fillElement;
                                boolean z5;
                                Function0 function10;
                                Asset asset;
                                Unit unit;
                                AssetVideo assetVideo;
                                AssetImage assetImage;
                                AssetVideo assetVideo2;
                                Composer composer3 = (Composer) obj5;
                                ((Integer) obj6).getClass();
                                float f7 = StoreModeWelcomeComposableKt.f64839a;
                                ((AnimatedVisibilityScope) obj4).getClass();
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("StoreModeWelcomeScreen$lambda$17$0");
                                FillElement fillElement2 = SizeKt.f5052c;
                                Modifier modifierA = GradientKt.a(dTFunctionNameModifier.o(fillElement2), AlphaKt.f48328b);
                                Alignment.f8582a.getClass();
                                BiasAlignment biasAlignment = Alignment.Companion.f8584b;
                                MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment, false);
                                int iHashCode = Long.hashCode(composer3.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                                Modifier modifierC = ComposedModifierKt.c(composer3, modifierA);
                                ComposeUiNode.b0.getClass();
                                Function0 function11 = ComposeUiNode.Companion.f9641b;
                                String strB = null;
                                if (composer3.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer3.B();
                                if (composer3.getS()) {
                                    composer3.C(function11);
                                } else {
                                    composer3.o();
                                }
                                Function2 function12 = ComposeUiNode.Companion.f9644f;
                                Updater.c(composer3, measurePolicyD, function12);
                                Function2 function13 = ComposeUiNode.Companion.f9643e;
                                Updater.c(composer3, persistentCompositionLocalMapN, function13);
                                Integer numValueOf = Integer.valueOf(iHashCode);
                                Function2 function14 = ComposeUiNode.Companion.g;
                                Updater.c(composer3, numValueOf, function14);
                                Function1 function15 = ComposeUiNode.Companion.f9645h;
                                Updater.b(composer3, function15);
                                Function2 function16 = ComposeUiNode.Companion.d;
                                Updater.c(composer3, modifierC, function16);
                                StoreModeViewState storeModeViewState3 = storeModeViewState2;
                                boolean z6 = storeModeViewState3.f65082b;
                                boolean z7 = storeModeViewState3.d;
                                StoreModeUiModel storeModeUiModel2 = storeModeViewState3.f65081a;
                                Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
                                if (z6 || z7) {
                                    storeModeViewState3 = storeModeViewState3;
                                    str = "StoreModeWelcomeScreen$lambda$17$0";
                                    composer$Companion$Empty$2 = composer$Companion$Empty$3;
                                    function5 = function13;
                                    function6 = function15;
                                    function14 = function14;
                                    function7 = function11;
                                    function8 = function12;
                                    function9 = function16;
                                    z7 = z7;
                                    storeModeUiModel = storeModeUiModel2;
                                    fillElement = fillElement2;
                                    composer3.L(-1164169868);
                                    Modifier modifierO = new DTFunctionNameModifier(str).o(fillElement);
                                    z5 = false;
                                    Painter painterA = PainterResources_androidKt.a(2131231649, composer3, 0);
                                    ContentScale.f9447a.getClass();
                                    ImageKt.a(painterA, null, modifierO, null, ContentScale.Companion.f9449b, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, composer3, 25016, 104);
                                    composer3.F();
                                } else {
                                    composer3.L(-1163809276);
                                    Asset asset2 = storeModeUiModel2.f65079c;
                                    String strB2 = StringExtKt.b((asset2 == null || (assetVideo2 = asset2.f67107b) == null) ? null : assetVideo2.f67112b);
                                    if (strB2 == null) {
                                        composer3.L(-1163724244);
                                        composer3.F();
                                        str = "StoreModeWelcomeScreen$lambda$17$0";
                                        composer$Companion$Empty$2 = composer$Companion$Empty$3;
                                        function5 = function13;
                                        function6 = function15;
                                        function7 = function11;
                                        function8 = function12;
                                        function9 = function16;
                                        asset = asset2;
                                        storeModeUiModel = storeModeUiModel2;
                                        unit = null;
                                    } else {
                                        composer3.L(-1163724243);
                                        Modifier modifierO2 = new DTFunctionNameModifier("StoreModeWelcomeScreen$lambda$17$0").o(fillElement2);
                                        Object objX9 = composer3.x();
                                        if (objX9 == composer$Companion$Empty$3) {
                                            objX9 = new LvExoPlayer(context2).f50900a;
                                            composer3.q(objX9);
                                        }
                                        storeModeUiModel = storeModeUiModel2;
                                        str = "StoreModeWelcomeScreen$lambda$17$0";
                                        function5 = function13;
                                        composer$Companion$Empty$2 = composer$Companion$Empty$3;
                                        function6 = function15;
                                        function7 = function11;
                                        function8 = function12;
                                        function9 = function16;
                                        asset = asset2;
                                        LvVideoPlayerKt.b(modifierO2, (ExoPlayer) objX9, strB2, null, Float.valueOf(0.5625f), false, StringExtKt.b((asset2 == null || (assetVideo = asset2.f67107b) == null) ? null : assetVideo.f67113c), null, true, false, false, false, null, false, 4, null, null, null, null, null, null, composer3, 100687878, 27648, 0, 2072232);
                                        composer3 = composer3;
                                        composer3.F();
                                        unit = Unit.f71739a;
                                    }
                                    if (unit == null) {
                                        composer3.L(-1162896326);
                                        String strB3 = StringExtKt.b((asset == null || (assetImage = asset.f67106a) == null) ? null : assetImage.f67108a);
                                        if (strB3 == null) {
                                            composer3.L(-1162896327);
                                            composer3.F();
                                            fillElement = fillElement2;
                                        } else {
                                            composer3.L(-1162896326);
                                            fillElement = fillElement2;
                                            Modifier modifierO3 = new DTFunctionNameModifier(str).o(fillElement);
                                            ContentScale.f9447a.getClass();
                                            ImageLoaderKt.b(modifierO3, strB3, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, composer3, 390, 2040);
                                            composer3.F();
                                        }
                                        composer3.F();
                                    } else {
                                        fillElement = fillElement2;
                                        composer3.L(793741758);
                                        composer3.F();
                                    }
                                    composer3.F();
                                    z5 = false;
                                }
                                composer3.r();
                                Modifier modifierO4 = new DTFunctionNameModifier(str).o(fillElement);
                                float d = paddingValues.getD() + LVAppDesignKitTheme.l(composer3).l;
                                Dp.Companion companion = Dp.f11004c;
                                Modifier modifierM = PaddingKt.m(modifierO4, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, d, 7);
                                MeasurePolicy measurePolicyD2 = BoxKt.d(biasAlignment, z5);
                                int iHashCode2 = Long.hashCode(composer3.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer3.n();
                                Modifier modifierC2 = ComposedModifierKt.c(composer3, modifierM);
                                if (composer3.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer3.B();
                                if (composer3.getS()) {
                                    function10 = function7;
                                    composer3.C(function10);
                                } else {
                                    function10 = function7;
                                    composer3.o();
                                }
                                Function2 function17 = function8;
                                Updater.c(composer3, measurePolicyD2, function17);
                                Function2 function18 = function5;
                                Updater.c(composer3, persistentCompositionLocalMapN2, function18);
                                Function2 function19 = function14;
                                Function1 function20 = function6;
                                cj.s(iHashCode2, composer3, function19, composer3, function20);
                                Function2 function21 = function9;
                                Modifier modifierG = BoxScopeInstance.f4938a.g(a.f(composer3, modifierC2, function21, str), Alignment.Companion.f8589i);
                                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.d, Alignment.Companion.o, composer3, 54);
                                int iHashCode3 = Long.hashCode(composer3.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer3.n();
                                Modifier modifierC3 = ComposedModifierKt.c(composer3, modifierG);
                                if (composer3.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer3.B();
                                if (composer3.getS()) {
                                    composer3.C(function10);
                                } else {
                                    composer3.o();
                                }
                                Updater.c(composer3, columnMeasurePolicyA, function17);
                                Updater.c(composer3, persistentCompositionLocalMapN3, function18);
                                cj.s(iHashCode3, composer3, function19, composer3, function20);
                                Updater.c(composer3, modifierC3, function21);
                                StoreModeViewState storeModeViewState4 = storeModeViewState3;
                                if (storeModeViewState4.f65082b || z7) {
                                    composer3.L(-793718650);
                                    composer3.F();
                                } else {
                                    Modifier modifierM2 = PaddingKt.m(pq0.j(-795020805, composer3, str), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48415c, 7);
                                    StoreModeUiModel storeModeUiModel3 = storeModeUiModel;
                                    String str2 = storeModeUiModel3.f65077a;
                                    if (str2 == null) {
                                        composer3.L(-794834961);
                                        composer3.F();
                                    } else {
                                        composer3.L(-794834960);
                                        strB = StringResources_androidKt.b(R.string.store_mode_welcome_screen_title_connected, new Object[]{str2}, composer3);
                                        composer3.F();
                                    }
                                    if (strB == null) {
                                        strB = o60.k(composer3, -579819318, R.string.store_mode_welcome_screen_title_disconnected, composer3);
                                    } else {
                                        composer3.L(-579830571);
                                        composer3.F();
                                    }
                                    TextStyle textStyle = LVAppDesignKitTheme.n(composer3).d;
                                    long j3 = LVAppDesignKitTheme.c(composer3).f48361b.m;
                                    TextAlign.f10959b.getClass();
                                    int i5 = TextAlign.f10961e;
                                    Composer composer4 = composer3;
                                    TextKt.c(strB, modifierM2, j3, 0L, null, 0L, null, new TextAlign(i5), 0L, 0, false, 0, 0, null, textStyle, composer4, 0, 0, 130040);
                                    TextKt.c(storeModeUiModel3.f65078b, PaddingKt.m(new DTFunctionNameModifier(str), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer4).f48420j, 7), LVAppDesignKitTheme.c(composer4).f48361b.m, 0L, null, 0L, null, new TextAlign(i5), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer4).d, composer4, 0, 0, 130040);
                                    composer3 = composer4;
                                    composer3.F();
                                }
                                Modifier modifierF = SizeKt.f(SizeKt.s(new DTFunctionNameModifier(str), ((Dp) state2.getF10755b()).f11006b), f6);
                                String strC = StringResources_androidKt.c(composer3, R.string.store_mode_welcome_screen_cta);
                                String strC2 = StringResources_androidKt.c(composer3, R.string.button_try_again);
                                MutableState mutableState7 = mutableState5;
                                boolean zBooleanValue = ((Boolean) mutableState7.getF10755b()).booleanValue();
                                boolean z8 = storeModeViewState4.f65082b;
                                boolean zBooleanValue2 = ((Boolean) state3.getF10755b()).booleanValue();
                                MutableState mutableState8 = mutableState6;
                                boolean z9 = !((Boolean) mutableState8.getF10755b()).booleanValue();
                                boolean zY2 = composer3.y(storeModeViewState4);
                                Function0 function22 = function4;
                                boolean zK2 = composer3.K(function22) | zY2;
                                Object objX10 = composer3.x();
                                if (zK2 || objX10 == composer$Companion$Empty$2) {
                                    r0 r0Var = new r0((Object) storeModeViewState4, (Object) function22, mutableState8, (Object) mutableState7, 29);
                                    composer3.q(r0Var);
                                    objX10 = r0Var;
                                }
                                Composer composer5 = composer3;
                                StoreModeButtonKt.a(modifierF, 0L, strC, strC2, zBooleanValue, z8, zBooleanValue2, z9, 500, 600, (Function0) objX10, composer5, 905969664);
                                composer5.r();
                                composer5.r();
                                return Unit.f71739a;
                            }
                        }, composer2), composer2, 200064, 18);
                        AnimatedVisibilityKt.e(((Boolean) mutableState4.getF10755b()).booleanValue(), null, EnterExitTransitionKt.f(AnimationSpecKt.c(500, 0, null, 6), Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), EnterExitTransitionKt.h(null, 3), null, ComposableLambdaKt.b(-1099579104, new u11(function0, mutableState4), composer2), composer2, 200064, 18);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH);
            gapComposerH = gapComposerH;
            ScaffoldKt.a(null, composableLambdaImplB, null, null, null, 0, j2, 0L, null, composableLambdaImplB2, gapComposerH, 806879280, 445);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kj0((Object) storeModeViewState, (Object) function0, (Object) function1, (Object) function2, (Object) function3, i2, 26);
        }
    }
}

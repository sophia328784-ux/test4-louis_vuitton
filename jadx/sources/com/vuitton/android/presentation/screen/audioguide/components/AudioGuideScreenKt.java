package com.vuitton.android.presentation.screen.audioguide.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVAudioGuideCompositionLocalProviderKt;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideTracker;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideExtKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideViewState;
import com.vuitton.android.presentation.screen.audioguide.models.TrackDetailUiModel;
import com.vuitton.foundation.model.domain.model.audioplayer.PlayerState;
import defpackage.ga;
import defpackage.l0;
import defpackage.pq0;
import defpackage.q8;
import defpackage.ra;
import defpackage.u5;
import defpackage.w0;
import defpackage.z;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AudioGuideScreenKt {
    public static final void a(final AudioGuideViewState.Success success, final Function0 function0, final Function1 function1, final Function0 function2, final Function1 function3, final Function0 function4, final Function0 function5, final Function0 function6, Composer composer, int i2) {
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        GapComposer gapComposerC = defpackage.a.c(function5, function6, composer, 343674712);
        int i3 = i2 | (gapComposerC.y(success) ? 4 : 2) | (gapComposerC.y(function0) ? 32 : 16) | (gapComposerC.y(function1) ? 256 : 128) | (gapComposerC.y(function2) ? 2048 : 1024) | (gapComposerC.y(function3) ? 16384 : 8192) | (gapComposerC.y(function4) ? 131072 : 65536) | (gapComposerC.y(function5) ? 1048576 : 524288) | (gapComposerC.y(function6) ? 8388608 : 4194304);
        if (gapComposerC.p(i3 & 1, (4793491 & i3) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVAudioGuideCompositionLocalProviderKt.a(ComposableLambdaKt.b(-185183095, new Function2() { // from class: com.vuitton.android.presentation.screen.audioguide.components.c
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Object next;
                    AssetImageUiModel assetImageUiModel;
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        AudioGuideTracker audioGuideTracker = (AudioGuideTracker) composer2.k(AudioGuideTrackerEntryPointKt.f52977a);
                        Unit unit = Unit.f71739a;
                        boolean zY = composer2.y(audioGuideTracker);
                        Object objX = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (zY || objX == composer$Companion$Empty$1) {
                            objX = new AudioGuideScreenKt$AudioGuideScreen$1$1$1(audioGuideTracker, null);
                            composer2.q(objX);
                        }
                        EffectsKt.e(composer2, unit, (Function2) objX);
                        AudioGuideViewState.Success success2 = success;
                        AudioGuideUiModel audioGuideUiModel = success2.f53225a;
                        TrackDetailUiModel trackDetailUiModel = success2.f53226b;
                        FeatureThemeUiModel featureThemeUiModel = audioGuideUiModel.f53199f;
                        long j2 = audioGuideUiModel.f53198e;
                        AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModelA = AudioGuideExtKt.a(featureThemeUiModel, composer2);
                        DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("AudioGuideScreen$lambda$0");
                        FillElement fillElement = SizeKt.f5052c;
                        Modifier modifierB = BackgroundKt.b(dTFunctionNameModifier.o(fillElement), j2, RectangleShapeKt.f8913a);
                        Object objX2 = composer2.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new u5(10);
                            composer2.q(objX2);
                        }
                        Modifier modifierB2 = SemanticsModifierKt.b(modifierB, false, (Function1) objX2);
                        Alignment.f8582a.getClass();
                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        int iHashCode = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierB2);
                        ComposeUiNode.b0.getClass();
                        Function0 function7 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function7);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                        Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                        AudioGuideBackgroundKt.a(audioGuideUiModel.d.f51778b, j2, composer2, 6);
                        Modifier modifierI = pq0.i("AudioGuideScreen$lambda$0", fillElement);
                        Color.f8866b.getClass();
                        long j3 = Color.f8870h;
                        WindowInsets windowInsetsA = WindowInsetsExtKt.a();
                        ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(1780203647, new z(7, audioGuideUiModel, audioGuideTracker, function1, function0), composer2);
                        Function1 function8 = function3;
                        TrackDetailUiModel trackDetailUiModel2 = trackDetailUiModel;
                        ScaffoldKt.a(modifierI, composableLambdaImplB, null, null, null, 0, j3, 0L, windowInsetsA, ComposableLambdaKt.b(-2089370988, new w0(audioGuideUiModel, audioGuideColorsUiModelA, success2, audioGuideTracker, function8, function6, function2), composer2), composer2, 806879286, 188);
                        if (trackDetailUiModel2 != null) {
                            Modifier modifierB3 = WindowInsetsPadding_androidKt.b(PaddingKt.m(BoxScopeInstance.f4938a.g(pq0.j(1338279226, composer2, "AudioGuideScreen$lambda$0"), Alignment.Companion.f8589i), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, LVAppDesignKitTheme.l(composer2).f48417f, 2));
                            Object objX3 = composer2.x();
                            if (objX3 == composer$Companion$Empty$1) {
                                objX3 = new u5(11);
                                composer2.q(objX3);
                            }
                            Modifier modifierB4 = SemanticsModifierKt.b(modifierB3, false, (Function1) objX3);
                            boolean zK = composer2.K(function8) | composer2.y(success2);
                            Object objX4 = composer2.x();
                            if (zK || objX4 == composer$Companion$Empty$1) {
                                objX4 = new l0(function8, success2, 14);
                                composer2.q(objX4);
                            }
                            Modifier modifierC2 = ModifierExtKt.c(modifierB4, false, null, null, (Function0) objX4, 31);
                            TrackDetailUiModel trackDetailUiModel3 = success2.f53226b;
                            Iterator it = audioGuideUiModel.m.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    next = null;
                                    break;
                                }
                                next = it.next();
                                TrackDetailUiModel trackDetailUiModel4 = trackDetailUiModel2;
                                if (Intrinsics.c(((AudioGuideUiModel.TrackUiModel) next).f53218a, trackDetailUiModel4.f53230a)) {
                                    break;
                                }
                                trackDetailUiModel2 = trackDetailUiModel4;
                            }
                            AudioGuideUiModel.TrackUiModel trackUiModel = (AudioGuideUiModel.TrackUiModel) next;
                            String str = (trackUiModel == null || (assetImageUiModel = trackUiModel.d) == null) ? null : assetImageUiModel.f51778b;
                            if (str == null) {
                                str = "";
                            }
                            boolean z = success2.f53227c == PlayerState.PLAYING;
                            long j4 = audioGuideColorsUiModelA.f53207a;
                            long j5 = audioGuideColorsUiModelA.g;
                            boolean zY2 = composer2.y(success2) | composer2.y(audioGuideTracker);
                            Function0 function9 = function4;
                            boolean zK2 = zY2 | composer2.K(function9);
                            Object objX5 = composer2.x();
                            if (zK2 || objX5 == composer$Companion$Empty$1) {
                                objX5 = new ra(success2, audioGuideTracker, function9, 0);
                                composer2.q(objX5);
                            }
                            Function0 function10 = (Function0) objX5;
                            boolean zY3 = composer2.y(audioGuideTracker);
                            Function0 function11 = function5;
                            boolean zK3 = zY3 | composer2.K(function11);
                            Object objX6 = composer2.x();
                            if (zK3 || objX6 == composer$Companion$Empty$1) {
                                objX6 = new ga(audioGuideTracker, function11, 4);
                                composer2.q(objX6);
                            }
                            AudioGuideMiniPlayerKt.a(modifierC2, trackDetailUiModel3, str, z, j4, j5, function10, (Function0) objX6, composer2, 0);
                            composer2.F();
                        } else {
                            composer2.L(1339852383);
                            composer2.F();
                        }
                        composer2.r();
                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerC), gapComposerC, 6);
        } else {
            gapComposerC.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerC.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new q8(success, function0, function1, function2, function3, function4, function5, function6, i2);
        }
    }
}

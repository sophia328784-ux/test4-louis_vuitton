package com.vuitton.android.presentation.screen.audioguide.components;

import android.content.Context;
import androidx.activity.compose.BackHandlerKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.lifecycle.compose.FlowExtKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.AccessibilityExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVAudioGuideCompositionLocalProviderKt;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideTracker;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModel;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.AudioGuideBeforeStartBottomSheetKt;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.AudioGuideCreditsBottomSheetKt;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.AudioGuideLeavingBottomSheetKt;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.AudioGuideTextBottomSheetKt;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.AudioGuideTrackDetailBottomSheetKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideBottomSheet;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideViewState;
import com.vuitton.android.presentation.tracking.AppsFlyerTrackerEntryPointKt;
import com.vuitton.android.presentation.tracking.AppsFlyerUiTracker;
import defpackage.ia;
import defpackage.ka;
import defpackage.n0;
import defpackage.o60;
import defpackage.q;
import defpackage.r0;
import defpackage.u;
import defpackage.u5;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0006²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0005\u001a\u0004\u0018\u00010\u00048\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState;", "viewState", "", "currentPositionMs", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet;", "bottomSheet", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AudioGuideComposableKt {
    public static final void a(final AudioGuideViewModel audioGuideViewModel, final ContributionLinkNavigator contributionLinkNavigator, final Function1 function1, Composer composer, int i2) {
        audioGuideViewModel.getClass();
        contributionLinkNavigator.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-396496949);
        int i3 = (gapComposerH.K(audioGuideViewModel) ? 4 : 2) | i2 | (gapComposerH.y(contributionLinkNavigator) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVAudioGuideCompositionLocalProviderKt.a(ComposableLambdaKt.b(246263484, new Function2() { // from class: com.vuitton.android.presentation.screen.audioguide.components.a
                /* JADX WARN: Code duplicated, block: B:68:0x021c  */
                /* JADX WARN: Code duplicated, block: B:70:0x023d  */
                /* JADX WARN: Code duplicated, block: B:71:0x0240  */
                /* JADX WARN: Code duplicated, block: B:78:0x0251  */
                /* JADX WARN: Code duplicated, block: B:80:0x0254  */
                /* JADX WARN: Code duplicated, block: B:82:0x0267  */
                /* JADX WARN: Code duplicated, block: B:86:0x028b  */
                /* JADX WARN: Code duplicated, block: B:88:0x02c9  */
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer$Companion$Empty$1 composer$Companion$Empty$1;
                    AudioGuideViewState audioGuideViewState;
                    AudioGuideViewState.Success success;
                    Color color;
                    long j2;
                    boolean zK;
                    Object objX;
                    int i4;
                    AudioGuideUiModel audioGuideUiModel;
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    final int i5 = 0;
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        AudioGuideTracker audioGuideTracker = (AudioGuideTracker) composer2.k(AudioGuideTrackerEntryPointKt.f52977a);
                        final AppsFlyerUiTracker appsFlyerUiTracker = (AppsFlyerUiTracker) composer2.k(AppsFlyerTrackerEntryPointKt.f65808a);
                        final Context context = (Context) composer2.k(AndroidCompositionLocals_androidKt.f9936b);
                        final AudioGuideViewModel audioGuideViewModel2 = audioGuideViewModel;
                        final MutableState mutableStateC = FlowExtKt.c(audioGuideViewModel2.getX(), null, composer2, 0, 7);
                        final MutableState mutableStateC2 = FlowExtKt.c(audioGuideViewModel2.cb(), null, composer2, 0, 7);
                        Object objX2 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        if (objX2 == composer$Companion$Empty$2) {
                            objX2 = new SnackbarHostState();
                            composer2.q(objX2);
                        }
                        SnackbarHostState snackbarHostState = (SnackbarHostState) objX2;
                        final MutableState mutableStateC3 = FlowExtKt.c(audioGuideViewModel2.e(), null, composer2, 0, 7);
                        Object objX3 = composer2.x();
                        if (objX3 == composer$Companion$Empty$2) {
                            objX3 = new u5(8);
                            composer2.q(objX3);
                        }
                        LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(48, 5, composer2, (Function1) objX3);
                        boolean zA = AccessibilityExtKt.a(composer2);
                        boolean z = ((AudioGuideBottomSheet) mutableStateC3.getF10755b()) == null && (((AudioGuideViewState) mutableStateC.getF10755b()) instanceof AudioGuideViewState.Success);
                        boolean zY = composer2.y(audioGuideViewModel2);
                        Object objX4 = composer2.x();
                        if (zY || objX4 == composer$Companion$Empty$2) {
                            objX4 = new ia(audioGuideViewModel2, 2);
                            composer2.q(objX4);
                        }
                        BackHandlerKt.a(z, (Function0) objX4, composer2, 0, 0);
                        AudioGuideViewState audioGuideViewState2 = (AudioGuideViewState) mutableStateC.getF10755b();
                        if (audioGuideViewState2 instanceof AudioGuideViewState.Loading) {
                            composer2.L(436037685);
                            AudioGuideLoadingScreenKt.a(composer2, 0);
                            composer2.F();
                        } else {
                            if (audioGuideViewState2 instanceof AudioGuideViewState.Error) {
                                composer2.L(436040084);
                                boolean zY2 = composer2.y(audioGuideViewModel2);
                                Object objX5 = composer2.x();
                                if (zY2 || objX5 == composer$Companion$Empty$2) {
                                    objX5 = new AudioGuideComposableKt$AudioGuideComposable$1$2$1(0, audioGuideViewModel2, AudioGuideViewModel.class, "initAudioGuide", "initAudioGuide()V", 0);
                                    composer2.q(objX5);
                                }
                                AudioGuideErrorScreenKt.a(snackbarHostState, (Function0) ((KFunction) objX5), composer2, 6);
                                composer2.F();
                            } else {
                                if (!(audioGuideViewState2 instanceof AudioGuideViewState.Success)) {
                                    throw o60.v(composer2, 436037438);
                                }
                                composer2.L(632581278);
                                AudioGuideViewState audioGuideViewState3 = (AudioGuideViewState) mutableStateC.getF10755b();
                                audioGuideViewState3.getClass();
                                final AudioGuideViewState.Success success2 = (AudioGuideViewState.Success) audioGuideViewState3;
                                boolean zY3 = composer2.y(audioGuideViewModel2);
                                Object objX6 = composer2.x();
                                if (zY3 || objX6 == composer$Companion$Empty$2) {
                                    objX6 = new ia(audioGuideViewModel2, 3);
                                    composer2.q(objX6);
                                }
                                Function0 function0 = (Function0) objX6;
                                boolean zY4 = composer2.y(audioGuideViewModel2);
                                Object objX7 = composer2.x();
                                if (zY4 || objX7 == composer$Companion$Empty$2) {
                                    objX7 = new AudioGuideComposableKt$AudioGuideComposable$1$4$1(1, audioGuideViewModel2, AudioGuideViewModel.class, "onLanguageSelected", "onLanguageSelected(Ljava/lang/String;)V", 0);
                                    composer2.q(objX7);
                                }
                                Function1 function2 = (Function1) ((KFunction) objX7);
                                boolean zY5 = composer2.y(success2) | composer2.y(audioGuideViewModel2);
                                Object objX8 = composer2.x();
                                if (zY5 || objX8 == composer$Companion$Empty$2) {
                                    objX8 = new Function0() { // from class: ja
                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            int i6 = i5;
                                            AudioGuideViewModel audioGuideViewModel3 = audioGuideViewModel2;
                                            AudioGuideViewState.Success success3 = success2;
                                            switch (i6) {
                                                case 0:
                                                    AudioGuideUiModel.AudioGuideCardUiModel audioGuideCardUiModel = success3.f53225a.f53203k;
                                                    if (audioGuideCardUiModel != null) {
                                                        audioGuideViewModel3.j7(new AudioGuideBottomSheet.CardText(audioGuideCardUiModel.f53205b, audioGuideCardUiModel.f53204a));
                                                    }
                                                    break;
                                                default:
                                                    AudioGuideUiModel.CreditsUiModel creditsUiModel = success3.f53225a.n;
                                                    if (creditsUiModel != null) {
                                                        audioGuideViewModel3.j7(new AudioGuideBottomSheet.Credits(creditsUiModel.f53214a));
                                                    }
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer2.q(objX8);
                                }
                                Function0 function3 = (Function0) objX8;
                                boolean zY6 = composer2.y(audioGuideViewModel2) | composer2.b(zA);
                                Object objX9 = composer2.x();
                                if (zY6 || objX9 == composer$Companion$Empty$2) {
                                    objX9 = new ka(audioGuideViewModel2, zA, 0);
                                    composer2.q(objX9);
                                }
                                Function1 function4 = (Function1) objX9;
                                boolean zY7 = composer2.y(audioGuideViewModel2);
                                Object objX10 = composer2.x();
                                if (zY7 || objX10 == composer$Companion$Empty$2) {
                                    objX10 = new AudioGuideComposableKt$AudioGuideComposable$1$7$1(0, audioGuideViewModel2, AudioGuideViewModel.class, "onPlayPause", "onPlayPause()V", 0);
                                    composer2.q(objX10);
                                }
                                Function0 function5 = (Function0) ((KFunction) objX10);
                                boolean zY8 = composer2.y(audioGuideViewModel2);
                                Object objX11 = composer2.x();
                                if (zY8 || objX11 == composer$Companion$Empty$2) {
                                    objX11 = new AudioGuideComposableKt$AudioGuideComposable$1$8$1(0, audioGuideViewModel2, AudioGuideViewModel.class, "selectNextTrack", "selectNextTrack()V", 0);
                                    composer2.q(objX11);
                                }
                                Function0 function6 = (Function0) ((KFunction) objX11);
                                boolean zY9 = composer2.y(success2) | composer2.y(audioGuideViewModel2);
                                Object objX12 = composer2.x();
                                if (zY9 || objX12 == composer$Companion$Empty$2) {
                                    final int i6 = 1;
                                    objX12 = new Function0() { // from class: ja
                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            int i7 = i6;
                                            AudioGuideViewModel audioGuideViewModel3 = audioGuideViewModel2;
                                            AudioGuideViewState.Success success3 = success2;
                                            switch (i7) {
                                                case 0:
                                                    AudioGuideUiModel.AudioGuideCardUiModel audioGuideCardUiModel = success3.f53225a.f53203k;
                                                    if (audioGuideCardUiModel != null) {
                                                        audioGuideViewModel3.j7(new AudioGuideBottomSheet.CardText(audioGuideCardUiModel.f53205b, audioGuideCardUiModel.f53204a));
                                                    }
                                                    break;
                                                default:
                                                    AudioGuideUiModel.CreditsUiModel creditsUiModel = success3.f53225a.n;
                                                    if (creditsUiModel != null) {
                                                        audioGuideViewModel3.j7(new AudioGuideBottomSheet.Credits(creditsUiModel.f53214a));
                                                    }
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer2.q(objX12);
                                }
                                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                                AudioGuideScreenKt.a(success2, function0, function2, function3, function4, function5, function6, (Function0) objX12, composer2, 0);
                                composer2.F();
                            }
                            if (((AudioGuideBottomSheet) mutableStateC3.getF10755b()) != null) {
                                composer2.L(634234043);
                                boolean z2 = ((AudioGuideBottomSheet) mutableStateC3.getF10755b()) instanceof AudioGuideBottomSheet.TrackDetail;
                                String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                                boolean z3 = !z2;
                                audioGuideViewState = (AudioGuideViewState) mutableStateC.getF10755b();
                                if (audioGuideViewState instanceof AudioGuideViewState.Success) {
                                    success = (AudioGuideViewState.Success) audioGuideViewState;
                                } else {
                                    success = null;
                                }
                                if (success != null || (audioGuideUiModel = success.f53225a) == null) {
                                    color = null;
                                } else {
                                    color = new Color(audioGuideUiModel.f53198e);
                                    if (!z2) {
                                        color = null;
                                    }
                                }
                                if (color == null) {
                                    composer2.L(436121357);
                                    j2 = LVAppDesignKitTheme.c(composer2).f48361b.f48374a;
                                    composer2.F();
                                } else {
                                    composer2.L(436115312);
                                    composer2.F();
                                    j2 = color.f8872a;
                                }
                                long j3 = j2;
                                zK = composer2.K(mutableStateC3) | composer2.y(audioGuideTracker) | composer2.y(audioGuideViewModel2);
                                objX = composer2.x();
                                i4 = 9;
                                if (zK || objX == composer$Companion$Empty$1) {
                                    objX = new q(audioGuideTracker, audioGuideViewModel2, mutableStateC3, i4);
                                    composer2.q(objX);
                                }
                                final Function1 function7 = function1;
                                final ContributionLinkNavigator contributionLinkNavigator2 = contributionLinkNavigator;
                                LVModalBottomSheetKt.b(null, strC, (Function0) objX, lVModalBottomSheetStateF, null, j3, z3, null, ComposableLambdaKt.b(528424523, new Function3() { // from class: com.vuitton.android.presentation.screen.audioguide.components.b
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object A(Object obj3, Object obj4, Object obj5) {
                                        Composer composer3 = (Composer) obj4;
                                        int iIntValue2 = ((Integer) obj5).intValue();
                                        ((ColumnScope) obj3).getClass();
                                        if (composer3.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                            MutableState mutableState = mutableStateC3;
                                            AudioGuideBottomSheet audioGuideBottomSheet = (AudioGuideBottomSheet) mutableState.getF10755b();
                                            boolean z4 = audioGuideBottomSheet instanceof AudioGuideBottomSheet.BeforeStart;
                                            MutableState mutableState2 = mutableStateC;
                                            AppsFlyerUiTracker appsFlyerUiTracker2 = appsFlyerUiTracker;
                                            AudioGuideViewModel audioGuideViewModel3 = audioGuideViewModel2;
                                            Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
                                            if (z4) {
                                                composer3.L(1239943616);
                                                boolean zK2 = composer3.K(mutableState2) | composer3.y(appsFlyerUiTracker2) | composer3.y(audioGuideViewModel3);
                                                Object objX13 = composer3.x();
                                                if (zK2 || objX13 == composer$Companion$Empty$3) {
                                                    objX13 = new q(audioGuideViewModel3, mutableState2, appsFlyerUiTracker2);
                                                    composer3.q(objX13);
                                                }
                                                AudioGuideBeforeStartBottomSheetKt.a((Function0) objX13, composer3, 0);
                                                composer3.F();
                                            } else if (audioGuideBottomSheet instanceof AudioGuideBottomSheet.CardText) {
                                                composer3.L(1240649021);
                                                AudioGuideBottomSheet audioGuideBottomSheet2 = (AudioGuideBottomSheet) mutableState.getF10755b();
                                                audioGuideBottomSheet2.getClass();
                                                String str = ((AudioGuideBottomSheet.CardText) audioGuideBottomSheet2).f53154a;
                                                AudioGuideBottomSheet audioGuideBottomSheet3 = (AudioGuideBottomSheet) mutableState.getF10755b();
                                                audioGuideBottomSheet3.getClass();
                                                AudioGuideTextBottomSheetKt.a(str, ((AudioGuideBottomSheet.CardText) audioGuideBottomSheet3).f53155b, composer3, 0);
                                                composer3.F();
                                            } else if (audioGuideBottomSheet instanceof AudioGuideBottomSheet.Credits) {
                                                composer3.L(1241014666);
                                                AudioGuideBottomSheet audioGuideBottomSheet4 = (AudioGuideBottomSheet) mutableState.getF10755b();
                                                audioGuideBottomSheet4.getClass();
                                                AudioGuideCreditsBottomSheetKt.a(0, composer3, ((AudioGuideBottomSheet.Credits) audioGuideBottomSheet4).f53156a);
                                                composer3.F();
                                            } else if (audioGuideBottomSheet instanceof AudioGuideBottomSheet.TrackDetail) {
                                                composer3.L(1241324573);
                                                AudioGuideViewState audioGuideViewState4 = (AudioGuideViewState) mutableState2.getF10755b();
                                                AudioGuideViewState.Success success3 = audioGuideViewState4 instanceof AudioGuideViewState.Success ? (AudioGuideViewState.Success) audioGuideViewState4 : null;
                                                if ((success3 != null ? success3.f53226b : null) == null) {
                                                    composer3.L(1241457469);
                                                    composer3.F();
                                                } else {
                                                    composer3.L(1241457470);
                                                    long jLongValue = ((Number) mutableStateC2.getF10755b()).longValue();
                                                    boolean zY10 = composer3.y(audioGuideViewModel3);
                                                    Object objX14 = composer3.x();
                                                    if (zY10 || objX14 == composer$Companion$Empty$3) {
                                                        objX14 = new ia(audioGuideViewModel3, 0);
                                                        composer3.q(objX14);
                                                    }
                                                    Function0 function8 = (Function0) objX14;
                                                    boolean zY11 = composer3.y(audioGuideViewModel3);
                                                    Object objX15 = composer3.x();
                                                    if (zY11 || objX15 == composer$Companion$Empty$3) {
                                                        objX15 = new AudioGuideComposableKt$AudioGuideComposable$1$12$2$2$1(0, audioGuideViewModel3, AudioGuideViewModel.class, "onPlayPause", "onPlayPause()V", 0);
                                                        composer3.q(objX15);
                                                    }
                                                    Function0 function9 = (Function0) ((KFunction) objX15);
                                                    boolean zY12 = composer3.y(audioGuideViewModel3);
                                                    Object objX16 = composer3.x();
                                                    if (zY12 || objX16 == composer$Companion$Empty$3) {
                                                        objX16 = new AudioGuideComposableKt$AudioGuideComposable$1$12$2$3$1(1, audioGuideViewModel3, AudioGuideViewModel.class, "onSeekTo", "onSeekTo(J)V", 0);
                                                        composer3.q(objX16);
                                                    }
                                                    Function1 function10 = (Function1) ((KFunction) objX16);
                                                    boolean zY13 = composer3.y(audioGuideViewModel3);
                                                    Object objX17 = composer3.x();
                                                    if (zY13 || objX17 == composer$Companion$Empty$3) {
                                                        objX17 = new AudioGuideComposableKt$AudioGuideComposable$1$12$2$4$1(0, audioGuideViewModel3, AudioGuideViewModel.class, "onGoBack15", "onGoBack15()V", 0);
                                                        composer3.q(objX17);
                                                    }
                                                    Function0 function11 = (Function0) ((KFunction) objX17);
                                                    boolean zY14 = composer3.y(audioGuideViewModel3);
                                                    Object objX18 = composer3.x();
                                                    if (zY14 || objX18 == composer$Companion$Empty$3) {
                                                        objX18 = new AudioGuideComposableKt$AudioGuideComposable$1$12$2$5$1(0, audioGuideViewModel3, AudioGuideViewModel.class, "onGoForward15", "onGoForward15()V", 0);
                                                        composer3.q(objX18);
                                                    }
                                                    Function0 function12 = (Function0) ((KFunction) objX18);
                                                    boolean zY15 = composer3.y(audioGuideViewModel3);
                                                    Object objX19 = composer3.x();
                                                    if (zY15 || objX19 == composer$Companion$Empty$3) {
                                                        objX19 = new AudioGuideComposableKt$AudioGuideComposable$1$12$2$6$1(0, audioGuideViewModel3, AudioGuideViewModel.class, "onSpeedToggle", "onSpeedToggle()V", 0);
                                                        composer3.q(objX19);
                                                    }
                                                    Function0 function13 = (Function0) ((KFunction) objX19);
                                                    boolean zY16 = composer3.y(audioGuideViewModel3);
                                                    Object objX20 = composer3.x();
                                                    if (zY16 || objX20 == composer$Companion$Empty$3) {
                                                        objX20 = new AudioGuideComposableKt$AudioGuideComposable$1$12$2$7$1(0, audioGuideViewModel3, AudioGuideViewModel.class, "selectNextTrack", "selectNextTrack()V", 0);
                                                        composer3.q(objX20);
                                                    }
                                                    Function0 function14 = (Function0) ((KFunction) objX20);
                                                    boolean zY17 = composer3.y(audioGuideViewModel3);
                                                    Object objX21 = composer3.x();
                                                    if (zY17 || objX21 == composer$Companion$Empty$3) {
                                                        objX21 = new AudioGuideComposableKt$AudioGuideComposable$1$12$2$8$1(0, audioGuideViewModel3, AudioGuideViewModel.class, "selectPreviousTrack", "selectPreviousTrack()V", 0);
                                                        composer3.q(objX21);
                                                    }
                                                    Function0 function15 = (Function0) ((KFunction) objX21);
                                                    boolean zY18 = composer3.y(audioGuideViewModel3);
                                                    Object objX22 = composer3.x();
                                                    if (zY18 || objX22 == composer$Companion$Empty$3) {
                                                        objX22 = new AudioGuideComposableKt$AudioGuideComposable$1$12$2$9$1(1, audioGuideViewModel3, AudioGuideViewModel.class, "onTrackClicked", "onTrackClicked(Ljava/lang/String;ZZ)V", 0);
                                                        composer3.q(objX22);
                                                    }
                                                    Function1 function16 = (Function1) objX22;
                                                    boolean zY19 = composer3.y(audioGuideViewModel3);
                                                    ContributionLinkNavigator contributionLinkNavigator3 = contributionLinkNavigator2;
                                                    boolean zY20 = zY19 | composer3.y(contributionLinkNavigator3);
                                                    Context context2 = context;
                                                    boolean zY21 = zY20 | composer3.y(context2);
                                                    AudioGuideViewState.Success success4 = success3;
                                                    Object objX23 = composer3.x();
                                                    if (zY21 || objX23 == composer$Companion$Empty$3) {
                                                        objX23 = new n0(audioGuideViewModel3, contributionLinkNavigator3, context2, 5);
                                                        composer3.q(objX23);
                                                    }
                                                    AudioGuideTrackDetailBottomSheetKt.a(success4, jLongValue, function8, function9, function10, function11, function12, function13, function14, function15, function16, (Function1) objX23, composer3, 0);
                                                    composer3.F();
                                                }
                                                composer3.F();
                                            } else if (audioGuideBottomSheet instanceof AudioGuideBottomSheet.Leaving) {
                                                composer3.L(1243002355);
                                                boolean zY22 = composer3.y(audioGuideViewModel3) | composer3.K(mutableState2) | composer3.y(appsFlyerUiTracker2);
                                                Function1 function17 = function7;
                                                boolean zK3 = composer3.K(function17) | zY22;
                                                Object objX24 = composer3.x();
                                                if (zK3 || objX24 == composer$Companion$Empty$3) {
                                                    r0 r0Var = new r0((Object) audioGuideViewModel3, (Object) function17, mutableState2, (Object) appsFlyerUiTracker2, 2);
                                                    composer3.q(r0Var);
                                                    objX24 = r0Var;
                                                }
                                                Function0 function18 = (Function0) objX24;
                                                boolean zY23 = composer3.y(audioGuideViewModel3);
                                                Object objX25 = composer3.x();
                                                if (zY23 || objX25 == composer$Companion$Empty$3) {
                                                    objX25 = new ia(audioGuideViewModel3, 1);
                                                    composer3.q(objX25);
                                                }
                                                AudioGuideLeavingBottomSheetKt.a(function18, (Function0) objX25, composer3, 0);
                                                composer3.F();
                                            } else {
                                                composer3.L(1243868340);
                                                composer3.F();
                                            }
                                        } else {
                                            composer3.D();
                                        }
                                        return Unit.f71739a;
                                    }
                                }, composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663296, 145);
                                composer2.F();
                            } else {
                                composer2.L(639041926);
                                composer2.F();
                            }
                        }
                        composer$Companion$Empty$1 = composer$Companion$Empty$2;
                        if (((AudioGuideBottomSheet) mutableStateC3.getF10755b()) != null) {
                            composer2.L(634234043);
                            boolean z4 = ((AudioGuideBottomSheet) mutableStateC3.getF10755b()) instanceof AudioGuideBottomSheet.TrackDetail;
                            String strC2 = StringResources_androidKt.c(composer2, R.string.alt_close);
                            boolean z5 = !z4;
                            audioGuideViewState = (AudioGuideViewState) mutableStateC.getF10755b();
                            if (audioGuideViewState instanceof AudioGuideViewState.Success) {
                                success = (AudioGuideViewState.Success) audioGuideViewState;
                            } else {
                                success = null;
                            }
                            if (success != null) {
                                color = null;
                            } else {
                                color = null;
                            }
                            if (color == null) {
                                composer2.L(436121357);
                                j2 = LVAppDesignKitTheme.c(composer2).f48361b.f48374a;
                                composer2.F();
                            } else {
                                composer2.L(436115312);
                                composer2.F();
                                j2 = color.f8872a;
                            }
                            long j4 = j2;
                            zK = composer2.K(mutableStateC3) | composer2.y(audioGuideTracker) | composer2.y(audioGuideViewModel2);
                            objX = composer2.x();
                            i4 = 9;
                            if (zK) {
                                objX = new q(audioGuideTracker, audioGuideViewModel2, mutableStateC3, i4);
                                composer2.q(objX);
                            } else {
                                objX = new q(audioGuideTracker, audioGuideViewModel2, mutableStateC3, i4);
                                composer2.q(objX);
                            }
                            final Function1 function8 = function1;
                            final ContributionLinkNavigator contributionLinkNavigator3 = contributionLinkNavigator;
                            LVModalBottomSheetKt.b(null, strC2, (Function0) objX, lVModalBottomSheetStateF, null, j4, z5, null, ComposableLambdaKt.b(528424523, new Function3() { // from class: com.vuitton.android.presentation.screen.audioguide.components.b
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj3, Object obj4, Object obj5) {
                                    Composer composer3 = (Composer) obj4;
                                    int iIntValue2 = ((Integer) obj5).intValue();
                                    ((ColumnScope) obj3).getClass();
                                    if (composer3.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                        MutableState mutableState = mutableStateC3;
                                        AudioGuideBottomSheet audioGuideBottomSheet = (AudioGuideBottomSheet) mutableState.getF10755b();
                                        boolean z6 = audioGuideBottomSheet instanceof AudioGuideBottomSheet.BeforeStart;
                                        MutableState mutableState2 = mutableStateC;
                                        AppsFlyerUiTracker appsFlyerUiTracker2 = appsFlyerUiTracker;
                                        AudioGuideViewModel audioGuideViewModel3 = audioGuideViewModel2;
                                        Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
                                        if (z6) {
                                            composer3.L(1239943616);
                                            boolean zK2 = composer3.K(mutableState2) | composer3.y(appsFlyerUiTracker2) | composer3.y(audioGuideViewModel3);
                                            Object objX13 = composer3.x();
                                            if (zK2 || objX13 == composer$Companion$Empty$3) {
                                                objX13 = new q(audioGuideViewModel3, mutableState2, appsFlyerUiTracker2);
                                                composer3.q(objX13);
                                            }
                                            AudioGuideBeforeStartBottomSheetKt.a((Function0) objX13, composer3, 0);
                                            composer3.F();
                                        } else if (audioGuideBottomSheet instanceof AudioGuideBottomSheet.CardText) {
                                            composer3.L(1240649021);
                                            AudioGuideBottomSheet audioGuideBottomSheet2 = (AudioGuideBottomSheet) mutableState.getF10755b();
                                            audioGuideBottomSheet2.getClass();
                                            String str = ((AudioGuideBottomSheet.CardText) audioGuideBottomSheet2).f53154a;
                                            AudioGuideBottomSheet audioGuideBottomSheet3 = (AudioGuideBottomSheet) mutableState.getF10755b();
                                            audioGuideBottomSheet3.getClass();
                                            AudioGuideTextBottomSheetKt.a(str, ((AudioGuideBottomSheet.CardText) audioGuideBottomSheet3).f53155b, composer3, 0);
                                            composer3.F();
                                        } else if (audioGuideBottomSheet instanceof AudioGuideBottomSheet.Credits) {
                                            composer3.L(1241014666);
                                            AudioGuideBottomSheet audioGuideBottomSheet4 = (AudioGuideBottomSheet) mutableState.getF10755b();
                                            audioGuideBottomSheet4.getClass();
                                            AudioGuideCreditsBottomSheetKt.a(0, composer3, ((AudioGuideBottomSheet.Credits) audioGuideBottomSheet4).f53156a);
                                            composer3.F();
                                        } else if (audioGuideBottomSheet instanceof AudioGuideBottomSheet.TrackDetail) {
                                            composer3.L(1241324573);
                                            AudioGuideViewState audioGuideViewState4 = (AudioGuideViewState) mutableState2.getF10755b();
                                            AudioGuideViewState.Success success3 = audioGuideViewState4 instanceof AudioGuideViewState.Success ? (AudioGuideViewState.Success) audioGuideViewState4 : null;
                                            if ((success3 != null ? success3.f53226b : null) == null) {
                                                composer3.L(1241457469);
                                                composer3.F();
                                            } else {
                                                composer3.L(1241457470);
                                                long jLongValue = ((Number) mutableStateC2.getF10755b()).longValue();
                                                boolean zY10 = composer3.y(audioGuideViewModel3);
                                                Object objX14 = composer3.x();
                                                if (zY10 || objX14 == composer$Companion$Empty$3) {
                                                    objX14 = new ia(audioGuideViewModel3, 0);
                                                    composer3.q(objX14);
                                                }
                                                Function0 function9 = (Function0) objX14;
                                                boolean zY11 = composer3.y(audioGuideViewModel3);
                                                Object objX15 = composer3.x();
                                                if (zY11 || objX15 == composer$Companion$Empty$3) {
                                                    objX15 = new AudioGuideComposableKt$AudioGuideComposable$1$12$2$2$1(0, audioGuideViewModel3, AudioGuideViewModel.class, "onPlayPause", "onPlayPause()V", 0);
                                                    composer3.q(objX15);
                                                }
                                                Function0 function10 = (Function0) ((KFunction) objX15);
                                                boolean zY12 = composer3.y(audioGuideViewModel3);
                                                Object objX16 = composer3.x();
                                                if (zY12 || objX16 == composer$Companion$Empty$3) {
                                                    objX16 = new AudioGuideComposableKt$AudioGuideComposable$1$12$2$3$1(1, audioGuideViewModel3, AudioGuideViewModel.class, "onSeekTo", "onSeekTo(J)V", 0);
                                                    composer3.q(objX16);
                                                }
                                                Function1 function11 = (Function1) ((KFunction) objX16);
                                                boolean zY13 = composer3.y(audioGuideViewModel3);
                                                Object objX17 = composer3.x();
                                                if (zY13 || objX17 == composer$Companion$Empty$3) {
                                                    objX17 = new AudioGuideComposableKt$AudioGuideComposable$1$12$2$4$1(0, audioGuideViewModel3, AudioGuideViewModel.class, "onGoBack15", "onGoBack15()V", 0);
                                                    composer3.q(objX17);
                                                }
                                                Function0 function12 = (Function0) ((KFunction) objX17);
                                                boolean zY14 = composer3.y(audioGuideViewModel3);
                                                Object objX18 = composer3.x();
                                                if (zY14 || objX18 == composer$Companion$Empty$3) {
                                                    objX18 = new AudioGuideComposableKt$AudioGuideComposable$1$12$2$5$1(0, audioGuideViewModel3, AudioGuideViewModel.class, "onGoForward15", "onGoForward15()V", 0);
                                                    composer3.q(objX18);
                                                }
                                                Function0 function13 = (Function0) ((KFunction) objX18);
                                                boolean zY15 = composer3.y(audioGuideViewModel3);
                                                Object objX19 = composer3.x();
                                                if (zY15 || objX19 == composer$Companion$Empty$3) {
                                                    objX19 = new AudioGuideComposableKt$AudioGuideComposable$1$12$2$6$1(0, audioGuideViewModel3, AudioGuideViewModel.class, "onSpeedToggle", "onSpeedToggle()V", 0);
                                                    composer3.q(objX19);
                                                }
                                                Function0 function14 = (Function0) ((KFunction) objX19);
                                                boolean zY16 = composer3.y(audioGuideViewModel3);
                                                Object objX20 = composer3.x();
                                                if (zY16 || objX20 == composer$Companion$Empty$3) {
                                                    objX20 = new AudioGuideComposableKt$AudioGuideComposable$1$12$2$7$1(0, audioGuideViewModel3, AudioGuideViewModel.class, "selectNextTrack", "selectNextTrack()V", 0);
                                                    composer3.q(objX20);
                                                }
                                                Function0 function15 = (Function0) ((KFunction) objX20);
                                                boolean zY17 = composer3.y(audioGuideViewModel3);
                                                Object objX21 = composer3.x();
                                                if (zY17 || objX21 == composer$Companion$Empty$3) {
                                                    objX21 = new AudioGuideComposableKt$AudioGuideComposable$1$12$2$8$1(0, audioGuideViewModel3, AudioGuideViewModel.class, "selectPreviousTrack", "selectPreviousTrack()V", 0);
                                                    composer3.q(objX21);
                                                }
                                                Function0 function16 = (Function0) ((KFunction) objX21);
                                                boolean zY18 = composer3.y(audioGuideViewModel3);
                                                Object objX22 = composer3.x();
                                                if (zY18 || objX22 == composer$Companion$Empty$3) {
                                                    objX22 = new AudioGuideComposableKt$AudioGuideComposable$1$12$2$9$1(1, audioGuideViewModel3, AudioGuideViewModel.class, "onTrackClicked", "onTrackClicked(Ljava/lang/String;ZZ)V", 0);
                                                    composer3.q(objX22);
                                                }
                                                Function1 function17 = (Function1) objX22;
                                                boolean zY19 = composer3.y(audioGuideViewModel3);
                                                ContributionLinkNavigator contributionLinkNavigator4 = contributionLinkNavigator3;
                                                boolean zY20 = zY19 | composer3.y(contributionLinkNavigator4);
                                                Context context2 = context;
                                                boolean zY21 = zY20 | composer3.y(context2);
                                                AudioGuideViewState.Success success4 = success3;
                                                Object objX23 = composer3.x();
                                                if (zY21 || objX23 == composer$Companion$Empty$3) {
                                                    objX23 = new n0(audioGuideViewModel3, contributionLinkNavigator4, context2, 5);
                                                    composer3.q(objX23);
                                                }
                                                AudioGuideTrackDetailBottomSheetKt.a(success4, jLongValue, function9, function10, function11, function12, function13, function14, function15, function16, function17, (Function1) objX23, composer3, 0);
                                                composer3.F();
                                            }
                                            composer3.F();
                                        } else if (audioGuideBottomSheet instanceof AudioGuideBottomSheet.Leaving) {
                                            composer3.L(1243002355);
                                            boolean zY22 = composer3.y(audioGuideViewModel3) | composer3.K(mutableState2) | composer3.y(appsFlyerUiTracker2);
                                            Function1 function18 = function8;
                                            boolean zK3 = composer3.K(function18) | zY22;
                                            Object objX24 = composer3.x();
                                            if (zK3 || objX24 == composer$Companion$Empty$3) {
                                                r0 r0Var = new r0((Object) audioGuideViewModel3, (Object) function18, mutableState2, (Object) appsFlyerUiTracker2, 2);
                                                composer3.q(r0Var);
                                                objX24 = r0Var;
                                            }
                                            Function0 function19 = (Function0) objX24;
                                            boolean zY23 = composer3.y(audioGuideViewModel3);
                                            Object objX25 = composer3.x();
                                            if (zY23 || objX25 == composer$Companion$Empty$3) {
                                                objX25 = new ia(audioGuideViewModel3, 1);
                                                composer3.q(objX25);
                                            }
                                            AudioGuideLeavingBottomSheetKt.a(function19, (Function0) objX25, composer3, 0);
                                            composer3.F();
                                        } else {
                                            composer3.L(1243868340);
                                            composer3.F();
                                        }
                                    } else {
                                        composer3.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663296, 145);
                            composer2.F();
                        } else {
                            composer2.L(639041926);
                            composer2.F();
                        }
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 6);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u(audioGuideViewModel, contributionLinkNavigator, function1, i2, 9);
        }
    }
}

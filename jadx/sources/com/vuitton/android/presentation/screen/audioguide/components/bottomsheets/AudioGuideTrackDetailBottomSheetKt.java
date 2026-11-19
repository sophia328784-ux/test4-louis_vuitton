package com.vuitton.android.presentation.screen.audioguide.components.bottomsheets;

import androidx.activity.compose.BackHandlerKt;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.BoxWithConstraintsKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVAudioGuideCompositionLocalProviderKt;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideTracker;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.AudioGuideTrackDetailBottomSheetKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideExtKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideViewState;
import com.vuitton.android.presentation.screen.audioguide.models.TrackDetailUiModel;
import defpackage.d0;
import defpackage.db;
import defpackage.l0;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006¨\u0006\u0012²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0006\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0007\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u0012\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b8\nX\u008a\u0084\u0002²\u0006\u0012\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\t0\b8\nX\u008a\u0084\u0002²\u0006\u000e\u0010\r\u001a\u00020\f8\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u000e\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u000f\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0010\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0011\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"", "playerBottomInColumn", "", "showMiniPlayer", "Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;", "activeSubMode", "arrowsVisible", "arrowsAlpha", "Lkotlin/Function0;", "", "currentOnNext", "currentOnPrevious", "", "lastSettledPage", "titlePlayerNaturalY", "titlePlayerHeight", "animatedOffsetY", "subModeTransitionProgress", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AudioGuideTrackDetailBottomSheetKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f53032a;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f53059a;

        static {
            int[] iArr = new int[TrackDetailSubMode.values().length];
            try {
                iArr[TrackDetailSubMode.ListeningQueue.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TrackDetailSubMode.Transcript.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TrackDetailSubMode.None.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f53059a = iArr;
        }
    }

    static {
        Dp.Companion companion = Dp.f11004c;
        f53032a = 160.0f;
    }

    public static final void a(final AudioGuideViewState.Success success, final long j2, final Function0 function0, final Function0 function1, final Function1 function2, final Function0 function3, final Function0 function4, final Function0 function5, final Function0 function6, final Function0 function7, final Function1 function8, final Function1 function9, Composer composer, final int i2) {
        success.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        GapComposer gapComposerH = composer.h(103659562);
        int i3 = i2 | (gapComposerH.y(success) ? 4 : 2) | (gapComposerH.e(j2) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536) | (gapComposerH.y(function4) ? 1048576 : 524288) | (gapComposerH.y(function5) ? 8388608 : 4194304) | (gapComposerH.y(function6) ? 67108864 : 33554432) | (gapComposerH.y(function7) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if (gapComposerH.p(i3 & 1, ((306783379 & i3) == 306783378 && (((gapComposerH.y(function8) ? (char) 4 : (char) 2) | (gapComposerH.y(function9) ? ' ' : (char) 16)) & 19) == 18) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVAudioGuideCompositionLocalProviderKt.a(ComposableLambdaKt.b(-1911590053, new Function2() { // from class: com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.f
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    boolean z;
                    ScrollState scrollState;
                    PagerState pagerState;
                    int i4;
                    int i5;
                    MutableState mutableState;
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    float f2 = AudioGuideTrackDetailBottomSheetKt.f53032a;
                    int i6 = 0;
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        final AudioGuideTracker audioGuideTracker = (AudioGuideTracker) composer2.k(AudioGuideTrackerEntryPointKt.f52977a);
                        Unit unit = Unit.f71739a;
                        boolean zY = composer2.y(audioGuideTracker);
                        Object objX = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (zY || objX == composer$Companion$Empty$1) {
                            objX = new AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$1$1(audioGuideTracker, null);
                            composer2.q(objX);
                        }
                        EffectsKt.e(composer2, unit, (Function2) objX);
                        final AudioGuideViewState.Success success2 = success;
                        final TrackDetailUiModel trackDetailUiModel = success2.f53226b;
                        AudioGuideUiModel audioGuideUiModel = success2.f53225a;
                        if (trackDetailUiModel == null) {
                            return unit;
                        }
                        final List list = audioGuideUiModel.m;
                        Iterator it = list.iterator();
                        int i7 = 0;
                        while (true) {
                            if (!it.hasNext()) {
                                i7 = -1;
                                break;
                            }
                            if (Intrinsics.c(((AudioGuideUiModel.TrackUiModel) it.next()).f53218a, trackDetailUiModel.f53230a)) {
                                break;
                            }
                            i7++;
                        }
                        int i8 = i7 < 0 ? 0 : i7;
                        final AudioGuideUiModel.TrackUiModel trackUiModel = (AudioGuideUiModel.TrackUiModel) CollectionsKt.G(i8, list);
                        final AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModelA = AudioGuideExtKt.a(audioGuideUiModel.f53199f, composer2);
                        boolean zY2 = composer2.y(list);
                        Object objX2 = composer2.x();
                        if (zY2 || objX2 == composer$Companion$Empty$1) {
                            objX2 = new db(list, i6);
                            composer2.q(objX2);
                        }
                        final PagerState pagerStateB = PagerStateKt.b(i8, (Function0) objX2, composer2, 0, 2);
                        Object objX3 = composer2.x();
                        if (objX3 == composer$Companion$Empty$1) {
                            objX3 = EffectsKt.j(EmptyCoroutineContext.f71840b, composer2);
                            composer2.q(objX3);
                        }
                        final CoroutineScope coroutineScope = (CoroutineScope) objX3;
                        ScrollState scrollStateB = ScrollKt.b(composer2);
                        Object objX4 = composer2.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = PrimitiveSnapshotStateKt.a(Float.MAX_VALUE);
                            composer2.q(objX4);
                        }
                        final MutableFloatState mutableFloatState = (MutableFloatState) objX4;
                        Object objX5 = composer2.x();
                        if (objX5 == composer$Companion$Empty$1) {
                            objX5 = SnapshotStateKt.e(new l0(scrollStateB, mutableFloatState, 15));
                            composer2.q(objX5);
                        }
                        final State state = (State) objX5;
                        Object objX6 = composer2.x();
                        if (objX6 == composer$Companion$Empty$1) {
                            objX6 = SnapshotStateKt.g(TrackDetailSubMode.None);
                            composer2.q(objX6);
                        }
                        MutableState mutableState2 = (MutableState) objX6;
                        boolean z2 = ((TrackDetailSubMode) mutableState2.getF10755b()) != TrackDetailSubMode.None;
                        Object objX7 = composer2.x();
                        if (objX7 == composer$Companion$Empty$1) {
                            objX7 = new d0(9, mutableState2);
                            composer2.q(objX7);
                        }
                        BackHandlerKt.a(z2, (Function0) objX7, composer2, 48, 0);
                        Object objX8 = composer2.x();
                        if (objX8 == composer$Companion$Empty$1) {
                            objX8 = SnapshotStateKt.g(Boolean.TRUE);
                            composer2.q(objX8);
                        }
                        MutableState mutableState3 = (MutableState) objX8;
                        final State stateB = AnimateAsStateKt.b(((Boolean) mutableState3.getF10755b()).booleanValue() ? 1.0f : Call.Parameters.DEFAULT_CAMERA_ZOOM, AnimationSpecKt.c(500, 0, null, 6), "arrowsAlpha", composer2, 3120, 20);
                        Unit unit2 = Unit.f71739a;
                        boolean zY3 = composer2.y(success2);
                        Object objX9 = composer2.x();
                        if (zY3 || objX9 == composer$Companion$Empty$1) {
                            objX9 = new AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$3$1(success2, mutableState3, null);
                            composer2.q(objX9);
                        }
                        EffectsKt.e(composer2, unit2, (Function2) objX9);
                        boolean zY4 = composer2.y(coroutineScope) | composer2.K(pagerStateB) | composer2.y(list);
                        Object objX10 = composer2.x();
                        if (zY4 || objX10 == composer$Companion$Empty$1) {
                            objX10 = new Function0() { // from class: com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.c
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    float f3 = AudioGuideTrackDetailBottomSheetKt.f53032a;
                                    BuildersKt.c(coroutineScope, null, null, new AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$animateToNextPage$1$1$1(pagerStateB, list, null), 3);
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX10);
                        }
                        final Function0 function10 = (Function0) objX10;
                        boolean zY5 = composer2.y(coroutineScope) | composer2.K(pagerStateB);
                        Object objX11 = composer2.x();
                        if (zY5 || objX11 == composer$Companion$Empty$1) {
                            objX11 = new Function0() { // from class: com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.d
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    float f3 = AudioGuideTrackDetailBottomSheetKt.f53032a;
                                    BuildersKt.c(coroutineScope, null, null, new AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$animateToPreviousPage$1$1$1(pagerStateB, null), 3);
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX11);
                        }
                        final Function0 function11 = (Function0) objX11;
                        MutableState mutableStateL = SnapshotStateKt.l(function6, composer2);
                        MutableState mutableStateL2 = SnapshotStateKt.l(function7, composer2);
                        Object objX12 = composer2.x();
                        if (objX12 == composer$Companion$Empty$1) {
                            objX12 = SnapshotIntStateKt.a(i8);
                            composer2.q(objX12);
                        }
                        MutableIntState mutableIntState = (MutableIntState) objX12;
                        Integer numValueOf = Integer.valueOf(i8);
                        boolean zB = composer2.b(z2) | composer2.K(scrollStateB) | composer2.K(pagerStateB) | composer2.d(i8);
                        Object objX13 = composer2.x();
                        if (zB || objX13 == composer$Companion$Empty$1) {
                            boolean z3 = z2;
                            int i9 = i8;
                            objX13 = new AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$4$1(z3, scrollStateB, pagerStateB, i9, mutableIntState, null);
                            z = z3;
                            scrollState = scrollStateB;
                            pagerState = pagerStateB;
                            i4 = i9;
                            mutableIntState = mutableIntState;
                            composer2.q(objX13);
                        } else {
                            z = z2;
                            scrollState = scrollStateB;
                            i4 = i8;
                            pagerState = pagerStateB;
                        }
                        EffectsKt.e(composer2, numValueOf, (Function2) objX13);
                        TrackDetailSubMode trackDetailSubMode = (TrackDetailSubMode) mutableState2.getF10755b();
                        boolean zK = composer2.K(pagerState) | composer2.d(i4);
                        Object objX14 = composer2.x();
                        if (zK || objX14 == composer$Companion$Empty$1) {
                            i5 = i4;
                            mutableState = mutableState2;
                            objX14 = new AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$5$1(pagerState, i5, mutableState, mutableIntState, null);
                            composer2.q(objX14);
                        } else {
                            i5 = i4;
                            mutableState = mutableState2;
                        }
                        EffectsKt.e(composer2, trackDetailSubMode, (Function2) objX14);
                        boolean zK2 = composer2.K(pagerState) | composer2.y(audioGuideTracker) | composer2.K(mutableStateL) | composer2.K(mutableStateL2);
                        Object objX15 = composer2.x();
                        if (zK2 || objX15 == composer$Companion$Empty$1) {
                            PagerState pagerState2 = pagerState;
                            AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$6$1 audioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$6$1 = new AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$6$1(pagerState2, audioGuideTracker, mutableIntState, mutableStateL, mutableStateL2, null);
                            pagerState = pagerState2;
                            composer2.q(audioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$6$1);
                            objX15 = audioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$6$1;
                        }
                        EffectsKt.e(composer2, pagerState, (Function2) objX15);
                        Modifier modifierB = BackgroundKt.b(new DTFunctionNameModifier("AudioGuideTrackDetailBottomSheet$lambda$0").o(SizeKt.f5052c), audioGuideUiModel.f53198e, RectangleShapeKt.f8913a);
                        final long j3 = j2;
                        final Function0 function12 = function1;
                        final Function1 function13 = function2;
                        final Function0 function14 = function3;
                        final Function0 function15 = function4;
                        final Function0 function16 = function5;
                        final Function1 function17 = function8;
                        final Function1 function18 = function9;
                        final Function0 function19 = function0;
                        final MutableState mutableState4 = mutableState;
                        final ScrollState scrollState2 = scrollState;
                        final PagerState pagerState3 = pagerState;
                        final boolean z4 = z;
                        final int i10 = i5;
                        BoxWithConstraintsKt.a(modifierB, null, false, ComposableLambdaKt.b(2123473221, new Function3() { // from class: wa
                            /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
                                jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r29v0 com.vuitton.android.presentation.screen.audioguide.AudioGuideTracker
                                	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
                                	at jadx.core.dex.visitors.ModVisitor.anonymousCallArgMod(ModVisitor.java:535)
                                	at jadx.core.dex.visitors.ModVisitor.processAnonymousConstructor(ModVisitor.java:523)
                                	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:111)
                                	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
                                */
                            @Override // kotlin.jvm.functions.Function3
                            public final java.lang.Object A(java.lang.Object r53, java.lang.Object r54, java.lang.Object r55) {
                                /*
                                    Method dump skipped, instruction units count: 1406
                                    To view this dump add '--comments-level debug' option
                                */
                                throw new UnsupportedOperationException("Method not decompiled: defpackage.wa.A(java.lang.Object, java.lang.Object, java.lang.Object):java.lang.Object");
                            }
                        }, composer2), composer2, 3072, 6);
                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
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
            recomposeScopeImplB0.d = new Function2(j2, function0, function1, function2, function3, function4, function5, function6, function7, function8, function9, i2) { // from class: cb

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ long f21109c;
                public final /* synthetic */ Function0 d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ Function0 f21110e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Function1 f21111f;
                public final /* synthetic */ Function0 g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Function0 f21112h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ Function0 f21113i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ Function0 f21114j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ Function0 f21115k;
                public final /* synthetic */ Function1 l;
                public final /* synthetic */ Function1 m;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    AudioGuideTrackDetailBottomSheetKt.a(this.f21108b, this.f21109c, this.d, this.f21110e, this.f21111f, this.g, this.f21112h, this.f21113i, this.f21114j, this.f21115k, this.l, this.m, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}

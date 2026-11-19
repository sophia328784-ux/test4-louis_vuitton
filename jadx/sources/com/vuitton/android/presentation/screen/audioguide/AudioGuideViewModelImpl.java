package com.vuitton.android.presentation.screen.audioguide;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.usecase.account.accessibility.GetAllAccessibilityValuesUseCase;
import com.vuitton.android.domain.usecase.audioguide.ClearAccessDataUseCase;
import com.vuitton.android.domain.usecase.audioguide.ClearCachedTracksUseCase;
import com.vuitton.android.domain.usecase.audioguide.GetAudioGuideUseCase;
import com.vuitton.android.domain.usecase.audioguide.GetCompletedTracksUseCase;
import com.vuitton.android.domain.usecase.audioguide.GetTrackDetailUseCase;
import com.vuitton.android.domain.usecase.audioguide.SaveAccessDataUseCase;
import com.vuitton.android.domain.usecase.audioguide.SaveCompletedTrackUseCase;
import com.vuitton.android.domain.usecase.audioplayer.DestroyMediaControllerUseCase;
import com.vuitton.android.domain.usecase.audioplayer.GetCurrentPositionUseCase;
import com.vuitton.android.domain.usecase.audioplayer.PauseMediaUseCase;
import com.vuitton.android.domain.usecase.audioplayer.PlayMediaUseCase;
import com.vuitton.android.domain.usecase.audioplayer.ResumeMediaUseCase;
import com.vuitton.android.domain.usecase.audioplayer.SeekToPositionUseCase;
import com.vuitton.android.domain.usecase.audioplayer.SetMediaControllerCallbackUseCase;
import com.vuitton.android.domain.usecase.audioplayer.SetMediaSpeedUseCase;
import com.vuitton.android.domain.usecase.audioplayer.SetPlaylistUseCase;
import com.vuitton.android.domain.usecase.audioplayer.StopMediaUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.presentation.model.common.SoundUiModel;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideBottomSheet;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideViewState;
import com.vuitton.android.presentation.screen.audioguide.models.TrackDetailUiModel;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.audioplayer.AudioPlayerItem;
import com.vuitton.foundation.model.domain.model.audioplayer.PlayerSpeed;
import com.vuitton.foundation.model.domain.model.audioplayer.PlayerState;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B¹\u0001\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020-¢\u0006\u0004\b/\u00100¨\u00061"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/domain/usecase/audioguide/GetAudioGuideUseCase;", "getAudioGuideUseCase", "Lcom/vuitton/android/domain/usecase/audioguide/GetTrackDetailUseCase;", "getTrackDetailUseCase", "Lcom/vuitton/android/domain/usecase/audioguide/GetCompletedTracksUseCase;", "getCompletedTracksUseCase", "Lcom/vuitton/android/domain/usecase/audioguide/SaveCompletedTrackUseCase;", "saveCompletedTrackUseCase", "Lcom/vuitton/android/domain/usecase/audioplayer/PlayMediaUseCase;", "playMediaUseCase", "Lcom/vuitton/android/domain/usecase/audioplayer/PauseMediaUseCase;", "pauseMediaUseCase", "Lcom/vuitton/android/domain/usecase/audioplayer/ResumeMediaUseCase;", "resumeMediaUseCase", "Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;", "seekToPositionUseCase", "Lcom/vuitton/android/domain/usecase/audioplayer/GetCurrentPositionUseCase;", "getCurrentPositionUseCase", "Lcom/vuitton/android/domain/usecase/audioplayer/SetMediaControllerCallbackUseCase;", "setMediaControllerCallbackUseCase", "Lcom/vuitton/android/domain/usecase/audioplayer/SetMediaSpeedUseCase;", "setMediaSpeedUseCase", "Lcom/vuitton/android/domain/usecase/audioplayer/StopMediaUseCase;", "stopMediaUseCase", "Lcom/vuitton/android/domain/usecase/audioplayer/DestroyMediaControllerUseCase;", "destroyMediaControllerUseCase", "Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;", "getAllAccessibilityValuesUseCase", "Lcom/vuitton/android/domain/usecase/audioguide/SaveAccessDataUseCase;", "saveAccessDataUseCase", "Lcom/vuitton/android/domain/usecase/audioguide/ClearAccessDataUseCase;", "clearAccessDataUseCase", "Lcom/vuitton/android/domain/usecase/audioguide/ClearCachedTracksUseCase;", "clearCachedTracksUseCase", "Lcom/vuitton/android/domain/usecase/audioplayer/SetPlaylistUseCase;", "setPlaylistUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/audioguide/GetAudioGuideUseCase;Lcom/vuitton/android/domain/usecase/audioguide/GetTrackDetailUseCase;Lcom/vuitton/android/domain/usecase/audioguide/GetCompletedTracksUseCase;Lcom/vuitton/android/domain/usecase/audioguide/SaveCompletedTrackUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/PlayMediaUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/PauseMediaUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/ResumeMediaUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/GetCurrentPositionUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/SetMediaControllerCallbackUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/SetMediaSpeedUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/StopMediaUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/DestroyMediaControllerUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;Lcom/vuitton/android/domain/usecase/audioguide/SaveAccessDataUseCase;Lcom/vuitton/android/domain/usecase/audioguide/ClearAccessDataUseCase;Lcom/vuitton/android/domain/usecase/audioguide/ClearCachedTracksUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/SetPlaylistUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AudioGuideViewModelImpl extends ViewModel implements AudioGuideViewModel {
    public final BufferedChannel A;
    public Job B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f52978a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Monitor f52979b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GetAudioGuideUseCase f52980c;
    public final GetTrackDetailUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GetCompletedTracksUseCase f52981e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SaveCompletedTrackUseCase f52982f;
    public final PlayMediaUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final PauseMediaUseCase f52983h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ResumeMediaUseCase f52984i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final SeekToPositionUseCase f52985j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final GetCurrentPositionUseCase f52986k;
    public final SetMediaSpeedUseCase l;
    public final StopMediaUseCase m;
    public final DestroyMediaControllerUseCase n;
    public final GetAllAccessibilityValuesUseCase o;
    public final SaveAccessDataUseCase p;
    public final ClearAccessDataUseCase q;
    public final ClearCachedTracksUseCase r;
    public final SetPlaylistUseCase s;
    public final String t;
    public final String u;
    public final InAppDispatch v;
    public final MutableStateFlow w;
    public final StateFlow x;
    public final MutableStateFlow y;
    public final MutableStateFlow z;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f52987a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f52988b;

        static {
            int[] iArr = new int[PlayerState.values().length];
            try {
                iArr[PlayerState.PLAYING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PlayerState.PAUSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PlayerState.STOPPED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f52987a = iArr;
            int[] iArr2 = new int[PlayerSpeed.values().length];
            try {
                iArr2[PlayerSpeed.SPEED_1X.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[PlayerSpeed.SPEED_1_5X.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            f52988b = iArr2;
        }
    }

    @Inject
    public AudioGuideViewModelImpl(RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, SavedStateHandle savedStateHandle, Logger logger, Monitor monitor, GetAudioGuideUseCase getAudioGuideUseCase, GetTrackDetailUseCase getTrackDetailUseCase, GetCompletedTracksUseCase getCompletedTracksUseCase, SaveCompletedTrackUseCase saveCompletedTrackUseCase, PlayMediaUseCase playMediaUseCase, PauseMediaUseCase pauseMediaUseCase, ResumeMediaUseCase resumeMediaUseCase, SeekToPositionUseCase seekToPositionUseCase, GetCurrentPositionUseCase getCurrentPositionUseCase, SetMediaControllerCallbackUseCase setMediaControllerCallbackUseCase, SetMediaSpeedUseCase setMediaSpeedUseCase, StopMediaUseCase stopMediaUseCase, DestroyMediaControllerUseCase destroyMediaControllerUseCase, GetAllAccessibilityValuesUseCase getAllAccessibilityValuesUseCase, SaveAccessDataUseCase saveAccessDataUseCase, ClearAccessDataUseCase clearAccessDataUseCase, ClearCachedTracksUseCase clearCachedTracksUseCase, SetPlaylistUseCase setPlaylistUseCase) {
        requireUserInAppDispatchUseCase.getClass();
        savedStateHandle.getClass();
        logger.getClass();
        monitor.getClass();
        getAudioGuideUseCase.getClass();
        getTrackDetailUseCase.getClass();
        getCompletedTracksUseCase.getClass();
        saveCompletedTrackUseCase.getClass();
        playMediaUseCase.getClass();
        pauseMediaUseCase.getClass();
        resumeMediaUseCase.getClass();
        seekToPositionUseCase.getClass();
        getCurrentPositionUseCase.getClass();
        setMediaControllerCallbackUseCase.getClass();
        setMediaSpeedUseCase.getClass();
        stopMediaUseCase.getClass();
        destroyMediaControllerUseCase.getClass();
        getAllAccessibilityValuesUseCase.getClass();
        saveAccessDataUseCase.getClass();
        clearAccessDataUseCase.getClass();
        clearCachedTracksUseCase.getClass();
        setPlaylistUseCase.getClass();
        this.f52978a = logger;
        this.f52979b = monitor;
        this.f52980c = getAudioGuideUseCase;
        this.d = getTrackDetailUseCase;
        this.f52981e = getCompletedTracksUseCase;
        this.f52982f = saveCompletedTrackUseCase;
        this.g = playMediaUseCase;
        this.f52983h = pauseMediaUseCase;
        this.f52984i = resumeMediaUseCase;
        this.f52985j = seekToPositionUseCase;
        this.f52986k = getCurrentPositionUseCase;
        this.l = setMediaSpeedUseCase;
        this.m = stopMediaUseCase;
        this.n = destroyMediaControllerUseCase;
        this.o = getAllAccessibilityValuesUseCase;
        this.p = saveAccessDataUseCase;
        this.q = clearAccessDataUseCase;
        this.r = clearCachedTracksUseCase;
        this.s = setPlaylistUseCase;
        this.t = (String) savedStateHandle.a("audioGuideId");
        this.u = (String) savedStateHandle.a("trackId");
        this.v = requireUserInAppDispatchUseCase.f49912a.b();
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(AudioGuideViewState.Loading.f53224a);
        this.w = mutableStateFlowA;
        this.x = FlowKt.b(mutableStateFlowA);
        this.y = StateFlowKt.a(null);
        this.z = StateFlowKt.a(0L);
        this.A = ChannelKt.a(0, 7, null);
        Rb();
        setMediaControllerCallbackUseCase.f49328a.d(new Function5() { // from class: com.vuitton.android.presentation.screen.audioguide.a
            @Override // kotlin.jvm.functions.Function5
            public final Object D(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                PlayerState playerState;
                Object obj6;
                Object value;
                TrackDetailUiModel trackDetailUiModel;
                String str;
                ((Boolean) obj).getClass();
                PlayerState playerState2 = (PlayerState) obj2;
                long jLongValue = ((Long) obj4).longValue();
                long jLongValue2 = ((Long) obj5).longValue();
                playerState2.getClass();
                AudioGuideViewModelImpl audioGuideViewModelImpl = this.f53010b;
                MutableStateFlow mutableStateFlow = audioGuideViewModelImpl.w;
                Object value2 = mutableStateFlow.getValue();
                AudioGuideViewState.Success success = value2 instanceof AudioGuideViewState.Success ? (AudioGuideViewState.Success) value2 : null;
                PlayerState playerState3 = success != null ? success.f53227c : null;
                while (true) {
                    Object value3 = mutableStateFlow.getValue();
                    Object objA = (AudioGuideViewState) value3;
                    AudioGuideViewState.Success success2 = objA instanceof AudioGuideViewState.Success ? (AudioGuideViewState.Success) objA : null;
                    if (success2 != null) {
                        playerState = playerState3;
                        obj6 = value3;
                        objA = AudioGuideViewState.Success.a(success2, null, null, playerState2, jLongValue2 < 0 ? 0L : jLongValue2, null, null, 51);
                    } else {
                        playerState = playerState3;
                        obj6 = value3;
                    }
                    if (mutableStateFlow.i(obj6, objA)) {
                        break;
                    }
                    playerState3 = playerState;
                }
                MutableStateFlow mutableStateFlow2 = audioGuideViewModelImpl.z;
                do {
                    value = mutableStateFlow2.getValue();
                    ((Number) value).longValue();
                } while (!mutableStateFlow2.i(value, Long.valueOf(jLongValue < 0 ? 0L : jLongValue)));
                PlayerState playerState4 = PlayerState.PLAYING;
                Job job = audioGuideViewModelImpl.B;
                if (playerState2 != playerState4) {
                    if (job != null) {
                        job.cancel(null);
                    }
                    audioGuideViewModelImpl.B = null;
                } else if (job == null || !job.isActive()) {
                    audioGuideViewModelImpl.B = BuildersKt.c(ViewModelKt.a(audioGuideViewModelImpl), null, null, new AudioGuideViewModelImpl$startPositionTicker$1(audioGuideViewModelImpl, null), 3);
                }
                if (playerState2 == PlayerState.STOPPED && playerState == playerState4) {
                    Object value4 = mutableStateFlow.getValue();
                    AudioGuideViewState.Success success3 = value4 instanceof AudioGuideViewState.Success ? (AudioGuideViewState.Success) value4 : null;
                    if (success3 != null && (trackDetailUiModel = success3.f53226b) != null && (str = trackDetailUiModel.f53230a) != null) {
                        BuildersKt.c(ViewModelKt.a(audioGuideViewModelImpl), null, null, new AudioGuideViewModelImpl$setTrackAsCompleted$1(audioGuideViewModelImpl, str, null), 3);
                    }
                    audioGuideViewModelImpl.Ac(1);
                }
                return Unit.f71739a;
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:50:0x011e  */
    /* JADX WARN: Code duplicated, block: B:53:0x0127  */
    /* JADX WARN: Code duplicated, block: B:56:0x014a  */
    /* JADX WARN: Code duplicated, block: B:58:0x0158  */
    /* JADX WARN: Code duplicated, block: B:64:0x018e A[PHI: r0
      0x018e: PHI (r0v36 java.lang.Object) = (r0v27 java.lang.Object), (r0v38 java.lang.Object) binds: [B:52:0x0125, B:63:0x018a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:66:0x0195  */
    /* JADX WARN: Code duplicated, block: B:68:0x00e5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:72:0x015e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ce, code lost:
    
        if (r0 == r4) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x010b, code lost:
    
        if (r0 == r4) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0187, code lost:
    
        if (r0.u(r5, r3) == r4) goto L67;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object yc(com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModelImpl r20, java.lang.String r21, kotlin.coroutines.jvm.internal.ContinuationImpl r22) {
        /*
            Method dump skipped, instruction units count: 420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModelImpl.yc(com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModelImpl, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void Ac(int i2) {
        String str;
        Object value = this.w.getValue();
        AudioGuideViewState.Success success = value instanceof AudioGuideViewState.Success ? (AudioGuideViewState.Success) value : null;
        if (success == null) {
            return;
        }
        AudioGuideUiModel audioGuideUiModel = success.f53225a;
        TrackDetailUiModel trackDetailUiModel = success.f53226b;
        if (trackDetailUiModel == null || (str = trackDetailUiModel.f53230a) == null) {
            return;
        }
        Iterator it = audioGuideUiModel.m.iterator();
        int i3 = 0;
        while (true) {
            if (!it.hasNext()) {
                i3 = -1;
                break;
            } else if (Intrinsics.c(((AudioGuideUiModel.TrackUiModel) it.next()).f53218a, str)) {
                break;
            } else {
                i3++;
            }
        }
        AudioGuideUiModel.TrackUiModel trackUiModel = (AudioGuideUiModel.TrackUiModel) CollectionsKt.G(i3 + i2, audioGuideUiModel.m);
        if (trackUiModel == null) {
            return;
        }
        m6(trackUiModel.f53218a, false, false);
    }

    @Override // com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModel
    public final void Fb() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new AudioGuideViewModelImpl$onLeaveAudioGuide$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModel
    public final void Ja() {
        long currentPosition = this.f52986k.f49323a.getCurrentPosition() - 15000;
        if (currentPosition < 0) {
            currentPosition = 0;
        }
        this.f52985j.f49327a.seekTo(currentPosition);
    }

    @Override // com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModel
    public final Flow O2() {
        return FlowKt.y(this.A);
    }

    @Override // com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModel
    public final void Rb() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new AudioGuideViewModelImpl$initAudioGuide$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModel
    public final void T5() {
        Object value = this.w.getValue();
        AudioGuideViewState.Success success = value instanceof AudioGuideViewState.Success ? (AudioGuideViewState.Success) value : null;
        if (success == null) {
            return;
        }
        long currentPosition = this.f52986k.f49323a.getCurrentPosition() + 15000;
        long j2 = success.d;
        if (currentPosition > j2) {
            currentPosition = j2;
        }
        this.f52985j.f49327a.seekTo(currentPosition);
    }

    @Override // com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModel
    public final void X3() {
        Object value = this.w.getValue();
        AudioGuideViewState.Success success = value instanceof AudioGuideViewState.Success ? (AudioGuideViewState.Success) value : null;
        if (success != null && success.f53227c == PlayerState.PLAYING) {
            this.f52983h.f49324a.pause();
        }
    }

    @Override // com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getX() {
        return this.x;
    }

    @Override // com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModel
    public final void c3() {
        Object value = this.w.getValue();
        Object obj = null;
        AudioGuideViewState.Success success = value instanceof AudioGuideViewState.Success ? (AudioGuideViewState.Success) value : null;
        if (success == null) {
            return;
        }
        int i2 = WhenMappings.f52987a[success.f53227c.ordinal()];
        if (i2 == 1) {
            this.f52983h.f49324a.pause();
            return;
        }
        if (i2 == 2) {
            this.f52984i.f49326a.resume();
            return;
        }
        if (i2 != 3) {
            v40.g();
            return;
        }
        for (Object obj2 : success.f53225a.m) {
            String str = ((AudioGuideUiModel.TrackUiModel) obj2).f53218a;
            TrackDetailUiModel trackDetailUiModel = success.f53226b;
            if (Intrinsics.c(str, trackDetailUiModel != null ? trackDetailUiModel.f53230a : null)) {
                obj = obj2;
                break;
            }
        }
        AudioGuideUiModel.TrackUiModel trackUiModel = (AudioGuideUiModel.TrackUiModel) obj;
        PlayMediaUseCase playMediaUseCase = this.g;
        if (trackUiModel == null) {
            playMediaUseCase.f49325a.c();
            return;
        }
        long jLongValue = ((Number) this.z.getValue()).longValue();
        zc(trackUiModel, false);
        if (jLongValue > 0) {
            this.f52985j.f49327a.seekTo(jLongValue);
        }
        playMediaUseCase.f49325a.c();
    }

    @Override // com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModel
    public final StateFlow cb() {
        return this.z;
    }

    @Override // com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModel
    public final StateFlow e() {
        return this.y;
    }

    @Override // com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModel
    public final void j7(AudioGuideBottomSheet audioGuideBottomSheet) {
        this.y.setValue(audioGuideBottomSheet);
    }

    @Override // com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModel
    public final void k9() {
        PlayerSpeed playerSpeed;
        Object value;
        Object objA;
        MutableStateFlow mutableStateFlow = this.w;
        Object value2 = mutableStateFlow.getValue();
        AudioGuideViewState.Success success = value2 instanceof AudioGuideViewState.Success ? (AudioGuideViewState.Success) value2 : null;
        if (success == null) {
            return;
        }
        int i2 = WhenMappings.f52988b[success.f53228e.ordinal()];
        if (i2 != 1) {
            playerSpeed = i2 != 2 ? PlayerSpeed.SPEED_1X : PlayerSpeed.SPEED_2X;
        } else {
            playerSpeed = PlayerSpeed.SPEED_1_5X;
        }
        PlayerSpeed playerSpeed2 = playerSpeed;
        SetMediaSpeedUseCase setMediaSpeedUseCase = this.l;
        setMediaSpeedUseCase.getClass();
        playerSpeed2.getClass();
        setMediaSpeedUseCase.f49329a.e(playerSpeed2);
        do {
            value = mutableStateFlow.getValue();
            objA = (AudioGuideViewState) value;
            AudioGuideViewState.Success success2 = objA instanceof AudioGuideViewState.Success ? (AudioGuideViewState.Success) objA : null;
            if (success2 != null) {
                objA = AudioGuideViewState.Success.a(success2, null, null, null, 0L, playerSpeed2, null, 47);
            }
        } while (!mutableStateFlow.i(value, objA));
    }

    @Override // com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModel
    public final void kc(long j2) {
        this.f52985j.f49327a.seekTo(j2);
    }

    @Override // com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModel
    public final void l8(String str) {
        str.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new AudioGuideViewModelImpl$onLanguageSelected$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModel
    public final void m6(String str, boolean z, boolean z2) {
        str.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new AudioGuideViewModelImpl$onTrackClicked$1(this, z2, str, z, null), 3);
    }

    @Override // androidx.lifecycle.ViewModel
    public final void onCleared() {
        this.m.f49331a.stop();
        this.n.f49322a.destroy();
    }

    @Override // com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModel
    public final void p9() {
        Ac(1);
    }

    @Override // com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModel
    public final void r1() {
        Ac(-1);
    }

    public final void zc(AudioGuideUiModel.TrackUiModel trackUiModel, boolean z) {
        Object value = this.w.getValue();
        AudioGuideViewState.Success success = value instanceof AudioGuideViewState.Success ? (AudioGuideViewState.Success) value : null;
        if (success == null) {
            return;
        }
        List list = success.f53225a.m;
        Iterator it = list.iterator();
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                i2 = -1;
                break;
            } else if (Intrinsics.c(((AudioGuideUiModel.TrackUiModel) it.next()).f53218a, trackUiModel.f53218a)) {
                break;
            } else {
                i2++;
            }
        }
        int i3 = i2 >= 0 ? i2 : 0;
        List<AudioGuideUiModel.TrackUiModel> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        for (AudioGuideUiModel.TrackUiModel trackUiModel2 : list2) {
            String str = trackUiModel2.f53219b;
            SoundUiModel soundUiModel = trackUiModel2.f53222f;
            arrayList.add(new AudioPlayerItem(soundUiModel.f51797c, soundUiModel.f51796b, new AssetImage(trackUiModel2.f53221e.f51778b, null, null, null, 14, null), str, trackUiModel2.f53220c));
        }
        SetPlaylistUseCase setPlaylistUseCase = this.s;
        setPlaylistUseCase.getClass();
        setPlaylistUseCase.f49330a.b(i3, arrayList);
        if (z) {
            this.g.f49325a.c();
        }
    }
}

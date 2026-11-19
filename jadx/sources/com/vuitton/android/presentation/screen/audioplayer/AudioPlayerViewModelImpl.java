package com.vuitton.android.presentation.screen.audioplayer;

import androidx.lifecycle.ViewModel;
import com.vuitton.android.domain.usecase.audioplayer.DestroyMediaControllerUseCase;
import com.vuitton.android.domain.usecase.audioplayer.GetCurrentPositionUseCase;
import com.vuitton.android.domain.usecase.audioplayer.PauseMediaUseCase;
import com.vuitton.android.domain.usecase.audioplayer.PlayMediaUseCase;
import com.vuitton.android.domain.usecase.audioplayer.ResumeMediaUseCase;
import com.vuitton.android.domain.usecase.audioplayer.SeekToPositionUseCase;
import com.vuitton.android.domain.usecase.audioplayer.SetMediaControllerCallbackUseCase;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerControllerUiState;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerEvent;
import defpackage.ub;
import defpackage.v40;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002BA\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModel;", "Lcom/vuitton/android/domain/usecase/audioplayer/SetMediaControllerCallbackUseCase;", "setMediaControllerCallbackUseCase", "Lcom/vuitton/android/domain/usecase/audioplayer/GetCurrentPositionUseCase;", "getCurrentPositionUseCase", "Lcom/vuitton/android/domain/usecase/audioplayer/DestroyMediaControllerUseCase;", "destroyMediaControllerUseCase", "Lcom/vuitton/android/domain/usecase/audioplayer/PlayMediaUseCase;", "playMediaUseCase", "Lcom/vuitton/android/domain/usecase/audioplayer/PauseMediaUseCase;", "pauseMediaUseCase", "Lcom/vuitton/android/domain/usecase/audioplayer/ResumeMediaUseCase;", "resumeMediaUseCase", "Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;", "seekToPositionUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/audioplayer/SetMediaControllerCallbackUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/GetCurrentPositionUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/DestroyMediaControllerUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/PlayMediaUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/PauseMediaUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/ResumeMediaUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AudioPlayerViewModelImpl extends ViewModel implements AudioPlayerViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetCurrentPositionUseCase f53237a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DestroyMediaControllerUseCase f53238b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PlayMediaUseCase f53239c;
    public final PauseMediaUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ResumeMediaUseCase f53240e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SeekToPositionUseCase f53241f;
    public final MutableStateFlow g;

    @Inject
    public AudioPlayerViewModelImpl(SetMediaControllerCallbackUseCase setMediaControllerCallbackUseCase, GetCurrentPositionUseCase getCurrentPositionUseCase, DestroyMediaControllerUseCase destroyMediaControllerUseCase, PlayMediaUseCase playMediaUseCase, PauseMediaUseCase pauseMediaUseCase, ResumeMediaUseCase resumeMediaUseCase, SeekToPositionUseCase seekToPositionUseCase) {
        setMediaControllerCallbackUseCase.getClass();
        getCurrentPositionUseCase.getClass();
        destroyMediaControllerUseCase.getClass();
        playMediaUseCase.getClass();
        pauseMediaUseCase.getClass();
        resumeMediaUseCase.getClass();
        seekToPositionUseCase.getClass();
        this.f53237a = getCurrentPositionUseCase;
        this.f53238b = destroyMediaControllerUseCase;
        this.f53239c = playMediaUseCase;
        this.d = pauseMediaUseCase;
        this.f53240e = resumeMediaUseCase;
        this.f53241f = seekToPositionUseCase;
        this.g = StateFlowKt.a(new AudioPlayerControllerUiState(false, null, null, 0L, null, 31, null));
        setMediaControllerCallbackUseCase.f49328a.d(new ub(this, 0));
    }

    @Override // com.vuitton.android.presentation.screen.audioplayer.AudioPlayerViewModel
    public final void Jb(AudioPlayerEvent audioPlayerEvent) {
        MutableStateFlow mutableStateFlow;
        Object value;
        AudioPlayerControllerUiState audioPlayerControllerUiState;
        audioPlayerEvent.getClass();
        if (audioPlayerEvent.equals(AudioPlayerEvent.Play.f53251a)) {
            this.f53239c.f49325a.c();
            return;
        }
        boolean zEquals = audioPlayerEvent.equals(AudioPlayerEvent.Pause.f53250a);
        PauseMediaUseCase pauseMediaUseCase = this.d;
        if (zEquals) {
            pauseMediaUseCase.f49324a.pause();
            return;
        }
        if (audioPlayerEvent.equals(AudioPlayerEvent.Resume.f53254a)) {
            this.f53240e.f49326a.resume();
            return;
        }
        boolean zEquals2 = audioPlayerEvent.equals(AudioPlayerEvent.GoAhead.f53248a);
        SeekToPositionUseCase seekToPositionUseCase = this.f53241f;
        GetCurrentPositionUseCase getCurrentPositionUseCase = this.f53237a;
        if (zEquals2) {
            seekToPositionUseCase.f49327a.seekTo(getCurrentPositionUseCase.f49323a.getCurrentPosition() + 15000);
            return;
        }
        if (audioPlayerEvent.equals(AudioPlayerEvent.GoBack.f53249a)) {
            seekToPositionUseCase.f49327a.seekTo(getCurrentPositionUseCase.f49323a.getCurrentPosition() - 15000);
            return;
        }
        if (audioPlayerEvent.equals(AudioPlayerEvent.PlayerUiChange.f53252a)) {
            do {
                mutableStateFlow = this.g;
                value = mutableStateFlow.getValue();
                audioPlayerControllerUiState = (AudioPlayerControllerUiState) value;
            } while (!mutableStateFlow.i(value, new AudioPlayerControllerUiState(audioPlayerControllerUiState.f53244a, audioPlayerControllerUiState.f53245b, audioPlayerControllerUiState.f53246c, getCurrentPositionUseCase.f49323a.getCurrentPosition(), audioPlayerControllerUiState.f53247e)));
            return;
        }
        if (audioPlayerEvent.equals(AudioPlayerEvent.Reset.f53253a)) {
            pauseMediaUseCase.f49324a.pause();
            seekToPositionUseCase.f49327a.seekTo(0L);
        } else if (!(audioPlayerEvent instanceof AudioPlayerEvent.SeekTo)) {
            v40.g();
        } else {
            seekToPositionUseCase.f49327a.seekTo(((AudioPlayerEvent.SeekTo) audioPlayerEvent).f53255a);
        }
    }

    @Override // com.vuitton.android.presentation.screen.audioplayer.AudioPlayerViewModel
    public final void L3() {
        this.f53238b.f49322a.destroy();
    }

    @Override // com.vuitton.android.presentation.screen.audioplayer.AudioPlayerViewModel
    public final StateFlow d7() {
        return this.g;
    }
}

package com.vuitton.android.presentation.screen.audioplayer.model;

import com.vuitton.foundation.model.domain.model.audioplayer.PlayerState;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B?\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;", "", "", "isMediaControllerReady", "Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;", "playerState", "Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;", "currentMedia", "", "currentPosition", "totalDuration", "<init>", "(ZLcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;JLjava/lang/Long;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AudioPlayerControllerUiState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f53244a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PlayerState f53245b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AudioPlayerItemUiModel f53246c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Long f53247e;

    public /* synthetic */ AudioPlayerControllerUiState(boolean z, PlayerState playerState, AudioPlayerItemUiModel audioPlayerItemUiModel, long j2, Long l, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? null : playerState, (i2 & 4) != 0 ? null : audioPlayerItemUiModel, (i2 & 8) != 0 ? 0L : j2, (i2 & 16) != 0 ? null : l);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioPlayerControllerUiState)) {
            return false;
        }
        AudioPlayerControllerUiState audioPlayerControllerUiState = (AudioPlayerControllerUiState) obj;
        return this.f53244a == audioPlayerControllerUiState.f53244a && this.f53245b == audioPlayerControllerUiState.f53245b && Intrinsics.c(this.f53246c, audioPlayerControllerUiState.f53246c) && this.d == audioPlayerControllerUiState.d && Intrinsics.c(this.f53247e, audioPlayerControllerUiState.f53247e);
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.f53244a) * 31;
        PlayerState playerState = this.f53245b;
        int iHashCode2 = (iHashCode + (playerState == null ? 0 : playerState.hashCode())) * 31;
        AudioPlayerItemUiModel audioPlayerItemUiModel = this.f53246c;
        int iA = fc.a((iHashCode2 + (audioPlayerItemUiModel == null ? 0 : audioPlayerItemUiModel.hashCode())) * 31, 31, this.d);
        Long l = this.f53247e;
        return iA + (l != null ? l.hashCode() : 0);
    }

    public final String toString() {
        return "AudioPlayerControllerUiState(isMediaControllerReady=" + this.f53244a + ", playerState=" + this.f53245b + ", currentMedia=" + this.f53246c + ", currentPosition=" + this.d + ", totalDuration=" + this.f53247e + ")";
    }

    public AudioPlayerControllerUiState(boolean z, PlayerState playerState, AudioPlayerItemUiModel audioPlayerItemUiModel, long j2, Long l) {
        this.f53244a = z;
        this.f53245b = playerState;
        this.f53246c = audioPlayerItemUiModel;
        this.d = j2;
        this.f53247e = l;
    }

    public AudioPlayerControllerUiState() {
        this(false, null, null, 0L, null, 31, null);
    }
}

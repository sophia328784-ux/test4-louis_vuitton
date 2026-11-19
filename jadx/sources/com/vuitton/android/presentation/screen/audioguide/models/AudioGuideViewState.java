package com.vuitton.android.presentation.screen.audioguide.models;

import com.vuitton.android.presentation.model.common.A11ySettings;
import com.vuitton.foundation.model.domain.model.audioplayer.PlayerSpeed;
import com.vuitton.foundation.model.domain.model.audioplayer.PlayerState;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState;", "", "Loading", "Error", "Success", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Error;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Loading;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class AudioGuideViewState {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Error;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Error extends AudioGuideViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Error f53223a = new Error(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Error);
        }

        public final int hashCode() {
            return 1949683973;
        }

        public final String toString() {
            return "Error";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Loading;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Loading extends AudioGuideViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Loading f53224a = new Loading(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Loading);
        }

        public final int hashCode() {
            return -1438771975;
        }

        public final String toString() {
            return "Loading";
        }
    }

    public AudioGuideViewState(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;", "audioGuide", "Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;", "playingTrack", "Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;", "playerState", "", "durationMs", "Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;", "playerSpeed", "Lcom/vuitton/android/presentation/model/common/A11ySettings;", "a11ySettings", "<init>", "(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;JLcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;Lcom/vuitton/android/presentation/model/common/A11ySettings;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Success extends AudioGuideViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AudioGuideUiModel f53225a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackDetailUiModel f53226b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final PlayerState f53227c;
        public final long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final PlayerSpeed f53228e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final A11ySettings f53229f;

        public /* synthetic */ Success(AudioGuideUiModel audioGuideUiModel, TrackDetailUiModel trackDetailUiModel, PlayerState playerState, long j2, PlayerSpeed playerSpeed, A11ySettings a11ySettings, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(audioGuideUiModel, (i2 & 2) != 0 ? null : trackDetailUiModel, (i2 & 4) != 0 ? PlayerState.STOPPED : playerState, (i2 & 8) != 0 ? 0L : j2, (i2 & 16) != 0 ? PlayerSpeed.SPEED_1X : playerSpeed, (i2 & 32) != 0 ? new A11ySettings(false, false, false, 7, null) : a11ySettings);
        }

        public static Success a(Success success, AudioGuideUiModel audioGuideUiModel, TrackDetailUiModel trackDetailUiModel, PlayerState playerState, long j2, PlayerSpeed playerSpeed, A11ySettings a11ySettings, int i2) {
            if ((i2 & 1) != 0) {
                audioGuideUiModel = success.f53225a;
            }
            AudioGuideUiModel audioGuideUiModel2 = audioGuideUiModel;
            if ((i2 & 2) != 0) {
                trackDetailUiModel = success.f53226b;
            }
            TrackDetailUiModel trackDetailUiModel2 = trackDetailUiModel;
            if ((i2 & 4) != 0) {
                playerState = success.f53227c;
            }
            PlayerState playerState2 = playerState;
            if ((i2 & 8) != 0) {
                j2 = success.d;
            }
            long j3 = j2;
            if ((i2 & 16) != 0) {
                playerSpeed = success.f53228e;
            }
            PlayerSpeed playerSpeed2 = playerSpeed;
            if ((i2 & 32) != 0) {
                a11ySettings = success.f53229f;
            }
            A11ySettings a11ySettings2 = a11ySettings;
            audioGuideUiModel2.getClass();
            playerState2.getClass();
            playerSpeed2.getClass();
            a11ySettings2.getClass();
            return new Success(audioGuideUiModel2, trackDetailUiModel2, playerState2, j3, playerSpeed2, a11ySettings2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Success)) {
                return false;
            }
            Success success = (Success) obj;
            return Intrinsics.c(this.f53225a, success.f53225a) && Intrinsics.c(this.f53226b, success.f53226b) && this.f53227c == success.f53227c && this.d == success.d && this.f53228e == success.f53228e && Intrinsics.c(this.f53229f, success.f53229f);
        }

        public final int hashCode() {
            int iHashCode = this.f53225a.hashCode() * 31;
            TrackDetailUiModel trackDetailUiModel = this.f53226b;
            return this.f53229f.hashCode() + ((this.f53228e.hashCode() + fc.a((this.f53227c.hashCode() + ((iHashCode + (trackDetailUiModel == null ? 0 : trackDetailUiModel.hashCode())) * 31)) * 31, 31, this.d)) * 31);
        }

        public final String toString() {
            return "Success(audioGuide=" + this.f53225a + ", playingTrack=" + this.f53226b + ", playerState=" + this.f53227c + ", durationMs=" + this.d + ", playerSpeed=" + this.f53228e + ", a11ySettings=" + this.f53229f + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(AudioGuideUiModel audioGuideUiModel, TrackDetailUiModel trackDetailUiModel, PlayerState playerState, long j2, PlayerSpeed playerSpeed, A11ySettings a11ySettings) {
            super(null);
            audioGuideUiModel.getClass();
            playerState.getClass();
            playerSpeed.getClass();
            a11ySettings.getClass();
            this.f53225a = audioGuideUiModel;
            this.f53226b = trackDetailUiModel;
            this.f53227c = playerState;
            this.d = j2;
            this.f53228e = playerSpeed;
            this.f53229f = a11ySettings;
        }
    }
}

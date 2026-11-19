package com.vuitton.android.presentation.screen.audioplayer.model;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\b\u0002\u0003\u0004\u0005\u0006\u0007\b\t\u0082\u0001\b\n\u000b\f\r\u000e\u000f\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent;", "", "Play", "Pause", "Resume", "GoAhead", "GoBack", "PlayerUiChange", "Reset", "SeekTo", "Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$GoAhead;", "Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$GoBack;", "Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$Pause;", "Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$Play;", "Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$PlayerUiChange;", "Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$Reset;", "Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$Resume;", "Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$SeekTo;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class AudioPlayerEvent {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$GoAhead;", "Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class GoAhead extends AudioPlayerEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final GoAhead f53248a = new GoAhead(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof GoAhead);
        }

        public final int hashCode() {
            return 1428295689;
        }

        public final String toString() {
            return "GoAhead";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$GoBack;", "Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class GoBack extends AudioPlayerEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final GoBack f53249a = new GoBack(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof GoBack);
        }

        public final int hashCode() {
            return -230997601;
        }

        public final String toString() {
            return "GoBack";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$Pause;", "Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Pause extends AudioPlayerEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Pause f53250a = new Pause(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Pause);
        }

        public final int hashCode() {
            return -1107886010;
        }

        public final String toString() {
            return "Pause";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$Play;", "Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Play extends AudioPlayerEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Play f53251a = new Play(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Play);
        }

        public final int hashCode() {
            return 657008356;
        }

        public final String toString() {
            return "Play";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$PlayerUiChange;", "Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PlayerUiChange extends AudioPlayerEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final PlayerUiChange f53252a = new PlayerUiChange(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PlayerUiChange);
        }

        public final int hashCode() {
            return -1509810923;
        }

        public final String toString() {
            return "PlayerUiChange";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$Reset;", "Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Reset extends AudioPlayerEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Reset f53253a = new Reset(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Reset);
        }

        public final int hashCode() {
            return -1105922145;
        }

        public final String toString() {
            return "Reset";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$Resume;", "Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Resume extends AudioPlayerEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Resume f53254a = new Resume(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Resume);
        }

        public final int hashCode() {
            return 76167133;
        }

        public final String toString() {
            return "Resume";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$SeekTo;", "Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent;", "", "position", "<init>", "(J)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class SeekTo extends AudioPlayerEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f53255a;

        public SeekTo(long j2) {
            super(null);
            this.f53255a = j2;
        }
    }

    public AudioPlayerEvent(DefaultConstructorMarker defaultConstructorMarker) {
    }
}

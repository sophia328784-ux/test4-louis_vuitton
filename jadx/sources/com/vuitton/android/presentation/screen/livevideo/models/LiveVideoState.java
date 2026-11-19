package com.vuitton.android.presentation.screen.livevideo.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoState;", "", "WAITING", "LIVE_VIDEO_PLAYING", "REPLAY_VIDEO_PLAYING", "LIVE_SHOW_ENDED", "LOADING", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LiveVideoState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LiveVideoState[] $VALUES;
    public static final LiveVideoState LIVE_SHOW_ENDED;
    public static final LiveVideoState LIVE_VIDEO_PLAYING;
    public static final LiveVideoState LOADING;
    public static final LiveVideoState REPLAY_VIDEO_PLAYING;
    public static final LiveVideoState WAITING;

    static {
        LiveVideoState liveVideoState = new LiveVideoState("WAITING", 0);
        WAITING = liveVideoState;
        LiveVideoState liveVideoState2 = new LiveVideoState("LIVE_VIDEO_PLAYING", 1);
        LIVE_VIDEO_PLAYING = liveVideoState2;
        LiveVideoState liveVideoState3 = new LiveVideoState("REPLAY_VIDEO_PLAYING", 2);
        REPLAY_VIDEO_PLAYING = liveVideoState3;
        LiveVideoState liveVideoState4 = new LiveVideoState("LIVE_SHOW_ENDED", 3);
        LIVE_SHOW_ENDED = liveVideoState4;
        LiveVideoState liveVideoState5 = new LiveVideoState("LOADING", 4);
        LOADING = liveVideoState5;
        LiveVideoState[] liveVideoStateArr = {liveVideoState, liveVideoState2, liveVideoState3, liveVideoState4, liveVideoState5};
        $VALUES = liveVideoStateArr;
        $ENTRIES = EnumEntriesKt.a(liveVideoStateArr);
    }

    public static LiveVideoState valueOf(String str) {
        return (LiveVideoState) Enum.valueOf(LiveVideoState.class, str);
    }

    public static LiveVideoState[] values() {
        return (LiveVideoState[]) $VALUES.clone();
    }
}

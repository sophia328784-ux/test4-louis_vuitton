package com.vuitton.foundation.model.domain.model.audioplayer;

import com.android.wiimu.model.IWiimuPlayStatus;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;", "", IWiimuPlayStatus.Playing, "PAUSED", IWiimuPlayStatus.Stopped, "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PlayerState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PlayerState[] $VALUES;
    public static final PlayerState PAUSED;
    public static final PlayerState PLAYING;
    public static final PlayerState STOPPED;

    static {
        PlayerState playerState = new PlayerState(IWiimuPlayStatus.Playing, 0);
        PLAYING = playerState;
        PlayerState playerState2 = new PlayerState("PAUSED", 1);
        PAUSED = playerState2;
        PlayerState playerState3 = new PlayerState(IWiimuPlayStatus.Stopped, 2);
        STOPPED = playerState3;
        PlayerState[] playerStateArr = {playerState, playerState2, playerState3};
        $VALUES = playerStateArr;
        $ENTRIES = EnumEntriesKt.a(playerStateArr);
    }

    public static PlayerState valueOf(String str) {
        return (PlayerState) Enum.valueOf(PlayerState.class, str);
    }

    public static PlayerState[] values() {
        return (PlayerState[]) $VALUES.clone();
    }
}

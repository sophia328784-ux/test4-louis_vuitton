package com.vuitton.foundation.model.domain.model.common;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;", "", "LIVE", "LIVE_UPCOMING", "LIVE_DONE", "LIVE_REPLAY", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LiveVideoStatus {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LiveVideoStatus[] $VALUES;
    public static final LiveVideoStatus LIVE;
    public static final LiveVideoStatus LIVE_DONE;
    public static final LiveVideoStatus LIVE_REPLAY;
    public static final LiveVideoStatus LIVE_UPCOMING;

    static {
        LiveVideoStatus liveVideoStatus = new LiveVideoStatus("LIVE", 0);
        LIVE = liveVideoStatus;
        LiveVideoStatus liveVideoStatus2 = new LiveVideoStatus("LIVE_UPCOMING", 1);
        LIVE_UPCOMING = liveVideoStatus2;
        LiveVideoStatus liveVideoStatus3 = new LiveVideoStatus("LIVE_DONE", 2);
        LIVE_DONE = liveVideoStatus3;
        LiveVideoStatus liveVideoStatus4 = new LiveVideoStatus("LIVE_REPLAY", 3);
        LIVE_REPLAY = liveVideoStatus4;
        LiveVideoStatus[] liveVideoStatusArr = {liveVideoStatus, liveVideoStatus2, liveVideoStatus3, liveVideoStatus4};
        $VALUES = liveVideoStatusArr;
        $ENTRIES = EnumEntriesKt.a(liveVideoStatusArr);
    }

    public static LiveVideoStatus valueOf(String str) {
        return (LiveVideoStatus) Enum.valueOf(LiveVideoStatus.class, str);
    }

    public static LiveVideoStatus[] values() {
        return (LiveVideoStatus[]) $VALUES.clone();
    }
}

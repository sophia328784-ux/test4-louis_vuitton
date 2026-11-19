package com.vuitton.android.presentation.screen.livevideo.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;", "", "LIVE", "LIVE_UPCOMING", "LIVE_DONE", "LIVE_REPLAY", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LiveVideoStatusUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LiveVideoStatusUiModel[] $VALUES;
    public static final LiveVideoStatusUiModel LIVE;
    public static final LiveVideoStatusUiModel LIVE_DONE;
    public static final LiveVideoStatusUiModel LIVE_REPLAY;
    public static final LiveVideoStatusUiModel LIVE_UPCOMING;

    static {
        LiveVideoStatusUiModel liveVideoStatusUiModel = new LiveVideoStatusUiModel("LIVE", 0);
        LIVE = liveVideoStatusUiModel;
        LiveVideoStatusUiModel liveVideoStatusUiModel2 = new LiveVideoStatusUiModel("LIVE_UPCOMING", 1);
        LIVE_UPCOMING = liveVideoStatusUiModel2;
        LiveVideoStatusUiModel liveVideoStatusUiModel3 = new LiveVideoStatusUiModel("LIVE_DONE", 2);
        LIVE_DONE = liveVideoStatusUiModel3;
        LiveVideoStatusUiModel liveVideoStatusUiModel4 = new LiveVideoStatusUiModel("LIVE_REPLAY", 3);
        LIVE_REPLAY = liveVideoStatusUiModel4;
        LiveVideoStatusUiModel[] liveVideoStatusUiModelArr = {liveVideoStatusUiModel, liveVideoStatusUiModel2, liveVideoStatusUiModel3, liveVideoStatusUiModel4};
        $VALUES = liveVideoStatusUiModelArr;
        $ENTRIES = EnumEntriesKt.a(liveVideoStatusUiModelArr);
    }

    public static LiveVideoStatusUiModel valueOf(String str) {
        return (LiveVideoStatusUiModel) Enum.valueOf(LiveVideoStatusUiModel.class, str);
    }

    public static LiveVideoStatusUiModel[] values() {
        return (LiveVideoStatusUiModel[]) $VALUES.clone();
    }
}

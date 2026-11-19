package com.vuitton.android.presentation.screen.audioguide.components.bottomsheets;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;", "", "None", "ListeningQueue", "Transcript", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TrackDetailSubMode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TrackDetailSubMode[] $VALUES;
    public static final TrackDetailSubMode ListeningQueue;
    public static final TrackDetailSubMode None;
    public static final TrackDetailSubMode Transcript;

    static {
        TrackDetailSubMode trackDetailSubMode = new TrackDetailSubMode("None", 0);
        None = trackDetailSubMode;
        TrackDetailSubMode trackDetailSubMode2 = new TrackDetailSubMode("ListeningQueue", 1);
        ListeningQueue = trackDetailSubMode2;
        TrackDetailSubMode trackDetailSubMode3 = new TrackDetailSubMode("Transcript", 2);
        Transcript = trackDetailSubMode3;
        TrackDetailSubMode[] trackDetailSubModeArr = {trackDetailSubMode, trackDetailSubMode2, trackDetailSubMode3};
        $VALUES = trackDetailSubModeArr;
        $ENTRIES = EnumEntriesKt.a(trackDetailSubModeArr);
    }

    public static TrackDetailSubMode valueOf(String str) {
        return (TrackDetailSubMode) Enum.valueOf(TrackDetailSubMode.class, str);
    }

    public static TrackDetailSubMode[] values() {
        return (TrackDetailSubMode[]) $VALUES.clone();
    }
}

package com.vuitton.android.presentation.screen.catalog.thematicplp.tracking;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/TrackingClickType;", "", "SIMPLE_CLICK", "DOUBLE_CLICK", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TrackingClickType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TrackingClickType[] $VALUES;
    public static final TrackingClickType DOUBLE_CLICK;
    public static final TrackingClickType SIMPLE_CLICK;

    static {
        TrackingClickType trackingClickType = new TrackingClickType("SIMPLE_CLICK", 0);
        SIMPLE_CLICK = trackingClickType;
        TrackingClickType trackingClickType2 = new TrackingClickType("DOUBLE_CLICK", 1);
        DOUBLE_CLICK = trackingClickType2;
        TrackingClickType[] trackingClickTypeArr = {trackingClickType, trackingClickType2};
        $VALUES = trackingClickTypeArr;
        $ENTRIES = EnumEntriesKt.a(trackingClickTypeArr);
    }

    public static TrackingClickType valueOf(String str) {
        return (TrackingClickType) Enum.valueOf(TrackingClickType.class, str);
    }

    public static TrackingClickType[] values() {
        return (TrackingClickType[]) $VALUES.clone();
    }
}

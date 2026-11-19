package com.vuitton.android.designkit.ui.common;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/designkit/ui/common/HorizontalSwipeDirection;", "", "StartToEnd", "EndToStart", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
final class HorizontalSwipeDirection {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ HorizontalSwipeDirection[] $VALUES;
    public static final HorizontalSwipeDirection EndToStart;
    public static final HorizontalSwipeDirection StartToEnd;

    static {
        HorizontalSwipeDirection horizontalSwipeDirection = new HorizontalSwipeDirection("StartToEnd", 0);
        StartToEnd = horizontalSwipeDirection;
        HorizontalSwipeDirection horizontalSwipeDirection2 = new HorizontalSwipeDirection("EndToStart", 1);
        EndToStart = horizontalSwipeDirection2;
        HorizontalSwipeDirection[] horizontalSwipeDirectionArr = {horizontalSwipeDirection, horizontalSwipeDirection2};
        $VALUES = horizontalSwipeDirectionArr;
        $ENTRIES = EnumEntriesKt.a(horizontalSwipeDirectionArr);
    }

    public static HorizontalSwipeDirection valueOf(String str) {
        return (HorizontalSwipeDirection) Enum.valueOf(HorizontalSwipeDirection.class, str);
    }

    public static HorizontalSwipeDirection[] values() {
        return (HorizontalSwipeDirection[]) $VALUES.clone();
    }
}

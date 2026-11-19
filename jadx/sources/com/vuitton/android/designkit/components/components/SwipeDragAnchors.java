package com.vuitton.android.designkit.components.components;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/designkit/components/components/SwipeDragAnchors;", "", "Start", "End", "components"}, k = 1, mv = {2, 3, 0}, xi = 48)
final class SwipeDragAnchors {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SwipeDragAnchors[] $VALUES;
    public static final SwipeDragAnchors End;
    public static final SwipeDragAnchors Start;

    static {
        SwipeDragAnchors swipeDragAnchors = new SwipeDragAnchors("Start", 0);
        Start = swipeDragAnchors;
        SwipeDragAnchors swipeDragAnchors2 = new SwipeDragAnchors("End", 1);
        End = swipeDragAnchors2;
        SwipeDragAnchors[] swipeDragAnchorsArr = {swipeDragAnchors, swipeDragAnchors2};
        $VALUES = swipeDragAnchorsArr;
        $ENTRIES = EnumEntriesKt.a(swipeDragAnchorsArr);
    }

    public static SwipeDragAnchors valueOf(String str) {
        return (SwipeDragAnchors) Enum.valueOf(SwipeDragAnchors.class, str);
    }

    public static SwipeDragAnchors[] values() {
        return (SwipeDragAnchors[]) $VALUES.clone();
    }
}

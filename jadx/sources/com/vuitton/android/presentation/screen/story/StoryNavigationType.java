package com.vuitton.android.presentation.screen.story;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/story/StoryNavigationType;", "", "PREVIOUS", "NEXT", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class StoryNavigationType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ StoryNavigationType[] $VALUES;
    public static final StoryNavigationType NEXT;
    public static final StoryNavigationType PREVIOUS;

    static {
        StoryNavigationType storyNavigationType = new StoryNavigationType("PREVIOUS", 0);
        PREVIOUS = storyNavigationType;
        StoryNavigationType storyNavigationType2 = new StoryNavigationType("NEXT", 1);
        NEXT = storyNavigationType2;
        StoryNavigationType[] storyNavigationTypeArr = {storyNavigationType, storyNavigationType2};
        $VALUES = storyNavigationTypeArr;
        $ENTRIES = EnumEntriesKt.a(storyNavigationTypeArr);
    }

    public static StoryNavigationType valueOf(String str) {
        return (StoryNavigationType) Enum.valueOf(StoryNavigationType.class, str);
    }

    public static StoryNavigationType[] values() {
        return (StoryNavigationType[]) $VALUES.clone();
    }
}

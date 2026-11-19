package com.vuitton.android.presentation.screen.story.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/story/models/StoryCloseUiModel;", "", "LAST_SLIDE_CHECKED", "CLOSE_CTA", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class StoryCloseUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ StoryCloseUiModel[] $VALUES;
    public static final StoryCloseUiModel CLOSE_CTA;
    public static final StoryCloseUiModel LAST_SLIDE_CHECKED;

    static {
        StoryCloseUiModel storyCloseUiModel = new StoryCloseUiModel("LAST_SLIDE_CHECKED", 0);
        LAST_SLIDE_CHECKED = storyCloseUiModel;
        StoryCloseUiModel storyCloseUiModel2 = new StoryCloseUiModel("CLOSE_CTA", 1);
        CLOSE_CTA = storyCloseUiModel2;
        StoryCloseUiModel[] storyCloseUiModelArr = {storyCloseUiModel, storyCloseUiModel2};
        $VALUES = storyCloseUiModelArr;
        $ENTRIES = EnumEntriesKt.a(storyCloseUiModelArr);
    }

    public static StoryCloseUiModel valueOf(String str) {
        return (StoryCloseUiModel) Enum.valueOf(StoryCloseUiModel.class, str);
    }

    public static StoryCloseUiModel[] values() {
        return (StoryCloseUiModel[]) $VALUES.clone();
    }
}

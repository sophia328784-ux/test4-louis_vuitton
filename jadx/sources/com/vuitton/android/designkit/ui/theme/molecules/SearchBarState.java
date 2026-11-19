package com.vuitton.android.designkit.ui.theme.molecules;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/molecules/SearchBarState;", "", "Enabled", "Selected", "Typing", "Completed", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
final class SearchBarState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SearchBarState[] $VALUES;
    public static final SearchBarState Completed;
    public static final SearchBarState Enabled;
    public static final SearchBarState Selected;
    public static final SearchBarState Typing;

    static {
        SearchBarState searchBarState = new SearchBarState("Enabled", 0);
        Enabled = searchBarState;
        SearchBarState searchBarState2 = new SearchBarState("Selected", 1);
        Selected = searchBarState2;
        SearchBarState searchBarState3 = new SearchBarState("Typing", 2);
        Typing = searchBarState3;
        SearchBarState searchBarState4 = new SearchBarState("Completed", 3);
        Completed = searchBarState4;
        SearchBarState[] searchBarStateArr = {searchBarState, searchBarState2, searchBarState3, searchBarState4};
        $VALUES = searchBarStateArr;
        $ENTRIES = EnumEntriesKt.a(searchBarStateArr);
    }

    public static SearchBarState valueOf(String str) {
        return (SearchBarState) Enum.valueOf(SearchBarState.class, str);
    }

    public static SearchBarState[] values() {
        return (SearchBarState[]) $VALUES.clone();
    }
}

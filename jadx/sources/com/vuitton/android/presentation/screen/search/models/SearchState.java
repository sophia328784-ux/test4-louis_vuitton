package com.vuitton.android.presentation.screen.search.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/SearchState;", "", "ERROR", "HISTORY", "TRENDING", "SUCCESS_SEARCH", "NO_RESULT_SEARCH", "EMPTY_SCREEN", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SearchState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SearchState[] $VALUES;
    public static final SearchState EMPTY_SCREEN;
    public static final SearchState ERROR;
    public static final SearchState HISTORY;
    public static final SearchState NO_RESULT_SEARCH;
    public static final SearchState SUCCESS_SEARCH;
    public static final SearchState TRENDING;

    static {
        SearchState searchState = new SearchState("ERROR", 0);
        ERROR = searchState;
        SearchState searchState2 = new SearchState("HISTORY", 1);
        HISTORY = searchState2;
        SearchState searchState3 = new SearchState("TRENDING", 2);
        TRENDING = searchState3;
        SearchState searchState4 = new SearchState("SUCCESS_SEARCH", 3);
        SUCCESS_SEARCH = searchState4;
        SearchState searchState5 = new SearchState("NO_RESULT_SEARCH", 4);
        NO_RESULT_SEARCH = searchState5;
        SearchState searchState6 = new SearchState("EMPTY_SCREEN", 5);
        EMPTY_SCREEN = searchState6;
        SearchState[] searchStateArr = {searchState, searchState2, searchState3, searchState4, searchState5, searchState6};
        $VALUES = searchStateArr;
        $ENTRIES = EnumEntriesKt.a(searchStateArr);
    }

    public static SearchState valueOf(String str) {
        return (SearchState) Enum.valueOf(SearchState.class, str);
    }

    public static SearchState[] values() {
        return (SearchState[]) $VALUES.clone();
    }
}

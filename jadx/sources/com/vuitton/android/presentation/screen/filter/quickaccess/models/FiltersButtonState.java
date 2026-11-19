package com.vuitton.android.presentation.screen.filter.quickaccess.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;", "", "Hidden", "Visible", "InitialAnimation", "OpenCategoriesAnimation", "OpenActiveFiltersAnimation", "CloseAnimation", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FiltersButtonState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ FiltersButtonState[] $VALUES;
    public static final FiltersButtonState CloseAnimation;
    public static final FiltersButtonState Hidden;
    public static final FiltersButtonState InitialAnimation;
    public static final FiltersButtonState OpenActiveFiltersAnimation;
    public static final FiltersButtonState OpenCategoriesAnimation;
    public static final FiltersButtonState Visible;

    static {
        FiltersButtonState filtersButtonState = new FiltersButtonState("Hidden", 0);
        Hidden = filtersButtonState;
        FiltersButtonState filtersButtonState2 = new FiltersButtonState("Visible", 1);
        Visible = filtersButtonState2;
        FiltersButtonState filtersButtonState3 = new FiltersButtonState("InitialAnimation", 2);
        InitialAnimation = filtersButtonState3;
        FiltersButtonState filtersButtonState4 = new FiltersButtonState("OpenCategoriesAnimation", 3);
        OpenCategoriesAnimation = filtersButtonState4;
        FiltersButtonState filtersButtonState5 = new FiltersButtonState("OpenActiveFiltersAnimation", 4);
        OpenActiveFiltersAnimation = filtersButtonState5;
        FiltersButtonState filtersButtonState6 = new FiltersButtonState("CloseAnimation", 5);
        CloseAnimation = filtersButtonState6;
        FiltersButtonState[] filtersButtonStateArr = {filtersButtonState, filtersButtonState2, filtersButtonState3, filtersButtonState4, filtersButtonState5, filtersButtonState6};
        $VALUES = filtersButtonStateArr;
        $ENTRIES = EnumEntriesKt.a(filtersButtonStateArr);
    }

    public static FiltersButtonState valueOf(String str) {
        return (FiltersButtonState) Enum.valueOf(FiltersButtonState.class, str);
    }

    public static FiltersButtonState[] values() {
        return (FiltersButtonState[]) $VALUES.clone();
    }
}

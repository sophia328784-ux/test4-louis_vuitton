package com.vuitton.android.presentation.loading;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/loading/LoadingMode;", "", "DarkMode", "LightMode", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LoadingMode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LoadingMode[] $VALUES;
    public static final LoadingMode DarkMode;
    public static final LoadingMode LightMode;

    static {
        LoadingMode loadingMode = new LoadingMode("DarkMode", 0);
        DarkMode = loadingMode;
        LoadingMode loadingMode2 = new LoadingMode("LightMode", 1);
        LightMode = loadingMode2;
        LoadingMode[] loadingModeArr = {loadingMode, loadingMode2};
        $VALUES = loadingModeArr;
        $ENTRIES = EnumEntriesKt.a(loadingModeArr);
    }

    public static LoadingMode valueOf(String str) {
        return (LoadingMode) Enum.valueOf(LoadingMode.class, str);
    }

    public static LoadingMode[] values() {
        return (LoadingMode[]) $VALUES.clone();
    }
}

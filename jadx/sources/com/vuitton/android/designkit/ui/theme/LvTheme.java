package com.vuitton.android.designkit.ui.theme;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002¨\u0006\u0003"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/LvTheme;", "", "Default", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LvTheme {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LvTheme[] $VALUES;
    public static final LvTheme Default;

    static {
        LvTheme lvTheme = new LvTheme("Default", 0);
        Default = lvTheme;
        LvTheme[] lvThemeArr = {lvTheme};
        $VALUES = lvThemeArr;
        $ENTRIES = EnumEntriesKt.a(lvThemeArr);
    }

    public static LvTheme valueOf(String str) {
        return (LvTheme) Enum.valueOf(LvTheme.class, str);
    }

    public static LvTheme[] values() {
        return (LvTheme[]) $VALUES.clone();
    }
}

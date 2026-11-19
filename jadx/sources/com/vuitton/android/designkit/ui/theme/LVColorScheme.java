package com.vuitton.android.designkit.ui.theme;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;", "", "DEFAULT", "INVERT", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LVColorScheme {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LVColorScheme[] $VALUES;
    public static final LVColorScheme DEFAULT;
    public static final LVColorScheme INVERT;

    static {
        LVColorScheme lVColorScheme = new LVColorScheme("DEFAULT", 0);
        DEFAULT = lVColorScheme;
        LVColorScheme lVColorScheme2 = new LVColorScheme("INVERT", 1);
        INVERT = lVColorScheme2;
        LVColorScheme[] lVColorSchemeArr = {lVColorScheme, lVColorScheme2};
        $VALUES = lVColorSchemeArr;
        $ENTRIES = EnumEntriesKt.a(lVColorSchemeArr);
    }

    public static LVColorScheme valueOf(String str) {
        return (LVColorScheme) Enum.valueOf(LVColorScheme.class, str);
    }

    public static LVColorScheme[] values() {
        return (LVColorScheme[]) $VALUES.clone();
    }
}

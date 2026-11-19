package com.vuitton.android.designkit.ui.theme.atoms.textfield;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;", "", "Never", "Always", "WhileEditing", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ClearButtonMode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ClearButtonMode[] $VALUES;
    public static final ClearButtonMode Always;
    public static final ClearButtonMode Never;
    public static final ClearButtonMode WhileEditing;

    static {
        ClearButtonMode clearButtonMode = new ClearButtonMode("Never", 0);
        Never = clearButtonMode;
        ClearButtonMode clearButtonMode2 = new ClearButtonMode("Always", 1);
        Always = clearButtonMode2;
        ClearButtonMode clearButtonMode3 = new ClearButtonMode("WhileEditing", 2);
        WhileEditing = clearButtonMode3;
        ClearButtonMode[] clearButtonModeArr = {clearButtonMode, clearButtonMode2, clearButtonMode3};
        $VALUES = clearButtonModeArr;
        $ENTRIES = EnumEntriesKt.a(clearButtonModeArr);
    }

    public static ClearButtonMode valueOf(String str) {
        return (ClearButtonMode) Enum.valueOf(ClearButtonMode.class, str);
    }

    public static ClearButtonMode[] values() {
        return (ClearButtonMode[]) $VALUES.clone();
    }
}

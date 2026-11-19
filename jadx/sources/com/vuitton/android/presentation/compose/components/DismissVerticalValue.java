package com.vuitton.android.presentation.compose.components;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/compose/components/DismissVerticalValue;", "", "Default", "DismissedToBottom", "DismissedToTop", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DismissVerticalValue {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DismissVerticalValue[] $VALUES;
    public static final DismissVerticalValue Default;
    public static final DismissVerticalValue DismissedToBottom;
    public static final DismissVerticalValue DismissedToTop;

    static {
        DismissVerticalValue dismissVerticalValue = new DismissVerticalValue("Default", 0);
        Default = dismissVerticalValue;
        DismissVerticalValue dismissVerticalValue2 = new DismissVerticalValue("DismissedToBottom", 1);
        DismissedToBottom = dismissVerticalValue2;
        DismissVerticalValue dismissVerticalValue3 = new DismissVerticalValue("DismissedToTop", 2);
        DismissedToTop = dismissVerticalValue3;
        DismissVerticalValue[] dismissVerticalValueArr = {dismissVerticalValue, dismissVerticalValue2, dismissVerticalValue3};
        $VALUES = dismissVerticalValueArr;
        $ENTRIES = EnumEntriesKt.a(dismissVerticalValueArr);
    }

    public static DismissVerticalValue valueOf(String str) {
        return (DismissVerticalValue) Enum.valueOf(DismissVerticalValue.class, str);
    }

    public static DismissVerticalValue[] values() {
        return (DismissVerticalValue[]) $VALUES.clone();
    }
}

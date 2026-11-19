package com.vuitton.android.designkit.ui.theme.molecules.topbar;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarType;", "", "Close", "Back", "None", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FloatingTopBarType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ FloatingTopBarType[] $VALUES;
    public static final FloatingTopBarType Back;
    public static final FloatingTopBarType Close;
    public static final FloatingTopBarType None;

    static {
        FloatingTopBarType floatingTopBarType = new FloatingTopBarType("Close", 0);
        Close = floatingTopBarType;
        FloatingTopBarType floatingTopBarType2 = new FloatingTopBarType("Back", 1);
        Back = floatingTopBarType2;
        FloatingTopBarType floatingTopBarType3 = new FloatingTopBarType("None", 2);
        None = floatingTopBarType3;
        FloatingTopBarType[] floatingTopBarTypeArr = {floatingTopBarType, floatingTopBarType2, floatingTopBarType3};
        $VALUES = floatingTopBarTypeArr;
        $ENTRIES = EnumEntriesKt.a(floatingTopBarTypeArr);
    }

    public static FloatingTopBarType valueOf(String str) {
        return (FloatingTopBarType) Enum.valueOf(FloatingTopBarType.class, str);
    }

    public static FloatingTopBarType[] values() {
        return (FloatingTopBarType[]) $VALUES.clone();
    }
}

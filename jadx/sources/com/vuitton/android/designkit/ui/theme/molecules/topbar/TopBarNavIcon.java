package com.vuitton.android.designkit.ui.theme.molecules.topbar;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;", "", "BACK", "CLOSE", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TopBarNavIcon {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TopBarNavIcon[] $VALUES;
    public static final TopBarNavIcon BACK;
    public static final TopBarNavIcon CLOSE;

    static {
        TopBarNavIcon topBarNavIcon = new TopBarNavIcon("BACK", 0);
        BACK = topBarNavIcon;
        TopBarNavIcon topBarNavIcon2 = new TopBarNavIcon("CLOSE", 1);
        CLOSE = topBarNavIcon2;
        TopBarNavIcon[] topBarNavIconArr = {topBarNavIcon, topBarNavIcon2};
        $VALUES = topBarNavIconArr;
        $ENTRIES = EnumEntriesKt.a(topBarNavIconArr);
    }

    public static TopBarNavIcon valueOf(String str) {
        return (TopBarNavIcon) Enum.valueOf(TopBarNavIcon.class, str);
    }

    public static TopBarNavIcon[] values() {
        return (TopBarNavIcon[]) $VALUES.clone();
    }
}

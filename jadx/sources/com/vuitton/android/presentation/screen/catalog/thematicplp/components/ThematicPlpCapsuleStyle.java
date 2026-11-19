package com.vuitton.android.presentation.screen.catalog.thematicplp.components;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpCapsuleStyle;", "", "DEFAULT", "SELECTED", "UNSELECTED", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ThematicPlpCapsuleStyle {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ThematicPlpCapsuleStyle[] $VALUES;
    public static final ThematicPlpCapsuleStyle DEFAULT;
    public static final ThematicPlpCapsuleStyle SELECTED;
    public static final ThematicPlpCapsuleStyle UNSELECTED;

    static {
        ThematicPlpCapsuleStyle thematicPlpCapsuleStyle = new ThematicPlpCapsuleStyle("DEFAULT", 0);
        DEFAULT = thematicPlpCapsuleStyle;
        ThematicPlpCapsuleStyle thematicPlpCapsuleStyle2 = new ThematicPlpCapsuleStyle("SELECTED", 1);
        SELECTED = thematicPlpCapsuleStyle2;
        ThematicPlpCapsuleStyle thematicPlpCapsuleStyle3 = new ThematicPlpCapsuleStyle("UNSELECTED", 2);
        UNSELECTED = thematicPlpCapsuleStyle3;
        ThematicPlpCapsuleStyle[] thematicPlpCapsuleStyleArr = {thematicPlpCapsuleStyle, thematicPlpCapsuleStyle2, thematicPlpCapsuleStyle3};
        $VALUES = thematicPlpCapsuleStyleArr;
        $ENTRIES = EnumEntriesKt.a(thematicPlpCapsuleStyleArr);
    }

    public static ThematicPlpCapsuleStyle valueOf(String str) {
        return (ThematicPlpCapsuleStyle) Enum.valueOf(ThematicPlpCapsuleStyle.class, str);
    }

    public static ThematicPlpCapsuleStyle[] values() {
        return (ThematicPlpCapsuleStyle[]) $VALUES.clone();
    }
}

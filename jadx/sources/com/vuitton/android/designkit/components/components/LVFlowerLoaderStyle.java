package com.vuitton.android.designkit.components.components;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderStyle;", "", "LIGHT_BACKGROUND", "DARK_BACKGROUND", "BRAND", "components"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LVFlowerLoaderStyle {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LVFlowerLoaderStyle[] $VALUES;
    public static final LVFlowerLoaderStyle BRAND;
    public static final LVFlowerLoaderStyle DARK_BACKGROUND;
    public static final LVFlowerLoaderStyle LIGHT_BACKGROUND;

    static {
        LVFlowerLoaderStyle lVFlowerLoaderStyle = new LVFlowerLoaderStyle("LIGHT_BACKGROUND", 0);
        LIGHT_BACKGROUND = lVFlowerLoaderStyle;
        LVFlowerLoaderStyle lVFlowerLoaderStyle2 = new LVFlowerLoaderStyle("DARK_BACKGROUND", 1);
        DARK_BACKGROUND = lVFlowerLoaderStyle2;
        LVFlowerLoaderStyle lVFlowerLoaderStyle3 = new LVFlowerLoaderStyle("BRAND", 2);
        BRAND = lVFlowerLoaderStyle3;
        LVFlowerLoaderStyle[] lVFlowerLoaderStyleArr = {lVFlowerLoaderStyle, lVFlowerLoaderStyle2, lVFlowerLoaderStyle3};
        $VALUES = lVFlowerLoaderStyleArr;
        $ENTRIES = EnumEntriesKt.a(lVFlowerLoaderStyleArr);
    }

    public static LVFlowerLoaderStyle valueOf(String str) {
        return (LVFlowerLoaderStyle) Enum.valueOf(LVFlowerLoaderStyle.class, str);
    }

    public static LVFlowerLoaderStyle[] values() {
        return (LVFlowerLoaderStyle[]) $VALUES.clone();
    }
}

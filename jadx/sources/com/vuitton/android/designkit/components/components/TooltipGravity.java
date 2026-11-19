package com.vuitton.android.designkit.components.components;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/designkit/components/components/TooltipGravity;", "", "TOP", "BOTTOM", "CENTER", "components"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TooltipGravity {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TooltipGravity[] $VALUES;
    public static final TooltipGravity BOTTOM;
    public static final TooltipGravity CENTER;
    public static final TooltipGravity TOP;

    static {
        TooltipGravity tooltipGravity = new TooltipGravity("TOP", 0);
        TOP = tooltipGravity;
        TooltipGravity tooltipGravity2 = new TooltipGravity("BOTTOM", 1);
        BOTTOM = tooltipGravity2;
        TooltipGravity tooltipGravity3 = new TooltipGravity("CENTER", 2);
        CENTER = tooltipGravity3;
        TooltipGravity[] tooltipGravityArr = {tooltipGravity, tooltipGravity2, tooltipGravity3};
        $VALUES = tooltipGravityArr;
        $ENTRIES = EnumEntriesKt.a(tooltipGravityArr);
    }

    public static TooltipGravity valueOf(String str) {
        return (TooltipGravity) Enum.valueOf(TooltipGravity.class, str);
    }

    public static TooltipGravity[] values() {
        return (TooltipGravity[]) $VALUES.clone();
    }
}

package com.vuitton.foundation.model.domain.model.product.availability;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;", "", "DAY", "WEEK", "MONTH", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AvailabilityTimeFormat {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AvailabilityTimeFormat[] $VALUES;
    public static final AvailabilityTimeFormat DAY;
    public static final AvailabilityTimeFormat MONTH;
    public static final AvailabilityTimeFormat WEEK;

    static {
        AvailabilityTimeFormat availabilityTimeFormat = new AvailabilityTimeFormat("DAY", 0);
        DAY = availabilityTimeFormat;
        AvailabilityTimeFormat availabilityTimeFormat2 = new AvailabilityTimeFormat("WEEK", 1);
        WEEK = availabilityTimeFormat2;
        AvailabilityTimeFormat availabilityTimeFormat3 = new AvailabilityTimeFormat("MONTH", 2);
        MONTH = availabilityTimeFormat3;
        AvailabilityTimeFormat[] availabilityTimeFormatArr = {availabilityTimeFormat, availabilityTimeFormat2, availabilityTimeFormat3};
        $VALUES = availabilityTimeFormatArr;
        $ENTRIES = EnumEntriesKt.a(availabilityTimeFormatArr);
    }

    public static AvailabilityTimeFormat valueOf(String str) {
        return (AvailabilityTimeFormat) Enum.valueOf(AvailabilityTimeFormat.class, str);
    }

    public static AvailabilityTimeFormat[] values() {
        return (AvailabilityTimeFormat[]) $VALUES.clone();
    }
}

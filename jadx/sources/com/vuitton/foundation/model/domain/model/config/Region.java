package com.vuitton.foundation.model.domain.model.config;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/config/Region;", "", "EU", "US", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class Region {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Region[] $VALUES;
    public static final Region EU;
    public static final Region US;

    static {
        Region region = new Region("EU", 0);
        EU = region;
        Region region2 = new Region("US", 1);
        US = region2;
        Region[] regionArr = {region, region2};
        $VALUES = regionArr;
        $ENTRIES = EnumEntriesKt.a(regionArr);
    }

    public static Region valueOf(String str) {
        return (Region) Enum.valueOf(Region.class, str);
    }

    public static Region[] values() {
        return (Region[]) $VALUES.clone();
    }
}
